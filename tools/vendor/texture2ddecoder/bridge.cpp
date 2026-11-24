// Local asset-conversion bridge. Not linked into the Rust game.
#include "etc.h"
extern "C" __declspec(dllexport) int epic_decode_etc(const uint8_t *input, long width, long height, int format, uint32_t *output) {
    if (width <= 0 || height <= 0 || width > 8192 || height > 8192) return 0;
    if (format == 34) return decode_etc1(input, width, height, output);
    if (format == 45) return decode_etc2(input, width, height, output);
    if (format == 46) return decode_etc2a1(input, width, height, output);
    if (format == 47) return decode_etc2a8(input, width, height, output);
    return 0;
}
