%review all trusts 
%review tit for tat



%Tournament
    SP1=zeros(1, 10);
    SP2=zeros(1, 10);
    PP1=zeros(1, 10);
    PP2=zeros(1, 10);
    x1= 5;  
    x2= 5;
    w1= -5;
    w2= -5;
    y1= 8;
    y2= -7;
    z1= -7; 
    z2= 8;
    P1=[x1 y1; z1 w1];
    P2=[x2 y2; z2 w2];
    
       
%Always Cooperate versus Always Defect 
SP1(1)=1;
SP2(1)=0;
for n=1:10
strat1=4;
strat2=5; 
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
AC3(n)=PP1(n);
AD3(n)=PP2(n);
end

%Trust versus Always Cooperate
SP1(1)=1;
SP2(1)=1;
for n=1:10
strat1=1
strat2=4
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
Trust2(n)=PP1(n);
AC1(n)=PP2(n);
end

%Trust versus Tit for Tat
SP1(1)=1;
SP2(1)=1;
for n=1:10 
strat1=1;
strat2=3;
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
Trust1(n)=PP1(n);
TfT1(n)=PP2(n);
end

%Trust versus Tit for Tat
SP1(1)=1;
SP2(1)=1;
for n=1:10
strat1=1;
strat2=3;
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
Trust1(n)=PP1(n);
TfT1(n)=PP2(n);
end 

%Trust versus Always Defect 
SP1(1)=1;
SP2(1)=0;
for n=1:10
strat1=1
strat2=5 
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
Trust3(n)=PP1(n);
AD1(n)=PP2(n);
end

% for n=1:10
% %Trust versus Random 
% strat1=1
% strat2=6 
% SP1(1)=1;
% SP2(1)=randi([0, 1]);
% [PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
% Trust4(n)=PP1(n);
% R1(n)=PP2(n);
% end

%Tit for Tat versus Always Cooperate 
SP1(1)=1;
SP2(1)=1;
for n=1:10
strat1=3
strat2=4 
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
TfT2(n)=PP1(n);
AC2(n)=PP2(n);
end

%Tit for Tat versus Always Defect
SP1(1)=1;
SP2(1)=0;
for n=1:10
strat1=3
strat2=5 
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
TfT3(n)=PP1(n);
AD2(n)=PP2(n);
end

% %Tit for Tat versus Random
% SP1(1)=1;
% SP2(1)=randi([0, 1]);
% for n=1:10
%     
% strat1=3;
% strat2=6;
% [PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
% TfT4(n)=PP1(n);
% R2(n)=PP2(n);
% end


% 
% for n=1:10
% %Always Cooperate versus Random 
% strat1=4
% strat2=6
% SP1(1)=1;
% SP2(1)=randi([0, 1]);
% [PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
% AC4(n)=PP1(n);
% R3(n)=PP2(n);
% end
% 
% for n=1:10
% %Always Defect versus Random 
% strat1=5
% strat2=6 
% SP1(1)=0;
% SP2(1)=randi([0, 1]);
% [PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
% AD4(n)=PP1(n);
% R4(n)=PP2(n);
% end

%Trust versus Win-stay Lose-shift
SP1(1)=1;
SP2(1)=1;
for n=1:10
strat1=1
strat2=2 
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
Trust5(n)=PP1(n);
WSLS1(n)=PP2(n);
end

%Win-stay Lose-shift versus Tit for Tat
SP1(1)=1;
SP2(1)=1;
for n=1:10
strat1=2
strat2=3 
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
WSLS2(n)=PP1(n);
TfT5(n)=PP2(n);
end

%Win-stay Lose-shift versus Always Cooperate
SP1(1)=1;
SP2(1)=1;
for n=1:10
strat1=2
strat2=4 
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
WSLS3(n)=PP1(n);
AC5(n)=PP2(n);
end

%Win-stay Lose-shift versus Always Defect
SP1(1)=1;
SP2(1)=0;
for n=1:10
strat1=2
strat2=5 
[PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
WSLS4(n)=PP1(n);
AD5(n)=PP2(n);
end

% for n=1:10
% %Win-stay Lose-shift versus Random
% strat1=2
% strat2=6 
% SP1(1)=1;
% SP2(1)=randi([0, 1]);
% [PP1 PP2 SP1 SP2]=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
% WSLS5(n)=PP1(n);
% R5(n)=PP2(n);
% end


%Payoff Graph
sTrust=sum(Trust1)+sum(Trust2)+sum(Trust3)+sum(Trust5);
sWSLS=sum(WSLS1)+sum(WSLS2)+sum(WSLS3)+sum(WSLS4);
sTfT=sum(TfT1)+sum(TfT2)+sum(TfT3)+sum(TfT5)
sAC=sum(AC1)+sum(AC2)+sum(AC3)+sum(AC5)
sAD=sum(AD1)+sum(AD2)+sum(AD3)+sum(AD5)
%sR=sum(R1,R2,R3,R4,R5);
d2 = [sTrust, sWSLS, sTfT, sAC, sAD];
figure(1)
b = bar(d2)
set(gca, 'XTickLabel', {'Trust' 'Win-stay Lose-shift''Tit for Tat''Always Cooperate''Always Defect'})
title('Tournament with different Player strategies')





[p,tbl,stats] = anova1(d2);
