.model small
.stack 100h

.data
    num1 dw 20h         ; Define `num1` as a word (2 bytes) with the value `20h` (32 in decimal).
    num2 dw 04h         ; Define `num2` as a word (2 bytes) with the value `04h` (4 in decimal).
    res dw ?            ; Define `res` to store the lower 16 bits of the multiplication result.
    resa dw ?           ; Define `resa` to store the higher 16 bits of the multiplication result.

.code
main:
    mov ax, @data       ; Load the segment address of the data segment into AX.
    mov ds, ax          ; Move the address from AX to the DS register,
                        ; setting up DS to point to the data segment.

    mov ax, num1        ; Load the value of `num1` into AX (16-bit register).
    mov bx, num2        ; Load the value of `num2` into BX (16-bit register).
    mul bx              ; Multiply AX by BX. 
                        ; The lower 16 bits of the result are stored in AX.
                        ; The upper 16 bits of the result are stored in DX.

    mov res, ax         ; Store the lower 16 bits of the result (in AX) into `res`.
    mov resa, dx        ; Store the upper 16 bits of the result (in DX) into `resa`.

    mov ah, 4ch         ; Set AH to 4Ch, the DOS function to terminate the program.
    int 21h             ; Call DOS interrupt 21h to exit the program.

end main                ; End of the program, label "main" marks the entry point.

