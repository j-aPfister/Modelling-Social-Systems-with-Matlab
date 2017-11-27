function [SSP1, SSP2]= TrustMaster(s,s2);
%script input 
 %strs  = {'1. Trust strategy versus Trust strategy', '2. Trust strategy vs Tit for Tat strategy', '3. Trust vs Win-stay Lose-shift strategy', '4. Trust vs Always Deflect strategy', '5. Trust vs Always Cooperate strategy', '6. Trust vs Random strategy','7. Win-stay Lose-Shift strategy vs Random strategy','8. Tit for Tat strategy vs Random strategy'};
 %prmpt = 'Select a simulation you want to run:';
 %[s,v] = listdlg('PromptString',prmpt,'SelectionMode','multi','ListString',strs);
%input where the matrix type can be selected
 %strs  = {'1. Random Payoff Matrix', '2. Fixed Payoff Matrix'};
 %prmpt = 'Select a simulation you want to run:';
 %[s2,v2] = listdlg('PromptString',prmpt,'SelectionMode','multi','ListString',strs);


%Initial conditions
TP1(1) =(1);
TP2(1) =(1);
PP1(1) = 8;
PP2(1) = 4;
y1(1)= 10;
y2(1)= -5;
z1(1)= -5;
z2(1)= 9;
SP1 = 1;
SP2 = 1;



%for loop for trust function update
for n=2:10
    %here the equations for the trust function are implementend for different conditions
    if PP1(n-1)>0 && PP2(n-1)>0
        TP1(n)=TP1(n-1)+(PP1(n-1)*abs(PP1(n-1))/abs(PP2(n-1))*sum(PP1)/sum(PP2))/y1(n-1);
        TP2(n)=TP2(n-1)+(PP2(n-1)*abs(PP2(n-1))/abs(PP1(n-1))*sum(PP2)/sum(PP1))/abs(z2(n-1));
        
    elseif PP1(n-1)<0 && PP2(n-1)<0
        TP1(n)=TP1(n-1)+(PP1(n-1)*abs(PP1(n-1))/abs(PP2(n-1))*sum(PP1)/sum(PP2))/abs(z1(n-1));
        TP2(n)=TP2(n-1)+(PP2(n-1)*abs(PP2(n-1))/abs(PP1(n-1))*sum(PP2)/sum(PP1))/abs(z2(n-1));    
        
    elseif PP1(n-1)>0 && PP2(n-1)<0
       TP1(n)=TP1(n-1)+((PP1(n-1)-PP2(n-1))*abs(PP1(n-1))/abs(PP2(n-1))*sum(PP1)/sum(PP2)*(-1.5)/y1(n-1));
       TP2(n)=TP2(n-1)+((PP1(n-1)-PP2(n-1))*abs(PP2(n-1))/abs(PP1(n-1))*sum(PP1)/sum(PP2)*(-2)/abs(y2(n-1)));
       
    elseif PP1(n-1)<0 && PP2(n-1)>0
       TP1(n)=TP1(n-1)+((PP2(n-1)-PP1(n-1))*abs(PP1(n-1))/abs(PP2(n-1))*sum(PP2)/sum(PP1)*(-2)/abs(z1(n-1)));
       TP2(n)=TP2(n-1)+((PP2(n-1)-PP1(n-1))*abs(PP2(n-1))/abs(PP1(n-1))*sum(PP2)/sum(PP1)*(-1.5)/z2(n-1));
    end
    
    %Special condition that the trust value does not drop to lower than 0!
 if TP1(n)<0
     TP1(n)=0;
 end
 if TP2(n)<0
     TP2(n)=0;
 end

%Random and fixed Payoff matrices
if s2==1
    x1(n)= randi([1 10]);  
    x2(n)= randi([1 10]);
    w1(n)= (-1)*randi([1 10]);
    w2(n)= (-1)*randi([1 10]);
    y1(n)= x1(n)+randi([1 4]);
    y2(n)= w2(n)-randi([1 4]);
    z1(n)= w1(n)-randi([1 4]); 
    z2(n)= x2(n)+randi([1 4]);
    P1=[x1(n) y1(n); z1(n) w1(n)];
    P2=[x2(n) y2(n); z2(n) w2(n)];
    z3(n)=z1(n)/TP1(n);
    y3(n)=y2(n)/TP2(n);
    elseif s2==2 
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
    z3(n)=z1(n)/TP1(n);
    y3(n)=y2(n)/TP2(n);
end

%SP1= Strategy Player 1; SP2= Strategy Player 2 
%Cooperate=1, Defect=0
if s==1 
SP1=TrustvTrust(z3,w1,y3,w2,n,SP1,SP2);
SP2=TrustvTrust(z3,w1,y3,w2,n,SP1,SP2);
    elseif s==2
    SP1=TitForTat(z3,w1,SP1,n,SP2);
    SP2=TitForTat(z3,w1,SP1,n,SP2);
            elseif s==3
            SP1=WSLS(z3,w1,SP2,PP2,SP1,n);
            SP2=WSLS(z3,w1,SP2,PP2,SP1,n);
                elseif s==4
                SP1=ADefect(z3,w1,n,SP1,SP2);
                SP2(n)=0;
                    elseif s==5 
                    SP1=ACooperate(z3,w1,SP1,SP2,n);
                    SP2(n)=1;
                        elseif s==6
                        SP1=ACooperate(z3,w1,SP1,SP2,n);
                        SP2(n)=randi([0,1]);
                            elseif s==7
                            SP1=WSLS2(SP1,PP1,n);
                            SP2(n)= randi([0,1]);
                                elseif s==8 
                                SP1(n)= randi([0,1]);
                                SP2=WSLS(z3,w1,SP2,PP2,SP1,n);
end

%Finding Nash Equlibrium with updated values, 0=Defect, 1=Cooperate
[PP1, PP2]=Payoffs(x1,x2,w1,w2,y1,y2,z1,z2,SP1,SP2,n,PP1,PP2);
    end
%Finding Payoff Sum over the whole game. 
%d = [sum(PP1)  sum(PP2)];
%figure(1)
%b = bar(d)
%set(gca, 'XTick', [1 2])
%set(gca, 'XTickLabel', {'Sum Payoffs Player1' 'Sum Payoffs Player2'})
SSP1=sum(PP1);
SSP2=sum(PP2);
%Plotting Payoff fluctuations
%Baseline(n)=0;
%figure(2)
%plot(1:1:n, PP1);
%hold on;
%plot(1:1:n, PP2);
%hold on;
%plot(1:1:n, Baseline);
%hold on;
%ylim([-15,15]);






