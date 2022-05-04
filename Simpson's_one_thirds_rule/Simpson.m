%%Andrew Gomez
function [I] = Simpson(x,y)

if length(x) ~= length(y)
error('vectors are not the same length')

elseif length(x) == length(y)
var_L = length(x);
n = x(var_L)- x(1);
v = 1;
j = 1;
end

xsc = linspace(x(1),x(var_L),var_L);

if xsc(2) ~= x(2)
error('x vector is not evenly spaced')
end



%%set 1/odd number of segments
if rem(var_L,2) == 1 && var_L > 2

h = x(var_L)-x(1);
p = 3; 
iter = 1;
while (p ~= var_L)
iter = iter + 1;
p = p + 2;
end

seg = zeros(1,iter);

for i = 1:iter
seg(j) = h * ((y(v)+4*y(v+1) + y(v+2))/(3*n));
j = j + 1;
v = v + 2;
end
I = sum(seg);
end

if rem(var_L,2) == 0 
%even number of points
var_adj = var_L-1;
h = x(var_L)-x(1);
p = 3; 
iter = 1;
seg = zeros(1,iter);
if var_L >2
while (p ~= var_adj)
iter = iter + 1;
p = p + 2;
end


for i = 1:iter
seg(j) = h * ((y(v)+4*y(v+1) + y(v+2))/(3*n));
j = j + 1;
v = v + 2;
end
end
trapy = (x(var_L)-x(var_adj))*((((y(var_adj)+y(var_L)))/2));
warning('warning , function may use trapezoidal rule for extra intervals.')
I = sum(seg)+trapy;
end
end