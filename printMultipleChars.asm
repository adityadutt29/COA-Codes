.model small            ; Defines a small memory model (code and data fit in one segment)
.stack 100h             ; Allocates 256 bytes (100h) for the stack

.data                   ; Data segment begins
msg db 'ghog ghog$'     ; Declares a string `msg` ending with a `$` character
                        ; The `$` is required as a terminator for the DOS interrupt 21h, function 09h

.code                   ; Code segment begins
main:
    mov ax, @data       ; Load the address of the data segment into AX
    mov ds, ax          ; Set DS (Data Segment register) to point to the data segment

    mov ah, 09h         ; Prepare for DOS interrupt 21h function 09h (display string)
    lea dx, msg         ; Load the address of the string `msg` into DX
    int 21h             ; Call interrupt 21h to display the string
                        ; The string will be printed until the `$` character is encountered

    mov ah, 4Ch         ; Prepare for DOS interrupt 21h function 4Ch (terminate program)
    int 21h             ; Call interrupt 21h to terminate the program
end main                ; End of the program
