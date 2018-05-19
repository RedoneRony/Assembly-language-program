.stack 100h
.model small
.data
.code
main proc
 

 MOV AH,1
 INT 21H
 MOV BL,AL 
           
           
 mov ah,2
 mov dl,0dh
 int 21h
 mov dl,0ah
 int 21h
  
  
; add bl,20h
 sub bl,20h
 
 mov ah,2
 mov dl,bl
 int 21h
  main endp
end main
           