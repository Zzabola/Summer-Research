#include <stdint.h>

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

#define STATUS_KEY_DONE  (1u << 0)
#define STATUS_ENC_DONE  (1u << 1)

static inline void mmio_write(uint32_t addr, uint32_t val) {
    *(volatile uint32_t *)addr = val;
}

static inline uint32_t mmio_read(uint32_t addr) {
    return *(volatile uint32_t *)addr;
}

static void delay(volatile uint32_t n) {
    while (n--) {
        __asm__ volatile ("nop");
    }
}

int main(void) {
    mmio_write(AES_KEY0, 0x09cf4f3c);
    mmio_write(AES_KEY1, 0xabf71588);
    mmio_write(AES_KEY2, 0x28aed2a6);
    mmio_write(AES_KEY3, 0x2b7e1516);

    mmio_write(AES_CTRL, CTRL_SET_KEY);

    while ((mmio_read(AES_STATUS) & STATUS_KEY_DONE) == 0u) {
        delay(10);
    }

    mmio_write(AES_DIN0, 0xe0370734);
    mmio_write(AES_DIN1, 0x313198a2);
    mmio_write(AES_DIN2, 0x885a308d);
    mmio_write(AES_DIN3, 0x3243f6a8);

    mmio_write(AES_CTRL, CTRL_ENCRYPT);

    while ((mmio_read(AES_STATUS) & STATUS_ENC_DONE) == 0u) {
        delay(10);
    }

    volatile uint32_t ct0 = mmio_read(AES_DOUT0);
    volatile uint32_t ct1 = mmio_read(AES_DOUT1);
    volatile uint32_t ct2 = mmio_read(AES_DOUT2);
    volatile uint32_t ct3 = mmio_read(AES_DOUT3);

    while (1) { }

    return 0;
}
