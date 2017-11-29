function [PP1, PP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2)
%SP1= Behaviour Player 1; SP2= Behaviour Player 2 
%Cooperate=1, Defect=0
%strategies: 1=Trust, 2=WSLS, 3=TfT, 4=AC, 5=AD, 6=zuf


if n>1
        if strat1==1 
            SP1(n)=TrustvTrust(w1,y2,y1,w2,n,SP1,SP2,x1,x2,z1,z2,PP1,PP2);
        elseif strat1==2
            SP1(n)=WSLS(SP2,PP2,SP1,PP1,n);
        elseif strat1==3
            SP1(n)=TfT(SP1,n,SP2);
        elseif strat1==4
            SP1(n)=AC(SP1,SP2,n);
        elseif strat1==5
            SP1(n)=AD(SP1,SP2,n);
        elseif strat1==6
            SP1(n)=zuf1(SP1,SP2);

        elseif strat2==1 
            SP2(n)=TrustvTrust(w1,y2,y1,w2,n,SP1,SP2,x1,x2,z1,z2);
        elseif strat2==2
            SP2(n)=WSLS(SP2,PP2,SP1,PP1,n);
        elseif strat2==3
            SP2(n)=TfT(SP1,n,SP2);
        elseif strat2==4
            SP2(n)=AC(SP1,SP2,n);
        elseif strat2==5
            SP2(n)=AD(SP1,SP2,n);
        elseif strat2==5
            SP2(n)=zuf1(SP1,SP2);
            
       [PP1, PP2]=Payoffs(x1,x2,w1,w2,y1,y2,z1,z2,SP1,SP2,n,PP1,PP2);

        end

elseif n==1 && SP1(1)==1 && SP2(1)==1
    PP1(n)=x1(n)
    PP2(n)=x2(n)
    elseif n==1 && SP1(1)==0 && SP2(1)==1
        PP1(n)=z1(n)
        PP2(n)=z2(n)
        elseif n==1 && SP1(1)==1 && SP2(1)==0
            PP1(n)=y1(n)
            PP2(n)=y2(n)
            elseif n==1 && SP1(1)==0 && SP2(1)==0
                PP1(n)=w1(n)
                PP2(n)=w2(n)
end





