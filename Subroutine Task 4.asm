.model
.stack 100h
.data   
num1 db 'Multiplying of 3 numbers X*Y*Z: $'
.code
main Proc   
   
    call print
    call multiplication
    
  mov ah,4ch
  int 21h  
  main endp
 
 multiplication proc
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    mov dl,'*'
    mov ah,2
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    sub cl,48  
    mov dl,'*'
    mov ah,2
    int 21h
     
    mov al, bl
    mul cl 
    
    mov bx, ax   
    
  
    mov ah,1
    int 21h
    mov dl,al
    sub dl,48 
    
    mov al,bl

    mul dl   
    
    
    
    AAM   
    
      
    mov ch,ah
    mov cl,al    
    
      mov dl,'=' 
        mov ah,2
        int 21h
    
    
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h
    ret
    multiplication endp  
 
 print proc
        mov ax,@data
        mov ds,ax
        
        mov dl,num1
        mov dx,offset num1
        
        mov ah,9
        int 21h    
        
        ret  
 print endp    
 
 end main