%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Tit for Tat versus Random
%Cooperate=1, Defect=0
function [SP1]= TitForTat(SP1,n,SP2);
if SP2(n-1)==1
    SP1(n)=1;
else SP1(n)=0;
end