%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Trust versus Trust
%Cooperate=1, Defect=0
function [SP1, SP2]=TrustvTrust(z3,w1,y3,w2,n,SP1,SP2)
if z3(n) >= w1(n) 
    SP1(n)= 1;
else 
    SP1(n)= 0;
end

if y3(n) >= w2(n)
    SP2(n)= 1;
else
    SP2(n)= 0;
end