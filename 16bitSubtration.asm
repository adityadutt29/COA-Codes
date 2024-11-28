.model small
.stack 100h

.data
num1 dw 50h          ; Define `num1` as a word (2 bytes) with the value `50h` (80 in decimal).
num2 dw 30h          ; Define `num2` as a word (2 bytes) with the value `30h` (48 in decimal).
res dw ?             ; Define `res` as a word (2 bytes) to store the result of the subtraction.

.code
main:
    mov ax, @data     ; Load the segment address of the data segment into AX.
    mov ds, ax        ; Move the address from AX to the data segment (DS) register, 
                      ; setting up DS to point to the data segment.

    mov ax, num1      ; Load the value of `num1` into the AX register.
    sub ax, num2      ; Subtract the value of `num2` from AX. Result is stored in AX.
    mov res, ax       ; Store the result from AX into the `res` variable in memory.

    mov ah, 4ch       ; Set AH to 4Ch, the DOS function to terminate the program.
    int 21h           ; Call DOS interrupt 21h to exit the program.

end main              ; End of the program, label "main" marks the entry point.
