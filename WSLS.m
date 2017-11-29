%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Trust versus Win-stay Lose-shift
%Cooperate=1, Defect=0
function [SP1, SP2]= WSLS(SP2,PP2,SP1,PP1,n)
if n==1
if SP1(1)==SP2(1)
    PP1(1)=x1(n);
    PP2(1)=x2(n);
elseif SP1(1)~=SP2(1)
    PP1(1)=z1(n);
    PP2(1)=z2(n);
end
end
if n>1
if PP1(n-1)<0 && SP1(n-1)==1
    SP1(n)=0;
elseif PP2(n-1)<0 && SP1(n-1)==0
    SP1(n)=1;
elseif PP1(n-1)>0 && SP1(n-1)==1
        SP1(n)=1;
elseif PP1(n-1)>0 && SP1(n-1)==0
    SP1(n)=0;
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
end

end