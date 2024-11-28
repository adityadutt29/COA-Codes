;15. Write a program in assembly language to display a two-digit number on the screen. The two-digits number is required to be taken in the program itself.   
;link-> https://youtu.be/RJZ_RmQm45w?si=-0T0ly3xPaqfGs7W


.org 100h 
.model small
.data
 num db 10,? 
 .code  
 main proc
   mov ax,@data
   mov dx,ax
   
   LEA dx,num
   mov ah,0AH
   int 21h
   
   mov dl,num+2
   mov ah,02h
   int 21h 
   
    
   mov dl,num+3
   mov ah,02h
   int 21h
             
   mov ah,4ch
   int 21h
   
 main endp
 ret
