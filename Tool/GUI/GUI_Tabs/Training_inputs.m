function varargout = Training_inputs(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Training_inputs_OpeningFcn, ...
                   'gui_OutputFcn',  @Training_inputs_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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

% --- Executes just before Training_inputs is made visible.
function Training_inputs_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = Training_inputs_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Weather data button
function wd_Callback(hObject, eventdata, handles)
    
    h=waitbar(0,'Loading data...');
    st='Loading weather data...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    
    data_wd=load('C:\Users\utente\Desktop\PostDoc\UPenn\Buildings\DRAdvisor\GUI\weather_data_2012.mat');
    time_wd=load('C:\Users\utente\Desktop\PostDoc\UPenn\Buildings\DRAdvisor\GUI\DateTime_data_2012.mat');
    waitbar(0.33);
    data_wd=data_wd.weather_data_2012;
    time_wd=time_wd.DateTime_data_2012;
    names=['Select...' fieldnames(data_wd)'];
    set(handles.wd_menu,'String',names);
    waitbar(0.66);
    handles.data_wd=data_wd;
    handles.time_wd=time_wd;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    waitbar(1);
    close(h);

% --- Schedule data button
function sd_Callback(hObject, eventdata, handles)
    [filename pathname ]=uigetfile({'*.mat','Matlab Data Files(*.mat)';'(*.*)','All Files(*.*)'},'Select Data File');
    h=waitbar(0,'Loading data...');
    st='Loading schedule data...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    path=strcat(pathname,filename);
    data_sd=load(path);
    time_sd=load('C:\Users\utente\Desktop\PostDoc\UPenn\Buildings\DRAdvisor\GUI\DateTime_data_2012.mat');
    waitbar(0.33);
    [pathstr, fname, ext] = fileparts(filename);
    data_sd=data_sd.(fname);
    time_sd=time_sd.DateTime_data_2012;
    names=['Select...' fieldnames(data_sd)'];
    set(handles.sd_menu,'String',names);
    waitbar(0.66);
    handles.data_sd=data_sd;
    handles.time_sd=time_sd;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    waitbar(1);
    close(h);
    
% --- Building data button
function bd_Callback(hObject, eventdata, handles)
    [filename pathname ]=uigetfile({'*.mat','Matlab Data Files(*.mat)';'(*.*)','All Files(*.*)'},'Select Data File');
    h=waitbar(0,'Loading data...');
    st='Loading building data...';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    path=strcat(pathname,filename);
    data_bd=load(path);
    time_bd=load('C:\Users\utente\Desktop\PostDoc\UPenn\Buildings\DRAdvisor\GUI\DateTime_data_2012.mat');
    waitbar(0.33);
    [pathstr, fname, ext] = fileparts(filename);
    data_bd=data_bd.(fname);
    time_bd=time_bd.DateTime_data_2012;
    names=['Select...' fieldnames(data_bd)'];
    set(handles.bd_menu,'String',names);
    waitbar(0.66);
    handles.data_bd=data_bd;
    handles.time_bd=time_bd;
    guidata(hObject,handles);
    st='Done!';
    contents_console = cellstr(get(handles.console,'String'));
    set(handles.console,'String',[contents_console;st]);
    waitbar(1);
    close(h);
  
% --- Weather data menu
function wd_menu_Callback(hObject, eventdata, handles)
    contents_wd = cellstr(get(hObject,'String'));
    element_wd = contents_wd{get(hObject,'Value')};
    handles.element_wd=element_wd;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function wd_menu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
% --- Schedule data menu
function sd_menu_Callback(hObject, eventdata, handles)
    contents_sd = cellstr(get(hObject,'String'));
    element_sd = contents_sd{get(hObject,'Value')};
    handles.element_sd=element_sd;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function sd_menu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Building data menu
function bd_menu_Callback(hObject, eventdata, handles)
    contents_bd = cellstr(get(hObject,'String'));
    element_bd = contents_bd{get(hObject,'Value')};
    handles.element_bd=element_bd;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function bd_menu_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Weather data view button
function view_wd_Callback(hObject, eventdata, handles)
    axes(handles.wd_plot);
    temp=handles.data_wd.(handles.element_wd);
    plot(handles.time_wd,temp(1:end-1));
    datetick('x','mmm','keepticks')

% --- Schedule data view button
function view_sd_Callback(hObject, eventdata, handles)
    axes(handles.sd_plot);
    temp=handles.data_sd.(handles.element_sd);
    plot(handles.time_sd,temp(1:end-1));
    datetick('x','mmm','keepticks')

% --- Building data view button
function view_bd_Callback(hObject, eventdata, handles)
    axes(handles.bd_plot);
    temp=handles.data_bd.(handles.element_bd);
    plot(handles.time_bd,temp(1:end-1));
    datetick('x','mmm','keepticks')

% --- Create structure button (Done)
function create_structure_Callback(hObject, eventdata, handles)
    h = waitbar(0,'Creating Proxy Variables and Data Structure');
    steps = 1000;
    for step = 1:steps
        % computations take place here
        waitbar(step / steps)
    end
    close(h)

% --- Console
function console_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function console_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in training.
function training_Callback(hObject, eventdata, handles)
% hObject    handle to training (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in testing.
function testing_Callback(hObject, eventdata, handles)
% hObject    handle to testing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
