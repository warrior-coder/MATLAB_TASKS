% подпрограмма вычисления функции, принимающая нулевое значение на частоте среза
function A = sqA(x)
M = [0.1 0.03];
D = [1 0.2 0.02];

W = polyval(M, 1j * x)./polyval(D, 1j * x);
A = (imag(W).*imag(W) + real(W).*real(W)) - 1;
end
