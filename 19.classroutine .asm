.STACK 100H
.MODEL SMALL
.DATA
  M  DW 'Enter the number:  $' 
  M1 DW ' ....................................... $'
  M2 DW '|DAY       .SUBJECT       |ROOM  |TIME  |$'
  M3 DW '........................................ $'
  M4 DW '|Monday:   .data commu.   |314   |10:00am|$'
  M5 DW '.........................................$' 
  M6 DW '|          .Bio-info.     |211   |1:00pm |$'
  M7 DW '|........................................$'
  M8 DW ' ....................................... $'
  M9 DW '|DAY       .SUBJECT       |ROOM  |TIME  |$'
  M10 DW '....................................... $'
  M11 DW '|Tuesday: .Assembly lab. |303   |10:00am|$'
  M12 DW '........................................$' 
  M13 DW '|         .Data Comm.    |314   |1:00pm |$'
  M14 DW '|.......................................$'
  M15 DW ' .......................................$'
  M16 DW '|DAY      .SUBJECT       |ROOM  |TIME  |$'
  M17 DW '........................................$'
  M18 DW '|Wednes:  .Assembly Theo.|314.  |10:00am|$'
  M19 DW '........................................$' 
  M20 DW '|         .Bio-info.     |212   |1:00pm |$'
  M21 DW '|.......................................$'
  
             
  
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
     
   LEA DX,M
   MOV AH,9
   INT 21H 
     
     MOV AH,1
     INT 21H
     MOV BL,AL
    
     
     CMP AL,'1'
     JE MONDAY
     CMP AL,'2'
     JE TUESDAY
     CMP AL,'3'
     JE WEDNSDAY 
     
     
   
   JMP END_CASE
  
  
     
   MONDAY:
   
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
     
    
    LEA DX,M1
    MOV AH,9
    INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
   LEA DX,M2
   MOV AH,9
   INT 21H
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
   
   LEA DX,M3
   MOV AH,9
   INT 21H
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M4
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M5
   MOV AH,9
   INT 21H
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M6
   MOV AH,9
   INT 21H
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M7
   MOV AH,9
   INT 21H
   
   JMP END_CASE 
     
   TUESDAY:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M8
   MOV AH,9
   INT 21H
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M9
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M10
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M11
   MOV AH,9
   INT 21H
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
   
   LEA DX,M12
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M13
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M14
   MOV AH,9
   INT 21H  
   
   JMP END_CASE
   
   WEDNSDAY:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
       
   LEA DX,M15
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M16
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M17
   MOV AH,9
   INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M18
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M19
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M20
   MOV AH,9
   INT 21H 
   
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
   
   LEA DX,M21
   MOV AH,9
   INT 21H
   
   JMP END_CASE
   
   END_CASE:
MAIN ENDP
END MAIN