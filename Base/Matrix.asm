.model small
.stack 100h
.code

    mov ah, 2
    mov cx, 5

row:
    mov dl, '*'
    mov bx, 5
    value:
        int 21h
        dec bx
        jnz value    
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    dec cx
    jnz row
    
mov ah, 4ch
int 21h
