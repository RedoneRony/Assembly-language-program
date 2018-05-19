.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    
    XOR CX,CX
    
    MOV AH,1
    INT 21H
    
    WHILE_LOOP:
    
    CMP AL,0DH
    JE END_WHILE 
    
          
    PUSH AX
    INC CX
    INT 21H
    
    JMP WHILE_LOOP  
    
    END_WHILE:
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    TOP:
    POP DX
    INT 21H
    LOOP TOP
    
   
    
    
MAIN ENDP
END MAIN