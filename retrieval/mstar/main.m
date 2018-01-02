%fly lsh
%by zhang kai
%2017/11/23

% the number of one
k=4;
% repeat the experiment
for i=1:30
    mstar_generate;
    %tic;
    [fly_map(i),fly_pr(i)]=mstar_fly(k);
    %toc;
    %tic;
    [lsh_map(i),lsh_pr(i)]=mstar_lsh(k);
    %toc;
    %tic;
    [wta_map(i),wta_pr(i)]=mstar_wta(k,30);
    %toc;
end

fly_m=mean(fly_map)
fly_p=mean(fly_pr)

lsh_m=mean(lsh_map)
lsh_p=mean(lsh_pr)

wta_m=mean(wta_map)
wta_p=mean(wta_pr)
