.model small
.stack 100h
.data
    Xinchao db "Hello$"
.code

mov ax, @data
mov ds, ax

mov ah, 9
lea dx, Xinchao
int 21h
