%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Trust versus Always Defect
%Cooperate=1, Defect=0function [SP1, SP2]= ADefect(z3,w1,n,SP1,SP2)
function [SP1]=ADefect(z3,w1,n,SP1,SP2)
if z3(n)>w1(n) 
    SP1(n)=1;
else
    SP1(n)=0;
end
SP2(n)=0;
end