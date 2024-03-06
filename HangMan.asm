[org 0x0100]
jmp Main
clrscr:
    pusha
    mov cx,2000
    mov ax,0xb800
    mov es,ax
    mov ax,0x0720
    mov di,0
    cld
    rep stosw 
    popa
    ret
Delay:
    pusha
    mov cx,0xAFF
    l1:
    loop l1
    
    popa
    ret
cls:
    push bp
    mov bp,sp
    mov bp,sp
    pusha
    mov cx,2000
    mov ax,0xb800
    mov es,ax
    mov ax,[bp+4]
    mov di,0
    ClsLabel:
        mov [es:di],ax
        add di,2
        call Delay
        loop ClsLabel
    popa
    pop bp
    ret 2
StraightVerticalLineFunc:
    push bp
    mov bp,sp
    pusha
    mov cx,[bp+6]
    mov di,[bp+4]
    mov ax,0xb800
    mov es,ax
    mov ax,[bp+8]
    StraightVerticalLineLoop:
        mov [es:di],ax
        add di,160
        loop StraightVerticalLineLoop
    popa
    pop bp
    ret 6 

StraightHorizontalLineFunc:
    push bp
    mov bp,sp
    pusha
    mov cx,[bp+6]
    mov di,[bp+4]
    mov ax,0xb800
    mov es,ax
    mov ax,[bp+8]
    
    cld
    rep stosw 

    popa
    pop bp
    ret 6 
HangmanIntroPrintFunc:
    pusha
    ;Print H
    push word 1120h
    push word 10; length
    push word 496 ; di
    call StraightVerticalLineFunc
    push word 1120h
    push word 10; length
    push word 498 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 5; length
    push word 1140 ; di
    call StraightHorizontalLineFunc

    push word 1120h
    push word 5; length
    push word 1300 ; di
    call StraightHorizontalLineFunc

    push word 1120h
    push word 10 ;length
    push word 510
    call StraightVerticalLineFunc
    
    push word 1120h
    push word 10 ; length
    push word 512
    call StraightVerticalLineFunc
    ; printed H

    ;print A
    push word 1120h
    push word 10 ; length
    push word 518
    call StraightVerticalLineFunc

    push word 1120h
    push word 10 ; length
    push word 520
    call StraightVerticalLineFunc

    push word 1120h
    push word 5 ; length
    push word 522
    call StraightHorizontalLineFunc

    push word 1120h
    push word 5; length
    push word 1160 ; di
    call StraightHorizontalLineFunc

    push word 1120h
    push word 5; length
    push word 1320 ; di
    call StraightHorizontalLineFunc

    push word 1120h
    push word 10; length
    push word 530 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 532 ; di
    call StraightVerticalLineFunc
    ;printed A


    ;print N
    push word 1120h
    push word 10; length
    push word 538 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 540 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 5; length
    push word 542 ; di
    call StraightHorizontalLineFunc


    push word 1120h
    push word 10; length
    push word 552 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 554 ;di
    call StraightVerticalLineFunc

    ; printed N

    ; Print G
    push word 1120h
    push word 10; length
    push word 560 ;di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 562 ;di
    call StraightVerticalLineFunc

    push word 1120h
    push word 5; length
    push word 564 ;di
    call StraightHorizontalLineFunc

    push word 1120h
    push word 5; length
    push word 2004 ;di
    call StraightHorizontalLineFunc

    
    push word 1120h
    push word 3; length
    push word 1210 ;di
    call StraightHorizontalLineFunc

    push word 1120h
    push word 5; length
    push word 1374 ;di
    call StraightVerticalLineFunc    

    ;Printed G

    ;Print M
    push word 1120h
    push word 10; length
    push word 2302 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 2304 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 7; length
    push word 2302 ; di
    call StraightHorizontalLineFunc


    push word 1120h
    push word 10; length
    push word 2302 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 2304 ;di
    call StraightVerticalLineFunc 

    push word 1120h
    push word 10; length
    push word 2316 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 2318 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 7; length
    push word 2318 ; di
    call StraightHorizontalLineFunc


    push word 1120h
    push word 10; length
    push word 2330 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 2332 ; di
    call StraightVerticalLineFunc
    ; printed M
    
    ; Print A

    push word 1120h
    push word 10 ; length
    push word 2338
    call StraightVerticalLineFunc

    push word 1120h
    push word 10 ; length
    push word 2340
    call StraightVerticalLineFunc

    push word 1120h
    push word 5 ; length
    push word 2342
    call StraightHorizontalLineFunc

    push word 1120h
    push word 5; length
    push word 3142 ; di
    call StraightHorizontalLineFunc

    push word 1120h
    push word 5; length
    push word 3302 ; di
    call StraightHorizontalLineFunc

    push word 1120h
    push word 10; length
    push word 2352 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 2354 ; di
    call StraightVerticalLineFunc


    ;Printed A

    ; Print N

    push word 1120h
    push word 10; length
    push word 2360 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 2362 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 5; length
    push word 2364 ; di
    call StraightHorizontalLineFunc


    push word 1120h
    push word 10; length
    push word 2374 ; di
    call StraightVerticalLineFunc

    push word 1120h
    push word 10; length
    push word 2376 ;di
    call StraightVerticalLineFunc

    ;printed N


    popa
    ret

BoderFunc:
    pusha
    push word 7028h
    push word 23; length
    push word 320 ;di
    call StraightVerticalLineFunc ; print (

    push word 70BAh 
    push word 23; length
    push word 322 ;di
    call StraightVerticalLineFunc ; print ||

    push word 70EFh
    push word 79; length
    push word 162 ; di 
    call StraightHorizontalLineFunc ; prints union symol

    push word 70CDh
    push word 79; length
    push word 322 ; di 
    call StraightHorizontalLineFunc ; prints ==


    push word 7029h
    push word 23; length
    push word 478 ;di
    call StraightVerticalLineFunc ; print )

    push word 70BAh 
    push word 23; length
    push word 476 ;di
    call StraightVerticalLineFunc ; print ||
    popa
    ret


GallowPrintFunc:
    pusha
    push word 6620h 
    push word 20; length
    push word 654 ;di
    call StraightVerticalLineFunc ; print brown line

    push word 6620h 
    push word 20; length
    push word 656 ;di
    call StraightVerticalLineFunc ; print brown line


    push word 6620h
    push word 20; length
    push word 810 ; di 
    call StraightHorizontalLineFunc



    push word 6620h
    push word 16; length
    push word 3536 ; di 
    call StraightHorizontalLineFunc

    mov word [es:3720],6620h
    mov word [es:3722],6620h

    mov word [es:1006],0020h


    popa
    ret
GamePlayScreenFunc:
    pusha
    push word 0x7720 ;white background
    call cls ; puts anything on the screen with delay 
    call BoderFunc
    call GallowPrintFunc ; 
    popa
    ret

PrintHeadFunc:
    push bp
    mov bp,sp
    pusha
    mov ax,0xb800
    mov es,ax
    mov ax,[bp+4]
    mov di,[bp+6]
    mov WORD[es:di], ax
    add di, 2
    mov WORD[es:di], ax
    add di, 2
    push di
    mov WORD[es:di], ax
    add di, 164
    mov WORD[es:di], ax
    add di, 160
    mov WORD[es:di], ax
    add di, 156
    mov WORD[es:di], ax
    sub di, 2
    mov WORD[es:di], ax
    sub di, 2
    mov WORD[es:di], ax
    sub di, 164
    mov WORD[es:di], ax
    sub di, 160
    mov WORD[es:di], ax
    pop di

    
    popa
    pop bp
    ret 4

BodyPrintFunc:
    push bp
    mov bp,sp
    pusha
    
    mov ax,[bp+4]
    mov di,[bp+6]
    mov cx,7

    push word ax 
    push word cx; length
    push word di ;di
    call StraightVerticalLineFunc 

    popa
    pop bp
    ret 4 

PrintArmsFunc:
    push bp
    mov bp,sp
    pusha
    mov ax,0xb800
    mov es,ax
    mov ax,[bp+4]
    mov di,[bp+6]
    mov cx,4

    lefthalfarmprintlooplabel:
        mov [es:di],ax
        add di,158
        loop lefthalfarmprintlooplabel
    
    mov ax,[bp+4]
    mov di,[bp+6]
    mov cx,4

    righthalfarmprintlooplabel:
        mov [es:di],ax
        add di,162
        loop righthalfarmprintlooplabel
    popa
    pop bp
    ret 4 

PrintLegsFunc:
    push bp
    mov bp,sp
    pusha
    mov ax,0xb800
    mov es,ax
    mov ax,[bp+4]
    mov di,[bp+6]
    mov cx,4

    lefthalflegsprintlooplabel:
        mov [es:di],ax
        add di,158
        loop lefthalflegsprintlooplabel
    
    mov ax,[bp+4]
    mov di,[bp+6]
    mov cx,4

    righthalflegsprintlooplabel:
        mov [es:di],ax
        add di,162
        loop righthalflegsprintlooplabel
    popa
    pop bp
    ret 4 

PrintCompleteBodyFunc:
    pusha
    push word 1164
    push word 00F8h
    call PrintHeadFunc
    push word 1806
    push word 00F8h
    call BodyPrintFunc
    push word 1806
    push word 00F8h
    call PrintArmsFunc
    push word 2606
    push word 00F8h
    call PrintLegsFunc
    popa
    ret

IsValid:
    push bp
    mov bp,sp
    pusha
    mov cx,26
    mov ax,[bp+4]
    mov bx,ChoicesTakenArray
    mov si,0
    
    IsValidLoopLabel:
        cmp al,[bx+si]
        je NotValid
        inc si
        loop IsValidLoopLabel
        mov byte[NotValidFlag],0
        jmp IsValidfuncpop
    NotValid:
        mov byte[NotValidFlag],1
    IsValidfuncpop:         
        popa
        pop bp
        ret 2
PrintPossibleArray:
    pusha
    mov bx,AlphabetsArray
    mov si,0
    xor ax,ax
    mov dx,0 ; its for count 
    mov di,910
    mov [DiPrevVal],di ; reference
    mov cx,26
    PrintPossibleArraylooplabel:
        mov al,[bx+si]
        push ax
        call IsValid
        cmp byte [NotValidFlag],1
        je PrintSpaceLabel
        cmp dx,6
        jne RestOftheFunction
        mov dx,0
        mov di,[DiPrevVal]
        add di,320
        mov [DiPrevVal],di
        RestOftheFunction:

            mov ah,70h
            mov [es:di],ax
            jmp PrintPossibleArraylooplabelCondition
            PrintSpaceLabel:
                mov word [es:di],7020h
                cmp dx,6
                jne PrintPossibleArraylooplabelCondition
                mov dx,0
                mov di,[DiPrevVal]
                add di,320
                mov [DiPrevVal],di
                mov word [es:di],7020h
            PrintPossibleArraylooplabelCondition:
                inc dx
                inc si
                add di,6
                loop PrintPossibleArraylooplabel
    popa
    ret
PrintBlanks:
    pusha
    mov ax,0xb800
    mov es,ax
    mov ax,0020h
    mov cx,4 
    mov di,2800
    PrintBlankLoopLabel:
        push word 0020h
        push word 4
        push di
        call StraightHorizontalLineFunc
        call Delay
        add di,10
        loop PrintBlankLoopLabel
        


    popa
    ret 
InputFunc:
    pusha
    mov ah,00h
    int 16h
    mov [Input],al
    popa
    ret
ValidateInputFunc:
    pusha
    xor ax,ax
    mov al,[Input]
    cmp al,97
    jl InvalidInputLabel
    cmp al,122
    ja InvalidInputLabel
    push ax
    call IsValid
    cmp byte [NotValidFlag],1
    je InvalidInputLabel
    mov byte [InvalidInputFlag],0
    mov si,[ChoicesTakenArrayUsed]
    mov [ChoicesTakenArray+si],al
    inc byte[ChoicesTakenArrayUsed]
    jmp ValidateInputFuncPop



    InvalidInputLabel:
        mov byte [InvalidInputFlag],1
    ValidateInputFuncPop:
        popa
        ret 
GenRandNum:
    push bp
    mov bp,sp;
    push cx
    push ax
    push dx;

    MOV AH, 00h ; interrupts to get system time
    INT 1AH ; CX:DX now hold number of clock ticks since midnight
    mov ax, dx
    xor dx, dx
    mov cx, 80;
    div cx ; here dx contains the remainder of the division - from 0 to 9

    add dl, '0' ; to ascii from '0' to '9'      

    mov word[randNum],dx;


    pop cx;
    pop ax;
    pop dx;
    pop bp;
    ret
WordGenerator:
    pusha
    call GenRandNum
    mov ax,[randNum]
    mov cl,10
    div cl
    xor bx,bx
    mov bl,4
    mul bl
    cmp al,0 
    je NoSub
    Subtract:
        sub al,4
        cmp al,39
        ja Subtract
    NoSub:
        mov bl,al
    jmp RestofWordGen


    RestofWordGen:
        mov cx,4
        mov si,0
        xor ax,ax
        CopyWordLoop:
            mov al,[WordList+bx]
            mov [WordChosen+si],al
            inc bx
            inc si
            loop CopyWordLoop
    popa
    ret 

printstr:
    push bp
    mov bp, sp
    push es
    push ax
    push cx
    push si
    push di
    mov ax, 0xb800
    mov es, ax ; point es to video base
    mov di, [bp+8] 
    mov si, [bp+6] ; point si to string
    mov cx, [bp+4] ; load length of string in cx
    mov ah, 0x07 ; normal attribute fixed in al
    nextchar:
        mov al, [si] ; load next char of string
        mov [es:di], ax ; show this char on screen
        add di, 2 ; move to next screen location
        add si, 1 ; move to next char in string
        loop nextchar ; repeat the operation cx times
    pop di
    pop si
    pop cx
    pop ax  
    pop es
    pop bp
    ret 6

PutValueinChoicesTakenArrayFunc:
    pusha
    mov si,[ChoicesTakenArrayUsed]
    mov bx,ChoicesTakenArray
    mov al,[Input]
    mov [bx+si],al
    inc si
    mov [ChoicesTakenArrayUsed],si
    popa
    ret 

PrintAlphabet:
    push bp
    mov bp,sp
    pusha
    mov ax,0xb800
    mov es,ax
    mov si,[bp+4]
    mov cx,si
    mov di,2642
    PrintAlphabetLoopLabel:
        add di,10
        loop PrintAlphabetLoopLabel

    xor ax,ax
    mov ah,70h
    mov al,[Input]
    mov [es:di],ax
    popa
    pop bp
    ret 2
GuessedRightOrNot:
    pusha
    mov cx,0
    mov bx,WordChosen
    mov si,0
    mov al,[Input]
    mov byte [Found],0
    GuessedRightOrNotLoop:
        cmp al,[bx+si]
        jne RestofGuessedRightOrNot
        mov byte [Found],1
        mov dl,[CorrectGuess]
        inc dl
        mov [CorrectGuess],dl
        push si
        call PrintAlphabet
        
        RestofGuessedRightOrNot:
            inc si
            inc cx
            cmp cx,4
            jne GuessedRightOrNotLoop
    cmp byte [Found],1
    je CodeWithoutLiveDec
    mov ax,[Lives]
    dec ax
    mov [Lives],ax 
    push word [Lives]
    call Death
    CodeWithoutLiveDec:
        popa
        ret

Death:
    push bp
    mov bp,sp
    pusha
    mov ax,[bp+4]
    cmp ax,3
    je CallHeadPrint
    cmp ax,2
    je CallBodyPrint
    cmp ax,1
    je CallArmsPrint
    cmp ax,0
    je CallLegsPrint
    CallHeadPrint:
        push word 1164
        push word 4420h
        call PrintHeadFunc
        jmp DeathPop
    CallBodyPrint:
        push word 1806
        push word 4420h
        call BodyPrintFunc
        jmp DeathPop
    CallArmsPrint:
        push word 1806
        push word 4420h
        call PrintArmsFunc
        jmp DeathPop
    CallLegsPrint:
        push word 2606
        push word 4420h
        call PrintLegsFunc
    DeathPop:
        popa
        pop bp
        ret 2
Main:
   call clrscr ; clr scr fast 
   call HangmanIntroPrintFunc
   push word 0x0720
   call cls ; puts anything on the screen with delay 
   call GamePlayScreenFunc
   call PrintCompleteBodyFunc
   call PrintPossibleArray
   call PrintBlanks
    call WordGenerator
    ;push word 3000
    ;mov ax,WordChosen
    ;push ax
    ;push word 4
    ;call printstr
    ; uncomment the above 5 lines to show the word
    GameLoop:
        InputisInvalidLabel:
            call InputFunc
            call ValidateInputFunc
            cmp byte [InvalidInputFlag],1
            je InputisInvalidLabel
     call PutValueinChoicesTakenArrayFunc
     call PrintPossibleArray
     call GuessedRightOrNot
     cmp byte [CorrectGuess],4
            jne CheckLoseOrNot
            jmp ProgramExit
   CheckLoseOrNot:
          cmp word [Lives],0
          jne GameLoop

     
    
    
     


    
    
ProgramExit:
    push word 0x0720
    call cls ; puts anything on the screen with delay
    mov ax,0x4c00
    int 0x21


AlphabetsArray:
 db 'a', 'b', 'c', 'd', 'e', 'f','g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'

ChoicesTakenArrayUsed:
 dw 0
ChoicesTakenArray:
 db '0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'

NotValidFlag:
 db 0 

DiPrevVal:
 dw 0 
Lives:
 dw 4 

Input:
 db 0

InvalidInputFlag:
 db 0

randNum:
 dw 0

WordList:
 db 'kite','bane','cove','dock','jump','rife','vial','mull','cozy','peak'

WordChosen:
 db '    '

CorrectGuess:
db 0
Found:
db 0 
