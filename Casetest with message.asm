.stack 100h
.model small
.data
 msg dw "Input the Number: $"
 msg1 dw "The number is Even $"
 msg2 dw "The number is odd $"
.code 
    mov ax,@data
    mov ds,ax 
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1                                
    int 21h
    mov bl,al  
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    cmp bl,'1'
    je odd
    
    cmp bl,'3'
    je odd
    
    cmp bl,'2'
    je even
    
    cmp bl,'4'
    je even
    
    jmp end_case 
    
    odd: 
    lea dx,msg2
    mov ah,9
    int 21h
          jmp end_case 
    even: 
    lea dx,msg1
    mov ah,9
    int 21h
          jmp end_case
     end_case:
    