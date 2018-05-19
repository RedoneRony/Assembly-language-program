.stack 100h
.model small
.data 
msg dw "Enter a lowercase letter $"
msg1 dw "Converted uppercase  letter $"
.code
main proc
 
 mov ax,@data
 mov ds,ax
 lea dx,msg
 mov ah,9
 int 21h
 
 MOV AH,1
 INT 21H
 MOV BL,AL 
           
           
 mov ah,2
 mov dl,0dh
 int 21h                    
 mov dl,0ah
 int 21h
  
  
 sub bl,20h
 
 
 lea dx,msg1
 mov ah,9
 int 21h
 mov ah,2
 mov dl,bl
 int 21h
  main endp
end main
           