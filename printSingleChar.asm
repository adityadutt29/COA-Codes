.model small            ; Defines a small memory model (code and data fit in one segment)
.stack 100h             ; Allocates 256 bytes (100h) for the stack

.code                   ; Code segment begins
main:
    mov ah, 02h         ; Prepare for DOS interrupt 21h function 02h (output a character)
    mov dl, 'A'         ; Load the character 'A' into DL (the character to be displayed)
    int 21h             ; Call interrupt 21h to display the character in DL

    mov ah, 4Ch         ; Prepare for DOS interrupt 21h function 4Ch (terminate program)
    int 21h             ; Call interrupt 21h to terminate the program
end main                ; End of the program
