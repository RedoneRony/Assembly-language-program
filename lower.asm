.stack 100h
.model small
.data 
 msg dw " please input a number: $"
 msg1 dw " please input another number: $"
 msg2 dw " The lower number is : $"
 
 
.code
 main proc  
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
    
    lea dx,msg1
    mov ah,9
    int 21h
     
    mov ah,1
    int 21h
    mov cl,al 
    
     mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    cmp bl,cl
    jg grater
    
    
    cmp bl,cl
    jl less
    jmp end_case
    
    grater:
    lea dx,msg2
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,cl
    int 21h
    
    
     jmp end_case
     
    less: 
    lea dx,msg2
    mov ah,9
    int 21h
    mov ah,2
    mov dl,bl
    int 21h
     end_case:
     
    
    main endp
    end main 
    
    
    
    