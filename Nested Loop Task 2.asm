.model small
.stack 100h
.data
.code
main Proc 
    
mov bx,1
mov cx,5 
 l1:
push cx
         
mov cx,bx
l2:
mov dl,'*'
mov ah,02
int 21h
loop l2
         
Inc bx
pop cx
         
mov dl,10
mov ah,02
int 21h
mov dl,13
mov ah,02
int 21h
loop l1
         
mov ah,4ch
int 21h
main endp  
end main