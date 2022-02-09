function varargout = ModulatorAM_contentview(varargin)
% MODULATORAM_CONTENTVIEW MATLAB code for ModulatorAM_contentview.fig
%      MODULATORAM_CONTENTVIEW, by itself, creates a new MODULATORAM_CONTENTVIEW or raises the existing
%      singleton*.
%
%      H = MODULATORAM_CONTENTVIEW returns the handle to a new MODULATORAM_CONTENTVIEW or the handle to
%      the existing singleton*.
%
%      MODULATORAM_CONTENTVIEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODULATORAM_CONTENTVIEW.M with the given input arguments.
%
%      MODULATORAM_CONTENTVIEW('Property','Value',...) creates a new MODULATORAM_CONTENTVIEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ModulatorAM_contentview_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ModulatorAM_contentview_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ModulatorAM_contentview

% Last Modified by GUIDE v2.5 11-Jun-2017 23:50:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ModulatorAM_contentview_OpeningFcn, ...
                   'gui_OutputFcn',  @ModulatorAM_contentview_OutputFcn, ...
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


% --- Executes just before ModulatorAM_contentview is made visible.
function ModulatorAM_contentview_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ModulatorAM_contentview (see VARARGIN)

% Choose default command line output for ModulatorAM_contentview
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ModulatorAM_contentview wait for user response (see UIRESUME)
% uiwait(handles.figure1);

Initialize(hObject, handles)

%setMainHandles(catstruct(Handles, handles));
function Initialize(hObject, handles)

colordef black;

C = imread('untitled.png');
set(hObject,'CurrentAxes',handles.axes1);
image(C);
box off;
set(gca,'xcolor',get(gcf,'color'));
set(gca,'xtick',[]);
set(gca,'ycolor',get(gcf,'color'));
set(gca,'ytick',[]);

set(handles.uipanel1,'Units','normalized')
set(handles.uipanel2,'Units','normalized')
set(handles.slider1,'Units','normalized')
set(handles.slider2,'Units','normalized')
set(handles.slider3,'Units','normalized')
set(handles.slider4,'Units','normalized')
set(handles.slider5,'Units','normalized')
set(handles.text2,'Units','normalized')
set(handles.text3,'Units','normalized')
set(handles.text4,'Units','normalized')
set(handles.text5,'Units','normalized')
set(handles.text6,'Units','normalized')
set(handles.text7,'Units','normalized')
set(handles.text8,'Units','normalized')
set(handles.text9,'Units','normalized')
set(handles.text10,'Units','normalized')
set(handles.text11,'Units','normalized')
set(handles.text13,'Units','normalized')
set(handles.text14,'Units','normalized')
set(handles.text15,'Units','normalized')
set(handles.text16,'Units','normalized')
set(handles.text17,'Units','normalized')
set(handles.text18,'Units','normalized')
set(handles.axes1,'Units','normalized')
set(handles.axes2,'Units','normalized')
set(handles.axes3,'Units','normalized')
set(handles.axes4,'Units','normalized')

% --- Outputs from this function are returned to the command line.
function varargout = ModulatorAM_contentview_OutputFcn(hObject, eventdata, handles) 
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

vm =get(handles.slider3,'value');
set(handles.text3,'string',vm);
fm =get(handles.slider2,'value');
set(handles.text4,'string',fm);
vc=get(handles.slider5,'value');
set(handles.text5,'string',vc);
fc=get(handles.slider4,'value');
set(handles.text6,'string',fc);
m =get(handles.slider1,'value');
set(handles.text2,'string',m);

handles.ejex=0:1/1000:1;

v_m=vm*cos(2*pi*fm*handles.ejex);
axes(handles.axes2);
plot(handles.ejex,v_m,'b','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_c=vc*cos(2*pi*fc*handles.ejex); 
axes(handles.axes3);
plot(handles.ejex,v_c,'m','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_am=vm*vc*(1+m*cos(2*pi*fm*handles.ejex)).*cos(2*pi*fc*handles.ejex);
axes(handles.axes4);
plot(handles.ejex,v_am,'r','LineWidth',2.5);
ylabel('Amplitude'); 
xlabel('Time (s)');


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

vm =get(handles.slider3,'value');
set(handles.text3,'string',vm);
fm =get(handles.slider2,'value');
set(handles.text4,'string',fm);
vc=get(handles.slider5,'value');
set(handles.text5,'string',vc);
fc=get(handles.slider4,'value');
set(handles.text6,'string',fc);
m =get(handles.slider1,'value');
set(handles.text2,'string',m);

handles.ejex=0:1/1000:1;

v_m=vm*cos(2*pi*fm*handles.ejex);
axes(handles.axes2);
plot(handles.ejex,v_m,'b','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_c=vc*cos(2*pi*fc*handles.ejex); 
axes(handles.axes3);
plot(handles.ejex,v_c,'m','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_am=vm*vc*(1+m*cos(2*pi*fm*handles.ejex)).*cos(2*pi*fc*handles.ejex);
axes(handles.axes4);
plot(handles.ejex,v_am,'r','LineWidth',2.5);
ylabel('Amplitude'); 
xlabel('Time (s)');

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

vm =get(handles.slider3,'value');
set(handles.text3,'string',vm);
fm =get(handles.slider2,'value');
set(handles.text4,'string',fm);
vc=get(handles.slider5,'value');
set(handles.text5,'string',vc);
fc=get(handles.slider4,'value');
set(handles.text6,'string',fc);
m =get(handles.slider1,'value');
set(handles.text2,'string',m);

handles.ejex=0:1/1000:1;

v_m=vm*cos(2*pi*fm*handles.ejex);
axes(handles.axes2);
plot(handles.ejex,v_m,'b','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_c=vc*cos(2*pi*fc*handles.ejex); 
axes(handles.axes3);
plot(handles.ejex,v_c,'m','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_am=vm*vc*(1+m*cos(2*pi*fm*handles.ejex)).*cos(2*pi*fc*handles.ejex);
axes(handles.axes4);
plot(handles.ejex,v_am,'r','LineWidth',2.5);
ylabel('Amplitude'); 
xlabel('Time (s)');

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

vm =get(handles.slider3,'value');
set(handles.text3,'string',vm);
fm =get(handles.slider2,'value');
set(handles.text4,'string',fm);
vc=get(handles.slider5,'value');
set(handles.text5,'string',vc);
fc=get(handles.slider4,'value');
set(handles.text6,'string',fc);
m =get(handles.slider1,'value');
set(handles.text2,'string',m);

handles.ejex=0:1/1000:1;

v_m=vm*cos(2*pi*fm*handles.ejex);
axes(handles.axes2);
plot(handles.ejex,v_m,'b','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_c=vc*cos(2*pi*fc*handles.ejex); 
axes(handles.axes3);
plot(handles.ejex,v_c,'m','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_am=vm*vc*(1+m*cos(2*pi*fm*handles.ejex)).*cos(2*pi*fc*handles.ejex);
axes(handles.axes4);
plot(handles.ejex,v_am,'r','LineWidth',2.5);
ylabel('Amplitude'); 
xlabel('Time(s)');

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

vm =get(handles.slider3,'value');
set(handles.text3,'string',vm);
fm =get(handles.slider2,'value');
set(handles.text4,'string',fm);
vc=get(handles.slider5,'value');
set(handles.text5,'string',vc);
fc=get(handles.slider4,'value');
set(handles.text6,'string',fc);
m =get(handles.slider1,'value');
set(handles.text2,'string',m);

handles.ejex=0:1/1000:1;

v_m=vm*cos(2*pi*fm*handles.ejex);
axes(handles.axes2);
plot(handles.ejex,v_m,'b','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_c=vc*cos(2*pi*fc*handles.ejex); 
axes(handles.axes3);
plot(handles.ejex,v_c,'m','LineWidth',2.5);
ylabel('Amplitude');
xlabel('Time (s)');

v_am=vm*vc*(1+m*cos(2*pi*fm*handles.ejex)).*cos(2*pi*fc*handles.ejex);
axes(handles.axes4);
plot(handles.ejex,v_am,'r','LineWidth',2.5);
ylabel('Amplitude'); 
xlabel('Time (s)');

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
