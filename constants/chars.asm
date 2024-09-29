; chars.asm
; chars, udg, colours, and effects

cur_le  equ 8      
cur_ri  equ 9
cur_dn  equ 10    
cur_up  equ 11

cr      equ 13  ; carriage return
ink     equ 16  ; Key code for setting Ink
paper   equ 17  ; Key code for setting Paper
flash   equ 18  ; Key code for setting Flash
bright  equ 19  ; Key code for setting Bright
inverse equ 20  ; Key code for setting Inverse 
over    equ 21  ; Key code for setting Overtype mode
_at     equ 22  ; Key code for setting At position, starts at position 1, 1
tab     equ 23  ; Key code for setting Tab
copyri  equ 127 ; Copyright symbol

off     equ 0
on      equ 1

black   equ 0
blue    equ 1
red     equ 2
magenta equ 3
green   equ 4
cyan    equ 5
yellow  equ 6
white   equ 7

udga      equ 144 ; UDG key A
udgb      equ 145 ; UDG key B
udgc      equ 146 ; UDG key C
udgd      equ 147 ; UDG key D
udge      equ 148 ; UDG key E
udgf      equ 149 ; UDG key F
udgg      equ 150 ; UDG key G
udgh      equ 151 ; UDG key H
udgi      equ 152 ; UDG key I
udgj      equ 153 ; UDG key J
udgk      equ 154 ; UDG key K
udgl      equ 155 ; UDG key L
udgm      equ 156 ; UDG key M
udgn      equ 157 ; UDG key N
udgo      equ 158 ; UDG key O
udgp      equ 159 ; UDG key P
udgq      equ 160 ; UDG key Q
udgr      equ 161 ; UDG key R
udgs      equ 162 ; UDG key S
udgt      equ 163 ; UDG key T
udgu      equ 164 ; UDG key U