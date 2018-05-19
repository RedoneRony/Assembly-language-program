.stack 100h
.model small
.data
.code
main proc 
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    cmp bl,'Y'
    je  end_case 
    
    
    cmp bl,'y'
    je  end_case
     
    mov ah,2
    mov dl,bl
    int 21h 
  
     end_case:
    main endp
   end main