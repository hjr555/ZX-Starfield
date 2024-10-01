; memory.asm
; Various memory addresses

; screen bitmap (256x192)
; #4000 -> #57FF
SCREEN_BITMAP   = $4000 ; Start of the display file
BITMAP_SIZE     = $1800 ; Length of the display file


; screen colour attributes (32x24)
; #5800 -> #5AFF
; F B Paper  Ink
; 7 6 5 4 3 2 1 0
COLOUR_ATTR     = $5800 ; Start of the colour data
COLOUR_SIZE     = $0300 ; Length of the colour data

ROM_CLS         = $0DAF ; Address of ROM CLS function
ROM_PRINT       = $15F2 ; Address of Print function (print a char)
ROM_CHANNEL     = $5633 ; Select channel (1 = lower screen, 2 = upper screen)
; User-Defined Graphics
; FF58 -> FFFF
