#include "sw_aes.h"
#include "aes.h"

static struct AES_ctx ctx;

void sw_aes_set_key(const uint8_t key[16]) {
    AES_init_ctx(&ctx, key);
}

void sw_aes_encrypt_block(const uint8_t in[16], uint8_t out[16]) {
    for (int i = 0; i < 16; i++) {
        out[i] = in[i];
    }
    AES_ECB_encrypt(&ctx, out);
}
