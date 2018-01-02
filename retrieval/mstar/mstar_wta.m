%WTA hash
%by zhang kai
%2017/11/23

function [map_last,pr_last]=mstar_wta(k,wid)

%% data
%k=2;
num=300;
%C=0.1;
load data
load data_test
load ground
load label

d=50;

%wid=50;

for i=1:k
    m(i,:)=randperm(d);
end

%% normalization

for i=1:2987
    data(i,:)=data(i,:)-sum(data(i,:))/d;
end
for i=1:num
    data_test(i,:)=data_test(i,:)-sum(data_test(i,:))/d;
end


%% winner take all
for j=1:2987
    for i=1:k
        di=data(j,m(i,1:wid));
        [a1,b1]=max(di);
        hash_data(j,i)=b1;
    end
end

for j=1:num
    for i=1:k
        di=data_test(j,m(i,1:wid));
        [a1,b1]=max(di);
        hash_data_test(j,i)=b1;
    end
end


%% retriveal
dist=pdist2(hash_data_test,hash_data);
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
