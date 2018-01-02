

clc
clear

k=32;

for i=1:30
    opensar_generate;
    [fly_map(i),fly_pr(i)]=opensar_fly(k);
    [lsh_map(i),lsh_pr(i)]=opensar_lsh(k);
    [wta_map(i),wta_pr(i)]=opensar_wta(k,30);
end

fly_m=mean(fly_map)
fly_p=mean(fly_pr)

lsh_m=mean(lsh_map)
lsh_p=mean(lsh_pr)

wta_m=mean(wta_map)
wta_p=mean(wta_pr)
