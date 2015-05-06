function varargout = DREvaluation(varargin)
% DREVALUATION MATLAB code for DREvaluation.fig
%      DREVALUATION, by itself, creates a new DREVALUATION or raises the existing
%      singleton*.
%
%      H = DREVALUATION returns the handle to a new DREVALUATION or the handle to
%      the existing singleton*.
%
%      DREVALUATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DREVALUATION.M with the given input arguments.
%
%      DREVALUATION('Property','Value',...) creates a new DREVALUATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DREvaluation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DREvaluation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DREvaluation

% Last Modified by GUIDE v2.5 29-Apr-2015 12:14:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DREvaluation_OpeningFcn, ...
                   'gui_OutputFcn',  @DREvaluation_OutputFcn, ...
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


% --- Executes just before DREvaluation is made visible.
function DREvaluation_OpeningFcn(hObject, eventdata, handles, varargin)

% Choose default command line output for DREvaluation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = DREvaluation_OutputFcn(hObject, eventdata, handles) 

% Get default command line output from handles structure
varargout{1} = handles.output;

function drev_sn_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_sn_box_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function drev_des_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_des_box_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in drev_spec_box.
function drev_spec_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_spec_box_CreateFcn(hObject, eventdata, handles)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in drev_save_str.
function drev_save_str_Callback(hObject, eventdata, handles)

% --- Executes on selection change in drev__str_box.
function drev__str_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev__str_box_CreateFcn(hObject, eventdata, handles)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in drev__show_str.
function drev__show_str_Callback(hObject, eventdata, handles)

% --- Executes on button press in drev_del_str.
function drev_del_str_Callback(hObject, eventdata, handles)

% --- Executes on selection change in drev_sh_hh.
function drev_sh_hh_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_sh_hh_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in drev_sh_mm.
function drev_sh_mm_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_sh_mm_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in drev_eh_hh.
function drev_eh_hh_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_eh_hh_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in drev_eh_mm.
function drev_eh_mm_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_eh_mm_CreateFcn(hObject, eventdata, handles)

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function drev_val_box_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function drev_val_box_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in drev_enter.
function drev_enter_Callback(hObject, eventdata, handles)

% --- Executes on button press in drev_run.
function drev_run_Callback(hObject, eventdata, handles)


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in drev_show_sp.
function drev_show_sp_Callback(hObject, eventdata, handles)
% hObject    handle to drev_show_sp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
