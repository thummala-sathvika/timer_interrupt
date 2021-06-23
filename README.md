# timer_interrupt
 Initially set where the interrupt should happen like for timer 1
intrrupt at 001BH and for timer 0 interrupt at 00BH,
 Then move the values of TH0 and TL0 into them with the values as
per calculations given below.
 Then in the main loop initialize the IE register with 10001010B
which enables the timer 0 and timer 1.
 Set the timer 1 in mode 2 and timer 0 in mode 1 and give all the TH1
and TL0 values
 Then after simulating go to logic analyser and add p1.0 and p1.1
where we can observe the wave form of 500 hz and 7k hz wave.



##Calculation:
Gate c/t M1 M0 Gate c/t M1 M0
0    0   1  0  0    0   0 1
Timer 1 IN MODE 2 TIMER 0 IN MODE 1
Time delay calculations:

##For freq= 500 hz
Given frequency f = 500 hz
Total time period = 0.002 sec
Ton = Toff = 0.001msec
[ (FFFF-XXXX)+1] * 1.085 u sec = 0.001 sec
 XXXX = 64615 in decimal
 XXXX = FC66H
 Hence we have to take TL0 = 66H
 TH0 = FCH



##For freq = 7k hz
Given frequency f = 7k hz
Total time period = 0.1428m sec
Ton = Toff = 0.0714msec
[ (FF-XX)+1] * 1.085 u sec = 0.0714sec
 XX = 190 in decimal
 XX = 00BEH
 Hence we have to take TL1 = BEH
 TH1 = 00H
