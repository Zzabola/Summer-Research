#include <stdint.h>
#include "sw_aes.h"

#define AES_BASE       0x00090000u
#define AES_CTRL       (AES_BASE + 0x00u)
#define AES_STATUS     (AES_BASE + 0x04u)

#define AES_KEY0       (AES_BASE + 0x10u)
#define AES_KEY1       (AES_BASE + 0x14u)
#define AES_KEY2       (AES_BASE + 0x18u)
#define AES_KEY3       (AES_BASE + 0x1Cu)

#define AES_DIN0       (AES_BASE + 0x20u)
#define AES_DIN1       (AES_BASE + 0x24u)
#define AES_DIN2       (AES_BASE + 0x28u)
#define AES_DIN3       (AES_BASE + 0x2Cu)

#define AES_DOUT0      (AES_BASE + 0x30u)
#define AES_DOUT1      (AES_BASE + 0x34u)
#define AES_DOUT2      (AES_BASE + 0x38u)
#define AES_DOUT3      (AES_BASE + 0x3Cu)

#define CTRL_SET_KEY   (1u << 0)
#define CTRL_ENCRYPT   (1u << 1)
#define CTRL_DECRYPT   (1u << 2)

#define STATUS_KEY_DONE  (1u << 0)
#define STATUS_ENC_DONE  (1u << 1)
#define STATUS_DEC_DONE  (1u << 2)
#define STATUS_ENC_BUSY  (1u << 3)
#define STATUS_DEC_BUSY  (1u << 4)

static inline void mmio_write(uint32_t addr, uint32_t val) {
    *(volatile uint32_t *)addr = val;
}

static inline uint32_t mmio_read(uint32_t addr) {
    return *(volatile uint32_t *)addr;
}

static inline uint32_t read_mcycle(void) {
    uint32_t value;
    __asm__ volatile ("csrr %0, mcycle" : "=r"(value));
    return value;
}

static int compare_bytes(const uint8_t *a, const uint8_t *b, uint32_t len) {
    for (uint32_t i = 0; i < len; i++) {
        if (a[i] != b[i]) {
            return 0;
        }
    }
    return 1;
}

static void hw_aes_load_key(void) {
    mmio_write(AES_KEY0, 0x09cf4f3c);
    mmio_write(AES_KEY1, 0xabf71588);
    mmio_write(AES_KEY2, 0x28aed2a6);
    mmio_write(AES_KEY3, 0x2b7e1516);

    mmio_write(AES_CTRL, CTRL_SET_KEY);

    while ((mmio_read(AES_STATUS) & STATUS_KEY_DONE) == 0u) {
        ;
    }
}

static void hw_aes_encrypt_one_block(uint8_t out[16]) {
    mmio_write(AES_DIN0, 0xe0370734);
    mmio_write(AES_DIN1, 0x313198a2);
    mmio_write(AES_DIN2, 0x885a308d);
    mmio_write(AES_DIN3, 0x3243f6a8);

    mmio_write(AES_CTRL, CTRL_ENCRYPT);

    while ((mmio_read(AES_STATUS) & STATUS_ENC_DONE) == 0u) {
        ;
    }

    uint32_t w0 = mmio_read(AES_DOUT0);
    uint32_t w1 = mmio_read(AES_DOUT1);
    uint32_t w2 = mmio_read(AES_DOUT2);
    uint32_t w3 = mmio_read(AES_DOUT3);

    out[0]  = (uint8_t)(w3 >> 0);
    out[1]  = (uint8_t)(w3 >> 8);
    out[2]  = (uint8_t)(w3 >> 16);
    out[3]  = (uint8_t)(w3 >> 24);

    out[4]  = (uint8_t)(w2 >> 0);
    out[5]  = (uint8_t)(w2 >> 8);
    out[6]  = (uint8_t)(w2 >> 16);
    out[7]  = (uint8_t)(w2 >> 24);

    out[8]  = (uint8_t)(w1 >> 0);
    out[9]  = (uint8_t)(w1 >> 8);
    out[10] = (uint8_t)(w1 >> 16);
    out[11] = (uint8_t)(w1 >> 24);

    out[12] = (uint8_t)(w0 >> 0);
    out[13] = (uint8_t)(w0 >> 8);
    out[14] = (uint8_t)(w0 >> 16);
    out[15] = (uint8_t)(w0 >> 24);
}

/* results you can inspect in memory/debugger */
volatile uint32_t sw_test1_cycles = 0;
volatile uint32_t hw_test1_cycles = 0;
volatile uint8_t  sw_test1_out[16];
volatile uint8_t  hw_test1_out[16];
volatile uint32_t sw_matches_expected = 0;
volatile uint32_t hw_matches_expected = 0;
volatile uint32_t sw_matches_hw = 0;
volatile uint32_t done_flag = 0;

int main(void) {
    const uint8_t key[16] = {
        0x2b,0x7e,0x15,0x16, 0x28,0xae,0xd2,0xa6,
        0xab,0xf7,0x15,0x88, 0x09,0xcf,0x4f,0x3c
    };

    const uint8_t pt[16] = {
        0x32,0x43,0xf6,0xa8, 0x88,0x5a,0x30,0x8d,
        0x31,0x31,0x98,0xa2, 0xe0,0x37,0x07,0x34
    };

    const uint8_t expected[16] = {
        0x39,0x25,0x84,0x1d, 0x02,0xdc,0x09,0xfb,
        0xdc,0x11,0x85,0x97, 0x19,0x6a,0x0b,0x32
    };

    uint32_t t0, t1;

    /* software AES */
    t0 = read_mcycle();
    sw_aes_set_key(key);
    sw_aes_encrypt_block(pt, (uint8_t *)sw_test1_out);
    t1 = read_mcycle();
    sw_test1_cycles = t1 - t0;

    sw_matches_expected = compare_bytes((const uint8_t *)sw_test1_out, expected, 16);

    /* hardware AES */
    t0 = read_mcycle();
    hw_aes_load_key();
    hw_aes_encrypt_one_block((uint8_t *)hw_test1_out);
    t1 = read_mcycle();
    hw_test1_cycles = t1 - t0;

    hw_matches_expected = compare_bytes((const uint8_t *)hw_test1_out, expected, 16);
    sw_matches_hw = compare_bytes((const uint8_t *)sw_test1_out, (const uint8_t *)hw_test1_out, 16);

    done_flag = 1;

    while (1) {
        __asm__ volatile ("nop");
    }

    return 0;
}
