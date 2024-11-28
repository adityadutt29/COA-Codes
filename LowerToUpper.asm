.model small            ; Defines a small memory model (code and data fit in one segment)
.stack 100h             ; Allocates 256 bytes (100h) for the stack

.data                   ; Data segment begins
    lower db 'a'        ; Declares a variable `lower` with the value 'a'

.code                   ; Code segment begins
main:
    mov ax, @data       ; Load the address of the data segment into AX
    mov ds, ax          ; Set DS (Data Segment register) to point to the data segment

    mov al, [lower]     ; Load the value of `lower` ('a') into AL
    sub al, 20h         ; Convert lowercase 'a' to uppercase by subtracting 20h
                        ; ASCII: 'a' = 61h, 'A' = 41h, so 61h - 20h = 41h

    mov dl, al          ; Store the uppercase character from AL into DL
    mov ah, 02h         ; Prepare for DOS interrupt 21h function 02h (character output)
    int 21h             ; Call interrupt 21h to display the character in DL

    mov ah, 4ch         ; Prepare for DOS interrupt 21h function 4Ch (terminate program)
    int 21h             ; Call interrupt 21h to terminate the program
end main                ; End of the program
