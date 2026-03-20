#include <stdint.h>

#define AES_BASE  0x00090000u
#define AES_CTRL  (AES_BASE + 0x00u)
#define AES_STAT  (AES_BASE + 0x04u)

static inline void mmio_write(uint32_t addr, uint32_t val) {
  *(volatile uint32_t *)addr = val;
}
static inline uint32_t mmio_read(uint32_t addr) {
  return *(volatile uint32_t *)addr;
}

int main(void) {
  volatile uint32_t x = 0;
  while (1) {
    mmio_write(AES_CTRL, 0xA5A50001u);
    x = mmio_read(AES_STAT);
    mmio_write(AES_CTRL, 0xA5A50002u);
    x = mmio_read(AES_STAT);
  }
}
