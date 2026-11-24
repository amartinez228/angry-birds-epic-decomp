// Asset preparation only; the game remains a Rust executable.
#define STB_VORBIS_NO_STDIO
#include "stb_vorbis.c"

extern "C" __declspec(dllexport) int epic_vorbis_decode(
    const unsigned char* data, int length, int* channels, int* rate, short** pcm) {
    return stb_vorbis_decode_memory(data, length, channels, rate, pcm);
}

extern "C" __declspec(dllexport) void epic_vorbis_free(void* pcm) {
    free(pcm);
}
