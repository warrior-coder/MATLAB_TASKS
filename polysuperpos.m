%��������� ������������ p(q(x)) ���� ��������� p(x) � q(x) �� ���������
%�������� 
function res=polysuperpos(p,q)

lenp = length(p);
res = p(lenp);
qi=q;

for i=1:lenp-1 
    res = polysum(res,qi*p(lenp-i)); qi=conv(qi,q);
end

end
