clear
% Calculate the recognition rate of a face recognition system
% only upright test images in directory
testFolder='C:\Users\shaim\Documents\MATLAB\Project Face ID\Dataset\Test\'; %%%%% your test directory
files=dir(testFolder);

clear filenames
for i=3:size(files,1)
    filenames{i-2,1}=files(i).name;
end

load all3Networks.mat   %%%%% load your network here

wrongImages={}; w=1;
correct=0;
tic;
for i=1:size(filenames,1)

    I=imread(strcat(testFolder,(filenames{i})));
    c = recogniseDeep(I,trainedNetwork_1, trainedNetwork_2, trainedNetwork_3);  %%%%% use your network variable here
    
    correctId=strsplit(filenames{i},'-');
    correctId=str2double(correctId{1});
    
    if (c==correctId)
        correct=correct+1; 
    else
        wrongImages{w,1}=filenames{i}; 
        wrongImages{w,2}=c; 
        w=w+1;
    end
    
    accuracy=100*(correct/i);
    sprintf('Recognition rate = %f%% after %u images',accuracy,i)
end

sprintf('Average recognition time = %f seconds',toc/i)
wrongImages=wrongImages';
sprintf('AI Project Mark = %3.2f/20',accuracy/5)