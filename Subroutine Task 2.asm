.model small
.stack 100h
.data  
m1 db 'Addition: $'
m2 db 'Subtraction: $'  
m3 db 'Multiplication: $'
m4 db 'Division: $'
.code

main proc
    mov ax, @data         
    mov ds, ax
    mov dx, offset m1
    mov ah, 9
    int 21h

    call addition 
    
    call space

    mov dx, offset m2
    mov ah, 9
    int 21h

    call subtraction  
    call space  
    
    mov dx,offset m3
    mov ah,9
    int 21h
    
    
    call multiplication
    call space 
    
    
    mov dx,offset m4
    mov ah,9
    int 21h
    call division   
    call space
                
   
   
    
    

    
    mov ah, 4ch
    int 21h
main endp

addition proc
   
    mov ah, 1
    int 21h
             
    mov bl, al            
    sub bl, 48   
    mov dl,'+'
    mov ah,2
    int 21h
    
    mov ah, 1
    int 21h
    mov cl, al            
    sub cl, 48
    
    mov dl,'='
    mov ah,2
    int 21h  
    add bl, cl
    add bl, 48           
    mov dl, bl
    mov ah, 2
    int 21h              

    ret
addition endp  

subtraction proc
    
    mov ah, 1
    int 21h          
    mov bl, al
    sub bl,48            
    
    mov dl,'-'
    mov ah,2
    int 21h
   
    mov ah, 1
    int 21h            
    mov cl, al 
    sub cl,48           
    
    mov dl,'='
    mov ah,2
    int 21h
   
    sub bl, cl
    add bl, 48            
    mov dl, bl
    mov ah, 2
    int 21h               

    ret
subtraction endp 

space proc
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    ret
    space endp   

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
    
    mov al,bl
    mul cl
    
    
    aam
    mov ch,ah
    mov cl,al
    
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,'='
    mov ah,2
    int 21h
     
    
    mov dl,cl
    add dl,48
    
    mov ah,2
    int 21h
    ret
    multiplication endp   

division proc
    mov ah, 1
    int 21h
    mov bl, al 
    sub bl, 30h  
    
    mov dl,'/'
    mov ah,2
    int 21h
    
    mov ah, 1
    int 21h
    mov cl, al  
    sub cl, 30h  
    
    mov dl,'='
    mov ah,2
    int 21h  
    mov ax, bx
    div cl
    
     
    aam
    
    mov dx, ax
    add dx, 30h
   
    mov ah, 2
    int 21h

    
    ret
division endp 

end main