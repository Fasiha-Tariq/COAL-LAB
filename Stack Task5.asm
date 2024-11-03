.model small
.stack 100h
.data
     arr db 45,55,65,75,86
.code 
main Proc
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    mov cx,5
    
    psh:  
    
    mov bx,[si]
    push bx
    inc si
    loop psh 
    
    mov cx,5
    
    pp:
    mov ax,bx
    pop ax
    AAM
    add ah,30h
    add al,30h
    
    mov bh,ah
    mov bl,al
    
    mov dl,bh      
    mov ah,02
    int 21h
    
    mov dl,bl 
    mov ah,02    
    int 21h 
    
    mov dl,10
    mov ah,02
    int 21h
    
    mov dl,13
    mov ah,02
    int 21h 
    
    loop pp
    
    
mov ah,4ch
int 21h
main endp
end main



 
    
   