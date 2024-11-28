 ;17. Write a program in assembly language to take two single-digit numbers as input and display whether they are equal or not. 
 ;link -> https://youtu.be/pkoXKkgJ7fo?si=aM7Do6AMbUwA_XV5
 
org 100h
.model small
.data 
 
    
msg3 db 10,13,"number are equal $"
msg4 db 10,13,"number are not equal $"

.code
main proc
  


    mov ax,@data
    mov dx,ax
  
  
 
    
    mov ah,1     ; to take input 
    int 21h 
    
    mov cl,al    
    
  
    
    mov ah,1
    int 21h  
    
    mov dl,al  
    
    cmp dl,cl 
    je lable1 
    
    
    mov dx,offset msg4
    mov ah,9
    int 21h 
    
    mov ah,4ch
    int 21h
    
    lable1:
    mov dx,offset msg3
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h 
    
    
 main endp   
    
    
ret