.model small
.stack 100h

data
    string db 'Sanat','$'  ; Define a string "Sanat" terminated by '$'. 
                           ; The '$' is required by DOS interrupt 21h, function 09h to recognize the end of the string.

.code
main:
    mov ax, @data          ; Load the segment address of the data segment into AX.
    mov ds, ax             ; Move the address from AX to the data segment (DS) register, 
                           ; setting up DS to point to the data segment.
    
    lea dx, string         ; Load the effective address of the string into DX. 
                           ; DX is used by interrupt 21h, function 09h to locate the string.

    mov ah, 09h            ; Set AH to 09h, the DOS function for printing a string.
    int 21h                ; Call DOS interrupt 21h to print the string in DX. 
                           ; It prints characters from DX until it encounters a '$'.

    mov ah, 4ch            ; Set AH to 4Ch, the DOS function to terminate a program.
    int 21h                ; Call DOS interrupt 21h to exit the program.

end main                   ; End of the program, label "main" marks the entry point.
