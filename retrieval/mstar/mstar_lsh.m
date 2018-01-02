%local sensitive hash
%by zhang kai
%2017/11/23

function [map_last,pr_last]=mstar_lsh(k)

load data
load data_test
load ground
load label

C=3;
num=300;
database_size=2987;
d=50;
w=normrnd(0, 1, d, k);

for i=1:database_size
    data(i,:)=data(i,:)-sum(data(i,:))/d;
end
for i=1:num
    data_test(i,:)=data_test(i,:)-sum(data_test(i,:))/d;
end
%% projection
com=data*w;
com_new=floor(com/C);
Y = zeros(size(com));
Y(com>=0)=1;

com_test=data_test*w;
com_new_test=floor(com_test/C);
Y_test = zeros(size(com_test));
Y_test(com_test>=0)=1;


dist=pdist2(Y_test,Y,'hamming');


for i=1:num
    di=dist(i,:);
    [a,b]=sort(di);
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
    if (t==1)
        t=2;
    end
    map(i)=map(i)/(t-1);
    preci(i)=preci(i)/100;
end

mm=sum(map)/num;
map_last=mm;
pp=sum(preci)/num;
pr_last=pp;
