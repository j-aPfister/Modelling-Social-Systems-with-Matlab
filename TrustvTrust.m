%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Trust versus Trust
%Cooperate=1, Defect=0
function [SP1, SP2]=TrustvTrust(w1,y2,y1,w2,n,SP1,SP2,x1,x2,z1,z2,PP1,PP2)

%Initial Conditions 
TP1=zeros(1, n);
TP2=zeros(1, n);
TP1(1)=1;
TP2(1)=1;

%first payoff calculation

%Trust evaluation
    if PP1(n-1)>0 && PP2(n-1)>0
        TP1(n)=TP1(n-1)+(PP1(n-1)*abs(PP1(n-1))/abs(PP2(n-1))*sum(PP1)/sum(PP2))/y1;
        TP2(n)=TP2(n-1)+(PP2(n-1)*abs(PP2(n-1))/abs(PP1(n-1))*sum(PP2)/sum(PP1))/abs(z2);
        
    elseif PP1(n-1)<0 && PP2(n-1)<0
        TP1(n)=TP1(n-1)+(PP1(n-1)*abs(PP1(n-1))/abs(PP2(n-1))*sum(PP1)/sum(PP2))/abs(z1);
        TP2(n)=TP2(n-1)+(PP2(n-1)*abs(PP2(n-1))/abs(PP1(n-1))*sum(PP2)/sum(PP1))/abs(z2);    
        
    elseif PP1(n-1)>0 && PP2(n-1)<0
       TP1(n)=TP1(n-1)+((PP1(n-1)-PP2(n-1))*abs(PP1(n-1))/abs(PP2(n-1))*sum(PP1)/sum(PP2)*(-1.5)/y1);
       TP2(n)=TP2(n-1)+((PP1(n-1)-PP2(n-1))*abs(PP2(n-1))/abs(PP1(n-1))*sum(PP1)/sum(PP2)*(-2)/abs(y2));
       
    elseif PP1(n-1)<0 && PP2(n-1)>0
       TP1(n)=TP1(n-1)+((PP2(n-1)-PP1(n-1))*abs(PP1(n-1))/abs(PP2(n-1))*sum(PP2)/sum(PP1)*(-2)/abs(z1));
       TP2(n)=TP2(n-1)+((PP2(n-1)-PP1(n-1))*abs(PP2(n-1))/abs(PP1(n-1))*sum(PP2)/sum(PP1)*(-1.5)/z2);
    end

    
    %Special condition that the trust value does not drop to lower than 0!
 if TP1(n)<0
     TP1(n)=0;
 end
 if TP2(n)<0
     TP2(n)=0;
 end
 
 %influence of Trust on Payoff Matrix

 z3(n)=z1/TP1(n);
y3(n)=y2/TP2(n);




if z3(n) >= w1 
    SP1(n)= 1;
else 
    SP1(n)= 0;
end

if y3(n) >= w2
    SP2(n)= 1;
else
    SP2(n)= 0;
end

end
