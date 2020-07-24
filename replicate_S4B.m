%% replicate FigS4b
% prerequisite: you should have the 9 spont_*.mat in the same folder. they
% can be downloaded from Stringer's fighsare

% correlation of behavioral measurements
% run-pupil, run-whisk, pupil-whisk, run-facePC1, pupil-facePC1, whisk-facePC1
filenames = dir("*.mat"); %assuming you don't have unrelated .mat files
ccs = zeros(6, numel(filenames));
for fileind = 1:length(filenames)
    filename = filenames(fileind).name;
    load(filename,'beh');
    ccs(1,fileind) = corr(beh.runSpeed,beh.pupil.area);
    ccs(2,fileind) = corr(beh.runSpeed,beh.whisker.motionSVD(:,1));
    ccs(3,fileind) = corr(beh.pupil.area,beh.whisker.motionSVD(:,1));
    ccs(4,fileind) = corr(beh.runSpeed,beh.face.motionSVD(:,1));
    ccs(5,fileind) = corr(beh.pupil.area,beh.face.motionSVD(:,1));
    ccs(6,fileind) = corr(beh.whisker.motionSVD(:,1),beh.face.motionSVD(:,1));
end

ccs = abs(ccs);
figure;
for fileind = 1:length(filenames)
    plot(ccs(:,fileind),'-o'); hold on;
end
plot(mean(ccs,2),'-ok','linewidth',1.5)
ylabel('corr coef');xticks(1:6);
xticklabels({'run-pupil','run-whisk','pupil-whisk',...
    'run-facePC1','pupil-facePC1','whisk-facePC1'})