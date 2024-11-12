.model small
.stack 100h
.data
    m1 db "Hello, my name is Fasiha Tariq, I am doing CS from Riphah International University, I am 20 years old and live in Islamabad and I am currently working on the subroutine task of assembly language. $" 

.code
main proc
  
    mov ax,@data
    mov ds,ax
     
    call print
    
mov ah,4ch
int 21h    
main endp

print proc 
    
    mov dl,m1
    mov dx, offset m1
    mov ah,9
    int 21h
    ret 
    
print endp

end main
          
          
          
  