#ifndef SW_AES_H
#define SW_AES_H

#include <stdint.h>

void sw_aes_set_key(const uint8_t key[16]);
void sw_aes_encrypt_block(const uint8_t in[16], uint8_t out[16]);

#endif
