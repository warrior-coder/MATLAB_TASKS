% ДУ: x'' + 0.2x' + 0.02x = 0.1y' + 0.03y
M = [0.1 0.03];
D = [1 0.2 0.02];
omega = 0:1:10;
Re = real(polyval(M, 1i * omega)./polyval(D, 1i * omega));
Im = imag(polyval(M, 1i * omega)./polyval(D, 1i * omega));
A = sqrt(Re.*Re + Im.*Im)
Phi = atan(Im./Re)

% построим частотные характеристики
omega = 0:0.025:1;
W = polyval(M, 1i * omega)./polyval(D, 1i * omega);
A = sqrt(imag(W).*imag(W) + real(W).*real(W));

% амплитудно-частотная (АЧХ)
subplot(2, 2, 1), loglog(omega, A);
grid;

% фазо-частотная (ФЧХ) 
Phi = atan2(imag(W), real(W));
subplot(2, 2, 2), semilogx(omega, Phi);
grid;

% амплитудно-фазовая частотная (АФЧХ) 
subplot(2, 2, 3), polar(Phi, A);

% определим запас устойчивости по фазе нашей системы используя подпрограмму
z = fzero('sqA',[0, 1])

% вычислим gamma (значение запаса устойчивости по фазе) как значение ФХ на частоте среза (увеличенной на pi)
W = polyval(M, 1j * z) / polyval(D, 1j * z);
Phi = atan2(imag(W), real(W));
gamma = Phi + pi

% переведем в градусы
180 / pi
ans * gamma


