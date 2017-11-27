%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Win-stay Lose-Shift versus Random
%Cooperate=1, Defect=0
function [SP1]= WSLS2(SP1,PP1,n)
if PP1(n-1)<0 && SP1(n-1)==1
    SP1(n)=0;
elseif PP1(n-1)<0 && SP1(n-1)==0
    SP1(n)=1;
elseif PP1(n-1)>0 && SP1(n-1)==1
        SP1(n)=1;
elseif PP1(n-1)>0 && SP1(n-1)==0
    SP1(n)=0;
end