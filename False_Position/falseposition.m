function [root,fx,ea,iter] = falseposition(func,xl,xu,es,maxit)

%false position method, find roots of zero
%EX input: falseposition(@(x) -x-4,-8,8,.001,50) or 
%Testfunc = @(x) -x-4
%falseposition(Testfunc,-8,8,.001,50)
%input values: func is function
%xu and xl are upper and lower guesses
%e_s is requested relative error(default = 0.0001%?)
%maxiter = maximum allowable iterations 
%output values: root is real root
% fxr is function value at 'root'
% e_a = approximate relative error (%)
%iter = number of iterations




%%testing for e_s and maxiter inputs

	if nargin < 3
error('need more inputs loser')
end
	if nargin < 4 | isempty(es)
 es = 0.0001;
end
	if nargin < 5 | isempty(maxit)
maxit = 50;
end

iter = 0;
xr = xl;
ea = 100;

%%test to see if root is in bracketed area1
	if (func(xl)) * (func(xu)) == 0
	if func(xl) == 0
error('xl is root') 
	else
error('xu is root') 
end
end

	if func(xl) * func(xu) > 0
error('roots are not in brackets')
end


%%using the formulas and epsilon equations to build an actual algorithm

	for i = maxit
xr_old = xr;
xr = xu - (func(xu)*(xl-xu))/(func(xl)-func(xu));
iter = iter + 1 ;
	if xr ~= 0 
ea = abs((xr-xr_old)/xr) * 100 ; 
end
rootmover = func(xl) * func(xr);
    if  rootmover < 0
xu = xr;
    elseif rootmover > 0
xl = xr;
    else
ea = 0;
    end

	if ea <= es | iter >= maxit
root = xr;
fx = func(xr);
disp('at iteration'), disp(iter)
disp('and epsilon approximate'), disp(ea)
disp('the root is'), disp(root)
break
end
end
    end
%%false posiyion formula
%xr = xu - (func(xu)*(xl-xu))/(func(xl)-func(xu))

%%testing for epsilon

%e_a = abs((xr_new-xr_old)/xr_new) * 100

