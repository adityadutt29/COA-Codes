.model small
.stack 100h

.code
main:
    mov ah, 01h       ; Set AH to 01h, DOS function to read a character from the keyboard.
    int 21h           ; Call DOS interrupt 21h to read the character from the user input.
                        ; The character is returned in AL.

    mov dl, al        ; Move the character from AL to DL, which is used for displaying the character.
    
    mov ah, 02h       ; Set AH to 02h, DOS function to output a character to the screen.
    int 21h           ; Call DOS interrupt 21h to print the character stored in DL.

    mov ah, 4Ch       ; Set AH to 4Ch, DOS function to terminate the program.
    int 21h           ; Call DOS interrupt 21h to exit the program.

end main             ; End of the program, label "main" marks the entry point.
