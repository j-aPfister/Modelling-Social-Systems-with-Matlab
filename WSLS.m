%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Trust versus Win-stay Lose-shift
%Cooperate=1, Defect=0
function [SP1, SP2]= WSLS(z3,w1,SP2,PP2,SP1,n)
if z3(n)>w1(n) 
    SP1(n)=1;
else SP1(n)=0;
end

if PP2(n-1)<0 && SP2(n-1)==1
    SP2(n)=0;
elseif PP2(n-1)<0 && SP2(n-1)==0
    SP2(n)=1;
elseif PP2(n-1)>0 && SP2(n-1)==1
        SP2(n)=1;
elseif PP2(n-1)>0 && SP2(n-1)==0
    SP2(n)=0;
end