.stack 100h
.model small
.data
msg dw "Please Inter uppercase Letter $"
msg1 dw "The lowercase Letter is $"  
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
    add bl,20h
    ;sub bl,20h
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
     
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
     
     main endp
     end main
    
    