a = [0.3, 1, 1, 2];
delta2 = [
    a(2) a(4);
    a(1) a(3)
]; 
disp(delta2);

% ���� �������� ������������ ������������, �� ��� ����� ����� � ����� �������������
disp('det(delta2): '); 
disp(det(delta2)); 

alpha = 0;
v = det(delta2); 

% ���� ������������ ������� �� ������ <= 0
while v > 0 
    % ������� ������ ��� ��������� ������ ����� �� �������� alpha
    alpha = alpha + 0.00001; 
    b = [1 -alpha]; 
    c = polysuperpos(a,b); 
    delta2 = [
        c(2) c(4);
        c(1) c(3)
    ]; 
    v = det(delta2);
end 

disp('v: ');
disp(v);

disp('alpha: ');
disp(alpha); 
disp('roots a: '); 
disp(roots(a));


