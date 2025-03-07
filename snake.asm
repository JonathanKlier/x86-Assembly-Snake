                                                       
data segment
    
    mode db 1 ;(1=walls, 2=no walls)
           
    ;GRAPHICS:
    framepo db 1, 3
    Bannerpo db 15, 5
    Instructionspo db 3 , 11 
    WallsOrNoWallspo db 11, 5
    GameOverpo db 15, 5
    Scorepo db 1, 1
    GameOverScorepo db 23, 15
    
    frame db 201, 36 dup(205), 187
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186 
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186 
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186
                     db 0, 0, 186, 36 dup(0), 186   
                     db 0, 0, 200, 36 dup(205), 188, "$"
    ScoreBanner db "SCORE: $" 
    Banner db "WELCOME TO:", 12 dup(0), 186, 2 dup(0), 186
           db 13 dup(0), 201, 187, 201, 187, 201, 187, 186, 201, 201, 187, 179, 12 dup(0), 186, 2 dup(0), 186
           db 13 dup(0), 200, 187, 186, 186, 204, 185, 204, 185, 204, 0, 179, 12 dup(0), 186, 2 dup(0), 186
           db 13 dup(0), 200, 202, 188, 200, 188, 200, 188, 200, 202, 205, 1, "$"     
    Instructions db "Instructions:", 22 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186
                 db 15 dup(0), "w - Up", 24, 14 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186
                 db 15 dup(0), "s - Down", 25 , 12 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186           
                 db 15 dup(0), "a - Left", 25 , 12 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186 ;in emulator: *12 dup(0) after "a - left"*
                 db 15 dup(0), "d - Right", 26, 11 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186  
                 db 0, "PRESS ANY KEY TO START...", "$" 
    WallsOrNoWalls db "Walls or no walls?", 9 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 
                   db 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186
                   db 8 dup(0), 218, 17 dup(196), 191, 9 dup(0), 186, 2 dup(0), 186, 8 dup(0)
                   db 179, "PRESS 1 FOR WALLS", 179, 9 dup(0) ,186, 2 dup(0), 186,
                   db 8 dup(0), 192, 17 dup(196), 217, 9 dup(0), 186, 2 dup(0), 186
                   db 36 dup(0), 186, 2 dup(0), 186, 17 dup(0), "OR", 17 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186
                   db 7 dup(0), 218, 20 dup(196), 191, 7 dup(0), 186, 2 dup(0), 186
                   db 7 dup(0), 179, "PRESS 2 FOR NO WALLS", 179, 7 dup(0), 186, 2 dup(0), 186
                   db 7 dup(0), 192, 20 dup(196), 217, "$"     
    GameOverMsg db 201, 205, 205, 205, 205, 205, 205, 205, 205, 205, 187, 12 dup(0), 186, 2 dup(0), 186, 13 dup(0)
                db 186, 201, 187, 201, 187, 201, 203, 187, 201, 205, 185, 12 dup(0), 186, 2 dup(0), 186, 13 dup(0) 
                db 186, 186, 187, 204, 185, 186, 186, 186, 204, 205, 186, 12 dup(0), 186, 2 dup(0), 186, 13 dup(0)
                db 186, 200, 202, 188, 200, 188, 186, 200, 202, 205, 185, 12 dup(0), 186, 2 dup(0), 186, 13 dup(0)
                db 186, 201, 187, 186, 186, 201, 202, 203, 205, 187, 186, 12 dup(0), 186, 2 dup(0), 186, 13 dup(0)
                db 186, 186, 186, 186, 186, 204, 205, 204, 203, 188, 186, 12 dup(0), 186, 2 dup(0), 186, 13 dup(0)
                db 186, 200, 188, 200, 188, 200, 205, 188, 200, 205, 185, 12 dup(0), 186, 2 dup(0), 186, 13 dup(0)
                db 200, 205, 205, 205, 205, 205, 205, 205, 205, 205, 188, 12 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186, 14 dup(0)
                db "SCORE: ", "$"
    PressAnyKeyToContinue db "PRESS R TO RESTART....", 7 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186, 36 dup(0), 186, 2 dup(0), 186
                          db 0, "Press M To Return To The Main Menu$" 
    DeleteGameOverMsg db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186 
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), 186, 2 dup(0), 186
                      db 36 dup(0), "$"
    DeleteScoreG_O db 10 dup(0), "$"
    
    
    
    ;VARIABLES:       
    msg db 219 , '$'
    delete db ' ' , '$'
    food db '*', '$'
    foodpo db ?,?    
    score dw 1  ;full score
    asciiscore db ?, ?, ?, "$"
    counter db 2, 0 ;snake's length   
    tailplace db 2, 0
    tailonedge db 0
    game_over db 0
    timecx dw 0h    ;0.01 seconds
    timedx dw 86A0h
            
    snake db 20, 12, 19, 12  ;HOLY!
ends

stack segment
    dw   128  dup(0)
ends

code segment
    
    proc changetimer
         
         sub timedx, 1F4h
         cmp timedx, 1F4h
         JNB changecx
         mov timecx, 0
         mov timedx, 0FFFFh
         changecx:
         
         ret
    endp changetimer: 
    
    proc Check_If_Tail_On_Edge
        
        sub bx, bx
        mov bl, tailplace[0]
        
        cmp snake[bx], 1   ;checking columns  ;1=the frame's left column position
        JNE notonleftedge
        mov tailonedge[0], 1
        notonleftedge:
        
        cmp snake[bx], 38                     ;38=the frame's right column position
        JNE notonrightedge
        mov tailonedge[0], 1
        notonrightedge:
        
        cmp snake[bx+1], 3   ;checking rows   ;3=the frame's upper row position
        JNE notonupperedge
        mov tailonedge[0], 1
        notonupperedge:
        
        cmp snake[bx+1], 23                   ;23=the frame's lower row position
        JNE notonloweredge
        mov tailonedge[0], 1
        notonloweredge:
        
        ret
    endp Check_If_Tail_On_Edge: 
    
    
    proc print_newsnake_OOPS_left
        
        xor bh, bh
        mov bl, tailplace 
        cmp snake[bx], 1
        JNE onleftedge
        mov snake[bx], 37
        mov dl, 37
        onleftedge: 
        
        ret
    endp print_newsnake_OOPS_left:
    
    proc print_newsnake_OOPS_right
        
        xor bh, bh
        mov bl, tailplace 
        cmp snake[bx], 38
        JNE onrightedge
        mov snake[bx], 2
        mov dl, 2
        onrightedge: 
        
        ret
    endp print_newsnake_OOPS_right:
    
    proc print_newsnake_OOPS_up
        
        xor bh, bh
        mov bl, tailplace
        cmp snake[bx+1], 3
        JNE onupedge
        mov snake[bx+1], 22
        mov dh, 22
        onupedge: 
        
        ret
    endp print_newsnake_OOPS_up:
    
    proc print_newsnake_OOPS_down
        
        xor bh, bh
        mov bl, tailplace 
        cmp snake[bx+1], 23
        JNE ondownedge
        mov snake[bx+1], 4
        mov dh, 4
        ondownedge: 
        
        ret
    endp print_newsnake_OOPS_down:
    
    proc UpdateScore         ;CONVERTING THE SCORE INTO ASCII
        
        xor ax, ax
        mov dx, score

        cmp dx, 10
        JNB not1digit
    
        mov asciiscore[0], dl 
        add asciiscore[0], 48
    
        JMP skippp
        not1digit:
    
        cmp dx, 100
         
        JNB not2digit

        mov al, dl
        mov bl, 10
        div bl   
        mov asciiscore[1], ah
        add asciiscore[1], 48
        mov asciiscore[0], al
        add asciiscore[0], 48
    
        JMP skippp
      
        not2digit:
    
        mov ax, dx
        mov bl, 10
        div bl
        mov asciiscore[2], ah
        add asciiscore[2], 48
        xor ah, ah
        div bl
        mov asciiscore[1], ah
        add asciiscore[1], 48
        mov asciiscore[0], al
        add asciiscore[0], 48

        skippp:
        
        cmp game_over[0], 1
        JNE normal
        
        mov ah, 02h
        mov dh, GameOverScorepo[1]
        mov dl, GameOverScorepo[0]
        int 10h
    
        mov ah, 09h
        mov dx, offset asciiscore
        int 21h
        
        JMP skipppp
        normal:
        
        mov ah, 02h
        mov dh, 1
        mov dl, 8
        int 10h
    
        mov ah, 09h
        mov dx, offset asciiscore
        int 21h
        skipppp:
        
        ret
    endp UpdateScore:     
    
    proc Change_W 
    
         sub cx, cx
         mov cl, counter
         add cl, counter
         sub cl, 3
         MoveArrayW: 
                
         mov bx, cx
         mov al, snake[bx]
         mov snake[bx+2], al
         
         dec cx 
                  
         JNS MoveArrayW
         
         dec snake[1]
         
         CALL Check_If_Touching_Edge
         
         CALL HittingYourself_Edge
         
         ret
    endp Change_W: 

    proc Change_S
        
         sub cx, cx
         mov cl, counter
         add cl, counter
         sub cl, 3
         MoveArrayS: 
                
         mov bx, cx
         mov al, snake[bx]
         mov snake[bx+2], al
         
         dec cx 
                  
         JNS MoveArrayS
        
         inc snake[1]
         
         CALL Check_If_Touching_Edge
         
         CALL HittingYourself_Edge
         
         ret
    endp Change_S:
    
    proc Change_A
        
         sub cx, cx
         mov cl, counter
         add cl, counter
         sub cl, 3
         MoveArrayA: 
                
         mov bx, cx
         mov al, snake[bx]
         mov snake[bx+2], al
         
         dec cx 
                  
         JNS MoveArrayA
        
         dec snake[0]
         
         CALL Check_If_Touching_Edge
         
         CALL HittingYourself_Edge
         
         ret
    endp Change_A:
    
    proc Change_D
        
         sub cx, cx
         mov cl, counter
         add cl, counter
         sub cl, 3
         MoveArrayD: 
                
         mov bx, cx
         mov al, snake[bx]
         mov snake[bx+2], al
         
         dec cx 
                  
         JNS MoveArrayD
        
         inc snake[0]
         
         CALL Check_If_Touching_Edge
         
         CALL HittingYourself_Edge
         
         ret
    endp Change_D:
    
    proc Check_Eating_Food
        
         mov ah, snake[1]  ;Moving the head x and y to ax
         mov al, snake[0]
         mov bh, foodpo[1] ;Moving the food x and y to bx
         mov bl, foodpo[0]
         
         cmp ah, bh        ;checking if both x's and y's are equal
         JNE not_eating1
         cmp al, bl
         JNE not_eating2 
         
         call INCREASE_LENGTH ;if so, the snake has eaten, which means he
                              ;needs to grow!        
         inc score
         
         call UpdateScore 
                              
         not_eating1:
         not_eating2:
         
         xor bx, bx        ;if not, continue as normal
         xor ax, ax
         
         ret             
    endp Check_Eating_Food:
    
    proc INCREASE_LENGTH
         
         xor bx, bx
         xor ax, ax
         xor si, si
         
         mov bl, tailplace ;2
         
         mov al, counter   ;2
         mov si, ax
         
         add si, si
         sub si, 4        ;counter=1
         
         mov cl, snake[si]   ;column
         mov ch, snake[si+1]  ;row
         mov dl, snake[bx]    ;tail column
         mov dh, snake[bx+1] ;tail row
         
         cmp cl, dl          ;Comparing the second last body part's column with the
         JZ Go_Above_Or_Below;tail's column. If they are the same, it means it is 
         JNS Print_Left      ;necessary no print the new tail according to rows.
         ;///printing right  ;However, if the columns are not the same,
                             ;we need to focus on printing the new tail either in left
         mov ah, 02h         ;or right. If the second last column - tail column = 1, it 
         inc dl              ;means the tail area is moving right, which means the new
                             ;tail is printed on the left. 
         mov snake[bx+2], dl ;If the second last column - tail column = -1, it means the  
         mov snake[bx+3], dh ;tail area is moving left, which means the new tail is 
         inc counter         ;printed on the right.
         add tailplace, 2
         
         cmp mode[0], 1
         
         JE no_need_for_print_on_the_opposite_side_right
         
         call print_newsnake_OOPS_right
         
         int 10h      
         mov ah, 09h
         lea dx, msg
         int 21h
         
         JMP skip_all
         
         no_need_for_print_on_the_opposite_side_right:
         
         call Check_If_Tail_On_Edge
         cmp tailonedge[0], 1
         JNE Dont_print_tail_edge_right         
         JMP skip_all
         Dont_print_tail_edge_right:
         
         int 10h      
         mov ah, 09h
         lea dx, msg
         int 21h
         
         JMP skip_all
         
         Print_Left:
         ;///printing left
         mov ah, 02h
         dec dl
         
         mov snake[bx+2], dl
         mov snake[bx+3], dh
         inc counter
         add tailplace, 2
         
         cmp mode[0], 1
         JE no_need_for_print_on_the_opposite_side_left
         call print_newsnake_OOPS_right
         
         int 10h         
         mov ah, 09h
         lea dx, msg
         int 21h
         
         JMP skip_all
         
         no_need_for_print_on_the_opposite_side_left:
         
         call Check_If_Tail_On_Edge
         cmp tailonedge[0], 1
         JNE Dont_print_tail_edge_left         
         JMP skip_all
         Dont_print_tail_edge_left:
         
         int 10h      
         mov ah, 09h
         lea dx, msg
         int 21h
         
         JMP skip_all
         
         Go_Above_Or_Below:
         cmp ch, dh
         JS Print_Below
         ;///printing above
         mov ah, 02h
         dec dh 
         
         mov snake[bx+2], dl
         mov snake[bx+3], dh
         inc counter
         add tailplace, 2 
         
         cmp mode[0], 1
         JE no_need_for_print_on_the_opposite_side_up
         call print_newsnake_OOPS_up
         
         int 10h      
         mov ah, 09h
         lea dx, msg
         int 21h
         
         JMP skip_all
         
         no_need_for_print_on_the_opposite_side_up:
         
         call Check_If_Tail_On_Edge
         cmp tailonedge[0], 1
         JNE Dont_print_tail_edge_up         
         JMP skip_all
         Dont_print_tail_edge_up:
         
         int 10h      
         mov ah, 09h
         lea dx, msg
         int 21h
          
         JMP skip_all
                  
         Print_Below:
         ;///printing below
         mov ah, 02h
         inc dh
         
         mov snake[bx+2], dl
         mov snake[bx+3], dh
         inc counter
         add tailplace, 2
         
         cmp mode[0], 1
         JE no_need_for_print_on_the_opposite_side_down
         call print_newsnake_OOPS_down
         
         int 10h      
         mov ah, 09h
         lea dx, msg
         int 21h 
         
         JMP skip_all
         
         no_need_for_print_on_the_opposite_side_down:
         
         call Check_If_Tail_On_Edge
         cmp tailonedge[0], 1
         JNE Dont_print_tail_edge_down         
         JMP skip_all
         Dont_print_tail_edge_down:
         
         int 10h      
         mov ah, 09h
         lea dx, msg
         int 21h
         
         skip_all:
         
         call changetimer
         
         call ShowFood          
         
         ret          
    endp INCREASE_LENGTH:
    
    proc ShowFood
    
    Random_Again!:    
    ;RANDOM ROW:
    
    mov ah, 2Ch
    int 21h                   ;(randomnum*18)/100 
                              ;1 rows
    mov al, dl
    mov bl, 19
    mul bl 
    
    sub dx, dx
    sub cx, cx
    
    mov bx, 100
    div bx
    
    mov foodpo[1], al
    add foodpo[1], 4
    sub dx, dx
    sub cx, cx
    sub bx, bx 
    
    ;RANDOM COLUMN:
    
    mov ah, 00h
    int 1Ah 
    
    mov al, dl            ;(randomnum*36)/100
    mov bl, 36            ;36 columns 
    mul bl

    sub dx, dx
    sub cx, cx
        
    mov bx, 256
    div bx
    
    mov foodpo[0], al
    add foodpo[0], 2
    
    sub bx, bx
    
    sub cx, cx
    mov cl, counter
    add cl, counter
    sub cl, 2
    
    Check_On_Food:     ;Checking if the food was spawned on the snake, if so
                       ;then spawn it somewhere else
    mov si, cx    
    mov dh, snake[si+1]
    cmp dh, foodpo[1]
    JNE not_row
    
    mov dl, snake[si]
    cmp dl, foodpo[0]
    JNE not_column
      
    JE Random_Again!        
    not_row: 
    not_column:
    
    dec cx
    Loop Check_On_Food
    
    mov ah, 02h
    mov dh, foodpo[1]
    mov dl, foodpo[0]
    int 10h
    
    mov ah, 09h
    lea dx, food
    int 21h
    
    endp ShowFood:
    
    proc HittingYourself_Edge
        
         xor cx, cx
         
         ;ARE YOU HITTING YOUSELF?: 
         mov cl, counter
         add cl, counter
         sub cl, 2
                 
         mov dh, snake[1]
         mov dl, snake[0] 
         
         check_is_hitting,all_snake:
          
         mov bx, cx
         mov ah, snake[bx+1]
         mov al, snake[bx]
         
         cmp dh, ah
         JNE skipdis1
         
         cmp dl, al
         JNE skipdis2
         
         call GameOver ; !(:O)!
         
         skipdis1:
         skipdis2:
         
         sub cx, 2
         
         cmp cx, 6
         JA check_is_hitting,all_snake
         ;IF YOU PASSED THIS, YOU HAVEN'T HIT YOURSELF! :D
         xor ax, ax
         xor bx, bx
         xor dx, dx
                      
         ret
    endp HittingYourself_Edge: 
    
    proc Check_If_Touching_Edge
        
        mov dh, snake[1]
        mov dl, snake[0]
        
        cmp mode[0], 2
        JNE nowalls1
        
        cmp dh, 3             ;If the snake's head is on the upper edge's row,
        JNE not_upper1        ;go down.
        mov snake[1], 22
        ret
        not_upper1:
        
        cmp dh, 23            ;If the snake's head is on the lower edge's row,
        JNE not_lower1        ;go up
        mov snake[1], 4
        ret
        not_lower1: 
        
        cmp dl, 1             ;If the snake's head is on the left edge's column,
        JNE not_left1         ;go right
        mov snake[0], 37
        ret
        not_left1:
        
        cmp dl, 38            ;If the snake's head is on the right edge's column,
        JNE not_right1        ;go left
        mov snake[0], 2
        ret
        not_right1:
        
        JMP skipap
        
        nowalls1:
                
        cmp dh, 3             ;If the snake's head is on the upper edge's row,
        JNE not_upper2        ;GAMEOVER
        CALL GameOVer
        ret
        not_upper2:
        
        cmp dh, 23            ;If the snake's head is on the lower edge's row,
        JNE not_lower2        ;GAME OVER
        CALL GameOver
        ret
        not_lower2: 
        
        cmp dl, 1             ;If the snake's head is on the left edge's column,
        JNE not_left2         ;GAMR OVER
        CALL GameOver
        ret
        not_left2:
        
        cmp dl, 38            ;If the snake's head is on the right edge's column,
        JNE not_right2        ;GAME OVER
        CALL GameOver
        ret
        not_right2:
        
        
        skipap:
        ret
    endp Check_If_Touching_Edge    
    
    proc GameOver
        
        mov game_over[0], 1
        
        
        mov ah, 02h
        mov dh, framepo[1]
        mov dl, framepo[0]
        int 10h      
        mov ah, 09h        ;delete snake and food by printing the frame again
        lea dx, frame
        int 21h
        mov ah, 02h
        mov dh, 1
        mov dl, 1
        int 10h
        mov ah, 09h
        lea dx, DeleteScoreG_O 
        int 21h
    
        mov ah, 02h            ;Deleting the GAME OVER sign
        mov dh, GameOverpo[1]
        mov dl, GameOverpo[0]
        int 10h
        
        mov ah, 09h
        lea dx, GameOverMsg
        int 21h
        
        mov ah, 02h
        mov dh, 18
        mov dl, 9
        int 10h
        
        mov ah, 09h
        lea dx, PressAnyKeyToContinue
        int 21h
        
        call UpdateScore
        
        Not_r_or_m:
        
        mov ah, 00h            ;Waiting for any key to be pressed
        int 16h
        
        cmp al, 'r'
        JNE restart
        JMP Play_Again
        restart:
        
        cmp al, 'm'
        JNE gotomainmenu
        JMP start
        gotomainmenu:
        
        JMP Not_r_or_m
       
    endp GameOver:
     
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax 
    
    mov ah, 00h
    mov al, 13h
    int 10h
    
    mov ah, 02h
    mov dh, framepo[1]
    mov dl, framepo[0]
    int 10h      
    mov ah, 09h        ;print frame
    lea dx, frame
    int 21h
    mov ah, 02h
    mov dh, Bannerpo[1]
    mov dl, Bannerpo[0]
    int 10h    
    mov ah, 09h            ;print intro banner
    mov dx, offset Banner
    int 21h    
    mov ah, 02h
    mov dh, Instructionspo[1]
    mov dl, Instructionspo[0]
    int 10h    
    mov ah, 09h                ;print instructions
    mov dx, offset Instructions
    int 21h    
    
    mov ah, 07h      ;wait for a key to be presssed...
    int 21h
    
    mov ah, 02h      ;Deleting the intro banner and the instructios
    mov dh, 4
    mov dl, 2
    int 10h    
    mov ah, 09h
    lea dx, DeleteGameOverMsg
    int 21h
     
    mov ah, 02h
    mov dh, WallsOrNoWallspo[1]
    mov dl, WallsOrNoWallspo[0]
    int 10h    
    mov ah, 09h              ;printing WALLS OR NO WALLS?
    lea dx, WallsOrNoWalls
    int 21h
    
    checkwallsornowallsagain:
    
    mov ah, 07h      ;wait for a key to be presssed...
    int 21h
    
    cmp al, '1'
    JNE walls
    
    mov mode[0], 1
    JMP skipwallcheck
    
    walls:
    
    cmp al, '2'
    JNE nowalls 
    
    mov mode[0], 2
    JMP skipwallcheck
    
    nowalls:
    JMP checkwallsornowallsagain 
    skipwallcheck:
        
    mov ah, 02h
    mov dh, Scorepo[1]
    mov dl, Scorepo[0]
    int 10h      
    mov ah, 09h
    lea dx, ScoreBanner
    int 21h
    
    mov ah, 02h                ;Deleting the walls or no walls banner
    mov dh, 4
    mov dl, 2
    int 10h    
    mov ah, 09h
    lea dx, DeleteGameOverMsg
    int 21h 
    
    JMP first_round
    Play_Again:
        
    mov ah, 02h                ;Deleting the game over banner and the dead snake
    mov dh, 4
    mov dl, 2
    int 10h    
    mov ah, 09h
    lea dx, DeleteGameOverMsg
    int 21h
    mov ah, 02h             ;Print the Score Banner Again! :D
    mov dh, Scorepo[1]
    mov dl, Scorepo[0]
    int 10h      
    mov ah, 09h
    lea dx, ScoreBanner
    int 21h     
    first_round:
    
    mov counter, 2
    mov tailplace, 2
    mov foodpo[0], 0
    mov foodpo[1], 0 
    mov snake[0], 20
    mov snake[1], 12 
    mov snake[2], 19
    mov snake[3], 12
    mov score, 1
    mov asciiscore[0], 0
    mov asciiscore[1], 0
    mov asciiscore[2], 0 
    mov tailonedge[0], 0
    mov game_over[0], 0
    
    call UpdateScore
    mov ah, 02h
    mov dh, 1
    mov dl, 8
    int 10h      
    mov ah, 09h
    lea dx, asciiscore
    int 21h  
    
    sub bx, bx
    mov bl, tailplace        
    mov ah, 02h
    mov dh, snake[bx+1]
    mov dl, snake[bx]
    int 10h                         
    mov ah, 09h
    mov dx, offset msg
    int 21h                   
      
    mov ah, 02h
    mov dh, snake[1]
    mov dl, snake[0]
    int 10h    
    mov ah, 09h
    mov dx, offset msg
    int 21h 
    
    call ShowFood 
   
    Check_Again:
    
    mov ah, 07h ;waiting for a key to be pressed for the game to start
    int 21h
    JMP start_first
    
    ;//////////////////////////////GAME STARTS////////////////////////////////////////
    roll:
    
    start_first:
    
    cmp al, 'w'  ;has w been pressed? if so then roll the snake up!
    JNE notw
    JMP roll_w:
    notw:
    
    cmp al, 's'  ;has s been pressed? if so then roll the snake down!
    JNE nots
    JMP roll_s
    nots:
    
    cmp al, 'a'  ;has a been pressed? if so then roll the snake left!
    JNE nota
    JMP roll_a
    nota:
    
    cmp al, 'd'  ;has d been pressed? if so then roll the snake right!
    JNE notd
    JMP roll_d
    notd:
    
    JMP Check_Again
    
    ;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
     
    roll_w:
    
    mov ah, 0Ch     ;Clearing buffer ***************
    int 21h
    
    cmp tailonedge[0], 1
    JNE nopeedge_w
    JMP skip_deleting_the_tail_w
    nopeedge_w:
    
    sub bx, bx
    mov bl, tailplace
    
    mov ah, 02h      ;Move the cursor to the tail
    mov dh, snake[bx+1]
    mov dl, snake[bx]
    int 10h
 
    mov ah, 09h      ;Move ' ' to the tail position
    lea dx, delete
    int 21h
    
    skip_deleting_the_tail_w:
    
    mov tailonedge[0], 0     
    
    call Change_W 
    
    mov ah, 02h
    mov dh, snake[1]
    mov dl, snake[0]
    int 10h 
    
    mov ah, 09h    ;printing the new head
    lea dx, msg
    int 21h
    
    call Check_Eating_Food
    
    mov ah, 86h      ;WAIT 0.8 seconds
    mov dx, timedx
    mov cx, timecx
    int 15h
    
    mov ah, 01h  ;mov ah, 06h   ;checking if a new button has been pressed
    int 16h      ;mov dl, 255
                 ;int 21h 
    JZ zero_w
    cmp al, 'a'
    JE approved_w
    cmp al, 'd'
    JE approved_w
    JMP NOT_APPROVED_W   
    approved_w:

    JMP roll 
    
    NOT_APPROVED_W: :
    mov ah, 0Ch     ;Clearing buffer
    int 21h
    zero_w:
    
    Jmp roll_w 
    
    ;SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS    
    
    roll_s:
    
    mov ah, 0Ch     ;Clearing buffer ***************
    int 21h 
    
    cmp tailonedge[0], 1
    JNE nopeedge_s
    JMP skip_deleting_the_tail_s
    nopeedge_s:
    
    sub bx, bx
    mov bl, tailplace
    
    mov ah, 02h      ;Move the cursor to the tail
    mov dh, snake[bx+1]
    mov dl, snake[bx]
    int 10h
    
    mov ah, 09h      ;Move ' ' to the tail position
    lea dx, delete
    int 21h
    
    skip_deleting_the_tail_s: 
    
    mov tailonedge[0], 0
                      
    call Change_S
      
    mov ah, 02h
    mov dh, snake[1]
    mov dl, snake[0]
    int 10h 
    
    mov ah, 09h      ;printing the new head
    lea dx, msg
    int 21h 
    
    call Check_Eating_Food
    
    mov ah, 86h      ;WAIT 0.8 seconnds
    mov dx, timedx
    mov cx, timecx
    int 15h
    
    mov ah, 01h  ;mov ah, 06h   ;checking if a new button has been pressed
    int 16h      ;mov dl, 255
                 ;int 21h 
    JZ zero_s
    cmp al, 'a'
    JE approved_s
    cmp al, 'd'
    JE approved_s
    JMP NOT_APPROVED_S   
    approved_s:

    JMP roll 
    
    NOT_APPROVED_S:
    mov ah, 0Ch     ;Clearing buffer
    int 21h  
    zero_s:
    Jmp roll_s 
    
    ;AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    
    roll_a:
    
    mov ah, 0Ch     ;Clearing buffer ***************
    int 21h
    
    cmp tailonedge[0], 1
    JNE nopeedge_a
    JMP skip_deleting_the_tail_a
    nopeedge_a: 
    
    sub bx, bx
    mov bl, tailplace
    
    mov ah, 02h      ;Move the cursor to the tail
    mov dh, snake[bx+1]
    mov dl, snake[bx]
    int 10h
    
    mov ah, 09h      ;Move ' ' to the tail position
    lea dx, delete
    int 21h
    
    skip_deleting_the_tail_a:
    
    mov tailonedge[0], 0
                     
    call Change_A
    
    mov ah, 02h
    mov dh, snake[1]
    mov dl, snake[0]
    int 10h 
    
    mov ah, 09h      ;printing the new head
    lea dx, msg
    int 21h
    
    call Check_Eating_Food
    
    mov ah, 86h      ;WAIT 0.8 seconds
    mov dx, timedx
    mov cx, timecx
    int 15h    
    
    mov ah, 01h   ;checking if a new button has been pressed
    int 16h
    
    JZ zero_a
    cmp al, 'w'
    JE approved_a
    cmp al, 's'
    JE approved_a
    JMP NOT_APPROVED_A   
    approved_a:
 
    JMP roll 
    
    NOT_APPROVED_A:
    mov ah, 0Ch     ;Clearing buffer
    int 21h
    zero_a:
    Jmp roll_a
    ;DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
    
    roll_d:
    
    mov ah, 0Ch     ;Clearing buffer ***************
    int 21h 
    
    cmp tailonedge[0], 1
    JNE nopeedge_d
    JMP skip_deleting_the_tail_d
    nopeedge_d:
     
    sub bx, bx
    mov bl, tailplace
    
    mov ah, 02h      ;Move the cursor to the tail
    mov dh, snake[bx+1]
    mov dl, snake[bx]
    int 10h
    
    mov ah, 09h      ;Move ' ' to the tail position
    lea dx, delete
    int 21h 
    
    skip_deleting_the_tail_d: 
    
    mov tailonedge[0], 0
    
    call Change_D
      
    mov ah, 02h
    mov dh, snake[1]
    mov dl, snake[0]
    int 10h 
    
    mov ah, 09h      ;printing the new head
    lea dx, msg
    int 21h 
    
    call Check_Eating_Food 
    
    mov ah, 86h      ;WAIT 0.8 seconds
    mov dx, timedx
    mov cx, timecx
    int 15h   
    
    mov ah, 01h   ;checking if a new button has been pressed
    int 16h 
    JZ zero_d
    cmp al, 'w'
    JE approved_d
    cmp al, 's'
    JE approved_d
    JMP NOT_APPROVED_D
    approved_d:
 
    JMP roll 
    
    NOT_APPROVED_D:
    mov ah, 0Ch     ;Clearing buffer
    int 21h
    zero_d: 
    Jmp roll_d
    
    
    
    
    Jmp roll:   
ends

end start ; set entry point and stop the assembler.
