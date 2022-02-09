function varargout = OsilatorRF_contentview(varargin)
% OSILATORRF_CONTENTVIEW MATLAB code for OsilatorRF_contentview.fig
%      OSILATORRF_CONTENTVIEW, by itself, creates a new OSILATORRF_CONTENTVIEW or raises the existing
%      singleton*.
%
%      H = OSILATORRF_CONTENTVIEW returns the handle to a new OSILATORRF_CONTENTVIEW or the handle to
%      the existing singleton*.
%
%      OSILATORRF_CONTENTVIEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OSILATORRF_CONTENTVIEW.M with the given input arguments.
%
%      OSILATORRF_CONTENTVIEW('Property','Value',...) creates a new OSILATORRF_CONTENTVIEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OsilatorRF_contentview_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OsilatorRF_contentview_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OsilatorRF_contentview

% Last Modified by GUIDE v2.5 28-May-2017 11:09:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OsilatorRF_contentview_OpeningFcn, ...
                   'gui_OutputFcn',  @OsilatorRF_contentview_OutputFcn, ...
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


% --- Executes just before OsilatorRF_contentview is made visible.
function OsilatorRF_contentview_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OsilatorRF_contentview (see VARARGIN)

% Choose default command line output for OsilatorRF_contentview
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OsilatorRF_contentview wait for user response (see UIRESUME)
% uiwait(handles.figure1);
Initialize(hObject, handles)

%setMainHandles(catstruct(Handles, handles));
function Initialize(hObject, handles)
im1 = imread('hartleys.png');
set(hObject,'CurrentAxes',handles.axes1);
image(im1);
box off;
set(gca,'xcolor',get(gcf,'color'));
set(gca,'xtick',[]);
set(gca,'ycolor',get(gcf,'color'));
set(gca,'ytick',[]);

im2 = imread('colpitts.png');
set(hObject,'CurrentAxes',handles.axes2);
image(im2);
box off;
set(gca,'xcolor',get(gcf,'color'));
set(gca,'xtick',[]);
set(gca,'ycolor',get(gcf,'color'));
set(gca,'ytick',[]);

set(handles.uipanel1,'Units','normalized')
set(handles.uipanel2,'Units','normalized')
set(handles.axes1,'Units','normalized')
set(handles.axes2,'Units','normalized')
set(handles.axes3,'Units','normalized')
set(handles.axes4,'Units','normalized')
set(handles.slider1,'Units','normalized')
set(handles.slider2,'Units','normalized')
set(handles.slider3,'Units','normalized')
set(handles.slider4,'Units','normalized')
set(handles.slider5,'Units','normalized')
set(handles.slider6,'Units','normalized')
set(handles.slider7,'Units','normalized')
set(handles.slider8,'Units','normalized')
set(handles.text2,'Units','normalized')
set(handles.text3,'Units','normalized')
set(handles.text10,'Units','normalized')
set(handles.text4,'Units','normalized')
set(handles.text5,'Units','normalized')
set(handles.text11,'Units','normalized')
set(handles.text6,'Units','normalized')
set(handles.text7,'Units','normalized')
set(handles.text12,'Units','normalized')
set(handles.text8,'Units','normalized')
set(handles.text9,'Units','normalized')
set(handles.text13,'Units','normalized')
set(handles.text28,'Units','normalized')
set(handles.text26,'Units','normalized')
set(handles.text30,'Units','normalized')
set(handles.text20,'Units','normalized')
set(handles.text21,'Units','normalized')
set(handles.text25,'Units','normalized')
set(handles.text18,'Units','normalized')
set(handles.text19,'Units','normalized')
set(handles.text24,'Units','normalized')
set(handles.text16,'Units','normalized')
set(handles.text17,'Units','normalized')
set(handles.text23,'Units','normalized')
set(handles.text14,'Units','normalized')
set(handles.text15,'Units','normalized')
set(handles.text22,'Units','normalized')
set(handles.text29,'Units','normalized')
set(handles.text27,'Units','normalized')
set(handles.text31,'Units','normalized')


% --- Outputs from this function are returned to the command line.
function varargout = OsilatorRF_contentview_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

l1=get(handles.slider1,'value'); % induktansi 1
l2=get(handles.slider2,'value'); % induktansi 2
c =get(handles.slider3,'value'); % kapasitansi
v =get(handles.slider4,'value'); % tegangan

handles.ejex=0:1/10000:0.05;

a=sqrt((l1*10e-5)+(l2*10e-5))*(c*10e-5);
b=2*pi*a;
f=(1/b);

set(handles.text3,'string',l1);

set(handles.text5,'string',l2);

set(handles.text7,'string',c);

set(handles.text9,'string',v);

set(handles.text26,'string',f);

v_m=v*cos(2*pi*f*handles.ejex);

axes(handles.axes3)
plot(handles.ejex,v_m,'y','linewidth',2)
xlabel('waktu (detik)')
ylabel('amplitudo')
grid on;


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

l1=get(handles.slider1,'value'); % induktansi 1
l2=get(handles.slider2,'value'); % induktansi 2
c =get(handles.slider3,'value'); % kapasitansi
v =get(handles.slider4,'value'); % tegangan

handles.ejex=0:1/10000:0.05;

a=sqrt((l1*10e-5)+(l2*10e-5))*(c*10e-5);
b=2*pi*a;
f=(1/b);

set(handles.text3,'string',l1);

set(handles.text5,'string',l2);

set(handles.text7,'string',c);

set(handles.text9,'string',v);

set(handles.text26,'string',f);

v_m=v*cos(2*pi*f*handles.ejex);

axes(handles.axes3)
plot(handles.ejex,v_m,'y','linewidth',2)
xlabel('waktu (detik)')
ylabel('amplitudo')
grid on;

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

l1=get(handles.slider1,'value'); % induktansi 1
l2=get(handles.slider2,'value'); % induktansi 2
c =get(handles.slider3,'value'); % kapasitansi
v =get(handles.slider4,'value'); % tegangan

handles.ejex=0:1/10000:0.05;

a=sqrt((l1*10e-5)+(l2*10e-5))*(c*10e-5);
b=2*pi*a;
f=(1/b);

set(handles.text3,'string',l1);

set(handles.text5,'string',l2);

set(handles.text7,'string',c);

set(handles.text9,'string',v);

set(handles.text26,'string',f);

v_m=v*cos(2*pi*f*handles.ejex);

axes(handles.axes3)
plot(handles.ejex,v_m,'y','linewidth',2)
xlabel('waktu (detik)')
ylabel('amplitudo')
grid on;

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

l1=get(handles.slider1,'value'); % induktansi 1
l2=get(handles.slider2,'value'); % induktansi 2
c =get(handles.slider3,'value'); % kapasitansi
v =get(handles.slider4,'value'); % tegangan

handles.ejex=0:1/10000:0.05;

a=sqrt((l1*10e-5)+(l2*10e-5))*(c*10e-5);
b=2*pi*a;
f=(1/b);

set(handles.text3,'string',l1);

set(handles.text5,'string',l2);

set(handles.text7,'string',c);

set(handles.text9,'string',v);

set(handles.text26,'string',f);

v_m=v*cos(2*pi*f*handles.ejex);

axes(handles.axes3)
plot(handles.ejex,v_m,'y','linewidth',2)
xlabel('waktu (detik)')
ylabel('amplitudo')
grid on;

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

c1=get(handles.slider5,'value'); % kapasitansi 1
c2=get(handles.slider6,'value'); % kapasitansi 2
l =get(handles.slider7,'value'); % induktansi
t =get(handles.slider8,'value'); % tegangan

handles.ejex=0:1/10000:0.05;


w=((c1*10e-5)*(c2*10e-5))/((c1*10e-5)+(c2*10e-5));
x=sqrt(l*w);
y=2*pi*x;
f1=(1/y);

set(handles.text15,'string',c1);

set(handles.text17,'string',c2);

set(handles.text19,'string',l);

set(handles.text21,'string',t);

set(handles.text27,'string',f1);


z=t*cos(2*pi*f1*handles.ejex); 

axes(handles.axes4)
plot(handles.ejex,z,'g','linewidth',2);
xlabel('waktu (detik)')
ylabel('amplitudo')
grid on;


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

c1=get(handles.slider5,'value'); % kapasitansi 1
c2=get(handles.slider6,'value'); % kapasitansi 2
l =get(handles.slider7,'value'); % induktansi
t =get(handles.slider8,'value'); % tegangan

handles.ejex=0:1/10000:0.05;


w=((c1*10e-5)*(c2*10e-5))/((c1*10e-5)+(c2*10e-5));
x=sqrt(l*w);
y=2*pi*x;
f1=(1/y);

set(handles.text15,'string',c1);

set(handles.text17,'string',c2);

set(handles.text19,'string',l);

set(handles.text21,'string',t);

set(handles.text27,'string',f1);


z=t*cos(2*pi*f1*handles.ejex); 

axes(handles.axes4)
plot(handles.ejex,z,'g','linewidth',2);
xlabel('waktu (detik)')
ylabel('amplitudo')
grid on;

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

c1=get(handles.slider5,'value'); % kapasitansi 1
c2=get(handles.slider6,'value'); % kapasitansi 2
l =get(handles.slider7,'value'); % induktansi
t =get(handles.slider8,'value'); % tegangan

handles.ejex=0:1/10000:0.05;


w=((c1*10e-5)*(c2*10e-5))/((c1*10e-5)+(c2*10e-5));
x=sqrt(l*w);
y=2*pi*x;
f1=(1/y);

set(handles.text15,'string',c1);

set(handles.text17,'string',c2);

set(handles.text19,'string',l);

set(handles.text21,'string',t);

set(handles.text27,'string',f1);


z=t*cos(2*pi*f1*handles.ejex); 

axes(handles.axes4)
plot(handles.ejex,z,'g','linewidth',2);
xlabel('waktu (detik)')
ylabel('amplitudo')
grid on;

% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

c1=get(handles.slider5,'value'); % kapasitansi 1
c2=get(handles.slider6,'value'); % kapasitansi 2
l =get(handles.slider7,'value'); % induktansi
t =get(handles.slider8,'value'); % tegangan

handles.ejex=0:1/10000:0.05;


w=((c1*10e-5)*(c2*10e-5))/((c1*10e-5)+(c2*10e-5));
x=sqrt(l*w);
y=2*pi*x;
f1=(1/y);

set(handles.text15,'string',c1);

set(handles.text17,'string',c2);

set(handles.text19,'string',l);

set(handles.text21,'string',t);

set(handles.text27,'string',f1);


z=t*cos(2*pi*f1*handles.ejex); 

axes(handles.axes4)
plot(handles.ejex,z,'g','linewidth',2);
xlabel('waktu (detik)')
ylabel('amplitudo')
grid on;

% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
