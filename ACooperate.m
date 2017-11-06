%Player1=Trust, Player 2=always cooperate
function [SP1, SP2]= ACooperate(z3,w1,SP1,SP2,n);
if z3(n)>w1(n) 
    SP1(n)=1;
else SP1(n)=0;
end
SP2(n)=1;