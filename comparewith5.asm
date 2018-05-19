.stack 100h
.model small
.data 
msg dw "Enter The Number $"
msg1 dw "Bigger $"  
msg2 dw "Equal $"
msg3 dw "Small $"
.code
main proc  
    mov ax, @data
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
     
    cmp bl,'5'
    jg Bigger
    
    cmp bl,'5'
    je equal
     
    cmp bl,'5'
    jl less
          jmp end_case 
    Bigger:
    lea dx,msg1
    mov ah,9
    int 21h
         jmp end_case 
    equal:
    lea dx,msg2
    mov ah,9
    int 21h     
        jmp end_case 
    less:
    lea dx,msg3
    mov ah,9
    int 21h
       jmp end_case
      end_case:
     main endp
     end main