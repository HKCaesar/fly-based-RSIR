clear all
clc
Load_OpenSAR_VH;
Load_OpenSAR_VV;

VH=zeros(4120+835+88,64*64);
for i=1:4120
    VH(i,:)=reshape(Cargo_VH(:,:,i),1,64*64);
end
for i=1:835
    VH(i+4120,:)=reshape(Tanker_VH(:,:,i),[1,64*64]);
end
for i=1:88
    VH(i+4120+835,:)=reshape(Tug_VH(:,:,i),[1,64*64]);
end

VV=zeros(4120+835+88,64*64);
for i=1:4120
    VV(i,:)=reshape(Cargo_VV(:,:,i),1,64*64);
end
for i=1:835
    VV(i+4120,:)=reshape(Tanker_VV(:,:,i),[1,64*64]);
end
for i=1:88
    VV(i+4120+835,:)=reshape(Tug_VV(:,:,i),[1,64*64]);
end

[coeff_VH,VH_PCA,latent_VH]=pca(VH);
VH_PCA_50=VH_PCA(:,1:50);
VH_PCA_100=VH_PCA(:,1:100);
VH_PCA_150=VH_PCA(:,1:150);

[coeff_VV,VV_PCA,latent_VV]=pca(VV);
VV_PCA_50=VV_PCA(:,1:50);
VV_PCA_100=VV_PCA(:,1:100);
VV_PCA_150=VV_PCA(:,1:150);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
VH_PCA_50_trt=PCA(VH,50);
VH_PCA_100_trt=PCA(VH,100);
VH_PCA_150_trt=PCA(VH,150);

VV_PCA_50_trt=PCA(VV,50);
VV_PCA_100_trt=PCA(VV,100);
VV_PCA_150_trt=PCA(VV,150);

save('VH_50.mat','VH_PCA_50');
save('VH_100.mat','VH_PCA_100');
save('VH_150.mat','VH_PCA_150');
save('VV_50.mat','VV_PCA_50');
save('VV_100.mat','VV_PCA_100');
save('VV_150.mat','VV_PCA_150');

save('VH_50_trt.mat','VH_PCA_50_trt');
save('VH_100_trt.mat','VH_PCA_100_trt');
save('VH_150_trt.mat','VH_PCA_150_trt');
save('VV_50_trt.mat','VV_PCA_50_trt');
save('VV_100_trt.mat','VV_PCA_100_trt');
save('VV_150_trt.mat','VV_PCA_150_trt');
