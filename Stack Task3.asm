.model small 
.stack 100h
.data 
String db ?
.code
main proc
    
    mov ax,@data
    mov dx,ax
    mov si,offset String
    
    mov cx,4
    
    psh:
    mov ah,1
    int 21h
    mov si, ax
    
   
    push si
     
    loop psh
    
    mov dl,10
    mov ah,2
   int 21h
   
   mov dl,13
   mov ah,2 
   int 21h
   
    
    mov cx,4
    pp: 
    pop dx
    
    mov ah,02
    int 21h
    
    mov dl,10
    mov ah,2
   int 21h
   
   mov dl,13
   mov ah,2 
   int 21h
   loop pp
    
mov ah,4ch
int 21h
    
end main
main endp