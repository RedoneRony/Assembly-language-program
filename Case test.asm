.stack 100h
.model small
.data

.code 
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
    mov ah,2
    mov dl,'O'
    int 21h
        jmp end_case
    
    even:
     
    mov ah,2
    mov dl,'E'
    int 21h
       jmp end_case
    
    
    end_case:
    