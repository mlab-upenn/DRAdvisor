function varargout = Model_Identification(varargin)
%MODEL_IDENTIFICATION M-file for Model_Identification.fig
%      MODEL_IDENTIFICATION, by itself, creates a new MODEL_IDENTIFICATION or raises the existing
%      singleton*.
%
%      H = MODEL_IDENTIFICATION returns the handle to a new MODEL_IDENTIFICATION or the handle to
%      the existing singleton*.
%
%      MODEL_IDENTIFICATION('Property','Value',...) creates a new MODEL_IDENTIFICATION using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to Model_Identification_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      MODEL_IDENTIFICATION('CALLBACK') and MODEL_IDENTIFICATION('CALLBACK',hObject,...) call the
%      local function named CALLBACK in MODEL_IDENTIFICATION.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Model_Identification

% Last Modified by GUIDE v2.5 03-Mar-2015 12:19:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Model_Identification_OpeningFcn, ...
                   'gui_OutputFcn',  @Model_Identification_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Model_Identification is made visible.
function Model_Identification_OpeningFcn(hObject, eventdata, handles, varargin)


% Choose default command line output for Model_Identification
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Model_Identification wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Model_Identification_OutputFcn(hObject, eventdata, handles)


% Get default command line output from handles structure
varargout{1} = handles.output;





% --- Executes on button press in train.
function train_Callback(hObject, eventdata, handles)

    %% Prepare Training data, i.e from 2012
    
    
    st='Preparing data..';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    
    load large_office_all_data_2k12.mat

    assisted = 1;

    if(assisted)
        st='Schedule Assist ON';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);
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
        st='Schedule Assist OFF';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);
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



    st='Done.';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    
        % Now prepare testing data, i.e from 2013.
        st='Evaluating on 2013 Testing Data';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);

        load large_office_all_data_2k13.mat

        if(assisted)
            % Feature matrix with all 34 features as columns
            Xtest = [chwsetp,clgsetp,...
                dom,dow,htgsetp,hwsetp,outdry,outhum...
                ,outwet,tod,windir,winspeed];
            Xtest(1,:)=[];
            % Output vector
            Ytest = tpower;
            Ytest(1,:)=[];
        else
            Xtest = [dom,dow,outdry,outhum...
                ,outwet,tod,windir,winspeed];
            Xtest(1,:)=[];
            % Output vector
            Ytest = tpower;
            Ytest(1,:)=[];
        end
        
    st='Done.';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    len=length(contents_console);
    set(handles.console,'Value',len+1);
    
    
    if get(handles.srt,'Value')
        % Start Tree Regression
        st='Learning Regression Tree on 2012 Annual Data';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);

%         minleaf = 10;   % minimium number of leaf node observations
        minleaf=str2num(get(handles.srt_ml_box,'String'))
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
        set(handles.srt_e,'String',num2str((100*b/(max(Ytrain)-min(Ytrain)))));
        

        % Ontain Predictions for the entire year and for just july
        Ypredict = predict(largetree12,Xtest);  
        % RMSE
        [a,b]=rsquare(Ytest,Ypredict);
        fprintf('2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n'...
            ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));
        set(handles.srt_et,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));
        
        st='Single Regression Tree training and testing process complete!';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);
    end
    
    
    if get(handles.cvt,'Value')
        % Improve the tree by using k-fold cross validation
        st='Learning a cross validated tree for 2012 annual data';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);

        minleaf=str2num(get(handles.cvt_ml_box,'String'))
%         kf = 20;
        kf=str2num(get(handles.cvt_k_box,'String'))

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
        set(handles.cvt_e,'String',num2str((100*b/(max(Ytrain)-min(Ytrain)))));

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
        set(handles.cvt_et,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));
        st='Cross-Validation Tree training and testing process complete!';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);
    end
    
    
    if get(handles.brt,'Value')
        % Boosted Regression trees
        
        st='Learning a boosted regression tree for 2012 annual data';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);
        
        minleaf=str2num(get(handles.brt_ml_box,'String'))
%         num_trees = 500;
        num_trees=str2num(get(handles.brt_nt_box,'String'))
        t = RegressionTree.template('MinLeaf',minleaf);
        mdl = fitensemble(Xtrain,Ytrain,'LSBoost',num_trees,t,'PredictorNames',...
            colnames,'ResponseName','Total Power','CategoricalPredictors',catcol,...
           'LearnRate',0.01);

        Ypreden = predict(mdl,Xtest);

        %Ypreden = kfoldPredict(mdl);
        
        

        [a,b]=rsquare(Ytest,Ypreden);
        fprintf('Boosted Tree 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
        ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));
    
        set(handles.brt_et,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));

        st='Boosted Regression Tree training and testing process complete!';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);
    end
    
    
    if get(handles.rf,'Value')
        
        st='Learning a random forest for 2012 annual data';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);
        
        minleaf=str2num(get(handles.rf_ml_box,'String'))
        num_trees=str2num(get(handles.rf_nt_box,'String'))
%         leaf = [5 10 50 100];
%         col = 'rbcmyk';
        %figure
%         for i=1:length(leaf)
%             b = TreeBagger(300,Xtrain,Ytrain,'Method','regression','OOBPred','On','OOBVarImp','on',...
%                 'CategoricalPredictors',catcol,'MinLeaf',leaf(i));
         %   plot(sqrt(oobError(b)),col(i));
          %  hold on;
%         end
%         xlabel 'Number of Grown Trees';
%         ylabel 'Root Mean Squared Error' ;
%         legend({'5','10' '50' '100' '200'},'Location','NorthEast');
%         hold off;

%         figure();
%         bar(b.OOBPermutedVarDeltaError);
%         xlabel 'Feature' ;
%         ylabel 'Out-of-Bag Feature Importance';
%         set(gca,'XTickLabel',colnames);


        B = TreeBagger(num_trees,Xtrain,Ytrain,'Method','regression','OOBPred','On','OOBVarImp','on',...
                'CategoricalPredictors',catcol,'MinLeaf',minleaf);
%         figure();
%         plot(sqrt(oobError(B)));

        Ybag = predict(B,Xtest);

        [a,b]=rsquare(Ytest,Ybag);
        fprintf('Random Forests 2013(Testing) RMSE(W): %.2f, R2: %.3f, RMSE/peak %0.4f, NRMSD: %0.2f \n\n'...
            ,b,a,(b/max(Ytest)),(100*b/(max(Ytest)-min(Ytest))));
        
        set(handles.rf_et,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));
        
        
        st='Random Forest training and testing process complete!';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);
    end
    
    
    if get(handles.mbt,'Value')
        % Model Based RT
        
        st='Learning a model based random tree for 2012 annual data';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);

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
        
        set(handles.mbt,'String',num2str((100*b/(max(Ytest)-min(Ytest)))));
        
        st='Model Based Random Tree training and testing process complete!';
        contents_console = cellstr(get(handles.console,'String'));
        set(handles.console,'String',[contents_console;st]);
        len=length(contents_console);
        set(handles.console,'Value',len+1);
    end



% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)

   return

function rf_ml_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of rf_ml_box as text
%        str2double(get(hObject,'String')) returns contents of rf_ml_box as a double


% --- Executes during object creation, after setting all properties.
function rf_ml_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function brt_ml_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of brt_ml_box as text
%        str2double(get(hObject,'String')) returns contents of brt_ml_box as a double


% --- Executes during object creation, after setting all properties.
function brt_ml_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cvt_ml_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of cvt_ml_box as text
%        str2double(get(hObject,'String')) returns contents of cvt_ml_box as a double


% --- Executes during object creation, after setting all properties.
function cvt_ml_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function srt_ml_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of srt_ml_box as text
%        str2double(get(hObject,'String')) returns contents of srt_ml_box as a double


% --- Executes during object creation, after setting all properties.
function srt_ml_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in srt.
function srt_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of srt


% --- Executes on button press in cvt.
function cvt_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of cvt


% --- Executes on button press in brt.
function brt_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of brt


% --- Executes on button press in rf.
function rf_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of rf


% --- Executes on button press in mbt.
function mbt_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of mbt



function rf_nt_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of rf_nt_box as text
%        str2double(get(hObject,'String')) returns contents of rf_nt_box as a double


% --- Executes during object creation, after setting all properties.
function rf_nt_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function brt_nt_box_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of brt_nt_box as text
%        str2double(get(hObject,'String')) returns contents of brt_nt_box as a double


% --- Executes during object creation, after setting all properties.
function brt_nt_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cvt_k_box_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of cvt_k_box as text
%        str2double(get(hObject,'String')) returns contents of cvt_k_box as a double


% --- Executes during object creation, after setting all properties.
function cvt_k_box_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in def_value.
function def_value_Callback(hObject, eventdata, handles)

    set(handles.srt_ml_box,'String','10');
    set(handles.cvt_ml_box,'String','10');
    set(handles.cvt_k_box,'String','20');
    set(handles.brt_ml_box,'String','2');
    set(handles.brt_nt_box,'String','100');
    set(handles.rf_ml_box,'String','5');
    set(handles.rf_nt_box,'String','100');

% --- Executes on selection change in console.
function console_Callback(hObject, eventdata, handles)


% Hints: contents = cellstr(get(hObject,'String')) returns console contents as cell array
%        contents{get(hObject,'Value')} returns selected item from console


% --- Executes during object creation, after setting all properties.
function console_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in err_plot_button.
function err_plot_button_Callback(hObject, eventdata, handles)
    
    axes(handles.mi_plot);
    plot(NaN);
    
    hold on
    
    
    hold off
