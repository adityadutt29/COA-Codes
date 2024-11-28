.model small 
.stack 100h

.data
    dividend db 0D0h ; 8-bit value
    divisor db 04h   ; 8-bit value
    quo db ?         ; 8-bit quotient
    rem db ?         ; 8-bit remainder
    
.code
main:
    mov ax, @data
    mov ds, ax
    
    mov al, dividend ; Load 8-bit dividend into AL
    xor ah, ah       ; Clear AH to prepare for 8-bit division
    mov bl, divisor  ; Load 8-bit divisor into BL
    div bl           ; Perform 8-bit division: AL = AL / BL
    
    mov quo, al      ; Store quotient in 'quo'
    mov rem, ah      ; Store remainder in 'rem'
    
    mov ah, 4Ch      ; Exit program
    int 21h
    
end main

