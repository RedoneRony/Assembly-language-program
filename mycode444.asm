.stack 100h
.model small
.data
msg dw "Please enter anything: $"
msg1 dw "The Output is : Nothing $"
msg2 dw "The output is : $" 
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
    
    cmp bl,'a'
    jl  case 
    
    
    cmp bl,'z'
    jg  case 
    
    
    lea dx,msg2
    mov ah,9
    int 21h
     
    mov ah,2
    mov dl,bl
    int 21h 
    jmp end_case 
    
    case:
    lea dx,msg1
    mov ah,9
    int 21h
    
    
     end_case:
    main endp
   end main