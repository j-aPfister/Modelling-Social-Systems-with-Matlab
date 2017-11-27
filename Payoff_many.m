% Negotiation outcome series of 10 iterated 100 times. This makes sure that
% differences in the initial buildup of of Trust is taken into account!
for i=1:1000
    s=8;
    s2=1;
SSP1(i)= TrustMaster(s,s2);
SSP2(i)=TrustMaster(s,s2);
end

sSSP1=sum(SSP1)/1000
sSSP2=sum(SSP2)/1000
d2 = [sSSP1 sSSP2];
figure(1)
b = bar(d2)
set(gca, 'XTick', [1 2])
set(gca, 'XTickLabel', {'Trust' 'Random'})
title('Trust vs Random, Random Payoff')

[h,p,ci] = ttest(SSP1, SSP2)