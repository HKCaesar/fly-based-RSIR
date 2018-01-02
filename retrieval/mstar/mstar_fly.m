%fly lsh
%by zhang kai
%2017/11/21

function [map_last,pr_last]=mastar_fly(k)

load data
load data_test
load ground
load label

C=0.1;
num=300;
database_size=2987;
% dimension of vector
d=50;
m=10*d;
%% preprocessing
for i=1:database_size
    data(i,:)=data(i,:)-sum(data(i,:))/d;
end
for i=1:num
    data_test(i,:)=data_test(i,:)-sum(data_test(i,:))/d;
end
%w=sprand(128,m,2*k/m);
%w=sprand(128,m,2*k/m);
w=sprand(d,m,0.1);
w(w>0)=1;
w=full(w);
%% projection
com=data*w;
com_new=floor(com/C);

com_test=data_test*w;
com_new_test=floor(com_test/C);

fly_data=zeros(database_size,m);
fly_data_test=zeros(num,m);

for i=1:database_size
    di=com_new(i,:);
    [a1,b1]=sort(di,'descend');
    %fly_data(i,:)=zeros(1,20*k);
    for j=1:k
        %fly_data(i,b1(j))=a1(j);
        fly_data(i,b1(j))=1;
    end
end

for i=1:num
    di=com_new_test(i,:);
    [a1,b1]=sort(di,'descend');
    %fly_data_test(i,:)=zeros(1,20*k);
    for j=1:k
        %fly_data_test(i,b1(j))=a1(j);
        fly_data_test(i,b1(j))=1;
    end
end

% ran=randperm(20*k);
% ran_ch=ran(1:k);
% fly_data=com_new(:,ran_ch);
% fly_data_test=com_new_test(:,ran_ch);

%% retriveal
dist=pdist2(fly_data_test,fly_data,'hamming');

for i=1:num
    dii=dist(i,:);
    [a,b]=sort(dii);
    %test_ground(i,:)=b(1:200);
    test_ground(i,:)=b;
end

map=zeros(num,1);
preci=zeros(num,1);
for i=1:num
    t=1;
    for j=1:100
        if(ground(i)==label(test_ground(i,j)))
            map(i)=map(i)+t/j;
            t=t+1;
            preci(i)=preci(i)+1;
        end
    end
    map(i)=map(i)/(t-1);
    preci(i)=preci(i)/100;
end

mm=sum(map)/num;
map_last=mm;
pp=sum(preci)/num;
pr_last=pp;
