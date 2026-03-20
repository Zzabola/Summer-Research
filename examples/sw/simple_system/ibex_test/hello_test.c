#include <stdint.h>

#define AES_BASE        0x00090000u
#define AES_CTRL        (AES_BASE + 0x00u)
#define AES_STATUS      (AES_BASE + 0x04u)

static inline void mmio_write(uint32_t addr, uint32_t val) {
  *(volatile uint32_t *)addr = val;
}

static inline uint32_t mmio_read(uint32_t addr) {
  return *(volatile uint32_t *)addr;
}

static void delay(volatile uint32_t n) {
  while (n--) { __asm__ volatile ("nop"); }
}

int main(void) {
  while (1) {
    mmio_write(AES_CTRL, 0xA5A5A5A5u);
    (void)mmio_read(AES_STATUS);
    delay(10);
  }
}
