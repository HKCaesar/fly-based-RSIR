% Load the Test data

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   1 READ IMAGES BMP2 SN9563    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Testing Data BMP2 SN9533...\n');
path=dir('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\BMP2\SN_9563');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Test_p1_1=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Test_p1_1=Test_p1_1+1;
        Test_P1_SN9563(:,:,Test_p1_1)=double(imread(strcat('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\BMP2\SN_9563\',path{i})));
    end
end
fprintf('Testing Data BMP2 SN9533 Loading Complete!\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   2 READ IMAGES BMP2 SN9566    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Testing Data BMP2 SN9566...\n');
path=dir('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\BMP2\SN_9566');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Test_p1_2=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Test_p1_2=Test_p1_2+1;
        Test_P1_SN9566(:,:,Test_p1_2)=double(imread(strcat('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\BMP2\SN_9566\',path{i})));
    end
end
fprintf('Testing Data BMP2 SN9566 Loading Complete!\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   3 READ IMAGES BMP2 SNC21    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Testing Data BMP2 SNC21...\n');
path=dir('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\BMP2\SN_C21');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Test_p1_3=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Test_p1_3=Test_p1_3+1;
        Test_P1_SNC21(:,:,Test_p1_3)=double(imread(strcat('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\BMP2\SN_C21\',path{i})));
    end
end
fprintf('Testing Data BMP2 SNC21 Loading Complete!\n\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   4 READ IMAGES BTR70 SNC71    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Testing  Data BTR70 SNC71...\n');
path=dir('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\BTR70\SN_C71');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Test_p2_1=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Test_p2_1=Test_p2_1+1;
        Test_P2_SNC71(:,:,Test_p2_1)=double(imread(strcat('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\BTR70\SN_C71\',path{i})));
    end
end
fprintf('Testing Data BTR70 SNC71 Loading Complete!\n\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   5 READ IMAGES T72 SN132    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Testing  Data T72 SN132...\n');
path=dir('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\T72\SN_132');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Test_p3_1=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Test_p3_1=Test_p3_1+1;
        Test_P3_SN132(:,:,Test_p3_1)=double(imread(strcat('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\T72\SN_132\',path{i})));
    end
end
fprintf('Testing Data T72 SN132 Loading Complete!\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   6 READ IMAGES T72 SN812    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Testing  Data T72 SN812...\n');
path=dir('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\T72\SN_812');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Test_p3_2=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Test_p3_2=Test_p3_2+1;
        Test_P3_SN812(:,:,Test_p3_2)=double(imread(strcat('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\T72\SN_812\',path{i})));
    end
end
fprintf('Testing Data T72 SN812 Loading Complete!\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   7 READ IMAGES T72 SNS7    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Testing  Data T72 SNS7...\n');
path=dir('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\T72\SN_S7');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Test_p3_3=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Test_p3_3=Test_p3_3+1;
        Test_P3_SNS7(:,:,Test_p3_3)=double(imread(strcat('E:\fruitfly\MSTAR_PUBLIC_TARGETS_CHIPS_T_72_BMP_2_BTR_70_SLICY.iso\DAA7B02AA\TARGETS\TEST\15_DEG\T72\SN_S7\',path{i})));
    end
end
fprintf('Testing Data T72 SNS7 Loading Complete!\n\n');
fprintf('Testing  Data Loading Process Complete!\n');