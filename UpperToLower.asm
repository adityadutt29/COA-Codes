.model small            ; Defines a small memory model (code and data fit in one segment)
.stack 100h             ; Allocates 256 bytes (100h) for the stack

.data                   ; Data segment begins
upper db 'D'            ; Declares a variable `upper` with the value 'D'

.code                   ; Code segment begins
main:
    mov ax, @data       ; Load the address of the data segment into AX
    mov ds, ax          ; Set DS (Data Segment register) to point to the data segment

    mov al, upper       ; Load the value of `upper` ('D') into AL
    add al, 20h         ; Convert uppercase 'D' to lowercase by adding 20h
                        ; ASCII: 'D' = 44h, 'd' = 64h, so 44h + 20h = 64h

    mov ah, 0Eh         ; Prepare for BIOS interrupt 10h function 0Eh (teletype output)
    int 10h             ; Call interrupt 10h to display the character in AL

    mov ah, 4Ch         ; Prepare for DOS interrupt 21h function 4Ch (terminate program)
    int 21h             ; Call interrupt 21h to terminate the program
end main                ; End of the program
