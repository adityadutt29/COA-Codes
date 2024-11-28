.model small
.stack 100h

.data
    dividend dw 1234h   ; Define `dividend` as a 16-bit word with the value `1234h` (4660 in decimal).
    divisor dw 0ABCh    ; Define `divisor` as a 16-bit word with the value `0ABCh` (2748 in decimal).
    quo dw ?            ; Define `quo` to store the quotient of the division.
    rem dw ?            ; Define `rem` to store the remainder of the division.

.code
main:
    mov ax, @data       ; Load the segment address of the data segment into AX.
    mov ds, ax          ; Move the address from AX to the DS register, 
                        ; setting up DS to point to the data segment.

    mov ax, dividend    ; Load the `dividend` value into the AX register (16-bit).
    xor dx, dx          ; Clear the DX register (set to zero). This is important since the 
                        ; result of a division may require 32 bits (combining AX and DX).
    mov bx, divisor     ; Load the `divisor` value into the BX register (16-bit).

    div bx              ; Perform the division: AX / BX. 
                        ; The quotient is stored in AX, and the remainder is stored in DX.
                        ; The `div` instruction divides the value in DX:AX by the value in BX.
                        ; Since DX was cleared to 0, the operation is effectively `AX / BX`.
    
    mov quo, ax         ; Move the quotient (result in AX) into the `quo` variable.
    mov rem, dx         ; Move the remainder (result in DX) into the `rem` variable.

    mov ah, 4ch         ; Set AH to 4Ch, the DOS function to terminate the program.
    int 21h             ; Call DOS interrupt 21h to exit the program.

end main               ; End of the program, label "main" marks the entry point.
