.ORIG x3000
LEA R1, xFF ; Load adresses values begin at
AND R0, R0, #0 ;Clearing Register 0
ADD R0, R0, #0 ; Set Register 0 to 0 by default
AND R2, R2, #0 ;Clear Register 2 will count through the data
ADD R2, R2, #10 ;Set counter to 10 
BRz #8 ;controls wether or not if the loop continues running, only want to continue if we do less than 10 numbers
LDR R3, R1, #0
ADD R2, R2, #-1 ;decrement counter
ADD R1, R1, #1	; increment pointer
ADD R3, R3, #-5	;subtract 5 from value loaded. if this value = 0 we will know if we find a 5
BRnp #2	;branch if the value is NOT 0
ADD R0, R0, #1 ;add one to R0 as specified 
BRp #1
BRp #-9 ;back back back it up! if it is not 0 
.END ;the end


