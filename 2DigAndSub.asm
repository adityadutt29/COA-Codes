.model small
.stack 100h

.code
main:
    mov ah, 01h       ; Set AH to 01h, DOS function to read a character from the keyboard.
    int 21h           ; Call DOS interrupt 21h to read the character from the user input.
                        ; The character is returned in AL (ASCII value of the key pressed).

    sub al, '0'       ; Convert the ASCII character (digit) in AL to its numerical value by subtracting '0'.
                        ; For example, if AL = '5', subtract '0' (ASCII 30h), making AL = 5.

    mov bl, al        ; Move the numerical value of the first digit (in AL) to BL for later use.

    int 21h           ; Call DOS interrupt 21h again to read another character from the user input.
                        ; The second character is returned in AL.

    sub al, '0'       ; Convert the ASCII character (digit) in AL to its numerical value by subtracting '0'.

    sub bl, al        ; Subtract the second digit (in AL) from the first digit (in BL).
                        ; The result of the subtraction is stored in BL.

    add bl, '0'       ; Convert the result back to an ASCII character by adding '0'.
                        ; For example, if BL = 3, adding '0' makes BL = '3' (ASCII value 33h).

    mov dl, bl        ; Move the result (in BL) into DL for displaying the character.

    mov ah, 02h       ; Set AH to 02h, DOS function to output a character to the screen.
    int 21h           ; Call DOS interrupt 21h to print the result stored in DL.

    mov ah, 4Ch       ; Set AH to 4Ch, DOS function to terminate the program.
    int 21h           ; Call DOS interrupt 21h to exit the program.

end main             ; End of the program, label "main" marks the entry point.
