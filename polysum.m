% вычисляет сумму полиномов
function s=polysum(x,y)

nx=length(x);
ny=length(y);
s=x;ns=nx;
s1=y;ns1=ny;

if ny>nx
    s=y;ns=ny;
    s1=x;ns1=nx;
end

for i=1:ns1
    s(ns+1-i)=s(ns+1-i)+s1(ns1+1-i);
end
    
end