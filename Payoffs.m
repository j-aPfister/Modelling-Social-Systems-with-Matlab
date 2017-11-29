%Finding Nash Equlibrium with updated values, 0=Defect, 1=Cooperate

function[PP1, PP2]=Payoffs(x1,x2,w1,w2,y1,y2,z1,z2,SP1,SP2,n,PP1,PP2)

if SP1(n)==1 && SP2(n)==1
    PP1(n)=x1;
    PP2(n)=x2;
    elseif SP1(n)==1 && SP2(n)==0
        PP1(n)=z1;
        PP2(n)=z2;
        elseif SP1(n)==0 && SP2(n)==1
            PP1(n)=y1;
            PP2(n)=y2;
            elseif SP1(n)==0 && SP2(n)==0
                PP1(n)=w1;
                PP2(n)=w2;
end
end
