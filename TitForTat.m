%Player 1= Trust Strategy, Player2= Tit for Tat strategy
function [SP1, SP2]= TitForTat(z3,w1,SP1,n,SP2);
if z3(n)>w1(n) 
    SP1(n)=1;
else SP1(n)=0;
end

if SP1(n-1)==1
    SP2(n)=1;
else SP2(n)=0;
end