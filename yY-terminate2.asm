.STACK 100H
.MODEL SMALL
.DATA

.CODE
     MAIN PROC
     
     MOV AH,1
     INT 21H
     MOV BL,AL 
     
     CMP BL,'Y'
     JE END_case 
     CMP BL,'y'
     JE END_case 
     
     JMP MOD
     
     MOD:
     MOV AH,1
     INT 21H
     MOV BL,AL
     
     CMP BL,'Y'
     JE END_case 
     CMP BL,'y'
     JE END_case 
     
     JMP MOD
     
         
     
    END_case:
    MAIN ENDP
END MAIN