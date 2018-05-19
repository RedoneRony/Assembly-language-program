.stack 100h
.model small
.data 

msg dw "abir $"
msg1 dw "abir $"
msg2 dw "abir $"
msg3 dw "abir $"  
msg4 dw "abir $"
msg5 dw "abir $"
msg6 dw "abir $"
msg7 dw "abir $"
msg8 dw "abir $"
msg9 dw "abir $"



.code
main proc
   mov ax,@data
   mov ds,ax
   
   lea dx,msg
   mov ah,9
   int 21h 
    
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h
     
   lea dx,msg1
   mov ah,9
   int 21h
   
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h 
   
   lea dx,msg2
   mov ah,9
   int 21h
   
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h
   
   lea dx,msg3
   mov ah,9
   int 21h
   
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h
   
   lea dx,msg4
   mov ah,9
   int 21h
   
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h
   
   lea dx,msg5
   mov ah,9
   int 21h
   
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h
   
   lea dx,msg6
   mov ah,9
   int 21h
   
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h
   
   lea dx,msg7
   mov ah,9
   int 21h
   
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h 
   
   lea dx,msg8
   mov ah,9
   int 21h
   
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h 
   
   lea dx,msg9
   mov ah,9
   int 21h
   
        
         main endp
        end main
          


