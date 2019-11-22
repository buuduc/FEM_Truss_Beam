function varargout = nhap_bound(varargin)
% NHAP_BOUND MATLAB code for nhap_bound.fig
%      NHAP_BOUND, by itself, creates a new NHAP_BOUND or raises the existing
%      singleton*.
%
%      H = NHAP_BOUND returns the handle to a new NHAP_BOUND or the handle to
%      the existing singleton*.
%
%      NHAP_BOUND('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NHAP_BOUND.M with the given input arguments.
%
%      NHAP_BOUND('Property','Value',...) creates a new NHAP_BOUND or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nhap_bound_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nhap_bound_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help nhap_bound

% Last Modified by GUIDE v2.5 07-Nov-2019 14:54:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @nhap_bound_OpeningFcn, ...
                   'gui_OutputFcn',  @nhap_bound_OutputFcn, ...
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


% --- Executes just before nhap_bound is made visible.
function nhap_bound_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nhap_bound (see VARARGIN)

% Choose default command line output for nhap_bound
handles.output = hObject;
handles.check=1
handles.direct='fx'
set(handles.checkbox1,'value',1)
set(handles.uipanel1,'visible','off')
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes nhap_bound wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nhap_bound_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
handles.f=str2double(get(hObject,'String'))
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
handles.y=str2double(get(hObject,'String'))
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
handles.n=str2double(get(hObject,'String'))
guidata(hObject, handles);



% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ax
axes(ax)
n=str2double(get(handles.edit3,'String'))
nutchinh=get(handles.checkbox1,'value')
ux=get(handles.radiobutton4,'value')
uy=get(handles.radiobutton6,'value')
m=get(handles.radiobutton5,'value')
switch handles.check
    case 1
        switch nutchinh
            case 1
            boundary_condition(n,'all')

            case 0
                if ux==1
                    boundary_condition(n,'ux')
                end
                if uy==1
                    boundary_condition(n,'uy')
                end
                if m==1
                    boundary_condition(n,'m')
                end

        end
     case 0
        switch nutchinh
            case 1
            delbound(n,'all')

            case 0
                if ux==1
                    delbound(n,'ux')
                end
                if uy==1
                    delbound(n,'uy')
                end
                if m==1
                    delbound(n,'m')
                end

        end
end
figure(handles.figure1)

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% delete(handles.edit3)
global ax
axes(ax)
n=str2double(get(handles.edit3,'String'))
nutchinh=get(handles.checkbox1,'value')
ux=get(handles.radiobutton4,'value')
uy=get(handles.radiobutton6,'value')
m=get(handles.radiobutton5,'value')
switch handles.check
    case 1
        switch nutchinh
            case 1
            boundary_condition(n,'all')

            case 0
                if ux==1
                    boundary_condition(n,'ux')
                end
                if uy==1
                    boundary_condition(n,'uy')
                end
                if m==1
                    boundary_condition(n,'m')
                end

        end
     case 0
        switch nutchinh
            case 1
            delbound(n,'all')

            case 0
                if ux==1
                    delbound(n,'ux')
                end
                if uy==1
                    delbound(n,'uy')
                end
                if m==1
                    delbound(n,'m')
                end

        end
end
figure(handles.figure1)

close(handles.figure1)

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if hObject==handles.radiobutton3
    handles.check=1
elseif hObject==handles.radiobutton1
   handles.check=0
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function uibuttongroup1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes when selected object is changed in uibuttongroup3.
function uibuttongroup3_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup3 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if hObject==handles.radiobutton4
    handles.direct='fx'
elseif hObject==handles.radiobutton6
   handles.direct='fy'
   elseif hObject==handles.radiobutton5
   handles.direct='m'
end
guidata(hObject, handles);


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.checkbox1,'value');
if a==1
    set(handles.uipanel1,'visible','off')
else
    set(handles.uipanel1,'visible','on')
end
% Hint: get(hObject,'Value') returns toggle state of checkbox1
