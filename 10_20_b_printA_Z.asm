; (b) Write an assembly language program to print the characters from A to Z. 
; asci values are from 65->A to 90 ->Z 
;link-> https://youtu.be/3CmAMdp2Mf4?si=6UBZGYc_eykBw1hD


org 100h
.model small
.data
.code
main proc   
    mov cx,26       
       
    
     mov dx,65
    test:
    mov ah,2
    int 21h 
    
    
    
   inc dx 
    loop test
    
    
main endp 

ret

