%{

Variables:

DateTime     clgsetp      gfplenum     outwet       perimid2zat  peritop4zat  
basezat      corebzat     htgsetp      peribot1zat  perimid3zat  tod          
boiler1      coremzat     hwsetp       peribot2zat  perimid4zat  topplenum    
chws1        coretzat     mfplenum     peribot3zat  peritop1zat  tpower       
chws2        dom          outdry       peribot4zat  peritop2zat  windir       
chwsetp      dow          outhum       perimid1zat  peritop3zat  winspeed     


%}

clc 
clear 
close all

%% Prepare Training data, i.e from 2012
disp('Preparing data..');

load large_office_all_data_2k12.mat

assisted = 1;

if(assisted)
    disp('Schedule Assist ON');
    %Feature matrix with weather and schelue
    Xtrain = [chwsetp,clgsetp,...
       dom,dow,htgsetp,hwsetp,outdry,outhum...
        ,outwet,tod,windir,winspeed];
    Xtrain(1,:)=[];
    % Output vector
    Ytrain = tpower;
    Ytrain(1,:)=[];
    colnames={'chwsetp','clgsetp','dom','dow','htgsetp','hwsetp','outdry','outhum'...
    ,'outwet','tod','windir','winspeed'};
    catcol = [3,4,10];
else
    disp('Schedule Assist OFF');
    %Feature matrix with only weather
    Xtrain = [dom,dow,outdry,outhum...
        ,outwet,tod,windir,winspeed];
    Xtrain(1,:)=[];
    %Output vector
    Ytrain = tpower;
    Ytrain(1,:)=[];
    
    colnames={'dom','dow','outdry','outhum'...
    ,'outwet','tod','windir','winspeed'};
    catcol = [1,2,6];
end

load date12num.mat

% Column names and indicies of the columns which are categorical



disp('Done.');

%% Start Tree Regression
disp('Learning Regression Tree on 2012 Annual Data');

minleaf = 10;   % minimium number of leaf node observations
tic
largetree12 = fitrtree(Xtrain,Ytrain,'PredictorNames',colnames,'ResponseName','Total Power','CategoricalPredictors',catcol,'MinLeafSize',minleaf);
toc
% view the tree view(rtree);
%view(largetree12,'mode','graph');

% predict on training and testing data and plot the fits
Yfit = predict(largetree12,Xtrain);

% RMSE
[a,b]=rsquare(Ytrain,Yfit);
fprintf('2012(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak: %.4f, NRMSD: %.2f \n\n'...
    ,b,a,(b/max(Ytrain)),(100*b/(max(Ytrain)-min(Ytrain))));


%% Now train a model only for June index June from 43488 to 52127
disp('Learning Regression Tree on 2012 June Data');

junstart = 43488;
junend = 52127;
XtrainJun = Xtrain(junstart:junend,:);
YtrainJun = Ytrain(junstart:junend);
date12numJun = date12num(junstart:junend);

tic
largetree12Jun = fitrtree(XtrainJun,YtrainJun,'PredictorNames',colnames,'ResponseName','Total Power','CategoricalPredictors',catcol,'MinLeafSize',minleaf);
toc
% predict on training and testing data and plot the fits
YfitJun = predict(largetree12Jun,XtrainJun);
% RMSE
[a,b]=rsquare(YtrainJun,YfitJun);
fprintf('June 2012(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n '...
    ,b,a,(b/max(YtrainJun)),(100*b/(max(YtrainJun)-min(YtrainJun))));

% predict on training and testing data and plot the fits
YfitJun12 = predict(largetree12,XtrainJun);
% RMSE
[a,b]=rsquare(YtrainJun,YfitJun12);
fprintf('June 2012(Training) with annual 2012 tree RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(YtrainJun)),(100*b/(max(YtrainJun)-min(YtrainJun))));

%% Now train a model only for July index July from 52128 to 61055
disp('Learning Regression Tree on 2012 July Data');

julstart = 52128;
julend = 61055;
XtrainJul = Xtrain(julstart:julend,:);
YtrainJul = Ytrain(julstart:julend);
date12numJul = date12num(julstart:julend);

tic
largetree12Jul = fitrtree(XtrainJul,YtrainJul,'PredictorNames',colnames,'ResponseName','Total Power','CategoricalPredictors',catcol,'MinLeafSize',minleaf);
toc
% predict on training and testing data and plot the fits
YfitJul = predict(largetree12Jul,XtrainJul);
% RMSE
[a,b]=rsquare(YtrainJul,YfitJul);
fprintf('July 2012(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n'...
    ,b,a,(b/max(YtrainJul)),(100*b/(max(YtrainJul)-min(YtrainJul))));

% predict on training and testing data and plot the fits
YfitJul12 = predict(largetree12,XtrainJul);
% RMSE
[a,b]=rsquare(YtrainJul,YfitJul12);
fprintf('July 2012(Training) with annual 2012 tree RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(YtrainJul)),(100*b/(max(YtrainJul)-min(YtrainJul))));


%% Now prepare testing data, i.e from 2013.
disp('Evaluating on 2013 Testing Data');

load large_office_all_data_2k13.mat

if(assisted)
    % Feature matrix with all 34 features as columns
    Xtest = [chwsetp,clgsetp,...
        dom,dow,htgsetp,hwsetp,outdry,outhum...
        ,outwet,tod,windir,winspeed];
    Xtest(1,:)=[];
    XtestJul = Xtest(julstart:julend,:);
    XtestJun = Xtest(junstart:junend,:);
    % Output vector
    Ytest = tpower;
    Ytest(1,:)=[];
    YtestJul = Ytest(julstart:julend);
    YtestJun = Ytest(junstart:junend);
else
    Xtest = [dom,dow,outdry,outhum...
        ,outwet,tod,windir,winspeed];
    Xtest(1,:)=[];
    XtestJul = Xtest(julstart:julend,:);
    XtestJun = Xtest(junstart:junend,:);
    % Output vector
    Ytest = tpower;
    Ytest(1,:)=[];
    YtestJul = Ytest(julstart:julend);
    YtestJun = Ytest(junstart:junend);
end

% Ontain Predictions for the entire year and for just july
Ypredict = predict(largetree12,Xtest);  
YpredictJul = predict(largetree12Jul,XtestJul);
YpredictJun = predict(largetree12Jun,XtestJun);
YpredictJul12 = predict(largetree12,XtestJul);
YpredictJun12 = predict(largetree12,XtestJun);

% RMSE
[a,b]=rsquare(Ytest,Ypredict);
fprintf('2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n'...
    ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));

% RMSE
[a,b]=rsquare(YtestJun,YpredictJun);
fprintf('June 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n'...
    ,b,a,(b/max(YtestJun)),(100*b/(max(YtestJun)-min(YtestJun))));

% RMSE
[a,b]=rsquare(YtestJun,YpredictJun12);
fprintf('June 2013(Testing) with annual 2012 tree RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n'...
    ,b,a,(b/max(YtestJun)),(100*b/(max(YtestJun)-min(YtestJun))));

% RMSE
[a,b]=rsquare(YtestJul,YpredictJul);
fprintf('July 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n'...
    ,b,a,(b/max(YtestJul)),(100*b/(max(YtestJul)-min(YtestJul))));

% RMSE
[a,b]=rsquare(YtestJul,YpredictJul12);
fprintf('July 2013(Testing) with annual 2012 tree RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(YtestJul)),(100*b/(max(YtestJul)-min(YtestJul))));


%% Improve the tree by using k-fold cross validation
disp('Learning a  cross validated tree for 2012 annual data');

kf = 20;

tic
largetreeCV = fitrtree(Xtrain,Ytrain,'PredictorNames',colnames,...
    'ResponseName','Total Power','CategoricalPredictors',catcol,...
    'MinLeafSize',minleaf,'CrossVal','on','KFold',kf); % default is 10-fold
toc

YfitCV = kfoldPredict(largetreeCV);

% RMSE
[a,b]=rsquare(Ytrain,YfitCV);
fprintf('Cross Validated 2012(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak %.4f, NRMSD: %0.2f \n'...
    ,b,a,(b/max(Ytrain)),(100*b/(max(Ytrain)-min(Ytrain))));

% Now use the cross validated trees to make predictions on the 2013 testing
% data
YpredictCVk=zeros(length(Xtest),kf);
for ii=1:kf
    YpredictCVk(:,ii)=predict(largetreeCV.Trained{ii,1},Xtest);
end
YpredictCV = sum(YpredictCVk,2)/kf;

% RMSE
[a,b]=rsquare(Ytest,YpredictCV);
fprintf('Cross Validated 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));

%% Now use cross validated tree but just for June
disp('Learning a cross validated tree for 2012 June data');

tic
largetreeCVJun = fitrtree(XtrainJun,YtrainJun,'PredictorNames',colnames,...
    'ResponseName','Total Power','CategoricalPredictors',catcol,...
    'MinLeafSize',minleaf,'CrossVal','on','KFold',kf); % default is 10-fold
toc

YfitCVJun = kfoldPredict(largetreeCVJun);

% RMSE
[a,b]=rsquare(YtrainJun,YfitCVJun);
fprintf('Cross Validated June 2012(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak %.4f, NRMSD: %0.2f \n',...
    b,a,(b/max(YtrainJun)),(100*b/(max(YtrainJun)-min(YtrainJun))));

% Now use the cross validated trees to make predictions on the 2013 testing
% data
YpredictCVkJun=zeros(length(XtestJun),kf);
for ii=1:kf
    YpredictCVkJun(:,ii)=predict(largetreeCVJun.Trained{ii,1},XtestJun);
end
YpredictCVJun12 = sum(YpredictCVkJun,2)/kf;

% RMSE
[a,b]=rsquare(YtestJun,YpredictCVJun12);
fprintf('Cross Validated June 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n'...
    ,b,a,(b/max(YtestJun)),(100*b/(max(YtestJun)-min(YtestJun))));

% Now use the cross validated trees to make predictions on the 2013 testing
% data
YpredictCVkJun12=zeros(length(XtestJun),kf);
for ii=1:kf
    YpredictCVkJun12(:,ii)=predict(largetreeCV.Trained{ii,1},XtestJun);
end
YpredictCVJun12 = sum(YpredictCVkJun12,2)/kf;

% RMSE
[a,b]=rsquare(YtestJun,YpredictCVJun12);
fprintf('Cross Validated June 2013(Testing) with annual 2012 tree RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f  \n\n'...
    ,b,a,(b/max(YtestJun)),(100*b/(max(YtestJun)-min(YtestJun))));


%% Now use cross validated tree but just for July
disp('Learning a cross validated tree for 2012 July data');

tic
largetreeCVJul = fitrtree(XtrainJul,YtrainJul,'PredictorNames',colnames,...
    'ResponseName','Total Power','CategoricalPredictors',catcol,...
    'MinLeafSize',minleaf,'CrossVal','on','KFold',kf); % default is 10-fold
toc

YfitCVJul = kfoldPredict(largetreeCVJul);

% RMSE
[a,b]=rsquare(YtrainJul,YfitCVJul);
fprintf('Cross Validated July 2012(Training) RMSE(W): %.2f, R2: %.3f, RMSE/peak %.4f, NRMSD: %0.2f \n',...
    b,a,(b/max(YtrainJul)),(100*b/(max(YtrainJul)-min(YtrainJul))));

% Now use the cross validated trees to make predictions on the 2013 testing
% data
YpredictCVkJul=zeros(length(XtestJul),kf);
for ii=1:kf
    YpredictCVkJul(:,ii)=predict(largetreeCVJul.Trained{ii,1},XtestJul);
end
YpredictCVJul = sum(YpredictCVkJul,2)/kf;

% RMSE
[a,b]=rsquare(YtestJul,YpredictCVJul);
fprintf('Cross Validated July 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n'...
    ,b,a,(b/max(YtestJul)),(100*b/(max(YtestJul)-min(YtestJul))));

% Now use the cross validated trees to make predictions on the 2013 testing
% data
YpredictCVkJul12=zeros(length(XtestJul),kf);
for ii=1:kf
    YpredictCVkJul12(:,ii)=predict(largetreeCV.Trained{ii,1},XtestJul);
end
YpredictCVJul12 = sum(YpredictCVkJul12,2)/kf;

% RMSE
[a,b]=rsquare(YtestJul,YpredictCVJul12);
fprintf('Cross Validated July 2013(Testing) with 2012 annual tree RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(YtestJul)),(100*b/(max(YtestJul)-min(YtestJul))));


%% Plot the results
disp('Plotting results..');

figure();
plot(date12num,Ytrain/1e6);
title('Total Power Fit for Training Data (2012)');
hold on;
plot(date12num,Yfit/1e6);
plot(date12num,YfitCV/1e6);
datetick('x','mmm');
hold off;
legend('Ground Truth','Single Tree','CV Tree');

figure();
plot(date12numJun,YtrainJun/1e6);
title('Total Power Fit for June Training Data (2012)');
hold on;
plot(date12numJun,YfitJun/1e6);
plot(date12numJun,YfitCVJun/1e6);
datetick('x','dd');
hold off;
legend('Ground Truth','Single Tree','CV Tree');

figure();
plot(date12numJul,YtrainJul/1e6);
title('Total Power Fit for July Training Data (2012)');
hold on;
plot(date12numJul,YfitJul/1e6);
plot(date12numJul,YfitCVJul/1e6);
datetick('x','dd');
hold off;
legend('Ground Truth','Single Tree','CV Tree');

figure();
plot(date12num,Ytest/1e6);
title('Total Power Fit for Testing Data (2013)');
hold on;
plot(date12num,Ypredict/1e6);
plot(date12num,YpredictCV/1e6);
datetick('x','mmm');
hold off;
legend('Ground Truth','Single Tree','CV Tree');

figure();
plot(date12numJun,YtestJun/1e6);
title('Total Power Fit for June Testing Data (2013)');
hold on;
plot(date12numJun,YpredictJun/1e6);
plot(date12numJun,YpredictCVJun12/1e6);
datetick('x','dd');
hold off;
legend('Ground Truth','Single Tree','CV Tree');

figure();
plot(date12numJul,YtestJul/1e6);
title('Total Power Fit for July Testing Data (2013)');
hold on;
plot(date12numJul,YpredictJul/1e6);
plot(date12numJul,YpredictCVJul/1e6);
datetick('x','dd');
hold off;
legend('Ground Truth','Single Tree','CV Tree');

%% Boosted Regression trees

num_trees = 500;

t = RegressionTree.template('MinLeaf',2);
mdl = fitensemble(Xtrain,Ytrain,'LSBoost',num_trees,t,'PredictorNames',...
    colnames,'ResponseName','Total Power','CategoricalPredictors',catcol,...
   'LearnRate',0.01);

Ypreden = predict(mdl,Xtest);

%Ypreden = kfoldPredict(mdl);

[a,b]=rsquare(Ytest,Ypreden);
fprintf('Boosted Tree 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));

figure;
plot(date12num,Ytest/1e6), hold on
plot(date12num,Ypreden/1e6);
datetick('x','MM');
hold off;

[predictorImportance,sortedIndex] = sort(mdl.predictorImportance);
figure;
barh(predictorImportance/1e6)
set(gca,'ytickLabel',colnames(sortedIndex))
xlabel('Relative Predictor Importance')

 
% 
% t = RegressionTree.template('MinLeaf',5);
% mdl = fitensemble(Xtrain,Ytrain,'LSBoost',num_trees,t,'PredictorNames',...
%     colnames,'ResponseName','Total Power','CategoricalPredictors',catcol,...
%     'CrossVal','on','KFold',kf,'LearnRate',0.01);

figure;
trainingLoss = resubLoss(mdl,'mode','cumulative');
testLoss = loss(mdl,Xtest,Ytest,'mode','cumulative');
plot(sqrt(trainingLoss)), hold on
plot(sqrt(testLoss),'r')
legend({'Training Set Loss','Test Set Loss'})
xlabel('Number of trees');
ylabel('Mean Squared Error');


%% Random Forests

leaf = [5 10 50 100];
col = 'rbcmyk';
figure
for i=1:length(leaf)
    b = TreeBagger(300,Xtrain,Ytrain,'Method','regression','OOBPred','On','OOBVarImp','on',...
        'CategoricalPredictors',catcol,'MinLeaf',leaf(i));
    plot(sqrt(oobError(b)),col(i));
    hold on;
end
xlabel 'Number of Grown Trees';
ylabel 'Root Mean Squared Error' ;
legend({'5','10' '50' '100' '200'},'Location','NorthEast');
hold off;

figure();
bar(b.OOBPermutedVarDeltaError);
xlabel 'Feature' ;
ylabel 'Out-of-Bag Feature Importance';
set(gca,'XTickLabel',colnames);


B = TreeBagger(100,Xtrain,Ytrain,'Method','regression','OOBPred','On','OOBVarImp','on',...
        'CategoricalPredictors',catcol,'MinLeaf',5);
figure();
plot(sqrt(oobError(B)));

Ybag = predict(B,Xtest);

[a,b]=rsquare(Ytest,Ybag);
fprintf('Random Forests 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));

figure;
plot(date12num,Ytest/1e6), hold on
plot(date12num,Ybag/1e6);
datetick('x','MM');
hold off;


%% Model Based RT

% Try the M5 method in which leaves of the tree are linear regression
% functions
if(assisted)
    binCat = [0,0,3,3,0,0,0,0,0,3,0,0]; % denotes continuous and catergorical
    
else
    
    binCat = [3,3,0,0,0,3,0,0]; % denotes continuous and catergorical
end
%regresors

trainParams = m5pparams(false,4,true);

model = m5pbuild(Xtrain, Ytrain,trainParams, binCat,true);

Ypredm5 = m5ppredict(model,Xtest);

[a,b]=rsquare(Ytest,Ypredm5);
fprintf('Random Forests 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));

%%


figure();
plot(date12num(1:end-2),Ytest(1:end-2)/1e6,'k');
title('Total Power Fit for Testing Data (2013)');
hold on;
plot(date12num(1:end-2),Ypredict(1:end-2)/1e6);
plot(date12num(1:end-2),YpredictCV(1:end-2)/1e6);
plot(date12num(1:end-2),Ypreden(1:end-2)/1e6);
plot(date12num(1:end-2),Ybag(1:end-2)/1e6);
plot(date12num(1:end-2),Ypredm5(1:end-2)/1e6);
datetick('x','mmm');
hold off;
legend('Ground Truth','Single Tree','CV Tree','Boosted Tree','Random Forest','M5 Model');

figure();
plot(date12num(56736:57023),Ytest(56736:57023)/1e6,'k');
title('Total Power Fit for Testing Data (2013)');
hold on;
plot(date12num(56736:57023),Ypredict(56736:57023)/1e6);
plot(date12num(56736:57023),YpredictCV(56736:57023)/1e6);
plot(date12num(56736:57023),Ypreden(56736:57023)/1e6);
plot(date12num(56736:57023),Ybag(56736:57023)/1e6);
plot(date12num(56736:57023),Ypredm5(56736:57023)/1e6);
datetick('x','HH');
hold off;
legend('Ground Truth','Single Tree','CV Tree','Boosted Tree','Random Forest','M5 Model');

figure();
plot(date12num(56928:56940),Ytest(56928:56940)/1e6,'k');
title('Total Power Fit for Testing Data (2013)');
hold on;
plot(date12num(56928:56940),Ypredict(56928:56940)/1e6);
plot(date12num(56928:56940),YpredictCV(56928:56940)/1e6);
plot(date12num(56928:56940),Ypreden(56928:56940)/1e6);
plot(date12num(56928:56940),Ybag(56928:56940)/1e6);
plot(date12num(56928:56940),Ypredm5(56928:56940)/1e6);
datetick('x','HH:MM');
hold off;
legend('Ground Truth','Single Tree','CV Tree','Boosted Tree','Random Forest','M5 Model');

[a,b]=rsquare(Ytest(56928:56940),Ypredict(56928:56940));
fprintf('2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(Ytest(56928:56940))),(100*b/mean(Ytest)));

[a,b]=rsquare(Ytest(56928:56940),YpredictCV(56928:56940));
fprintf('CV 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(Ytest(56928:56940))),(100*b/mean(Ytest)));

[a,b]=rsquare(Ytest(56928:56940),Ypreden(56928:56940));
fprintf('BRT 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(Ytest(56928:56940))),(100*b/mean(Ytest)));

[a,b]=rsquare(Ytest(56928:56940),Ybag(56928:56940));
fprintf('Random Forests 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(Ytest(56928:56940))),(100*b/mean(Ytest)));

[a,b]=rsquare(Ytest(56928:56940),Ypredm5(56928:56940));
fprintf('M5 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
    ,b,a,(b/max(Ytest(56928:56940))),(100*b/mean(Ytest)));


