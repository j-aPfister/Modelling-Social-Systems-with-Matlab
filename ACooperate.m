%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Trust versus Always Cooperate
%Cooperate=1, Defect=0
function [SP1, SP2]= ACooperate(z3,w1,SP1,SP2,n)
if z3(n)>w1(n) 
    SP1(n)=1;
else SP1(n)=0;
end
SP2(n)=1;