%input where counter strategy against trust can be selected.
 strs  = {'1. Trust strategy versus Trust strategy', '2. Trust strategy vs Tit for Tat strategy', '3. Trust vs Win-stay Lose-shift strategy', '4. Trust vs Always Deflect strategy', '5. Trust vs Always Cooperate strategy'};
 prmpt = 'Select a simulation you want to run:';
 [s,v] = listdlg('PromptString',prmpt,'SelectionMode','multi','ListString',strs);


%if no trust or distrust is present T=1 -> slightly higer value of Trust
%must therefore present
T(1)=1;
PP1(1)=1;
PP2(1)=1;
SP1=[0 1 1 1 1 1 1 1 1 1];
SP2=[0 1 1 1 1 1 1 1 1 1];
%needs review for i=1:10 normally, but since PP1 and PP2 are not updatet
%yet => error
for n=2:10
    if (PP1(n-1)/PP2(n-1))>0
         T(n)= T(n-1)^(PP1(n-1)/PP2(n-1));
    elseif PP1(n-1)/PP2(n-1)<0
         T(n)= T(n-1)^((PP1(n-1))/(PP2(n-1)*-1))
       elseif PP1(n-1)>0 && PP2(n-1)<0
            T(n)= T(n-1)^(0-(PP1(n-1)/PP2(n-1))^2)
    else break
    end

%Random Payoff matrix 
x1(n)= randi([1 10]);
x2(n)= randi([1 10]);
w1(n)= (-1)*randi([1 10]);
w2(n)= (-1)*randi([1 10]);
y1(n)= x1(n)+randi([1 5]);
y2(n)= w2(n)-randi([1 5]);
z1(n)= w1(n)-randi([1 5]); 
z2(n)= x2(n)+randi([1 5]);
P1=[x1(n) y1(n); z1(n) w1(n)];
P2=[x2(n) y2(n); z2(n) w2(n)];
z3(n)=z1(n)/T(n);
y3(n)=y2(n)/T(n);

%Payoff Matrices after Trust calculation(P1=Player1, P2=Player2)

a=[x1 y2; z3 w1];
b=[x2 y3; z2 w2];

%SP1= Strategy Player 1; SP2= Strategy Player 2 Pure Strategy
%Cooperate=1, Deflect=0
%%Here we define a new function trust vs trust 
%% Here we need to define a Function call depending on the input!
if s==1 
TrustvTrust(z3,w1,y3,w2,n,SP1,SP2);
    elseif s==2
    TitForTat(z3,w1,SP1,n,SP2);
            elseif s==3
            WSLS(z3,w1,SP2,PP2,SP1,n);
                elseif s==4
                ADeflect(z3,w1,n,SP1,SP2);
                    elseif s==5 
                    ACooperate(z3,w1,SP1,SP2,n);
                    
end
%Finding Nash Equlibrium with updated values, D=Deflect, C=Cooperate
[PP1, PP2]=Payoffs(x1,x2,w1,w2,y1,y2,z1,z2,SP1,SP2,n,PP1,PP2);
end


%Plotting Payoff 
plot(1:1:10, PP1);
hold on;
plot(1:1:10, PP2);
hold on;
ylim([-5,15]);