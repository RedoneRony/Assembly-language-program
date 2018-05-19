 
.STACK 100H
.MODEL SMALL
.DATA
msg dw "Input$"
msg1 dw "Output$"
  
.CODE
   MAIN PROC 
    mov ax,@data
    mov ds,ax
    lea dx,msg
    mov ah,9
    int 21h
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
     
     ; mov ax,@data
     ; mov ds,ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    MOV AH,2
    MOV DL,BL
    INT 21H

   MAIN ENDP
END MAIN




