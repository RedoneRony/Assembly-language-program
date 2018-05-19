.stack 100h
.model small
.data
msg dw 'Enter first value $'
msg1 dw 'Enter second value $'
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
    
    sub bl,cl
    add bl,30h
    
    
     mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
     
    
     mov ah,2
     mov dl,bl
     int 21h
     
main endp
end main
     