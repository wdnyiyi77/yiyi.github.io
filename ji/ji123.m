function varargout = ji123(varargin)
% JI123 MATLAB code for ji123.fig
%      JI123, by itself, creates a new JI123 or raises the existing
%      singleton*.
%
%      H = JI123 returns the handle to a new JI123 or the handle to
%      the existing singleton*.
%
%      JI123('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JI123.M with the given input arguments.
%
%      JI123('Property','Value',...) creates a new JI123 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ji123_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ji123_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ji123

% Last Modified by GUIDE v2.5 19-Feb-2020 13:07:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ji123_OpeningFcn, ...
                   'gui_OutputFcn',  @ji123_OutputFcn, ...
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


% --- Executes just before ji123 is made visible.
function ji123_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ji123 (see VARARGIN)

% Choose default command line output for ji123
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ji123 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ji123_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btn.


function txtResult_Callback(hObject, eventdata, handles)
% hObject    handle to txtResult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtResult as text
%        str2double(get(hObject,'String')) returns contents of txtResult as a double


% --- Executes during object creation, after setting all properties.
function txtResult_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtResult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn.
function btn_Callback(hObject, eventdata, handles)
% hObject    handle to btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'1');
set(handles.txtResult,'String',temp);


% --- Executes on button press in btn2.
function btn2_Callback(hObject, eventdata, handles)
% hObject    handle to btn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'2');
set(handles.txtResult,'String',temp);


% --- Executes on button press in btn3.
function btn3_Callback(hObject, eventdata, handles)
% hObject    handle to btn3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'3');
set(handles.txtResult,'String',temp);


% --- Executes on button press in btn4.
function btn4_Callback(hObject, eventdata, handles)
% hObject    handle to btn4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'4');
set(handles.txtResult,'String',temp);


% --- Executes on button press in btn5.
function btn5_Callback(hObject, eventdata, handles)
% hObject    handle to btn5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'5');
set(handles.txtResult,'String',temp);

% --- Executes on button press in btn6.
function btn6_Callback(hObject, eventdata, handles)
% hObject    handle to btn6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

temp=get(handles.txtResult,'string');
temp=strcat(temp,'6');
set(handles.txtResult,'String',temp);
% --- Executes on button press in btn7.
function btn7_Callback(hObject, eventdata, handles)
% hObject    handle to btn7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'7');
set(handles.txtResult,'String',temp);

% --- Executes on button press in btn8.
function btn8_Callback(hObject, eventdata, handles)
% hObject    handle to btn8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'8');
set(handles.txtResult,'String',temp);

% --- Executes on button press in btn9.
function btn9_Callback(hObject, eventdata, handles)
% hObject    handle to btn9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'9');
set(handles.txtResult,'String',temp);


% --- Executes on button press in btnClear.
function btnClear_Callback(hObject, eventdata, handles)
% hObject    handle to btnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txtResult,'String','');


% --- Executes on button press in btn0.
function btn0_Callback(hObject, eventdata, handles)
% hObject    handle to btn0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'0');
set(handles.txtResult,'String',temp);

% --- Executes on button press in btnEquel.
function btnEquel_Callback(hObject, eventdata, handles)
% hObject    handle to btnEquel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
equation=get(handles.txtResult,'String');
result=eval(equation);
set(handles.txtResult,'String',result);



% --- Executes on button press in btnPlus.
function btnPlus_Callback(hObject, eventdata, handles)
% hObject    handle to btnPlus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'+');
set(handles.txtResult,'String',temp);

% --- Executes on button press in btnMinus.
function btnMinus_Callback(hObject, eventdata, handles)
% hObject    handle to btnMinus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'-');
set(handles.txtResult,'String',temp);

% --- Executes on button press in btnMultiplic.
function btnMultiplic_Callback(hObject, eventdata, handles)
% hObject    handle to btnMultiplic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'*');
set(handles.txtResult,'String',temp);

% --- Executes on button press in btmDivide.
function btmDivide_Callback(hObject, eventdata, handles)
% hObject    handle to btmDivide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
temp=strcat(temp,'/');
set(handles.txtResult,'String',temp);


% --- Executes on button press in btnBack.
function btnBack_Callback(hObject, eventdata, handles)
% hObject    handle to btnBack (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.txtResult,'string');
a=length(temp);
if a==1
    set(handles.txtResult,'String','');
else
    for i=1:(a-1)
    A(i)=temp(i);
end
end
set(handles.txtResult,'String',A);


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
