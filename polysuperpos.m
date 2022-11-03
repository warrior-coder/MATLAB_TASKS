%вычисляет суперпозицию p(q(x)) двух полиномов p(x) и q(x) по убывающим
%степеням 
function res=polysuperpos(p,q)

lenp = length(p);
res = p(lenp);
qi=q;

for i=1:lenp-1 
    res = polysum(res,qi*p(lenp-i)); qi=conv(qi,q);
end

end
