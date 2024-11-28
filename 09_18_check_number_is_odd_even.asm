;Write a program in assembly language to check whether a single-digit number is oddor even.  
;link->https://youtu.be/s6_GZ-khqCw?si=bwxMzG57Ka3cUuWF

org 100h
.model small
.data  
msg2 db 10,13," odd number $"
msg3 db 10,13," even number $"
.code
main proc 
     mov ax,@data
    mov dx,ax
    
    mov ah,1    
    int 21h 
    
    mov bl,2
    div bl     
    cmp ah,0
    je even 
    
  
    mov dx,offset msg2
    mov ah,9
    int 21h 
    
    mov ah,4ch
    int
    
    even:
    mov dx,offset msg3
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h 


    
main endp
ret