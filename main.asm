; main.asm
    DEVICE ZXSPECTRUM48
    org 32768

    INCLUDE "constants/vars.asm"
    INCLUDE "constants/chars.asm"
    INCLUDE "constants/memory.asm"

string_copyright
    defb _at, 22, 1, paper, white, copyri, " 2024 Hywel Rees", 0

start:
    call ROM_CLS
    ld hl, DF_SZ    ; Address of bottom two lines
    ld a, 0
    ld (hl), a      ; Set to zero
    ld hl, string_copyright

print_char:
    ld a, (hl)
    cp 0            ; Compare A to zero
    jr z, exit      ; Jump if a = 0 (end of string)
    call ROM_PRINT
    inc hl          ; move pointer to next index on string
    jr print_char

exit:
    ret

    savesna "main.sna",start
      