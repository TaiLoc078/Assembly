.model small
.stack 100h
.data
.code
;di chuyen bit 0001 vao thanh ghi ah(IR), '0001' co chuc nang Read_input tu ban phim  
;'int 21h': doc du lieu thanh ghi ah roi thuc thi(CU)
mov ah, 1
int 21h

;lenh 'sub' co chuc nang tinh toan(phep tru)thuc thi trong(ALU), sau do luu gia tri vao thanh ghi al(thanh ghi tich luy ACC)
sub al, 20h

;di chuyen data tu al -> bl         
mov bl, al

;di chuyen ma hex '0A, 0D' vao dl -> in ra man hinh(0002): space(10, 13: Ascii)         
mov dl, 0Ah
mov ah, 2
int 21h
mov dl, 0Dh
int 21h

;di chuyen data tu bl -> dl, sau do thuc thi lenh Write_output(0002) va in ra man hinh
mov dl, bl
mov ah, 2
int 21h

