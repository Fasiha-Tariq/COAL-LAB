.model small
.stack 100h

.data
    num1 db 9       
    num2 db 8        
    num3 db 180      
    num4 db 95   
    result db ?    
    msg1 db 10,13, "After Adding 9 and 8: $"
    msg2 db 10,13, "After Adding 180 and 95: $"
    messageCarry db "!Carry occurred!$"
    messageNoCarry db "!No carry occurred!$"

.code
main proc
   
    mov ax, @data      
    mov ds, ax

    ; First addition: num1 + num2
    mov al, num1       
    add al, num2       
    mov result, al   
    
    mov dl,msg1               
    mov dx, offset msg1
    mov ah,09
    int 21h  
    
    mov dl,10
    mov ah,2
    int 21h
                   
    jc carryOccurred  
    mov dx, offset messageNoCarry
    jmp printMessage 

carryOccurred:
    mov dx, offset messageCarry  
    jmp printMessage    

printMessage:
    mov ah, 09h        
    int 21h             
   

    ; Second addition: num3 + num4
    mov al, num3       
    add al, num4       
    mov result, al     
    
    mov dl,msg2               
    mov dx, offset msg2
    mov ah,09
    int 21h 
    
    mov dl,10
    mov ah,2
    int 21h
    
    jc carry        
    mov dx, offset messageNoCarry
    jmp printMessage2  

carry:
    mov dx, offset messageCarry  
    jmp printMessage2      

printMessage2:
    mov ah, 09h     
    int 21h             
    jmp endProgram       

endProgram:
mov ah, 4ch        
int 21h            

main endp
end main