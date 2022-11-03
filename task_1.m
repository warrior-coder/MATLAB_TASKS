M = [0.1 0.03];
D = [1 0.2 0.02];

derD = polyder(D)
Alph = roots(D)
A1 = polyval(M, Alph(1))/polyval(derD, Alph(1))
A2 = polyval(M, Alph(2))/polyval(derD, Alph(2))
t = 0:2:80;
k = A1 * exp(Alph(1) * t) + A2 * exp(Alph(2) * t);
plot(t, k);
grid

a = [1 0]
umnD = conv(D, a)
[p, r, k] = residue(M, umnD)
q = p(1) * exp(r(1) * t) + p(2) * exp(r(2) * t) + p(3);
plot(t, q);
grid


% другой способ
M=[0.1 0.03];
D=[1 0.2 0.02 0];

derD=polyder(D)
Alph=roots(D)

A1=polyval(M,Alph(1))/polyval(derD,Alph(1))
A2=polyval(M,Alph(2))/polyval(derD,Alph(2))
A3=polyval(M,Alph(3))/polyval(derD,Alph(3))

t=0:2:80;
k=A1*exp(Alph(1)*t)+A2*exp(Alph(2)*t)+A3*exp(Alph(3)*t);

plot(t,k);
grid
