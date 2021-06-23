ORG 0000H
	LJMP MAIN
	ORG 001BH ; ISR for Timer 1
		CPL P1.1 ; Toggle p1.1
		RETI ; Return to Caller
	ORG 00BH ; ISR for Timer 0
		CPL P1.0 ; Toggle P1.0
		CLR TF0
		MOV TH0, #0FCH
		MOV TL0, #066H
		SETB TR0 ; Start Timer 0
		RETI ; Return to Caller
	ORG 0100H
	MAIN: MOV IE, #10001010B ; enable serial, timer 0 and timer 1
	MOV TMOD, #21H ; timer 1 set to mode 2 and timer 0 set to mode 1
	MOV TH1, #0BEH
	MOV TH0, #0FCH
	MOV TL0, #066H
	SETB TR0 ; start timer 0
	SETB TR1 ; start timer 1
	HERE: SJMP HERE
	END
