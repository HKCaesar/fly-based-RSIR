function [map_last,pr_last]=opensar_fly(k)
%k=2
load data
load data_test
load ground
load label

C=2^2-1;
num=200;
database_size=1758;
d=360;
m=10*d;
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
%com_new_test=com_test;
%Y_test = zeros(size(data_test));
%Y_test(com_test>=0)=1;
%Y_test = compactbit(Y_test);
fly_data=zeros(database_size,m);
fly_data_test=zeros(num,m);

for i=1:database_size
    di=com_new(i,:);
    [a1,b1]=sort(di,'descend');
    %fly_data(i,:)=zeros(1,20*k);
    for j=1:k
        fly_data(i,b1(j))=a1(j);
        %fly_data(i,b1(j))=1;
    end
%     fly_data(i,1)=b1(1);
%     di_1=com_new(i,1:10*d/2);
%     [a1,b1]=sort(di_1,'descend');
%     fly_data(i,1)=b1(1);
%     di_2=com_new(i,10*d/2+1:end);
%     [a1,b1]=sort(di_2,'descend');
%     fly_data(i,1)=b1(1);
   % fly_data(i,:)=data(b)
end

for i=1:num
    di=com_new_test(i,:);
    [a1,b1]=sort(di,'descend');
    %fly_data_test(i,:)=zeros(1,20*k);
    for j=1:k
        fly_data_test(i,b1(j))=a1(j);
        %fly_data_test(i,b1(j))=1;
    end
   % fly_data_test(i,:)=[b1(1),a1(1)];
%     [a1,b1]=sort(di,'descend');
%     fly_data_test(i,:)=b1(1:k);
%     di_1=com_new_test(i,1:10*d/2);
%     [a1,b1]=sort(di_1,'descend');
%     fly_data_test(i,1)=b1(1);
%     di_2=com_new_test(i,10*d/2+1:end);
%     [a1,b1]=sort(di_2,'descend');
%     fly_data_test(i,1)=b1(1);
end

% ran=randperm(20*k);
% ran_ch=ran(1:k);
% fly_data=com_new(:,ran_ch);
% fly_data_test=com_new_test(:,ran_ch);

%% retriveal
dist=pdist2(fly_data_test,fly_data);
%dist=pdist2(com_new_test,com_new);
%dist=pdist2(Y_test,Y);
%dist=pdist2(Y_test,Y);

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
    for j=1:50
        if(ground(i)==label(test_ground(i,j)))
            map(i)=map(i)+t/j;
            t=t+1;
            preci(i)=preci(i)+1;
        end
    end
    if t==1
        t=2;
    end
    map(i)=map(i)/(t-1);
    preci(i)=preci(i)/50;
end

mm=sum(map)/num;
map_last=mm;
pp=sum(preci)/num;
pr_last=pp;
