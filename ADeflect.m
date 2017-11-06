%Player1=Trust, Player2= always deflect
function [SP1, SP2]= ADeflect(z3,w1,n,SP1,SP2)
if z3(n)>w1(n) 
    SP1(n)=1;
else SP1(n)=0;
end
SP2(n)=0;