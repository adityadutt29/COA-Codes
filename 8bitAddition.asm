.model small
.stack 100h

.data
num1 db 20h          ; Define `num1` as a byte holding the hexadecimal value `20h`.
num2 db 30h          ; Define `num2` as a byte holding the hexadecimal value `30h`.
res db ?             ; Define `res` as a byte to store the result of the addition.

.code
main:
    mov ax, @data     ; Load the segment address of the data segment into AX.
    mov ds, ax        ; Move the address from AX to the data segment (DS) register,
                      ; setting up DS to point to the data segment.
    
    mov al, num1      ; Load the value of `num1` into AL (lower byte of AX).
    add al, num2      ; Add the value of `num2` to AL. Result is stored in AL.
    mov res, al       ; Store the result from AL into the `res` variable in memory.

    mov ah, 4ch       ; Set AH to 4Ch, the DOS function to terminate the program.
    int 21h           ; Call DOS interrupt 21h to exit the program.

end main              ; End of the program, label "main" marks the entry point.
