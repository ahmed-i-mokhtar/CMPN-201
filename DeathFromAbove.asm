include ShiftingCharacter.inc            
            
            
            
            
            
;---------------------------------------------------------------------------------------------------------------------------------------------            
            .model medium
            .stack 64
;---------------------------------------------------------------------------------------------------------------------------------------------
            .data
charx   dw  35, 45, 50,55,65  ;RUx, RFx, COMx, LFx, LUx
charY   dw  30, 60, 50, 60,30 ;RUy, RFy, COMy, LFy, LUy
shiftingFeed dw 20
shiftingStep dw 7
;---------------------------------------------------------------------------------------------------------------------------------------------
            .code
main    proc far
        mov ax, @data
        mov ds, ax 
        mov ah, 0
        mov al, 13h
        int 10h
        
        MainLoop: 
         
        call ShiftingCharacter       ;Evaluates user inputs and shifts the character with advanced mechanisms   
        
        jmp MainLoop

            hlt
main        endp
;--------------------------------------------------------------------------------------------------------------------------------------------






end         main
