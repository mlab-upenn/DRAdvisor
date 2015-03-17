function varargout = DRBaseline(varargin)
% DRBASELINE MATLAB code for DRBaseline.fig
%      DRBASELINE, by itself, creates a new DRBASELINE or raises the existing
%      singleton*.
%
%      H = DRBASELINE returns the handle to a new DRBASELINE or the handle to
%      the existing singleton*.
%
%      DRBASELINE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DRBASELINE.M with the given input arguments.
%
%      DRBASELINE('Property','Value',...) creates a new DRBASELINE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DRBaseline_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DRBaseline_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DRBaseline

% Last Modified by GUIDE v2.5 17-Mar-2015 00:40:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DRBaseline_OpeningFcn, ...
                   'gui_OutputFcn',  @DRBaseline_OutputFcn, ...
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


% --- Executes just before DRBaseline is made visible.
function DRBaseline_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DRBaseline (see VARARGIN)

% Choose default command line output for DRBaseline
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DRBaseline wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DRBaseline_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in dre_w.
function dre_w_Callback(hObject, eventdata, handles)
% hObject    handle to dre_w (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dre_w


% --- Executes on button press in dre_ws.
function dre_ws_Callback(hObject, eventdata, handles)
% hObject    handle to dre_ws (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dre_ws



function dre_dm_Callback(hObject, eventdata, handles)
% hObject    handle to dre_dm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dre_dm as text
%        str2double(get(hObject,'String')) returns contents of dre_dm as a double


% --- Executes during object creation, after setting all properties.
function dre_dm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dre_dm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dre_dd_Callback(hObject, eventdata, handles)
% hObject    handle to dre_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dre_dd as text
%        str2double(get(hObject,'String')) returns contents of dre_dd as a double


% --- Executes during object creation, after setting all properties.
function dre_dd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dre_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dre_dy_Callback(hObject, eventdata, handles)
% hObject    handle to dre_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dre_dy as text
%        str2double(get(hObject,'String')) returns contents of dre_dy as a double


% --- Executes during object creation, after setting all properties.
function dre_dy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dre_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in dre_shm.
function dre_shm_Callback(hObject, eventdata, handles)
% hObject    handle to dre_shm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns dre_shm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dre_shm


% --- Executes during object creation, after setting all properties.
function dre_shm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dre_shm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in dre_ehm.
function dre_ehm_Callback(hObject, eventdata, handles)
% hObject    handle to dre_ehm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns dre_ehm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dre_ehm


% --- Executes during object creation, after setting all properties.
function dre_ehm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dre_ehm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dre_predict.
function dre_predict_Callback(hObject, eventdata, handles)
% hObject    handle to dre_predict (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function ce_box_Callback(hObject, eventdata, handles)
% hObject    handle to ce_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ce_box as text
%        str2double(get(hObject,'String')) returns contents of ce_box as a double


% --- Executes during object creation, after setting all properties.
function ce_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ce_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ce_load.
function ce_load_Callback(hObject, eventdata, handles)
% hObject    handle to ce_load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
