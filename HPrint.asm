


.stack 100h
.model small
.data
.code
main proc
    mov ah,2
    mov dl,"H"
    int 21h
    
    mov ah,2
    mov dl,0dh 
    int 21h
    mov dl,0ah
    int 21h
     
     mov ah,2
     mov dl, "P"
     int 21h
    
    main endp
    end main






