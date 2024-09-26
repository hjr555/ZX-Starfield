    DEVICE ZXSPECTRUM48
    org 32768

    jp start

string_copyright
    defb key_copyright, " 2024 Hywel Rees", 0

key_copyright EQU $7f

SCREEN_BITMAP   = $4000
BITMAP_SIZE     = $1800
COLOUR_ATTR     = $5800
COLOUR_SIZE     = $0300
ROM_CLS         = $0DAF
ENTER           = $0D
BLACK_WHITE     = $47   ; black paper, white ink

start:
    ;im 1                ; Set interrupt mode 1
    ;call ROM_CLS

    ld bc, string_copyright
    ld de, $5AE0

print_loop:
    ld a, (bc)
    cp 0
    jr z, exit  ; Jump if a = 0 (end of string)
    rst #10

    ld a, $d6
    ld (de),a

    inc bc      ; move pointer to next index on string
    inc de
    jr print_loop

exit:
    ret

; screen bitmap (256x192)
; #4000 -> #57FF

; screen colour attributes (32x24)
; #5800 -> #5AFF
; F B Paper  Ink
; 7 6 5 4 3 2 1 0

; User-Defined Graphics
; FF58 -> FFFF


    
    SAVESNA  "starfield.sna", start ; Load (and run) from 0x8000


