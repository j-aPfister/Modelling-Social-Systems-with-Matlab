function [SP1, SP2]= TfT(SP1,n,SP2)
if SP2(n-1)==1
    SP1(n)=1;
else SP1(n)=0;

end   
    if SP1(n-1)==1
    SP2(n)=1;
else SP2(n)=0;
end