function opensar_generate

clc
clear

load gabordata_open.mat

data1=gabordata_open;
data=[data1(1:835,:);data1(4121:5043,:)];
clear data1
label=zeros(size(data,1),1);
for i=1:835
    label(i)=1;
end
for i=836:1670
    label(i)=2;
end
for i=1671:1758
    label(i)=3;
end

a=randperm(1758);
data_test=data(a(1:200),:);
ground=label(a(1:200),:);

save data data
save ground ground
save data_test data_test
save label label