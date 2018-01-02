function [ Final_data ] = PCA( Data ,m)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[r c]=size(Data);
parfor i=1:c
    Data_adjust(:,i)=Data(:,i)-mean(Data(:,i));
end
fprintf('Compute the Covariance Matrix...\n');
Cov=cov(Data_adjust);
fprintf('Covariance Matrix Compute Complete!\n');
fprintf('Compute the Eigenvector and Eigenvalue...\n');
[V D]=eig(Cov);
fprintf('Eigenvector and Eigenvalue Compute Complete!\n');
global RowVector;
RowVector=V(:,64*64-m:64*64);
Final_data=Data_adjust*RowVector;
fprintf('PCA Complete!\n');
end

