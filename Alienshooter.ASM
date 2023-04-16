.model small
.stack 100h
.data
count1a dw 0
count2a dw 0
count3a dw 0
count4a dw 0
count5a dw 0

count1 dw 0
count2 dw 0
count3 dw 0
count4 dw 0
laser dw 0
shape dw 20
var1 dw 0
count dw 0
countb dw 0
var2 dw 0
input db 0
sh1 dw 129
sh2 dw 132 
sh3 dw 136
sh4 dw 140
sh5 dw 132 
sh6 dw 137
sh7 dw 112
sh8 dw 130
sh9 dw 139
sh10 dw 157
sh11 dw 112 
sh12 dw 120
sh13 dw 114
sh14 dw 119
sh15 dw 119
sh16 dw 124
sh17 dw 146 
sh18 dw 151
sh19 dw 149
sh20 dw 157
sh21 dw 151
sh22 dw 156
sh23 dw 130
sh24 dw 139





.code






main PROC

mov ax, @data
mov ds, ax

mov ah, 0h   ;video mode
mov al, 13h  ;choosing mode
int 10h

;********************************************



s1:

.if(count1!=0 && count2 !=0 && count3 !=0 && count4!=0)
jmp ending
.endif


cmp count1,0
jne step2

mov si,130
alien1:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,20      ;y axis    
int 10h
inc si
cmp si, 135
jne alien1

mov si,130
alien2:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,21      ;y axis    
int 10h
inc si
cmp si, 135
jne alien2

mov si,127
alien3:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,22      ;y axis    
int 10h
inc si
cmp si, 138
jne alien3


mov si,127
alien4:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,23      ;y axis    
int 10h
inc si
cmp si, 138
jne alien4


mov si,124
alien5:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,24      ;y axis    
int 10h
inc si
cmp si, 141
jne alien5


mov si,124
alien6:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,25      ;y axis    
int 10h
inc si
cmp si, 141
jne alien6

mov si,124
alien7:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,26 ;y axis
.if(si>126 && si<130 || si>134 && si<138)
.else
int 10h
.endif
inc si
cmp si, 141
jne alien7

mov si,121
alien8:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,27      ;y axis    
int 10h
inc si
cmp si, 144
jne alien8


mov si,121
alien9:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,28      ;y axis    
int 10h
inc si
cmp si, 144
jne alien9

mov si,124
alien10:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,29      ;y axis    
int 10h
inc si
cmp si, 141
jne alien10

mov bx,30      ;y axis  
alien12:
mov ah, 0ch
mov al, 5
mov cx,127
mov dx,bx
int 10h
inc bx
;inc si
cmp bx, 34
jne alien12


mov bx,30      ;y axis  
alien13:
mov ah, 0ch
mov al, 5
mov cx,137
mov dx,bx
int 10h
inc bx
;inc si
cmp bx, 34
jne alien13

;**********************************************************************
;      Alien 2
;**********************************************************************



step2:
cmp count2,0
jne step3


mov si,130
alien1c:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,20 ;y axis    
add dx,36
int 10h
inc si
cmp si, 135
jne alien1c

mov si,130
alien2c:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,21      ;y axis    
add dx,36
int 10h
inc si
cmp si, 135
jne alien2c

mov si,127
alien3c:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,22
add dx,36 ;y axis    
int 10h
inc si
cmp si, 138
jne alien3c


mov si,127
alien4c:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,23      ;y axis    
add dx,36
int 10h
inc si
cmp si, 138
jne alien4c


mov si,124
alien5c:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,24      ;y axis    
add dx,36
int 10h
inc si
cmp si, 141
jne alien5c


mov si,124
alien6c:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,25      ;y axis    
add dx,36
int 10h
inc si
cmp si, 141
jne alien6c

mov si,124
alien7c:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,26 ;y axis
add dx,36
.if(si>126 && si<130 || si>134 && si<138)
.else
int 10h
.endif
inc si
cmp si, 141
jne alien7c

mov si,121
alien8c:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,27      ;y axis    
add dx,36
int 10h
inc si
cmp si, 144
jne alien8c


mov si,121
alien9c:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,28      ;y axis    
add dx,36
int 10h
inc si
cmp si, 144
jne alien9c

mov si,124
alien10c:

mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,29      ;y axis    
add dx,36
int 10h
inc si
cmp si, 141
jne alien10c

mov bx,30      ;y axis  
add bx,36
alien12c:
mov ah, 0ch
mov al, 5
mov cx,127
mov dx,bx
int 10h
inc bx
;inc si
cmp bx, 70
jne alien12c


mov bx,30      ;y axis  
add bx,36
alien13c:
mov ah, 0ch
mov al, 5
mov cx,137
mov dx,bx
int 10h
inc bx
;inc si
cmp bx, 70
jne alien13c









;-----------------------------------------------------------------ALEIN 3

step3:
cmp count3,0
jne step4

mov si,85
alien1a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,38      ;y axis    
int 10h
inc si
cmp si, 90
jne alien1a

mov si,85
alien2a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,39      ;y axis    
int 10h
inc si
cmp si, 90
jne alien2a

mov si,82
alien3a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,40      ;y axis    
int 10h
inc si
cmp si, 93
jne alien3a


mov si,82
alien4a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,41      ;y axis    
int 10h
inc si
cmp si, 93
jne alien4a

mov si,79
alien5a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,42      ;y axis    
int 10h
inc si
cmp si, 96
jne alien5a


mov si,79
alien6a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,43      ;y axis    
int 10h
inc si
cmp si, 96
jne alien6a

mov si,79
alien7a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,44 ;y axis
.if(si>81 && si<85 || si>89 && si<93)
.else
int 10h
.endif
inc si
cmp si, 96
jne alien7a

mov si,76
alien8a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,45      ;y axis    
int 10h
inc si
cmp si, 99
jne alien8a


mov si,76
alien9a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,46      ;y axis    
int 10h
inc si
cmp si, 99
jne alien9a

mov si,79
alien10a:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,47      ;y axis    
int 10h
inc si
cmp si, 96
jne alien10a

mov bx,48      ;y axis  
alien12a:
mov ah, 0ch
mov al, 5
mov cx,82
mov dx,bx
int 10h
inc bx
;inc si
cmp bx, 52
jne alien12a


mov bx,48      ;y axis  
alien13a:
mov ah, 0ch
mov al, 5
mov cx,92
mov dx,bx
int 10h
inc bx
;inc si
cmp bx, 52
jne alien13a










; -------------------------------------------4th alein----------------------------------
step4:
cmp count4,0
jne k1

mov si,85
add si,90
mov bx,180
alien1b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,38      ;y axis    
int 10h
inc si
cmp si, bx
jne alien1b

mov si,85
add si,90
alien2b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,39      ;y axis    
int 10h
inc si
cmp si, bx
jne alien2b

mov si,82
add si,90
add bx,3
alien3b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,40      ;y axis    
int 10h
inc si
cmp si, bx
jne alien3b


mov si,82
add si,90

alien4b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,41      ;y axis    
int 10h
inc si
cmp si, bx
jne alien4b

mov si,79
add si,90
add bx,3
alien5b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,42      ;y axis    
int 10h
inc si
cmp si, bx
jne alien5b


mov si,79
add si,90
alien6b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,43      ;y axis    
int 10h
inc si
cmp si, bx
jne alien6b

mov si,79
add si,90
alien7b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,44 ;y axis
.if(si>171 && si<175 || si>179 && si<183)
.else
int 10h
.endif
inc si
cmp si, bx
jne alien7b

mov si,76
add si,90
add bx,3
alien8b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,45      ;y axis    
int 10h
inc si
cmp si, bx
jne alien8b


mov si,76
add si,90
alien9b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,46      ;y axis    
int 10h
inc si
cmp si, bx
jne alien9b

 

mov si,79
add si,90
sub bx,3
alien10b:
mov ah, 0ch
mov al, 3      ;color
mov cx, si     ;x axis
mov dx,47      ;y axis    
int 10h
inc si
cmp si, bx
jne alien10b

mov bx,48      ;y axis  
alien12b:
mov ah, 0ch
mov al, 5
mov cx,82
add cx,90
mov dx,bx
int 10h
inc bx
;inc si
cmp bx, 52
jne alien12b


mov bx,48      ;y axis  
alien13b:
mov ah, 0ch
mov al, 5
mov cx,92
add cx,90
mov dx,bx
int 10h
inc bx
;inc si
cmp bx, 52
jne alien13b

cmp count,0
jne k1





; ----------------------------------SPACE SHIP-----------------------------------





mov var1,129
mov var2,150
mov cx,30
L1:
add var2,1
mov dx,var1
push cx
mov si,dx
space:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis 
.if((dx>154 && dx<164) && (cx>132 && cx<136))
.else
int 10h
.endif
inc si
cmp si, 140
jne space
pop cx
loop L1

mov var1,132
mov var2,146
mov cx,4
L8:
add var2,1
mov dx,var1
push cx
mov si,dx
space8:
mov ah, 0ch
mov al, 5      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 137
jne space8
pop cx
loop L8






mov var1,112
mov var2,165
mov cx,7
L2:
add var2,1
mov dx,var1
push cx
mov si,dx
space1:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 130
jne space1
pop cx
loop L2


mov var1,139
mov var2,165
mov cx,7
L3:
add var2,1
mov dx,var1
push cx
mov si,dx
space2:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 157
jne space2
pop cx
loop L3



mov var1,112
mov var2,172
mov cx,7
L4:
add var2,1
mov dx,var1
push cx
mov si,dx
space3:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 120
jne space3
pop cx
loop L4


mov var1,114
mov var2,179
mov cx,3
L7:
add var2,1
mov dx,var1
push cx
mov si,dx
space6:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 119
jne space6
pop cx
loop L7






mov var1,119
mov var2,161
mov cx,4
L9:
add var2,1
mov dx,var1
push cx
mov si,dx
space9:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 124
jne space9
pop cx
loop L9




mov var1,146
mov var2,161
mov cx,4
L10:
add var2,1
mov dx,var1
push cx
mov si,dx
space10:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 151
jne space10
pop cx
loop L10













mov var1,149
mov var2,172
mov cx,7
L5:
add var2,1
mov dx,var1
push cx
mov si,dx
space4:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 157
jne space4
pop cx
loop L5



mov var1,151
mov var2,179
mov cx,3
L6:
add var2,1
mov dx,var1
push cx
mov si,dx
space5:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 156
jne space5
pop cx
loop L6



mov var1,130
mov var2,180
mov cx,7
L11:
add var2,1
mov dx,var1
push cx
mov si,dx
space11:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 139
jne space11
pop cx
loop L11


k1:


mov al,0
mov ah,01

int 21h

mov dl,al

cmp dl,'a'
je B1
cmp al,'d'
je B1
cmp al,'g'
jne h1
B1:
mov input,al

;							CLEAR SCREEN 

mov cx,3000
lo:

loop lo


mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov si,0
mov ah,0
mov bx,0
mov al,13
int 10h




; ----------------------------------SPACE SHIP WHILE REFRESHING-----------------------------------

mov var2,146
.if(input=='a')
sub sh5,5
sub sh6,5
.elseif(input=='d')
add sh5,5
add sh6,5

.elseif(input=='g')

mov dx,var2      ;y axis
space8av:
mov ah, 0ch
mov al, 2      ;color
mov cx, sh5     ;x axis
add cx,2    
int 10h
dec dx
cmp dx, 50
jne space8av

mov laser,cx

mov cx,30000
ly:

loop ly

mov cx,30000
lg:

loop lg

mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov si,0
mov ah,0
mov bx,0
mov al,13
int 10h

.if(laser>130 && laser<135 && count2==0)
inc count2
.elseif(laser>130 && laser<135 && count2!=0)
inc count1
.elseif(laser>85 && laser<90)
inc count3
.elseif(laser>175 && laser<180)
inc count4
.endif

.endif



mov cx,4
A8:
add var2,1
mov dx,sh5
push cx
mov si,dx
space8a:
mov ah, 0ch
mov al, 5      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh6
jne space8a
pop cx
loop A8








.if(input=='a')

sub sh1,5
sub sh2,5
sub sh3,5
sub sh4,5

.elseif(input=='d')

add sh1,5
add sh2,5
add sh3,5
add sh4,5


.endif


mov var2,150
mov cx,30
A1:
add var2,1
mov dx,sh1
push cx
mov si,dx
spacea:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis 
.if((dx>154 && dx<164) && (cx>sh2 && cx<sh3))
.else
int 10h
.endif
inc si
cmp si, sh4
jne spacea
pop cx
loop A1







.if(input=='a')
sub sh7,5
sub sh8,5
.elseif(input=='d')
add sh7,5
add sh8,5
.endif


mov var2,165
mov cx,7
A2:
add var2,1
mov dx,sh7
push cx
mov si,dx
space1a:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh8
jne space1a
pop cx
loop A2


.if(input=='a')
sub sh9,5
sub sh10,5
.elseif(input=='d')
add sh9,5
add sh10,5
.endif



mov var2,165
mov cx,7
A3:
add var2,1
mov dx,sh9
push cx
mov si,dx
space2a:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh10
jne space2a
pop cx
loop A3

.if(input=='a')
sub sh11,5
sub sh12,5
.elseif(input=='d')
add sh11,5
add sh12,5
.endif


mov var2,172
mov cx,7
A4:
add var2,1
mov dx,sh11
push cx
mov si,dx
space3a:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh12
jne space3a
pop cx
loop A4

.if(input=='a')
sub sh13,5
sub sh14,5
.elseif(input=='d')
add sh13,5
add sh14,5
.endif


mov var2,179
mov cx,3
A7:
add var2,1
mov dx,sh13
push cx
mov si,dx
space6a:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh14
jne space6a
pop cx
loop A7



.if(input=='a')
sub sh15,5
sub sh16,5
.elseif(input=='d')
add sh15,5
add sh16,5
.endif


mov var2,161
mov cx,4
A9:
add var2,1
mov dx,sh15
push cx
mov si,dx
space9a:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh16
jne space9a
pop cx
loop A9


.if(input=='a')
sub sh17,5
sub sh18,5
.elseif(input=='d')
add sh17,5
add sh18,5
.endif

mov var2,161
mov cx,4
A10:
add var2,1
mov dx,sh17
push cx
mov si,dx
space10a:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh18
jne space10a
pop cx
loop A10









.if(input=='a')
sub sh19,5
sub sh20,5
.elseif(input=='d')
add sh19,5
add sh20,5
.endif


mov var2,172
mov cx,7
A5:
add var2,1
mov dx,sh19
push cx
mov si,dx
space4a:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh20
jne space4a
pop cx
loop A5


.if(input=='a')
sub sh21,5
sub sh22,5
.elseif(input=='d')
add sh21,5
add sh22,5
.endif


mov var2,179
mov cx,3
A6:
add var2,1
mov dx,sh21
push cx
mov si,dx
space5a:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh22
jne space5a
pop cx
loop A6

.if(input=='a')
sub sh23,5
sub sh24,5
.elseif(input=='d')
add sh23,5
add sh24,5
.endif

mov var2,180
mov cx,7
A11:
add var2,1
mov dx,sh23
push cx
mov si,dx
space11a:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh24
jne space11a
pop cx
loop A11

inc count
jmp s1


;-------------------------------------------------------------------------------------------------------------------------
; ----------------------------------------------------2nd level----------------------------------------------------------- 
;*************************************************************************************************************************

ending:

sb1:
;******************************************************
;        Alien 1
;******************************************************	

.if(count1a!=0 && count2a !=0 && count3a !=0 && count4a!=0 && count5a!=0)
jmp h1
.endif

cmp count1a,0
jne step2a

mov var1,121
mov var2,15
mov cx,3
La1:
add var2,1
mov dx,var1
push cx
mov si,dx
spaceal:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 129
jne spaceal
pop cx
loop La1


mov var1,117
mov var2,17
mov cx,2
La2:
add var2,1
mov dx,var1
push cx
mov si,dx
spacea1:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 133
jne spacea1
pop cx
loop La2


mov var1,114
mov var2,19
mov cx,1
La3:
add var2,1
mov dx,var1
push cx
mov si,dx
spacea2:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 136 
jne spacea2
pop cx
loop La3

mov si,114
aliena3:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,21 	;y axis
	.if(si>117 && si<121 || si>128 && si<132)
	.else
	int 10h
	.endif
	inc si
	cmp si, 136
jne aliena3

mov si,111
aliena4:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,22 	;y axis
	.if(si>117 && si<121 || si>128 && si<132)
	.else
	int 10h
	.endif
	inc si
	cmp si, 139
jne aliena4

mov si,111
aliena5:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,23 	;y axis
	int 10h
	inc si
	cmp si, 139
jne aliena5

mov var1,108
mov var2,23
mov cx,2
La6:
add var2,1
mov dx,var1
push cx
mov si,dx
spacea6:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 142
jne spacea6
pop cx
loop La6

mov si,111
aliena7:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,26 	;y axis
	.if(si>117 && si<122 || si>127 && si<132)
	.else
	int 10h
	.endif
	inc si
	cmp si, 139
jne aliena7

mov si,111
aliena8:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,27 	;y axis
	.if(si>117 && si<122 || si>127 && si<132)
	.else
	int 10h
	.endif
	inc si
	cmp si, 139
jne aliena8

mov si,113
aliena9:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,28 	;y axis
	.if(si>115 && si<134)
	.else
	int 10h
	.endif
	inc si
	cmp si, 137
jne aliena9

mov si,113
aliena10:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,29 	;y axis
	.if(si>115 && si<134)
	.else
	int 10h
	.endif
	inc si
	cmp si, 137
jne aliena10

mov si,113
aliena11:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,30 	;y axis
	.if(si>115 && si<134)
	.else
	int 10h
	.endif
	inc si
	cmp si, 137
jne aliena11

;*******************************************************
;          Alien 2
;*******************************************************

step2a:
cmp count2a,0
jne step3a

mov var1,170
mov var2,15
mov cx,3
La1a:
add var2,1
mov dx,var1
push cx
mov si,dx
spaceax:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 179
jne spaceax
pop cx
loop La1a


mov var1,167
mov var2,17
mov cx,2
La2a:
add var2,1
mov dx,var1
push cx
mov si,dx
space1ax:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 183
jne space1ax
pop cx
loop La2a


mov var1,164
mov var2,19
mov cx,1
La3a:
add var2,1
mov dx,var1
push cx
mov si,dx
space2ax:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 186 
jne space2ax
pop cx
loop La3a


mov si,164
alien3ax:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,21 	;y axis
	.if(si>167 && si<171 || si>178 && si<182)
	.else
	int 10h
	.endif
	inc si
	cmp si, 186
jne alien3ax



mov si,161
alien4ax:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,22 	;y axis
	.if(si>167 && si<171 || si>178 && si<182)
	.else
	int 10h
	.endif
	inc si
	cmp si, 189
jne alien4ax



mov si,161
alien5ax:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,23 	;y axis
	int 10h
	inc si
	cmp si, 189
jne alien5ax
	
	

mov var1,158
mov var2,23
mov cx,2
La6a:
add var2,1
mov dx,var1
push cx
mov si,dx
space6ax:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 192
jne space6ax
pop cx
loop La6a



mov si,161
alien7ax:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,26 	;y axis
	.if(si>167 && si<172 || si>177 && si<182)
	.else
	int 10h
	.endif
	inc si
	cmp si, 189
jne alien7ax


mov si,161
alien8ax:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,27 	;y axis
	.if(si>167 && si<172 || si>177 && si<182)
	.else
	int 10h
	.endif
	inc si
	cmp si, 189
jne alien8ax

mov si,163
alien9ax:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,28 	;y axis
	.if(si>165 && si<184)
	.else
	int 10h
	.endif
	inc si
	cmp si, 187
jne alien9ax



mov si,163
alien10ax:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,29 	;y axis
	.if(si>165 && si<184)
	.else
	int 10h
	.endif
	inc si
	cmp si, 187
jne alien10ax


mov si,163
alien11ax:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,30 	;y axis
	.if(si>165 && si<184)
	.else
	int 10h
	.endif
	inc si
	cmp si, 187
jne alien11ax

;*******************************************************
;          Alien 3
;*******************************************************

step3a:
cmp count3a,0
jne step4a

mov var1,219
mov var2,15
mov cx,3
La1b:
add var2,1
mov dx,var1
push cx
mov si,dx
spacebx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 228
jne spacebx
pop cx
loop La1b


mov var1,216
mov var2,17
mov cx,2
La2b:
add var2,1
mov dx,var1
push cx
mov si,dx
space1bx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 231
jne space1bx
pop cx
loop La2b


mov var1,213
mov var2,19
mov cx,1
La3b:
add var2,1
mov dx,var1
push cx
mov si,dx
space2bx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 234
jne space2bx
pop cx
loop La3b


mov si,213
alien3bx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,21 	;y axis
	.if(si>216 && si<220 || si>227 && si<231)
	.else
	int 10h
	.endif
	inc si
	cmp si, 234
jne alien3bx

mov si,210
alien4bx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,22 	;y axis
	.if(si>216 && si<220 || si>227 && si<231)
	.else
	int 10h
	.endif
	inc si
	cmp si,237
jne alien4bx

mov si,210
alien5bx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,23 	;y axis
	int 10h
	inc si
	cmp si, 237
jne alien5bx
	
	
mov var1,207
mov var2,23
mov cx,2
La6b:
add var2,1
mov dx,var1
push cx
mov si,dx
space6bx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 240
jne space6bx
pop cx
loop La6b
	

mov si,210
alien7bx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,26 	;y axis
	.if(si>216 && si<221 || si>226 && si<231)
	.else
	int 10h
	.endif
	inc si
	cmp si, 237
jne alien7bx
	

mov si,210
alien8bx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,27 	;y axis
	.if(si>216 && si<221 || si>226 && si<231)
	.else
	int 10h
	.endif
	inc si
	cmp si, 237
jne alien8bx


mov si,212
alien9bx:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,28 	;y axis
	.if(si>214 && si<232)
	.else
	int 10h
	.endif
	inc si
	cmp si, 235
jne alien9bx


mov si,212
alien10bx:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,29 	;y axis
	.if(si>214 && si<232)
	.else
	int 10h
	.endif
	inc si
	cmp si, 235
jne alien10bx


mov si,212
alien11bx:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,30 	;y axis
	.if(si>214 && si<232)
	.else
	int 10h
	.endif
	inc si
	cmp si, 235
jne alien11bx



;******************************************************
;        Alien 4
;******************************************************	

step4a:
cmp count4a,0
jne step5a

mov var1,147
mov var2,40
mov cx,3
La1c:
add var2,1
mov dx,var1
push cx
mov si,dx
spacecx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 155
jne spacecx
pop cx
loop La1c


mov var1,144
mov var2,42
mov cx,2
La2c:
add var2,1
mov dx,var1
push cx
mov si,dx
space1cx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 158
jne space1cx
pop cx
loop La2c


mov var1,141
mov var2,44
mov cx,1
La3c:
add var2,1
mov dx,var1
push cx
mov si,dx
space2cx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 161
jne space2cx
pop cx
loop La3c

mov si,141
alien3cx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,46 	;y axis
	.if(si>144 && si<148 || si>154 && si<158)
	.else
	int 10h
	.endif
	inc si
	cmp si, 161
jne alien3cx

mov si,138
alien4cx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,47 	;y axis
	.if(si>144 && si<148 || si>154 && si<158)
	.else
	int 10h
	.endif
	inc si
	cmp si, 164
jne alien4cx


mov si,138
alien5cx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,48 	;y axis
	int 10h
	inc si
	cmp si, 164
jne alien5cx


mov var1,135
mov var2,48
mov cx,2
La6c:
add var2,1
mov dx,var1
push cx
mov si,dx
space6cx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 167
jne space6cx
pop cx
loop La6c


mov si,138
alien7cx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,51 	;y axis
	.if(si>144 && si<149 || si>153 && si<158)
	.else
	int 10h
	.endif
	inc si
	cmp si, 164
jne alien7cx

mov si,138
alien8cx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,52	;y axis
	.if(si>144 && si<149 || si>153 && si<158)
	.else
	int 10h
	.endif
	inc si
	cmp si, 164
jne alien8cx


mov si,140
alien9cx:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,53 	;y axis
	.if(si>142 && si<159)
	.else
	int 10h
	.endif
	inc si
	cmp si, 162
jne alien9cx

mov si,140
alien10cx:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,54 	;y axis
	.if(si>142 && si<159)
	.else
	int 10h
	.endif
	inc si
	cmp si, 162
jne alien10cx

mov si,140
alien11cx:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,55 	;y axis
	.if(si>142 && si<159)
	.else
	int 10h
	.endif
	inc si
	cmp si, 162
jne alien11cx



;******************************************************
;        Alien 5
;******************************************************	

step5a:
cmp count5a,0
jne ka1

mov var1,198
mov var2,40
mov cx,3
La1d:
add var2,1
mov dx,var1
push cx
mov si,dx
spacedx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 206
jne spacedx
pop cx
loop La1d


mov var1,195
mov var2,42
mov cx,2
La2d:
add var2,1
mov dx,var1
push cx
mov si,dx
space1dx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 209
jne space1dx
pop cx
loop La2d


mov var1,192
mov var2,44
mov cx,1
La3d:
add var2,1
mov dx,var1
push cx
mov si,dx
space2dx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 212
jne space2dx
pop cx
loop La3d


mov si,192
alien3dx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,46 	;y axis
	.if(si>195 && si<199 || si>205 && si<209)
	.else
	int 10h
	.endif
	inc si
	cmp si, 212
jne alien3dx


mov si,189
alien4dx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,47 	;y axis
	.if(si>195 && si<199 || si>205 && si<209)
	.else
	int 10h
	.endif
	inc si
	cmp si, 215
jne alien4dx


mov si,189
alien5dx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,48 	;y axis
	int 10h
	inc si
	cmp si, 215
jne alien5dx


mov var1,186
mov var2,48
mov cx,2
La6d:
add var2,1
mov dx,var1
push cx
mov si,dx
space6dx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,var2      ;y axis    
	int 10h
	inc si
	cmp si, 218
jne space6dx
pop cx
loop La6d


mov si,189
alien7dx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,51 	;y axis
	.if(si>195 && si<200 || si>204 && si<209)
	.else
	int 10h
	.endif
	inc si
	cmp si, 215
jne alien7dx

mov si,189
alien8dx:
	mov ah, 0ch
	mov al, 2      ;color
	mov cx, si     ;x axis
	mov dx,52 	;y axis
	.if(si>195 && si<200 || si>204 && si<209)
	.else
	int 10h
	.endif
	inc si
	cmp si, 215
jne alien8dx

mov si,191
alien9dx:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,53 	;y axis
	.if(si>193 && si<210)
	.else
	int 10h
	.endif
	inc si
	cmp si, 213
jne alien9dx

mov si,191
alien10dx:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,54 	;y axis
	.if(si>193 && si<210)
	.else
	int 10h
	.endif
	inc si
	cmp si, 213
jne alien10dx

mov si,191
alien11dx:
	mov ah, 0ch
	mov al, 4      ;color
	mov cx, si     ;x axis
	mov dx,55 	;y axis
	.if(si>193 && si<210)
	.else
	int 10h
	.endif
	inc si
	cmp si, 213
jne alien11dx

cmp count,0
jne ka1
;****************************Space ship****************************



mov var1,129
mov var2,150
mov cx,30
L1n:
add var2,1
mov dx,var1
push cx
mov si,dx
spacen:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis 
.if((dx>154 && dx<164) && (cx>132 && cx<136))
.else
int 10h
.endif
inc si
cmp si, 140
jne spacen
pop cx
loop L1n

mov var1,132
mov var2,146
mov cx,4
L8n:
add var2,1
mov dx,var1
push cx
mov si,dx
space8n:
mov ah, 0ch
mov al, 5      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 137
jne space8n
pop cx
loop L8n






mov var1,112
mov var2,165
mov cx,7
L2n:
add var2,1
mov dx,var1
push cx
mov si,dx
space1n:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 130
jne space1n
pop cx
loop L2n


mov var1,139
mov var2,165
mov cx,7
L3n:
add var2,1
mov dx,var1
push cx
mov si,dx
space2n:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 157
jne space2n
pop cx
loop L3n


mov var1,112
mov var2,172
mov cx,7
L4n:
add var2,1
mov dx,var1
push cx
mov si,dx
space3n:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 120
jne space3n
pop cx
loop L4n


mov var1,114
mov var2,179
mov cx,3
L7n:
add var2,1
mov dx,var1
push cx
mov si,dx
space6n:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 119
jne space6n
pop cx
loop L7n



mov var1,119
mov var2,161
mov cx,4
L9n:
add var2,1
mov dx,var1
push cx
mov si,dx
space9n:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 124
jne space9n
pop cx
loop L9n


mov var1,146
mov var2,161
mov cx,4
L10n:
add var2,1
mov dx,var1
push cx
mov si,dx
space10n:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 151
jne space10n
pop cx
loop L10n



mov var1,149
mov var2,172
mov cx,7
L5n:
add var2,1
mov dx,var1
push cx
mov si,dx
space4n:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 157
jne space4n
pop cx
loop L5n



mov var1,151
mov var2,179
mov cx,3
L6n:
add var2,1
mov dx,var1
push cx
mov si,dx
space5n:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 156
jne space5n
pop cx
loop L6n



mov var1,130
mov var2,180
mov cx,7
L11n:
add var2,1
mov dx,var1
push cx
mov si,dx
space11n:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, 139
jne space11n
pop cx
loop L11n


ka1:
mov al,0
mov ah,01

int 21h

mov dl,al

cmp dl,'a'
je Bl1
cmp al,'d'
je Bl1
cmp al,'g'
jne h1
Bl1:
mov input,al
;							CLEAR SCREEN 

;mov cx,3000
;lo:

;loop lo


mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov si,0
mov ah,0
mov bx,0
mov al,13
int 10h




; ----------------------------------SPACE SHIP-----------------------------------


mov var2,146

.if(input=='a')
sub sh5,3
sub sh6,3
.elseif(input=='d')
add sh5,3
add sh6,3

.elseif(input=='g')

mov dx,var2      ;y axis
space8avm:
mov ah, 0ch
mov al, 2      ;color
mov cx, sh5     ;x axis
add cx,2    
int 10h
dec dx
cmp dx, 50
jne space8avm

mov laser,cx

mov cx,30000
lyl:

loop lyl

mov cx,30000
lgl:

loop lgl

mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov si,0
mov ah,0
mov bx,0
mov al,13
int 10h

.if(laser>121 && laser<129)
inc count1a
.elseif(laser>170 && laser<179)
inc count2a
.elseif(laser>219 && laser<228)
inc count3a
.elseif(laser>147 && laser<155)
inc count4a
.elseif(laser>198 && laser<206)
inc count5a
.endif


.endif



mov cx,4
Al8:
add var2,1
mov dx,sh5
push cx
mov si,dx
space8ax:
mov ah, 0ch
mov al, 5      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh6
jne space8ax
pop cx
loop Al8


















.if(input=='a')

sub sh1,3
sub sh2,3
sub sh3,3
sub sh4,3

.elseif(input=='d')

add sh1,3
add sh2,3
add sh3,3
add sh4,3





.endif



mov var2,150
mov cx,30
Ag1:
add var2,1
mov dx,sh1
push cx
mov si,dx
spaceab:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis 
.if((dx>154 && dx<164) && (cx>sh2 && cx<sh3))
.else
int 10h
.endif
inc si
cmp si, sh4
jne spaceab
pop cx
loop Ag1






.if(input=='a')
sub sh7,3
sub sh8,3
.elseif(input=='d')
add sh7,3
add sh8,3
.endif


mov var2,165
mov cx,7
A2n:
add var2,1
mov dx,sh7
push cx
mov si,dx
space1na:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh8
jne space1na
pop cx
loop A2n


.if(input=='a')
sub sh9,3
sub sh10,3
.elseif(input=='d')
add sh9,3
add sh10,3
.endif



mov var2,165
mov cx,7
A3n:
add var2,1
mov dx,sh9
push cx
mov si,dx
space2na:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh10
jne space2na
pop cx
loop A3n

.if(input=='a')
sub sh11,3
sub sh12,3
.elseif(input=='d')
add sh11,3
add sh12,3
.endif


mov var2,172
mov cx,7
A4n:
add var2,1
mov dx,sh11
push cx
mov si,dx
space3an:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh12
jne space3an
pop cx
loop A4n

.if(input=='a')
sub sh13,3
sub sh14,3
.elseif(input=='d')
add sh13,3
add sh14,3
.endif


mov var2,179
mov cx,3
A7n:
add var2,1
mov dx,sh13
push cx
mov si,dx
space6an:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh14
jne space6an
pop cx
loop A7n



.if(input=='a')
sub sh15,3
sub sh16,3
.elseif(input=='d')
add sh15,3
add sh16,3
.endif


mov var2,161
mov cx,4
A9n:
add var2,1
mov dx,sh15
push cx
mov si,dx
space9an:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh16
jne space9an
pop cx
loop A9n


.if(input=='a')
sub sh17,3
sub sh18,3
.elseif(input=='d')
add sh17,3
add sh18,3
.endif

mov var2,161
mov cx,4
A10n:
add var2,1
mov dx,sh17
push cx
mov si,dx
space10an:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh18
jne space10an
pop cx
loop A10n



.if(input=='a')
sub sh19,3
sub sh20,3
.elseif(input=='d')
add sh19,3
add sh20,3
.endif


mov var2,172
mov cx,7
A5n:
add var2,1
mov dx,sh19
push cx
mov si,dx
space4an:
mov ah, 0ch
mov al, 7      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh20
jne space4an
pop cx
loop A5n


.if(input=='a')
sub sh21,3
sub sh22,3
.elseif(input=='d')
add sh21,3
add sh22,3
.endif


mov var2,179
mov cx,3
A6n:
add var2,1
mov dx,sh21
push cx
mov si,dx
space5an:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh22
jne space5an
pop cx
loop A6n

.if(input=='a')
sub sh23,3
sub sh24,3
.elseif(input=='d')
add sh23,3
add sh24,3
.endif

mov var2,180
mov cx,7
A11n:
add var2,1
mov dx,sh23
push cx
mov si,dx
space11an:
mov ah, 0ch
mov al, 4      ;color
mov cx, si     ;x axis
mov dx,var2      ;y axis    
int 10h
inc si
cmp si, sh24
jne space11an
pop cx
loop A11n


inc countb
jmp sb1







































h1:













exit:
mov ah,4ch
int 21h
main ENDP
end








