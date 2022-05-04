function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix

[m,n] = size(A);

if m ~= n
error('need a square matrix silly')
end

if m*n == 4

PA = A;
P = eye(m,n);
I = eye(m,n);
r11 = A(1,1);
r12 = A(1,2);
r21 = A(2,1);
r22 = A(2,2);
if r11 == 0
%%we need to swap row 1 and two 
SW = [1,2];
A2 = A;
A2(SW,:) = A2(SW([2,1]),:);
PA = A2;
PA_original = PA;
P = I;
P(SW,:) = P(SW([2,1]),:);
r11 = PA(1,1);
r12 = PA(1,2);
r21 = PA(2,1);
r22 = PA(2,2);
else 
PA_original = PA;
end
%now we're onto the first k value
k1 = r21/r11;
PA(2,1) = r21 - (k1*r11);
PA(2,2) = r22-(k1*r12);
r21 = PA(2,1);
r22 = PA(2,2);
U = PA;
%now L
L = eye(m,n);
L(2,1) = k1;
PA = PA_original;

disp('PA should equal L * U, unfortunately matlab rounds calculations and fractions, so matlab thinks PA /= LU when they are only off by a ten-thousanth value. see for yourself')
disp('PA')
disp(PA)
disp('LU')
disp(L*U)
disp('L')
disp(L)
disp('U')
disp(U)
disp('P')
disp(P)
end

if m*n == 9

PA = A;
P = eye(m,n);
I = eye(m,n);
r11 = A(1,1);
r12 = A(1,2);
r13 = A(1,3);
r21 = A(2,1);
r22 = A(2,2);
r23 = A(2,3);
r31 = A(3,1);
r32 = A(3,2);
r33 = A(3,3);
if r11 == 0
%%we need to swap row 1 and two 
SW = [1,2];
A2 = A;
A2(SW,:) = A2(SW([2,1]),:);
PA = A2;
PA_original = PA;
P = I;
P(SW,:) = P(SW([2,1]),:);
r11 = PA(1,1);
r12 = PA(1,2);
r13 = PA(1,3);
r21 = PA(2,1);
r22 = PA(2,2);
r23 = PA(2,3);
r31 = PA(3,1);
r32 = PA(3,2);
r33 = PA(3,3);
else 
PA_original = PA;
end
%now we're onto the first k value
k1 = r21/r11;
PA(2,1) = r21 - (k1*r11);
PA(2,2) = r22-(k1*r12);
PA(2,3) = r23 - (k1*r13);
r21 = PA(2,1);
r22 = PA(2,2);
r23 = PA(2,3);
%now we're on the second k value
k2 = r31/r11;
PA(3,1) = r31 - (k2*r11);
PA(3,2) = r32-(k2*r12);
PA(3,3) = r33 - (k2*r13);
r31 = PA(3,1);
r32 = PA(3,2);
r33 = PA(3,3);
%now k3
k3 = r32/r22;
PA(3,2) = r32-(k3*r22);
PA(3,3) = r33 - (k3*r23);
r32 = PA(3,2);
r33 = PA(3,3);
U = PA;
%now L
L = eye(m,n);
L(2,1) = k1;
L(3,1) = k2;
L(3,2) = k3;
PA = PA_original;

disp('PA should equal L * U, unfortunately matlab rounds calculations and fractions, so matlab thinks PA /= LU when they are only off by a ten-thousanth value. see for yourself')
disp('PA')
disp(PA)
disp('LU')
disp(L*U)
disp('L')
disp(L)
disp('U')
disp(U)
disp('P')
disp(P)
end
if m*n == 16

PA = A;
P = eye(m,n);
I = eye(m,n);
r11 = A(1,1);
r12 = A(1,2);
r13 = A(1,3);
r14 = A(1,4);
r21 = A(2,1);
r22 = A(2,2);
r23 = A(2,3);
r24 = A(2,4);
r31 = A(3,1);
r32 = A(3,2);
r33 = A(3,3);
r34 = A(3,4);
r41 = A(4,1);
r42 = A(4,2);
r43 = A(4,3);
r44 = A(4,4);
if r11 == 0
%%we need to swap row 1 and two 
SW = [1,2];
A2 = A;
A2(SW,:) = A2(SW([2,1]),:);
PA = A2;
PA_original = PA;
P = I;
P(SW,:) = P(SW([2,1]),:);
r11 = PA(1,1);
r12 = PA(1,2);
r13 = PA(1,3);
r14 = PA(1,4);
r21 = PA(2,1);
r22 = PA(2,2);
r23 = PA(2,3);
r24 = PA(2,4);
r31 = PA(3,1);
r32 = PA(3,2);
r33 = PA(3,3);
r34 = PA(3,4);
r41 = PA(4,1);
r42 = PA(4,2);
r43 = PA(4,3);
r44 = PA(4,4);
else 
PA_original = PA;
end
%now we're onto the first k value
k1 = r21/r11;
PA(2,1) = r21 - (k1*r11);
PA(2,2) = r22-(k1*r12);
PA(2,3) = r23 - (k1*r13);
PA(2,4) = r24 - (k1*r14);
r21 = PA(2,1);
r22 = PA(2,2);
r23 = PA(2,3);
r24 = PA(2,4);
%now we're on the second k value
k2 = r31/r11;
PA(3,1) = r31 - (k2*r11);
PA(3,2) = r32-(k2*r12);
PA(3,3) = r33 - (k2*r13);
PA(3,4) = r34 - (k1*r14);
r31 = PA(3,1);
r32 = PA(3,2);
r33 = PA(3,3);
r34 = PA(3,4);
%k4
k4 = r41/r14;
PA(4,1) = r41 - (k4*r11);
PA(4,2) = r42 - (k4*r12);
PA(4,3) = r43 - (k4*r13);
PA(4,4) = r44 - (k4*r14);
r41 = PA(4,1);
r42 = PA(4,2);
r43 = PA(4,3);
r44 = PA(4,4);
%now k3
k3 = r32/r22;
PA(3,2) = r32-(k3*r22);
PA(3,3) = r33 - (k3*r23);
PA(3,4) = r34 - (k3*r24);
r32 = PA(3,2);
r33 = PA(3,3);
r34 = PA(3,4);

%k5
k5 = r42/r22;
PA(4,2) = r42-(k5*r22);
PA(4,3) = r43 - (k5*r23);
PA(4,4) = r44 - (k5*r24);
r42 = PA(4,2);
r43 = PA(4,3);
r44 = PA(4,4);
%k6
k6 = r43/r33;
PA(4,3) = r43 - (k6*r33);
PA(4,4) = r44 - (k6*r34);
r43 = PA(4,3);
r44 = PA(4,4);
%U
U = PA;
%now L
L = eye(m,n);
L(2,1) = k1;
L(3,1) = k2;
L(3,2) = k3;
L(4,1) = k4;
L(4,2) = k5;
L(4,3) = k6;
PA = PA_original;

disp('PA should equal L * U, unfortunately matlab rounds calculations and fractions, so matlab thinks PA /= LU when they are only off by a ten-thousanth value. see for yourself')
disp('PA')
disp(PA)
disp('LU')
disp(L*U)
disp('L')
disp(L)
disp('U')
disp(U)
disp('P')
disp(P)

end

end