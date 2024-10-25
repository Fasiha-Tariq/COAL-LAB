.model small
.stack 100h
.data 
    arr db 8, 7, 6, 3, 4  
    max db 10,13, 'Maximum Number: $'
    min db 10,13, 'Minimum Number: $' 
.code
main proc  

    mov ax, @data
    mov ds, ax
    
    mov si, offset arr      
    mov cx, 4               
    
    
    mov bl, [si]            
    
L1:
    inc si                  
    cmp [si], bl            
    jle SkipUpdate        
    mov bl, [si]            
    
SkipUpdate:
    loop L1              
    
    mov dl,max
    mov dx, offset max
    
    mov ah,09
    int 21h
    
    add bl, 48              
    mov dl, bl              
    mov ah, 2               
    int 21h                 
    
              
    mov si, offset arr      
    mov cx, 4               
    
    
    mov bl, [si] 
    
L2:
    inc si                  
    cmp [si], bl           
    jge SkipUpd         
    mov bl, [si]            
    
SkipUpd:
    loop L2             

    mov dl,min
    mov dx, offset min
    
    mov ah,09
    int 21h
    
    add bl, 48              
    mov dl, bl              
    mov ah, 2               
    int 21h                 


mov ah, 4ch             
int 21h                 

main endp 
end main