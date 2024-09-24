    DEVICE ZXSPECTRUM48
    org $8000

start:
    ; Your code here
    ld bc, $7f 
    rst $10
    ret

    SAVESNA  "starfield.sna", start ; Load (and run) from 0x8000
