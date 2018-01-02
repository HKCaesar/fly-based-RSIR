global Train_p1_VH;
global Train_p2_VH;
global Train_p3_VH;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   1 READ IMAGES Cargo VH    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Data Cargo VH...\n');
path=dir('E:\fruitfly\opensarship\cargo\vh');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Train_p1_VH=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Train_p1_VH=Train_p1_VH+1;
        I=imread(strcat('E:\fruitfly\opensarship\cargo\vh\',path{i}));
        Cargo_VH(:,:,Train_p1_VH)=double(imresize(I,[64,64]));
    end
end
fprintf('Data Cargo VH Loading Complete!\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   2 READ IMAGES tanker VH    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Data Tanker VH...\n');
path=dir('E:\fruitfly\opensarship\tanker\vh');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Train_p2_VH=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Train_p2_VH=Train_p2_VH+1;
        I=imread(strcat('E:\fruitfly\opensarship\tanker\vh\',path{i}));
        Tanker_VH(:,:,Train_p2_VH)=double(imresize(I,[64,64]));
    end
end
fprintf('Data Tanker VH Loading Complete!\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   3 READ IMAGES Tug VH    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Data Tug VH...\n');
path=dir('E:\fruitfly\opensarship\Tug\vh');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Train_p3_VH=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Train_p3_VH=Train_p3_VH+1;
        I=imread(strcat('E:\fruitfly\opensarship\Tug\vh\',path{i}));
        Tug_VH(:,:,Train_p3_VH)=double(imresize(I,[64,64]));
    end
end
fprintf('Data Tug VH Loading Complete!\n\n');