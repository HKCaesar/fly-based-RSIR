clear all;
clc;
Load_Traindata;
Load_Testdata;
P1_Train=zeros(698,16384);
P2_Train=zeros(233,16384);
P3_Train=zeros(691,16384);

TrainData=zeros(1622,16384);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Reshape the Pattern I Training Data...\n');
parfor i=1:233
    P1_Train(i,:)=reshape((Train_P1_SN9563(:,:,i))',1,16384);
end
parfor i=234:465
    P1_Train(i,:)=reshape((Train_P1_SN9566(:,:,i-233))',1,16384);
end
parfor i=466:698
    P1_Train(i,:)=reshape((Train_P1_SNC21(:,:,i-465))',1,16384);
end

fprintf('Reshape the Pattern II Training Data...\n');
parfor i=1:233
    P2_Train(i,:)=reshape((Train_P2_SNC71(:,:,i))',1,16384);
end

fprintf('Reshape the Pattern III Training Data...\n');
parfor i=1:232
    P3_Train(i,:)=reshape((Train_P3_SN132(:,:,i))',1,16384);
end
parfor i=233:463
    P3_Train(i,:)=reshape((Train_P3_SN812(:,:,i-232))',1,16384);
end
parfor i=464:691
    P3_Train(i,:)=reshape((Train_P3_SNS7(:,:,i-463))',1,16384);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%% Combine the Three Pattern Together %%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Combine the three Pattern Training Data together...\n');
parfor i=1:698
    TrainData(i,:)=P1_Train(i,:);
end
parfor i=699:931
    TrainData(i,:)=P2_Train(i-698,:);
end
parfor i=932:1622
    TrainData(i,:)=P3_Train(i-931,:);
end
fprintf('Pattern Training Data Combine Complete!\n\n');

P1_Test=zeros(587,16384);
P2_Test=zeros(196,16384);
P3_Test=zeros(582,16384);

TestData=zeros(1365,16384);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Reshape the Pattern I Testing Data...\n');
parfor i=1:195
    P1_Test(i,:)=reshape((Test_P1_SN9563(:,:,i))',1,16384);
end
parfor i=196:391
    P1_Test(i,:)=reshape((Test_P1_SN9566(:,:,i-195))',1,16384);
end
parfor i=392:587
    P1_Test(i,:)=reshape((Test_P1_SNC21(:,:,i-391))',1,16384);
end
fprintf('Reshape the Pattern I Testing Data...\n');
parfor i=1:196
    P2_Test(i,:)=reshape((Test_P2_SNC71(:,:,i))',1,16384);
end
fprintf('Reshape the Pattern I Testing Data...\n');
parfor i=1:196
    P3_Test(i,:)=reshape((Test_P3_SN132(:,:,i))',1,16384);
end
parfor i=197:391
    P3_Test(i,:)=reshape((Test_P3_SN812(:,:,i-196))',1,16384);
end
parfor i=392:582
    P3_Test(i,:)=reshape((Test_P3_SNS7(:,:,i-391))',1,16384);
end
fprintf('Reshape Complete!\n\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%% Combine the Three Pattern Together %%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Combine the three Pattern Tesing Data...\n');
parfor i=1:587
    TestData(i,:)=P1_Test(i,:);
end
parfor i=588:783
    TestData(i,:)=P2_Test(i-587,:);
end
parfor i=784:1365
    TestData(i,:)=P3_Test(i-783,:);
end
fprintf('Combine Complete!\n\n');

Train_Test=[TrainData',TestData']';
[coeff,Train_Test_PCA,latent]=pca(Train_Test);
Train_Test_PCA_50=Train_Test_PCA(:,1:50);
Train_Test_PCA_100=Train_Test_PCA(:,1:100);
Train_Test_PCA_150=Train_Test_PCA(:,1:150);
Train_Test_PCA_500=Train_Test_PCA(:,1:500);

Train_Test_PCA_50_trt=PCA(Train_Test,50);
Train_Test_PCA_100_trt=PCA(Train_Test,100);
Train_Test_PCA_150_trt=PCA(Train_Test,150);
Train_Test_PCA_500_trt=PCA(Train_Test,500);