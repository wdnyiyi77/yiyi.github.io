function varargout = keshi(varargin)
% KESHI MATLAB code for keshi.fig
%      KESHI, by itself, creates a new KESHI or raises the existing
%      singleton*.
%
%      H = KESHI returns the handle to a new KESHI or the handle to
%      the existing singleton*.
%
%      KESHI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KESHI.M with the given input arguments.
%
%      KESHI('Property','Value',...) creates a new KESHI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before keshi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to keshi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help keshi

% Last Modified by GUIDE v2.5 21-Feb-2020 17:14:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @keshi_OpeningFcn, ...
                   'gui_OutputFcn',  @keshi_OutputFcn, ...
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


% --- Executes just before keshi is made visible.
function keshi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to keshi (see VARARGIN)

% Choose default command line output for keshi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes keshi wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global cishu record
cishu=0;
record=[];


% --- Outputs from this function are returned to the command line.
function varargout = keshi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function biaoti_Callback(hObject, eventdata, handles)
% hObject    handle to biaoti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of biaoti as text
%        str2double(get(hObject,'String')) returns contents of biaoti as a double


% --- Executes during object creation, after setting all properties.
function biaoti_CreateFcn(hObject, eventdata, handles)
% hObject    handle to biaoti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xuhao_Callback(hObject, eventdata, handles)
% hObject    handle to xuhao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xuhao as text
%        str2double(get(hObject,'String')) returns contents of xuhao as a double


% --- Executes during object creation, after setting all properties.
function xuhao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xuhao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in keshi.
function keshi_Callback(hObject, eventdata, handles)
% hObject    handle to keshi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns keshi contents as cell array
%        contents{get(hObject,'Value')} returns selected item from keshi


% --- Executes during object creation, after setting all properties.
function keshi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to keshi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.cal=uicalendar('DestinationUI',{handles.riqi,'string'},'OutputDateStyle',3);
waitfor(handles.cal);
data=str2num(handles.riqi.String);
temp=datevec(data);
riqi=[num2str(temp(1)),'年',num2str(temp(2)),'月',num2str(temp(3)),'日'];
handles.riqi.String=riqi;




function riqi_Callback(hObject, eventdata, handles)
% hObject    handle to riqi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of riqi as text
%        str2double(get(hObject,'String')) returns contents of riqi as a double


% --- Executes during object creation, after setting all properties.
function riqi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to riqi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in banxing.
function banxing_Callback(hObject, eventdata, handles)
% hObject    handle to banxing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns banxing contents as cell array
%        contents{get(hObject,'Value')} returns selected item from banxing


% --- Executes during object creation, after setting all properties.
function banxing_CreateFcn(hObject, eventdata, handles)
% hObject    handle to banxing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function shijan_Callback(hObject, eventdata, handles)
% hObject    handle to shijan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of shijan as text
%        str2double(get(hObject,'String')) returns contents of shijan as a double


% --- Executes during object creation, after setting all properties.
function shijan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shijan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in nianji.
function nianji_Callback(hObject, eventdata, handles)
% hObject    handle to nianji (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nianji contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nianji


% --- Executes during object creation, after setting all properties.
function nianji_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nianji (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xingming_Callback(hObject, eventdata, handles)
% hObject    handle to xingming (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xingming as text
%        str2double(get(hObject,'String')) returns contents of xingming as a double


% --- Executes during object creation, after setting all properties.
function xingming_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xingming (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beizhu_Callback(hObject, eventdata, handles)
% hObject    handle to beizhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beizhu as text
%        str2double(get(hObject,'String')) returns contents of beizhu as a double


% --- Executes during object creation, after setting all properties.
function beizhu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beizhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tianjia.
function tianjia_Callback(hObject, eventdata, handles)
% hObject    handle to tianjia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cishu record t
cishu=cishu+1;
%%标题
biaoti=handles.biaoti.String;
if isempty(biaoti)
    warndlg('标题为空');
end
%%序号
xuhao=cishu;
handles.xuhao.String=xuhao;
%%课时
switch handles.keshi.Value
    case 1
        keshi=1.0;
    case 2
        keshi=2.0;
    case 3
        keshi=3.0;
    case 4
        keshi=4.0;
        case 5
        keshi=5.0;      
end
riqi=handles.riqi.String;
switch handles.banxing.Value
    case 1
        banxing='一对一';
    case 2
        banxing='一对二';
    case 3
        banxing='一对三';
    case 4
        banxing='小班上课';
     case 5
       banxing='大班上课';   
end
%%姓名
xingming=handles.xingming.String;
%%备注
beizhu=handles.beizhu.String;
%%时间
time=handles.time.String;
%%级别
switch handles.jibie.Value
    case 1
       jibie='一对一';
    case 2
       jibie='一对二';
    case 3
        jibie='一对三';  
end
record=[record;{xuhao,keshi,riqi,time,jibie,beizhu,xingming,banxing}];
%%添加
if handles.xianshi.Value==1
    t.Data=record;
end


% --- Executes on button press in shanchu.
function shanchu_Callback(hObject, eventdata, handles)
% hObject    handle to shanchu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t record cishu
if handles.shanchu.Value==1
record(end,:)=[];
cishu=cishu-1;
handles.xuhao.String=cishu;
    t.Data=record;
end


% --- Executes on button press in shanchu.
function daochu_Callback(hObject, eventdata, handles)
% hObject    handle to shanchu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global record 
[filename,pathname]=uipufile({'*.xlsx','Excle 文档(*.xlsx)'},'另存为')
name=[pathname,filename];
h=waithar(0,'存储中');
e=actxserver('Excle.Application');
if exist(name,'file')
    Workbook=e.Workbook.Open(name);
else
    Workbook=e.Workbook.Add;
    Workbook.SaveAs(name);
    end
e.Visible=1;


% --- Executes on button press in daochu.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to daochu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in xianshi.
function xianshi_Callback(hObject, eventdata, handles)
% hObject    handle to xianshi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of xianshi
global record f t
if handles.xianshi.Value==1
    f=figure;
    f.Position=[300 100 800 500];
    f.Name='显示';
    t=uitable(f);
    t.Position=[50 50 700 400];
    t.ColumnName={'序号','课时(h)','日期','时间','级别','备注','姓名','班型'};
    t.ColumnWidth={30 0 100 70 80 50 200};
    if ~isempty(record)
        t.Data=record;
    end
        
else
    close(f);
end



% --- Executes during object creation, after setting all properties.
function tianjia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tianjia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time as text
%        str2double(get(hObject,'String')) returns contents of time as a double


% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in jibie.
function jibie_Callback(hObject, eventdata, handles)
% hObject    handle to jibie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns jibie contents as cell array
%        contents{get(hObject,'Value')} returns selected item from jibie


% --- Executes during object creation, after setting all properties.
function jibie_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jibie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
