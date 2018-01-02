function matr_generate

clc
clear

%load Train_Test_PCA_150.mat
%load gabordata.mat
load Train_Test_PCA_50;
data=Train_Test_PCA_50;
label=zeros(size(data,1),1);
for i=1:698
    label(i)=1;
end
for i=699:931
    label(i)=2;
end
for i=932:1622
    label(i)=3;
end
for i=1623:2209
    label(i)=1;
end
for i=2210:2405
    label(i)=2;
end
for i=2406:2987
    label(i)=3;
end
a=randperm(2987);
data_test=data(a(1:300),:);
ground=label(a(1:300),:);

save data data
save ground ground
save data_test data_test
save label label