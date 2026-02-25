#include <stdint.h>

#define AES_BASE        0x00090000u

#define AES_CTRL        0x00u
#define AES_STATUS      0x04u

#define AES_KEY0        0x10u
#define AES_KEY1        0x14u
#define AES_KEY2        0x18u
#define AES_KEY3        0x1Cu

#define AES_DIN0        0x20u
#define AES_DIN1        0x24u
#define AES_DIN2        0x28u
#define AES_DIN3        0x2Cu

#define AES_DOUT0       0x30u
#define AES_DOUT1       0x34u
#define AES_DOUT2       0x38u
#define AES_DOUT3       0x3Cu

#define CTRL_SET_KEY    (1u << 0)
#define CTRL_ENCRYPT    (1u << 1)

#define ST_KEY_DONE     (1u << 0)
#define ST_ENC_DONE     (1u << 1)

static inline void mmio_write(uint32_t addr, uint32_t value) {
  *(volatile uint32_t *)addr = value;
}

static inline uint32_t mmio_read(uint32_t addr) {
  return *(volatile uint32_t *)addr;
}

static void wait_done(uint32_t mask) {
  while (!(mmio_read(AES_BASE + AES_STATUS) & mask)) {
  }
}

int main(void) {

  uint32_t key[4] = {
    0x03020100u, 0x07060504u, 0x0B0A0908u, 0x0F0E0D0Cu
  };

  uint32_t pt[4] = {
    0x33221100u, 0x77665544u, 0xBBAA9988u, 0xFFEEDDCCu
  };

  volatile uint32_t ct[4];

  // Write key
  mmio_write(AES_BASE + AES_KEY0, key[0]);
  mmio_write(AES_BASE + AES_KEY1, key[1]);
  mmio_write(AES_BASE + AES_KEY2, key[2]);
  mmio_write(AES_BASE + AES_KEY3, key[3]);

  mmio_write(AES_BASE + AES_CTRL, CTRL_SET_KEY);
  wait_done(ST_KEY_DONE);

  // Write plaintext
  mmio_write(AES_BASE + AES_DIN0, pt[0]);
  mmio_write(AES_BASE + AES_DIN1, pt[1]);
  mmio_write(AES_BASE + AES_DIN2, pt[2]);
  mmio_write(AES_BASE + AES_DIN3, pt[3]);

  mmio_write(AES_BASE + AES_CTRL, CTRL_ENCRYPT);
  wait_done(ST_ENC_DONE);

  // Read ciphertext
  ct[0] = mmio_read(AES_BASE + AES_DOUT0);
  ct[1] = mmio_read(AES_BASE + AES_DOUT1);
  ct[2] = mmio_read(AES_BASE + AES_DOUT2);
  ct[3] = mmio_read(AES_BASE + AES_DOUT3);

  while (1) {}
}

// Minimal entry point
void _start(void) __attribute__((section(".text.start")));
void _start(void) {
  main();
  while (1) {}
}
