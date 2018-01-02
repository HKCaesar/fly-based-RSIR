global Train_p1_VV;
global Train_p2_VV;
global Train_p3_VV;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   1 READ IMAGES Cargo VV    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Data Cargo VV...\n');
path=dir('E:\fruitfly\opensarship\cargo\vv');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Train_p1_VV=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Train_p1_VV=Train_p1_VV+1;
        I=imread(strcat('E:\fruitfly\opensarship\cargo\vv\',path{i}));
        Cargo_VV(:,:,Train_p1_VV)=double(imresize(I,[64,64]));
    end
end
fprintf('Data Cargo VV Loading Complete!\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   2 READ IMAGES tanker VV    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Data Tanker VV...\n');
path=dir('E:\fruitfly\opensarship\tanker\vv');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Train_p2_VV=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Train_p2_VV=Train_p2_VV+1;
        I=imread(strcat('E:\fruitfly\opensarship\tanker\vv\',path{i}));
        Tanker_VV(:,:,Train_p2_VV)=double(imresize(I,[64,64]));
    end
end
fprintf('Data Tanker VV Loading Complete!\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   3 READ IMAGES Tug VV    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('Loading Data Tug VV...\n');
path=dir('E:\fruitfly\opensarship\Tug\vv');
path=struct2cell(path);
path=path(1,:);
path=path(3:end);

Train_p3_VV=0;
for i=1:length(path)
    if (strcmp(path{i}(end-2:end),'tif')==1)
        Train_p3_VV=Train_p3_VV+1;
        I=imread(strcat('E:\fruitfly\opensarship\Tug\vv\',path{i}));
        Tug_VV(:,:,Train_p3_VV)=double(imresize(I,[64,64]));
    end
end
fprintf('Data Tug VV Loading Complete!\n\n');