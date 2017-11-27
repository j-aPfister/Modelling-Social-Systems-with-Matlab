%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Trust versus Random
%Cooperate=1, Defect=0
function [SP1, SP2]= zuf(z3,w1,n,SP1,SP2)
if z3(n)>=w1(n) 
    SP1(n)=1;
else SP1(n)=0;
    SP2(n)=randi([0, 1]);
end