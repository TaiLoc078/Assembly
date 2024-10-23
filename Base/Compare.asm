.model small
.stack 100h
.data
    notice db 13, 10, "So nao lon hon: $"
.code
mov ax, @data
mov ds, ax

mov ah, 1
int 21h

mov ch, al
int 21h
mov cl, al

mov ah, 9
lea dx, notice
int 21h

cmp ch, cl
JA So1lonhon

mov dl, cl
mov ah, 2
int 21h

jmp Ketthuc

So1lonhon:
mov dl, ch
mov ah, 2
int 21h

Ketthuc:
