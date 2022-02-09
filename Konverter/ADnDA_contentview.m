function varargout = ADnDA_contentview(varargin)
% ADNDA_CONTENTVIEW MATLAB code for ADnDA_contentview.fig
%      ADNDA_CONTENTVIEW, by itself, creates a new ADNDA_CONTENTVIEW or raises the existing
%      singleton*.
%
%      H = ADNDA_CONTENTVIEW returns the handle to a new ADNDA_CONTENTVIEW or the handle to
%      the existing singleton*.
%
%      ADNDA_CONTENTVIEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADNDA_CONTENTVIEW.M with the given input arguments.
%
%      ADNDA_CONTENTVIEW('Property','Value',...) creates a new ADNDA_CONTENTVIEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ADnDA_contentview_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ADnDA_contentview_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ADnDA_contentview

% Last Modified by GUIDE v2.5 12-Jun-2017 10:38:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ADnDA_contentview_OpeningFcn, ...
                   'gui_OutputFcn',  @ADnDA_contentview_OutputFcn, ...
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


% --- Executes just before ADnDA_contentview is made visible.
function ADnDA_contentview_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ADnDA_contentview (see VARARGIN)

% Choose default command line output for ADnDA_contentview
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ADnDA_contentview wait for user response (see UIRESUME)
% uiwait(handles.figure1);
Initialize(hObject, handles)

%setMainHandles(catstruct(Handles, handles));
function Initialize(hObject, handles)
im1 = imread('adca.png');
set(hObject,'CurrentAxes',handles.axes1);
image(im1);
box off;
set(gca,'xcolor',get(gcf,'color'));
set(gca,'xtick',[]);
set(gca,'ycolor',get(gcf,'color'));
set(gca,'ytick',[]);

im2 = imread('daca.png');
set(hObject,'CurrentAxes',handles.axes2);
image(im2);
box off;
set(gca,'xcolor',get(gcf,'color'));
set(gca,'xtick',[]);
set(gca,'ycolor',get(gcf,'color'));
set(gca,'ytick',[]);

colordef black

set(handles.uipanel1,'Units','normalized')
set(handles.uipanel2,'Units','normalized')

set(handles.axes1,'Units','normalized')
set(handles.axes2,'Units','normalized')
set(handles.axes4,'Units','normalized')

set(handles.text2,'Units','normalized')
set(handles.text3,'Units','normalized')
set(handles.text4,'Units','normalized')
set(handles.text5,'Units','normalized')
set(handles.text6,'Units','normalized')
set(handles.text8,'Units','normalized')
set(handles.text10,'Units','normalized')
set(handles.text12,'Units','normalized')
set(handles.text13,'Units','normalized')
set(handles.text14,'Units','normalized')
set(handles.text15,'Units','normalized')
set(handles.text17,'Units','normalized')
set(handles.text18,'Units','normalized')
set(handles.text19,'Units','normalized')
set(handles.text20,'Units','normalized')
set(handles.text21,'Units','normalized')
set(handles.text22,'Units','normalized')
set(handles.text23,'Units','normalized')
set(handles.text24,'Units','normalized')
set(handles.text25,'Units','normalized')
set(handles.text26,'Units','normalized')
set(handles.text27,'Units','normalized')
set(handles.text28,'Units','normalized')
set(handles.text29,'Units','normalized')
set(handles.text30,'Units','normalized')
set(handles.text31,'Units','normalized')
set(handles.text32,'Units','normalized')
set(handles.text33,'Units','normalized')
set(handles.text34,'Units','normalized')
set(handles.text35,'Units','normalized')
set(handles.text36,'Units','normalized')
set(handles.text43,'Units','normalized')
set(handles.text44,'Units','normalized')
set(handles.text41,'Units','normalized')
set(handles.text42,'Units','normalized')
set(handles.text43,'Units','normalized')
set(handles.text44,'Units','normalized')

set(handles.edit1,'Units','normalized')
set(handles.edit5,'Units','normalized')
set(handles.edit6,'Units','normalized')
set(handles.edit7,'Units','normalized')
set(handles.edit8,'Units','normalized')
set(handles.edit9,'Units','normalized')
set(handles.edit10,'Units','normalized')
set(handles.edit11,'Units','normalized')
set(handles.edit12,'Units','normalized')

set(handles.pushbutton1,'Units','normalized')
set(handles.pushbutton2,'Units','normalized')



% --- Outputs from this function are returned to the command line.
function varargout = ADnDA_contentview_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

i=str2double(get(handles.edit1,'string'));

  if (i>5.00) || (i<0.00)
    errordlg('Input Hanya Antara 0.00 sampai dengan 5.00','kesalahan');
    set(handles.text5,'string','0');
    set(handles.text8,'string','0');
    set(handles.text13,'string','0');
    set(handles.axes4,'');
  end
  
s=0.0195;
k=i/s;
l=round(k);
m=(l*s)+(s/2);

if (i>4.98)
      l=l-1;
      m=4.98225;
  end

set(handles.text5,'string',m)
set(handles.text8,'string',l)
set(handles.text13,'string',dec2bin(l,8))


w=str2num(get(handles.text8,'string'));
bitrate = 1;
z = reshape( (dec2bin(w,8) - '0').', 1, [] );
axes(handles.axes4)
       hold off;
        n=1;
        z(9)=1;
        while n<=8;
            t=n-1:0.001:n;
        if z(n) == 0
            if z(n+1)==0  
                y=-(t<n)-(t==n);
            else
                y=-(t<n)+(t==n);
            end
            d=plot(t,y,'y');title('Output Dalam POLAR NRZ');grid on
            set(d,'LineWidth',2.5);
            hold on;
            axis([0 8 -1.5 1.5]);
        else
            if z(n+1)==0
                y=(t<n)-1*(t==n);
            else
                y=(t<n)+1*(t==n);
            end
            d=plot(t,y,'y');title('Output Dalam POLAR NRZ');grid on;
            set(d,'LineWidth',2.5);
            hold on;
            axis([0 8 -1.5 1.5]);
        end
        n=n+1;
        end
        

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a =str2double(get(handles.edit5,'string'));
b =str2double(get(handles.edit6,'string'));
c =str2double(get(handles.edit7,'string'));
d =str2double(get(handles.edit8,'string'));
e =str2double(get(handles.edit9,'string'));
f =str2double(get(handles.edit10,'string'));
g =str2double(get(handles.edit11,'string'));
h =str2double(get(handles.edit12,'string'));

r1=4.7;
x=5/r1;
a1=a/2; b1=b/4; c1=c/8; d1=d/16; e1=e/32; f1=f/64; g1=g/128; h1=h/256;
y=a1+b1+c1+d1+e1+f1+g1+h1;

j=x*y;
k=j*r1;
set(handles.text14,'string',j);
set(handles.text15,'string',k);

s=0.0195;
l=k/s;

m=round(l);
n=(m*s)+(s/2);

set(handles.text37,'string',n)
set(handles.text44,'string',m)

% ====== pesan error ===

if (a~=1)&&(a~=0)
    set(handles.text14,'string','0');
    set(handles.text15,'string','0');
    set(handles.text37,'string','0');
    set(handles.text40,'string','0');
    errordlg('Input Hanya Antara 0 atau 1','kesalahan');
end
if (b~=1)&&(b~=0)
    set(handles.text14,'string','0');
    set(handles.text15,'string','0');
    set(handles.text37,'string','0');
    set(handles.text40,'string','0');
    errordlg('Input Hanya Antara 0 atau 1','kesalahan');
end
if (c~=1)&&(c~=0)
    set(handles.text14,'string','0');
    set(handles.text15,'string','0');
    set(handles.text37,'string','0');
    set(handles.text40,'string','0');
    errordlg('Input Hanya Antara 0 atau 1','kesalahan');
end
if (d~=1)&&(d~=0)
    set(handles.text14,'string','0');
    set(handles.text15,'string','0');
    set(handles.text37,'string','0');
    set(handles.text40,'string','0');
    errordlg('Input Hanya Antara 0 atau 1','kesalahan');
end
if (e~=1)&&(e~=0)
    set(handles.text14,'string','0');
    set(handles.text15,'string','0');
    set(handles.text37,'string','0');
    set(handles.text40,'string','0');
    errordlg('Input Hanya Antara 0 atau 1','kesalahan');
end
if (f~=1)&&(f~=0)
    set(handles.text14,'string','0');
    set(handles.text15,'string','0');
    set(handles.text37,'string','0');
    set(handles.text40,'string','0');
    errordlg('Input Hanya Antara 0 atau 1','kesalahan');
end
if (g~=1)&&(g~=0)
    set(handles.text14,'string','0');
    set(handles.text15,'string','0');
    set(handles.text37,'string','0');
    set(handles.text40,'string','0');
    errordlg('Input Hanya Antara 0 atau 1','kesalahan');
end
if (h~=1)&&(h~=0)
    set(handles.text14,'string','0');
    set(handles.text15,'string','0');
    set(handles.text37,'string','0');
    set(handles.text40,'string','0');
    errordlg('Input Hanya Antara 0 atau 1','kesalahan');
end
