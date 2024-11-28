.model small
.stack 100h

.data
    num1 db 20h         ; Define `num1` as a byte with the value `20h` (32 in decimal).
    num2 db 04h         ; Define `num2` as a byte with the value `04h` (4 in decimal).
    res dw ?            ; Define `res` as a byte to store the result of the multiplication.

.code
main:
    mov ax, @data       ; Load the segment address of the data segment into AX.
    mov ds, ax          ; Move the address from AX to the DS register, 
                        ; setting up DS to point to the data segment.

    mov al, num1        ; Load the value of `num1` into AL (lower byte of AX).
    mov bl, num2        ; Load the value of `num2` into BL.
    mul bl              ; Multiply AL by BL. The result is stored in AX.
                        ; Since both operands are 8-bit, the result will fit in AL (lower part of AX).

    mov res, ax         ; Store the result from AL into the `res` variable.

    mov ah, 4ch         ; Set AH to 4Ch, the DOS function to terminate the program.
    int 21h             ; Call DOS interrupt 21h to exit the program.

end main                ; End of the program, label "main" marks the entry point.

