%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Trust versus Random
%Cooperate=1, Defect=0
function [SP1, SP2]= zuf1(SP1,SP2,n)
    SP1(n)=randi([0, 1]);
    SP2(n)=randi([0, 1]);
end