function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
%linearRegression Computes the linear regression of a data set
%   Compute the linear regression based on inputs:
%     1. x: x-values for our data set
%     2. y: y-values for our data set
%
%   Outputs:
%     1. fX: x-values with outliers removed
%     2. fY: y-values with outliers removed
%     3. slope: slope from the linear regression y=mx+b
%     4. intercept: intercept from the linear regression y=mx+b
%     5. Rsquared: R^2, a.k.a. coefficient of determination

%length check
if length(x) ~= length(y)
error('vectors are not the same length')

elseif length(x) == length(y)
n = length(x);
end

%%Quartile Creation
Q1 = [(n+1)/4];
Q3 = [(3*n+3)/4];
IQR = Q3 - Q1;
%%sorting
[sortedY, sortOrder] = sort(y);
sortedX = x(sortOrder);

% find outlier by making a logical matrix and logically indexing,
sortedX = reshape(sortedX,[1,n]);
sortedY = reshape(sortedY,[1,n]);
%^ this makes sure that both vectors are not actually differently sized
%matrices, if they are differently shaped, the outlier removal doesn't work
outie = sortedY <= (Q1 -(IQR*1.5)) | sortedY >= (Q3 +(IQR*1.5))
sortedY(outie) = [];
sortedX(outie) = [];
n = length(sortedX);

%%find the means
Ymean = sum(sortedY)/n;
Xmean = sum(sortedX)/n;

%find slope
slope = ((n * sum(sortedX.*sortedY))-(sum(sortedX)*sum(sortedY))) / ((n * sum(sortedX.^2))-(sum(sortedX)^2));
%find intercept
intercept = Ymean - slope*Xmean;


    %%find r^2


%find total sum of squares
St = sum((sortedY-Ymean).^2);
%sum of squares of residuals
Sr = sum((sortedY -intercept - (slope * sortedX) ).^2);
%put it together
Rsquared = (St-Sr)/St;
%set fX and fY, yeah i know its late into development but what can ya do ¯\_(ツ)_/¯
fX = sortedX;
fY = sortedY;

end
