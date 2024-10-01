; main.asm
    DEVICE ZXSPECTRUM48
    org 32768

    INCLUDE "constants/vars.asm"
    INCLUDE "constants/chars.asm"
    INCLUDE "constants/memory.asm"

string_copyright
    defb copyri, " 2024 Hywel Rees", 0

start:
    ld hl, string_copyright

print_char:
    ld a, (hl)
    cp 0            ; Compare A to zero
    jr z, exit      ; Jump if a = 0 (end of string)
    RST $10         ; print
    inc hl          ; move pointer to next index on string
    jr print_char

exit:
    ret

    savesna "main.sna",start
      