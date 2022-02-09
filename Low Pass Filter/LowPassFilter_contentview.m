function varargout = LowPassFilter_contentview(varargin)
% LOWPASSFILTER_CONTENTVIEW MATLAB code for LowPassFilter_contentview.fig
%      LOWPASSFILTER_CONTENTVIEW, by itself, creates a new LOWPASSFILTER_CONTENTVIEW or raises the existing
%      singleton*.
%
%      H = LOWPASSFILTER_CONTENTVIEW returns the handle to a new LOWPASSFILTER_CONTENTVIEW or the handle to
%      the existing singleton*.
%
%      LOWPASSFILTER_CONTENTVIEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOWPASSFILTER_CONTENTVIEW.M with the given input arguments.
%
%      LOWPASSFILTER_CONTENTVIEW('Property','Value',...) creates a new LOWPASSFILTER_CONTENTVIEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LowPassFilter_contentview_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LowPassFilter_contentview_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LowPassFilter_contentview

% Last Modified by GUIDE v2.5 11-Jun-2017 15:36:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LowPassFilter_contentview_OpeningFcn, ...
                   'gui_OutputFcn',  @LowPassFilter_contentview_OutputFcn, ...
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


% --- Executes just before LowPassFilter_contentview is made visible.
function LowPassFilter_contentview_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LowPassFilter_contentview (see VARARGIN)

% Choose default command line output for LowPassFilter_contentview
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LowPassFilter_contentview wait for user response (see UIRESUME)
% uiwait(handles.figure1);

Initialize(hObject, handles)

%setMainHandles(catstruct(Handles, handles));
function Initialize(hObject, handles)

colordef black

im1 = imread('lowpass1.png');
set(hObject,'CurrentAxes',handles.axes1);
image(im1);
box off;
set(gca,'xcolor',get(gcf,'color'));
set(gca,'xtick',[]);
set(gca,'ycolor',get(gcf,'color'));
set(gca,'ytick',[]);

set(handles.uipanel1,'Units','normalized')
set(handles.uipanel2,'Units','normalized')
set(handles.uipanel3,'Units','normalized')
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
set(handles.text4,'Units','normalized')
set(handles.text5,'Units','normalized')
set(handles.text6,'Units','normalized')
set(handles.text7,'Units','normalized')
set(handles.text8,'Units','normalized')
set(handles.text9,'Units','normalized')
set(handles.text10,'Units','normalized')
set(handles.text11,'Units','normalized')
set(handles.text12,'Units','normalized')
set(handles.text13,'Units','normalized')
set(handles.text14,'Units','normalized')
set(handles.text15,'Units','normalized')
set(handles.text16,'Units','normalized')
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

% --- Outputs from this function are returned to the command line.
function varargout = LowPassFilter_contentview_OutputFcn(hObject, eventdata, handles) 
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

vi =get(handles.slider1,'value');
set(handles.text2,'string',vi);
r1 =get(handles.slider2,'value');
set(handles.text3,'string',r1);
r2 =get(handles.slider3,'value');
set(handles.text4,'string',r2);
r3 =get(handles.slider4,'value');
set(handles.text5,'string',r3);
r4 =get(handles.slider5,'value');
set(handles.text6,'string',r4);
c1 =get(handles.slider6,'value');
set(handles.text7,'string',c1);
c2 =get(handles.slider7,'value');
set(handles.text8,'string',c2);
fi =get(handles.slider8,'value');
set(handles.text9,'string',fi);

Ti = 1/fi;
t = 0:Ti/4444:6*Ti;

x=vi*cos(2*pi*fi*t);
axes(handles.axes2)
plot(t,x,'y','LineWidth',2.5)
title('Sinyal Masukan Low Pass Filter')
axis([0 inf -1 1])


af=1+(r2/r1);
set(handles.text27,'string',af);


fc=1/(2*pi*sqrt(r3*r4*(c1*1e-6*c2*1e-6)));
set(handles.text28,'string',fc);

vo=(vi*af)/sqrt(1+(fi/fc)^2);
set(handles.text29,'string',vo);

g=20*log10(vo/vi);
set(handles.text26,'string',g);

y=vo*cos(2*pi*fi*t);

axes(handles.axes3)
plot(t,y,'g','LineWidth',2.5)
title('Sinyal Keluaran Low Pass Filter')
axis([0 inf -12 12])


f=0:10:fi;
vo1=(vi*af)./sqrt(1+(f/fc).^2);
g1=20*log10(vo1/vi);
axes(handles.axes4)
plot(f,g1,'r','LineWidth',2.5);
title('Karakteristik Low Pass Filter');
ylabel('Absolute magnitude (dB)');
xlabel('Frequency  (Hertz)');

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

vi =get(handles.slider1,'value');
set(handles.text2,'string',vi);
r1 =get(handles.slider2,'value');
set(handles.text3,'string',r1);
r2 =get(handles.slider3,'value');
set(handles.text4,'string',r2);
r3 =get(handles.slider4,'value');
set(handles.text5,'string',r3);
r4 =get(handles.slider5,'value');
set(handles.text6,'string',r4);
c1 =get(handles.slider6,'value');
set(handles.text7,'string',c1);
c2 =get(handles.slider7,'value');
set(handles.text8,'string',c2);
fi =get(handles.slider8,'value');
set(handles.text9,'string',fi);

Ti = 1/fi;
t = 0:Ti/4444:6*Ti;

x=vi*cos(2*pi*fi*t);
axes(handles.axes2)
plot(t,x,'y','LineWidth',2.5)
title('Sinyal Masukan Low Pass Filter')
axis([0 inf -1 1])


af=1+(r2/r1);
set(handles.text27,'string',af);


fc=1/(2*pi*sqrt(r3*r4*(c1*1e-6*c2*1e-6)));
set(handles.text28,'string',fc);

vo=(vi*af)/sqrt(1+(fi/fc)^2);
set(handles.text29,'string',vo);

g=20*log10(vo/vi);
set(handles.text26,'string',g);

y=vo*cos(2*pi*fi*t);

axes(handles.axes3)
plot(t,y,'g','LineWidth',2.5)
title('Sinyal Keluaran Low Pass Filter')
axis([0 inf -12 12])


f=0:10:fi;
vo1=(vi*af)./sqrt(1+(f/fc).^2);
g1=20*log10(vo1/vi);
axes(handles.axes4)
plot(f,g1,'r','LineWidth',2.5);
title('Karakteristik Low Pass Filter');
ylabel('Absolute magnitude (dB)');
xlabel('Frequency  (Hertz)');

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

vi =get(handles.slider1,'value');
set(handles.text2,'string',vi);
r1 =get(handles.slider2,'value');
set(handles.text3,'string',r1);
r2 =get(handles.slider3,'value');
set(handles.text4,'string',r2);
r3 =get(handles.slider4,'value');
set(handles.text5,'string',r3);
r4 =get(handles.slider5,'value');
set(handles.text6,'string',r4);
c1 =get(handles.slider6,'value');
set(handles.text7,'string',c1);
c2 =get(handles.slider7,'value');
set(handles.text8,'string',c2);
fi =get(handles.slider8,'value');
set(handles.text9,'string',fi);

Ti = 1/fi;
t = 0:Ti/4444:6*Ti;

x=vi*cos(2*pi*fi*t);
axes(handles.axes2)
plot(t,x,'y','LineWidth',2.5)
title('Sinyal Masukan Low Pass Filter')
axis([0 inf -1 1])


af=1+(r2/r1);
set(handles.text27,'string',af);


fc=1/(2*pi*sqrt(r3*r4*(c1*1e-6*c2*1e-6)));
set(handles.text28,'string',fc);


vo=(vi*af)/sqrt(1+(fi/fc)^2);
set(handles.text29,'string',vo);

g=20*log10(vo/vi);
set(handles.text26,'string',g);

y=vo*cos(2*pi*fi*t);

axes(handles.axes3)
plot(t,y,'g','LineWidth',2.5)
title('Sinyal Keluaran Low Pass Filter')
axis([0 inf -12 12])


f=0:10:fi;
vo1=(vi*af)./sqrt(1+(f/fc).^2);
g1=20*log10(vo1/vi);
axes(handles.axes4)
plot(f,g1,'r','LineWidth',2.5);
title('Karakteristik Low Pass Filter');
ylabel('Absolute magnitude (dB)');
xlabel('Frequency  (Hertz)');

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

vi =get(handles.slider1,'value');
set(handles.text2,'string',vi);
r1 =get(handles.slider2,'value');
set(handles.text3,'string',r1);
r2 =get(handles.slider3,'value');
set(handles.text4,'string',r2);
r3 =get(handles.slider4,'value');
set(handles.text5,'string',r3);
r4 =get(handles.slider5,'value');
set(handles.text6,'string',r4);
c1 =get(handles.slider6,'value');
set(handles.text7,'string',c1);
c2 =get(handles.slider7,'value');
set(handles.text8,'string',c2);
fi =get(handles.slider8,'value');
set(handles.text9,'string',fi);

Ti = 1/fi;
t = 0:Ti/4444:6*Ti;

x=vi*cos(2*pi*fi*t);
axes(handles.axes2)
plot(t,x,'y','LineWidth',2.5)
title('Sinyal Masukan Low Pass Filter')
axis([0 inf -1 1])


af=1+(r2/r1);
set(handles.text27,'string',af);


fc=1/(2*pi*sqrt(r3*r4*(c1*1e-6*c2*1e-6)));
set(handles.text28,'string',fc);


vo=(vi*af)/sqrt(1+(fi/fc)^2);
set(handles.text29,'string',vo);

g=20*log10(vo/vi);
set(handles.text26,'string',g);

y=vo*cos(2*pi*fi*t);

axes(handles.axes3)
plot(t,y,'g','LineWidth',2.5)
title('Sinyal Keluaran Low Pass Filter')
axis([0 inf -12 12])


f=0:10:fi;
vo1=(vi*af)./sqrt(1+(f/fc).^2);
g1=20*log10(vo1/vi);
axes(handles.axes4)
plot(f,g1,'r','LineWidth',2.5);
title('Karakteristik Low Pass Filter');
ylabel('Absolute magnitude (dB)');
xlabel('Frequency  (Hertz)');

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

vi =get(handles.slider1,'value');
set(handles.text2,'string',vi);
r1 =get(handles.slider2,'value');
set(handles.text3,'string',r1);
r2 =get(handles.slider3,'value');
set(handles.text4,'string',r2);
r3 =get(handles.slider4,'value');
set(handles.text5,'string',r3);
r4 =get(handles.slider5,'value');
set(handles.text6,'string',r4);
c1 =get(handles.slider6,'value');
set(handles.text7,'string',c1);
c2 =get(handles.slider7,'value');
set(handles.text8,'string',c2);
fi =get(handles.slider8,'value');
set(handles.text9,'string',fi);

Ti = 1/fi;
t = 0:Ti/4444:6*Ti;

x=vi*cos(2*pi*fi*t);
axes(handles.axes2)
plot(t,x,'y','LineWidth',2.5)
title('Sinyal Masukan Low Pass Filter')
axis([0 inf -1 1])


af=1+(r2/r1);
set(handles.text27,'string',af);


fc=1/(2*pi*sqrt(r3*r4*(c1*1e-6*c2*1e-6)));
set(handles.text28,'string',fc);

vo=(vi*af)/sqrt(1+(fi/fc)^2);
set(handles.text29,'string',vo);

g=20*log10(vo/vi);
set(handles.text26,'string',g);

y=vo*cos(2*pi*fi*t);

axes(handles.axes3)
plot(t,y,'g','LineWidth',2.5)
title('Sinyal Keluaran Low Pass Filter')
axis([0 inf -12 12])


f=0:10:fi;
vo1=(vi*af)./sqrt(1+(f/fc).^2);
g1=20*log10(vo1/vi);
axes(handles.axes4)
plot(f,g1,'r','LineWidth',2.5);
title('Karakteristik Low Pass Filter');
ylabel('Absolute magnitude (dB)');
xlabel('Frequency  (Hertz)');

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

vi =get(handles.slider1,'value');
set(handles.text2,'string',vi);
r1 =get(handles.slider2,'value');
set(handles.text3,'string',r1);
r2 =get(handles.slider3,'value');
set(handles.text4,'string',r2);
r3 =get(handles.slider4,'value');
set(handles.text5,'string',r3);
r4 =get(handles.slider5,'value');
set(handles.text6,'string',r4);
c1 =get(handles.slider6,'value');
set(handles.text7,'string',c1);
c2 =get(handles.slider7,'value');
set(handles.text8,'string',c2);
fi =get(handles.slider8,'value');
set(handles.text9,'string',fi);

Ti = 1/fi;
t = 0:Ti/4444:6*Ti;

x=vi*cos(2*pi*fi*t);
axes(handles.axes2)
plot(t,x,'y','LineWidth',2.5)
title('Sinyal Masukan Low Pass Filter')
axis([0 inf -1 1])


af=1+(r2/r1);
set(handles.text27,'string',af);


fc=1/(2*pi*sqrt(r3*r4*(c1*1e-6*c2*1e-6)));
set(handles.text28,'string',fc);

vo=(vi*af)/sqrt(1+(fi/fc)^2);
set(handles.text29,'string',vo);

g=20*log10(vo/vi);
set(handles.text26,'string',g);

y=vo*cos(2*pi*fi*t);

axes(handles.axes3)
plot(t,y,'g','LineWidth',2.5)
title('Sinyal Keluaran Low Pass Filter')
axis([0 inf -12 12])


f=0:10:fi;
vo1=(vi*af)./sqrt(1+(f/fc).^2);
g1=20*log10(vo1/vi);
axes(handles.axes4)
plot(f,g1,'r','LineWidth',2.5);
title('Karakteristik Low Pass Filter');
ylabel('Absolute magnitude (dB)');
xlabel('Frequency  (Hertz)');

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

vi =get(handles.slider1,'value');
set(handles.text2,'string',vi);
r1 =get(handles.slider2,'value');
set(handles.text3,'string',r1);
r2 =get(handles.slider3,'value');
set(handles.text4,'string',r2);
r3 =get(handles.slider4,'value');
set(handles.text5,'string',r3);
r4 =get(handles.slider5,'value');
set(handles.text6,'string',r4);
c1 =get(handles.slider6,'value');
set(handles.text7,'string',c1);
c2 =get(handles.slider7,'value');
set(handles.text8,'string',c2);
fi =get(handles.slider8,'value');
set(handles.text9,'string',fi);

Ti = 1/fi;
t = 0:Ti/4444:6*Ti;

x=vi*cos(2*pi*fi*t);
axes(handles.axes2)
plot(t,x,'y','LineWidth',2.5)
title('Sinyal Masukan Low Pass Filter')
axis([0 inf -1 1])


af=1+(r2/r1);
set(handles.text27,'string',af);


fc=1/(2*pi*sqrt(r3*r4*(c1*1e-6*c2*1e-6)));
set(handles.text28,'string',fc);

vo=(vi*af)/sqrt(1+(fi/fc)^2);
set(handles.text29,'string',vo);

g=20*log10(vo/vi);
set(handles.text26,'string',g);

y=vo*cos(2*pi*fi*t);

axes(handles.axes3)
plot(t,y,'g','LineWidth',2.5)
title('Sinyal Keluaran Low Pass Filter')
axis([0 inf -12 12])


f=0:10:fi;
vo1=(vi*af)./sqrt(1+(f/fc).^2);
g1=20*log10(vo1/vi);
axes(handles.axes4)
plot(f,g1,'r','LineWidth',2.5);
title('Karakteristik Low Pass Filter');
ylabel('Absolute magnitude (dB)');
xlabel('Frequency  (Hertz)');

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

vi =get(handles.slider1,'value');
set(handles.text2,'string',vi);
r1 =get(handles.slider2,'value');
set(handles.text3,'string',r1);
r2 =get(handles.slider3,'value');
set(handles.text4,'string',r2);
r3 =get(handles.slider4,'value');
set(handles.text5,'string',r3);
r4 =get(handles.slider5,'value');
set(handles.text6,'string',r4);
c1 =get(handles.slider6,'value');
set(handles.text7,'string',c1);
c2 =get(handles.slider7,'value');
set(handles.text8,'string',c2);
fi =get(handles.slider8,'value');
set(handles.text9,'string',fi);

Ti = 1/fi;
t = 0:Ti/4444:6*Ti;

x=vi*cos(2*pi*fi*t);
axes(handles.axes2)
plot(t,x,'y','LineWidth',2.5)
title('Sinyal Masukan Low Pass Filter')
axis([0 inf -1 1])


af=1+(r2/r1);
set(handles.text27,'string',af);


fc=1/(2*pi*sqrt(r3*r4*(c1*1e-6*c2*1e-6)));
set(handles.text28,'string',fc);

vo=(vi*af)/sqrt(1+(fi/fc)^2);
set(handles.text29,'string',vo);

g=20*log10(vo/vi);
set(handles.text26,'string',g);

y=vo*cos(2*pi*fi*t);

axes(handles.axes3)
plot(t,y,'g','LineWidth',2.5)
title('Sinyal Keluaran Low Pass Filter')
axis([0 inf -12 12])


f=0:10:fi;
vo1=(vi*af)./sqrt(1+(f/fc).^2);
g1=20*log10(vo1/vi);
axes(handles.axes4)
plot(f,g1,'r','LineWidth',2.5);
title('Karakteristik Low Pass Filter');
ylabel('Absolute magnitude (dB)');
xlabel('Frequency  (Hertz)');

% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
