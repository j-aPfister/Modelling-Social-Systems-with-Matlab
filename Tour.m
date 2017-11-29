%Tournament
for n=1:10
    
    x1(n)= 5;  
    x2(n)= 5;
    w1(n)= -5;
    w2(n)= -5;
    y1(n)= 8;
    y2(n)= -7;
    z1(n)= -7; 
    z2(n)= 8;
    P1=[x1(n) y1(n); z1(n) w1(n)];
    P2=[x2(n) y2(n); z2(n) w2(n)];
    SP1=zeros(1, n);
    SP2=zeros(1, n);
    PP1=zeros(1, n);
    PP2=zeros(1, n);
end
    

%Trust versus Always Cooperate
strat1=1
strat2=4
SP1(1)=1;
SP2(1)=1;
PP1(n)=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
PP2(n)=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
Trust2(n)=PP1(n);
AC1(n)=PP2(n);
end

%Trust versus Tit for Tat
strat1=1;
strat2=3;
SP1(1)=1;
SP2(1)=1;
PP1=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
PP2=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
Trust1(n)=PP1;
TfT1(n)=PP2;

for n=1:10
%Trust versus Tit for Tat
strat1=1;
strat2=3;
SP1(1)=1;
SP2(1)=1;
PP1=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
PP2=NTM(strat1, strat2, SP1, SP2,n,x1,x2,y1,y2,z1,z2,w1,w2,PP1,PP2);
Trust1(n)=PP1;
TfT1(n)=PP2;
end 

for n=1:10
%Trust versus Always Defect 
strat1=1
strat2=5 
SP1(1)=1;
SP2(1)=0;
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
Trust3(n)=PP1;
AD1(n)=PP2;
end

for n=1:10
%Trust versus Random 
strat1=1
strat2=6 
SP1(1)=1;
SP2(1)=randi([0, 1]);
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
Trust4(n)=PP1;
R1(n)=PP2;
end

for n=1:10
%Tit for Tat versus Always Cooperate
strat1=3
strat2=4 
SP1(1)=1;
SP2(1)=1;
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
TfT2(n)=PP1;
AC2(n)=PP2;
end

for n=1:10
%Tit for Tat versus Always Defect
strat1=3
strat2=5 
SP1(1)=1;
SP2(1)=0;
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
TfT3(n)=PP1;
AD2(n)=PP2;
end

for n=1:10
%Tit for Tat versus Random
strat1=3
strat2=6 
SP1(1)=1;
SP2(1)=randi([0, 1]);
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
TfT4(n)=PP1;
R2(n)=PP2;
end

for n=1:10
%Always Cooperate versus Always Defect 
strat1=4
strat2=5 
SP1(1)=1;
SP2(1)=0;
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
AC3(n)=PP1;
AD3(n)=PP2;
end

for n=1:10
%Always Cooperate versus Random 
strat1=4
strat2=6
SP1(1)=1;
SP2(1)=randi([0, 1]);
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
AC4(n)=PP1;
R3(n)=PP2;
end

for n=1:10
%Always Defect versus Random 
strat1=5
strat2=6 
SP1(1)=0;
SP2(1)=randi([0, 1]);
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
AD4(n)=PP1;
R4(n)=PP2;
end

for n=1:10
%Trust versus Win-stay Lose-shift
strat1=1
strat2=2 
SP1(1)=1;
SP2(1)=1;
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
Trust5(n)=PP1;
WSLS1(n)=PP2;
end

for n=1:10
%Win-stay Lose-shift versus Tit for Tat
strat1=2
strat2=3 
SP1(1)=1;
SP2(1)=1;
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
WSLS2(n)=PP1;
TfT5(n)=PP2;
end

for n=1:10
%Win-stay Lose-shift versus Always Cooperate
strat1=2
strat2=4 
SP1(1)=1;
SP2(1)=1;
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
WSLS3(n)=PP1;
AC5(n)=PP2;
end

for n=1:10
%Win-stay Lose-shift versus Always Defect
strat1=2
strat2=5 
SP1(1)=1;
SP2(1)=0;
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
WSLS4(n)=PP1;
AD5(n)=PP2;
end

for n=1:10
%Win-stay Lose-shift versus Random
strat1=2
strat2=6 
SP1(1)=1;
SP2(1)=randi([0, 1]);
PP1=NTM(strat1, strat2, SP1, SP2,n)
PP2=NTM(strat1, strat2, SP1, SP2,n)
WSLS5(n)=PP1;
R5(n)=PP2;
end


%Payoff Graph
sTrust=sum(Trust1,Trust2,Trust3,Trust4,Trust5);
sWSLS=sum(WSLS1,WSLS2,WSLS3,WSLS4,WSLS5);
sTfT=sum(TfT1,TfT2,TfT3,TfT4,TfT5);
sAC=sum(AC1,AC2,AC3,AC4,AC5);
sAD=sum(AD1,AD2,AD3,AD4,AD5);
sR=sum(R1,R2,R3,R4,R5);
d2 = [sTrust, sWSLS, sTfT, sAC, sAD, sR];
figure(1)
b = bar(d2)
set(gca, 'XTick', [1 2 3 4 5 6])
set(gca, 'XTickLabel', {'Trust' 'Win-stay Lose-shift''Tit for Tat''Always Cooperate''Always Defect''Random'})
title('Tournament with different Player strategies')

[h,p,ci] = ttest(SSP1, SSP2)
