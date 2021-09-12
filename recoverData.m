function X_rec = recoverData(Z, U, K)
%RECOVERDATA Recovers an approximation of the original data when using the 
%projected data
%   X_rec = RECOVERDATA(Z, U, K) recovers an approximation the 
%   original data that has been reduced to K dimensions. It returns the
%   approximate reconstruction in X_rec.
%

% You need to return the following variables correctly.
X_rec = zeros(size(Z, 1), size(U, 1));
% Useful values
m = size(Z,1);
n = size(U,1); 


Ureduce = U(:,1:K);% n x K matrix 
for i = 1:m
    z = Z(i,:); %1 x K vector
    X_rec(i,:) = z * Ureduce'; %1 x n vector
endfor
% =============================================================

end
