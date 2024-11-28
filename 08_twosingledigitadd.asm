;16. Write an assembly language program to take two single-digit integers from the user and print the result of addition on the screen.     
;link->https://youtu.be/CSlG7Io1XRw?si=7Tc06o1pUJ4ccVyo

org 100h
.model 
.data
.code
main proc
    
   mov ah,1
   int 21h
   mov bl,al
   mov al,1
   int 21h 
   add bl,al
   
   sub bl,48 
   mov dl,bl
   mov ah,2
   int 21h 
 main endp
ret
   