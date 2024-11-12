.model small
.stack 100h
.data
   m1 db 'Enter value of x: $'
   m2 db 'Enter value of y: $'
   m3 db 'Enter value of z: $'
   m4 db 'Answer of x+y-z-1= $'
.code

main proc
    mov ax,@data
    mov ds,ax
        
    call calculate    
    
    mov ah,4ch
    int 21h
    main endp

calculate proc
   
    mov dl,m1
    mov dx,offset m1
    mov ah,9
    int 21h
    
    mov ah,1 
    int 21h
    mov bl,al
   
    call space 
    
    
    
    mov dl,m2
    mov dx,offset m2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    call space
     
    
    
    add bl,cl
    sub bl,48
    mov cx,bx
    
    
    mov dl,m3
    mov dx,offset m3
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    call space   
    
    
    sub cx,bx
    add cx,48
    mov bx,cx 
    
    
    
    mov dl,'1'
  
    
    sub bx,49
    add bx,48 
    
    call print
    
    mov dx,bx
    
    mov ah,2
    int 21h
    ret

calculate endp  

space proc
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    ret
space endp

print proc
    mov dl,m4
    mov dx,offset m4
    mov ah,9
    int 21h
    ret
print endp

end main