function varargout = truss(varargin)
% TRUSS MATLAB code for truss.fig
%      TRUSS, by itself, creates a new TRUSS or raises the existing
%      singleton*.
%
%      H = TRUSS returns the handle to a new TRUSS or the handle to
%      the existing singleton*.
%
%      TRUSS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRUSS.M with the given input arguments.
%
%      TRUSS('Property','Value',...) creates a new TRUSS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before truss_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to truss_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help truss

% Last Modified by GUIDE v2.5 07-Nov-2019 16:45:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @truss_OpeningFcn, ...
                   'gui_OutputFcn',  @truss_OutputFcn, ...
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


% --- Executes just before truss is made visible.
function truss_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to truss (see VARARGIN)

% Choose default command line output for truss
handles.output = hObject;
handles.nut=[];
handles.phan_tu=[];
%handles.F=[];
handles.rang_buoc=[];
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes truss wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = truss_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function hoang_do_Callback(hObject, eventdata, handles)
% hObject    handle to hoang_do (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hoang_do as text
%        str2double(get(hObject,'String')) returns contents of hoang_do as a double


% --- Executes during object creation, after setting all properties.
function hoang_do_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hoang_do (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tung_do_Callback(hObject, eventdata, handles)
% hObject    handle to tung_do (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tung_do as text
%        str2double(get(hObject,'String')) returns contents of tung_do as a double


% --- Executes during object creation, after setting all properties.
function tung_do_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tung_do (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nut_dau_Callback(hObject, eventdata, handles)
% hObject    handle to nut_dau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nut_dau as text
%        str2double(get(hObject,'String')) returns contents of nut_dau as a double


% --- Executes during object creation, after setting all properties.
function nut_dau_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nut_dau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nut_cuoi_Callback(hObject, eventdata, handles)
% hObject    handle to nut_cuoi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nut_cuoi as text
%        str2double(get(hObject,'String')) returns contents of nut_cuoi as a double


% --- Executes during object creation, after setting all properties.
function nut_cuoi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nut_cuoi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add_nut.
function add_nut_Callback(hObject, eventdata, handles)
% hObject    handle to add_nut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hold on
axis equal
a=str2double(get(handles.hoang_do,'string'));
b=str2double(get(handles.tung_do,'string'));
handles.nut=[handles.nut;[a b]];
guidata(hObject,handles);
for i=1:size(handles.nut,1)%sap thu tu nu tu 1 den 4
    plot(handles.nut(i,1),handles.nut(i,2),'MarkerSize',40,'Marker','.','LineStyle','none')%ve tung nut
%     text('Parent','FontSize',18,'String',num2str(i),...
%     'Position',[handles.nut(i,1)+0.05 handles.nut(i,2)]);%danh so nut
      text(handles.nut(i,1)+0.1,handles.nut(i,2)-0.2,num2str(i),'BackgroundColor',[0 0.9 0.9],'EdgeColor',[0 0 0.9],...
    'FontSize',15,'Color',[0.9 0.1 0],'LineWidth',5);
    handles.F=zeros(2*i,1);
    handles.Ktt=zeros(2*i,2*i);
end
guidata(hObject,handles);
% --- Executes on button press in add_phan_tu.
function add_phan_tu_Callback(hObject, eventdata, handles)
% hObject    handle to add_phan_tu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axis equal
a=str2double(get(handles.nut_dau,'string'));
b=str2double(get(handles.nut_cuoi,'string'));
handles.phan_tu=[handles.phan_tu;[a b]];
guidata(hObject,handles);
for i = 1:size(handles.phan_tu,1)
    nuti = handles.phan_tu(i,1);
    nutj = handles.phan_tu(i,2);
    xi=handles.nut(nuti,1);
    xj=handles.nut(nutj,1);
    yi=handles.nut(nuti,2);
    yj=handles.nut(nutj,2);
    plot([xi xj],[yi yj],'-b','linewidth',4)
    if (xj-xi)<=0 && (yj-yi)>=0 || (xj-xi)>=0 && (yj-yi)<=0 
        text((xi+xj)/2+0.05,(yi+yj)/2+0.05,num2str(i),'LineStyle','none',...
        'EdgeColor',[0 0 0],...
        'FontSize',12,...
        'Color',[0 0 0 ]);% chuyen tu dang so sang dang chuoi
    elseif (xj-xi)<0 && (yj-yi)<0 || (xj-xi)>0 && (yj-yi)>0 
        text((xi+xj)/2-0.05,(yi+yj)/2+0.05,num2str(i),'LineStyle','none',...
        'EdgeColor',[0 0 0],...
        'FontSize',12,...
        'Color',[0 0 0]);% chuyen tu dang so sang dang chuoi
    end
end
guidata(hObject,handles);



% --- Executes during object creation, after setting all properties.
function text4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add_rang_buoc.
function add_rang_buoc_Callback(hObject, eventdata, handles)
% hObject    handle to add_rang_buoc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axis equal
a=str2double(get(handles.edit7,'string'));
handles.rang_buoc=[handles.rang_buoc a];
for i=1:length(handles.rang_buoc)
    m=mod(handles.rang_buoc(i),2);
    if m==1
        x=handles.nut((handles.rang_buoc(i)+1)/2,1);
        y=handles.nut((handles.rang_buoc(i)+1)/2,2);
        plot(x-0.15,y,'>','markersize',30,'markerfacecolor','y')
    else
        x=handles.nut(handles.rang_buoc(i)/2,1);
        y=handles.nut(handles.rang_buoc(i)/2,2);
        plot(x,y+0.15,'v','markersize',30,'markerfacecolor','y')
    end
end
guidata(hObject,handles);


function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add_luc.
function add_luc_Callback(hObject, eventdata, handles)
% hObject    handle to add_luc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axis equal
a=str2double(get(handles.edit8,'string'));
b=str2double(get(handles.edit9,'string'));
handles.F(a)=b;
k=mod(a,2);
    if (k==1 && b~=0)
        if b<0
            quiver(handles.nut((a+1)/2,1),handles.nut((a+1)/2,2),-0.5,0)
        elseif b>0
            quiver(handles.nut((a+1)/2,1),handles.nut((a+1)/2,2),0.5,0)
        end
    elseif (k==0 && b~=0)
        if b<0
            quiver(handles.nut(a/2,1),handles.nut(a/2,2),0,-0.5)
        elseif b>0
            quiver(handles.nut(a/2,1),handles.nut(a/2,2),0,0.5)
        end
    end
guidata(hObject,handles);



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.edit10,'string'));
c=str2double(get(handles.edit13,'string'));
handles.E=a;
handles.A=c;
guidata(hObject,handles);



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add_luc_doc_truc.
function add_luc_doc_truc_Callback(hObject, eventdata, handles)
% hObject    handle to add_luc_doc_truc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.edit14,'string'));
b=str2double(get(handles.edit15,'string'));
nuti = handles.phan_tu(a,1);
nutj = handles.phan_tu(a,2);
xi=handles.nut(nuti,1);
xj=handles.nut(nutj,1);
yi=handles.nut(nuti,2);
yj=handles.nut(nutj,2);
plot([xi xj],[yi yj],'-m','linewidth',4)
mt_bool=[handles.phan_tu(a,1)*2-1 handles.phan_tu(a,1)*2 handles.phan_tu(a,2)*2-1 handles.phan_tu(a,2)*2];
L=sqrt((xj-xi)^2+(yj-yi)^2);%chieu dai phan tu
S=(yj-yi)/L;%sin cua goc phan tu hop vs truc x
C=(xj-xi)/L;
handles.F(mt_bool')=handles.F(mt_bool')+(b*L/2)*[C S C S]';
%disp(handles.F)
guidata(hObject,handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
for i = 1:size(handles.phan_tu,1)
nuti = handles.phan_tu(i,1);
nutj = handles.phan_tu(i,2);
xi=handles.nut(nuti,1);
xj=handles.nut(nutj,1);
yi=handles.nut(nuti,2);
yj=handles.nut(nutj,2);
L=sqrt((xj-xi)^2+(yj-yi)^2);%chieu dai phan tu
S=(yj-yi)/L;%sin cua goc phan tu hop vs truc x
C=(xj-xi)/L;%cos cua goc phan tu hop vs truc x
Ktt_phan_tu = ((handles.E*handles.A)/L)*[C^2 C*S -C^2 -C*S;...
    C*S S^2 -C*S -S^2;...
    -C^2 -C*S C^2  C*S;...
    -C*S -S^2 C*S  S^2];
mt_bool=[handles.phan_tu(i,1)*2-1 handles.phan_tu(i,1)*2 handles.phan_tu(i,2)*2-1 handles.phan_tu(i,2)*2];
handles.Ktt(mt_bool,mt_bool)=handles.Ktt(mt_bool,mt_bool)+Ktt_phan_tu;
end
%Ap dat dk bien
Ktt_chuyen_vi=handles.Ktt;
for i = 1:length(handles.rang_buoc);
    for j=1:size(handles.Ktt,1)
        Ktt_chuyen_vi(handles.rang_buoc(i),j)=0;
        Ktt_chuyen_vi(j,handles.rang_buoc(i))=0;
        Ktt_chuyen_vi(handles.rang_buoc(i),handles.rang_buoc(i))=1;
    end
end
F_tinh_chuyen_vi=handles.F;
for i=1:size(handles.rang_buoc,2)
    F_tinh_chuyen_vi(handles.rang_buoc(i))=0;
end
handles.Utt=inv(Ktt_chuyen_vi)*F_tinh_chuyen_vi;
%disp(handles.Ktt);
%disp(handles.Utt)
%Phan luc
handles.Ntt=handles.Ktt*handles.Utt;
handles.Phan_luc=handles.Ntt-handles.F;
handles.N=zeros(size(handles.phan_tu,1),1);
for i= 1:1:size(handles.N,1)
    nuti = handles.phan_tu(i,1);
    nutj = handles.phan_tu(i,2);
    xi=handles.nut(nuti,1);
    xj=handles.nut(nutj,1);
    yi=handles.nut(nuti,2);
    yj=handles.nut(nutj,2);
    mt_bool_N=[handles.phan_tu(i,1)*2-1;handles.phan_tu(i,1)*2;handles.phan_tu(i,2)*2-1;handles.phan_tu(i,2)*2];
    L=sqrt((xj-xi)^2+(yj-yi)^2);%chieu dai phan tu
    S=(yj-yi)/L;%sin cua goc phan tu hop vs truc x
    C=(xj-xi)/L;%cos cua goc phan tu hop vs truc 
    Se=(handles.E*handles.A/L)*[-C -S C S];
    qe=handles.Utt(mt_bool_N);
    handles.N(i)=Se*qe;
    %handles.N(i)=round(handles.N(i),3);
end
guidata(hObject,handles);


% --- Executes on button press in chuyen_vi_tong.
function chuyen_vi_tong_Callback(hObject, eventdata, handles)
% hObject    handle to chuyen_vi_tong (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ten_cot={'Bat tu do','Chuyen vi'};
x=1:1:size(handles.Utt,1);
data=[x' handles.Utt];
set(handles.uitable1,'ColumnName',ten_cot,'data',data)


% --- Executes on button press in plot_chuyen_vi.
function plot_chuyen_vi_Callback(hObject, eventdata, handles)
% hObject    handle to plot_chuyen_vi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla
hold on
for i=1:length(handles.rang_buoc)
    hold on
    m=mod(handles.rang_buoc(i),2);
    if m==1
        x=handles.nut((handles.rang_buoc(i)+1)/2,1);
        y=handles.nut((handles.rang_buoc(i)+1)/2,2);
        plot(x-0.15,y,'>','markersize',30,'markerfacecolor','y')
    else
        x=handles.nut(handles.rang_buoc(i)/2,1);
        y=handles.nut(handles.rang_buoc(i)/2,2);
        plot(x,y+0.15,'v','markersize',30,'markerfacecolor','y')
    end
end
m=abs(handles.Utt(1));
for i=1:(size(handles.Utt)-1)
    if abs(handles.Utt(i))<abs(handles.Utt(i+1))
        m=abs(handles.Utt(i+1));
    end
end
phong_to=0.25/m;
for i = 1:size(handles.phan_tu,1)
    nuti = handles.phan_tu(i,1);
    nutj = handles.phan_tu(i,2);
    xi=handles.nut(nuti,1);
    xj=handles.nut(nutj,1);
    yi=handles.nut(nuti,2);
    yj=handles.nut(nutj,2);
    plot([xi xj],[yi yj],'-b','linewidth',4)
    mt_bool=[handles.phan_tu(i,1)*2-1 handles.phan_tu(i,1)*2 handles.phan_tu(i,2)*2-1 handles.phan_tu(i,2)*2];
    Upt = handles.Utt(mt_bool);
    plot([xi xj],[yi yj],'-b','linewidth',4)
    plot([xi+Upt(1)*phong_to xj+Upt(3)*phong_to],[yi+Upt(2)*phong_to yj+Upt(4)*phong_to],'-r','linewidth',4)
end
guidata(hObject,handles);


% --- Executes on button press in Phan_luc.
function Phan_luc_Callback(hObject, eventdata, handles)
% hObject    handle to Phan_luc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
for i=1:size(handles.Phan_luc)
    handles.Phan_luc(i)=round(handles.Phan_luc(i),3);
end
ten_cot={'Bat tu do','Phan luc'};
x=1:1:size(handles.Phan_luc,1);
data=[x' handles.Phan_luc];
set(handles.uitable2,'ColumnName',ten_cot,'data',data)



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plot_mo_hinh.
function plot_mo_hinh_Callback(hObject, eventdata, handles)
% hObject    handle to plot_mo_hinh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla
hold on
for i=1:size(handles.nut,1)%sap thu tu nu tu 1 den 4\
    plot(handles.nut(i,1),handles.nut(i,2),'MarkerSize',40,'Marker','.','LineStyle','none')%ve tung nut
%     text('Parent','FontSize',18,'String',num2str(i),...
%     'Position',[handles.nut(i,1)+0.05 handles.nut(i,2)]);%danh so nut
      text(handles.nut(i,1)+0.1,handles.nut(i,2)-0.2,num2str(i),'BackgroundColor',[0 0.9 0.9],'EdgeColor',[0 0 0.9],...
    'FontSize',15,'Color',[0.9 0.1 0],'LineWidth',5);
end
for i = 1:size(handles.phan_tu,1)
    hold on
    nuti = handles.phan_tu(i,1);
    nutj = handles.phan_tu(i,2);
    xi=handles.nut(nuti,1);
    xj=handles.nut(nutj,1);
    yi=handles.nut(nuti,2);
    yj=handles.nut(nutj,2);
    plot([xi xj],[yi yj],'-b','linewidth',4)
    if (xj-xi)<=0 && (yj-yi)>=0 || (xj-xi)>=0 && (yj-yi)<=0 
        text((xi+xj)/2+0.05,(yi+yj)/2+0.05,num2str(i),'LineStyle','none',...
        'EdgeColor',[0 0 0],...
        'FontSize',12,...
        'Color',[0 0 0 ]);% chuyen tu dang so sang dang chuoi
    elseif (xj-xi)<0 && (yj-yi)<0 || (xj-xi)>0 && (yj-yi)>0 
        text((xi+xj)/2-0.05,(yi+yj)/2+0.05,num2str(i),'LineStyle','none',...
        'EdgeColor',[0 0 0],...
        'FontSize',12,...
        'Color',[0 0 0]);% chuyen tu dang so sang dang chuoi
    end
end
for i=1:length(handles.rang_buoc)
    hold on
    m=mod(handles.rang_buoc(i),2);
    if m==1
        x=handles.nut((handles.rang_buoc(i)+1)/2,1);
        y=handles.nut((handles.rang_buoc(i)+1)/2,2);
        plot(x-0.15,y,'>','markersize',30,'markerfacecolor','y')
    else
        x=handles.nut(handles.rang_buoc(i)/2,1);
        y=handles.nut(handles.rang_buoc(i)/2,2);
        plot(x,y+0.15,'v','markersize',30,'markerfacecolor','y')
    end
end
guidata(hObject,handles);


% --- Executes on button press in noi_luc.
function noi_luc_Callback(hObject, eventdata, handles)
% hObject    handle to noi_luc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ten_cot={'Phan tu','Noi luc'};
x=1:1:size(handles.N,1);
data=[x' handles.N];
set(handles.uitable3,'ColumnName',ten_cot,'data',data)




% --- Executes on button press in plot_noi_luc.
function plot_noi_luc_Callback(hObject, eventdata, handles)
% hObject    handle to plot_noi_luc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla
xoay_90=[cos(pi/2) sin(pi/2);-sin(pi/2) cos(pi/2)];
xoay_tru_90=[cos(-pi/2) sin(-pi/2);-sin(-pi/2) cos(-pi/2)];
m=abs(handles.N(1));
for i=1:(size(handles.N)-1)
    if abs(handles.N(i))<abs(handles.N(i+1))
        m=abs(handles.N(i+1));
    end
end
for i=1:size(handles.N,1)
    nuti = handles.phan_tu(i,1);
    nutj = handles.phan_tu(i,2);
    xi=handles.nut(nuti,1);
    xj=handles.nut(nutj,1);
    yi=handles.nut(nuti,2);
    yj=handles.nut(nutj,2);
    AD=[xj-xi;yj-yi];
    %plot([xi xj],[yi yj],'-b','linewidth',4)
    if handles.N(i)>0
        OE=xoay_90*AD;
       %rectangle('Position',[xj,yj,xi+OE(1)*0.2*abs(handles.N(i))/m,yi+OE(2)*0.2*abs(handles.N(i))/m],'FaceColor',[1 0 0])
       x=[xi xj xj+OE(1)*0.2*abs(handles.N(i))/m xi+OE(1)*0.2*abs(handles.N(i))/m xi];
       y=[yi yj yj+OE(2)*0.2*abs(handles.N(i))/m yi+OE(2)*0.2*abs(handles.N(i))/m yi];
       fill(x,y,'r')
    else
        OE=xoay_tru_90*AD;
        %rectangle('Position',[xj,yj,xi+OE(1)*0.2*abs(handles.N(i))/m,yi+OE(2)*0.2*abs(handles.N(i))/m],'FaceColor',[0 1 0])
        x=[xi xj xj+OE(1)*0.2*abs(handles.N(i))/m xi+OE(1)*0.2*abs(handles.N(i))/m xi];
        y=[yi yj yj+OE(2)*0.2*abs(handles.N(i))/m yi+OE(2)*0.2*abs(handles.N(i))/m yi];
        fill(x,y,'b')
    end
end
for i=1:size(handles.phan_tu,1)
    nuti = handles.phan_tu(i,1);
    nutj = handles.phan_tu(i,2);
    xi=handles.nut(nuti,1);
    xj=handles.nut(nutj,1);
    yi=handles.nut(nuti,2);
    yj=handles.nut(nutj,2);
    AD=[xj-xi;yj-yi];
    plot([xi xj],[yi yj],'-b','linewidth',4)
    if (xj-xi)<=0 && (yj-yi)>=0 || (xj-xi)>=0 && (yj-yi)<=0 
        text((xi+xj)/2+0.05,(yi+yj)/2+0.05,num2str(i),'LineStyle','none',...
        'EdgeColor',[0 0 0],...
        'FontSize',12,...
        'Color',[0 0 0 ]);% chuyen tu dang so sang dang chuoi
    elseif (xj-xi)<0 && (yj-yi)<0 || (xj-xi)>0 && (yj-yi)>0 
        text((xi+xj)/2-0.05,(yi+yj)/2+0.05,num2str(i),'LineStyle','none',...
        'EdgeColor',[0 0 0],...
        'FontSize',12,...
        'Color',[0 0 0]);% chuyen tu dang so sang dang chuoi
    end
end
guidata(hObject,handles);
