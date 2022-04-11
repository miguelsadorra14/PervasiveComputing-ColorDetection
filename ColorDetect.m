function varargout = ColorDetect(varargin)
% COLORDETECT MATLAB code for ColorDetect.fig
%      COLORDETECT, by itself, creates a new COLORDETECT or raises the existing
%      singleton*.
%
%      H = COLORDETECT returns the handle to a new COLORDETECT or the handle to
%      the existing singleton*.
%
%      COLORDETECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COLORDETECT.M with the given input arguments.
%
%      COLORDETECT('Property','Value',...) creates a new COLORDETECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ColorDetect_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ColorDetect_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ColorDetect

% Last Modified by GUIDE v2.5 09-Dec-2021 00:25:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ColorDetect_OpeningFcn, ...
                   'gui_OutputFcn',  @ColorDetect_OutputFcn, ...
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


% --- Executes just before ColorDetect is made visible.
function ColorDetect_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ColorDetect (see VARARGIN)

% Choose default command line output for ColorDetect
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ColorDetect wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ColorDetect_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
imshow('color_palette.png') %insert image from camera
u = impixel %read pixel from certain point

a = u(1,1) %Red Layer of pixel
b = u(1,2) %Green Layer of pixel
c = u(1,3) %Blue Layer of pixel

%conditional statements for colors
%BLACK
if (a < 40 && b < 40 && c < 40)
    msgbox('BLACK')
    color = "Black";
    command = strcat('say',{' '},color);
    system(command)
end

%WHITE
if (a > 230 && b > 230 && c > 230)
    msgbox('WHITE')
    color = "White";
    command = strcat('say',{' '},color);
    system(command)
end

%RED
if (a > 90 && b < 95 && c < 90)
    msgbox('RED')
    color = "Red";
    command = strcat('say',{' '},color);
    system(command)
end

%PINK
if (a > 248 && b > 130 && b < 210  && c < 210 && c > 140)
    msgbox('PINK')
    color = "Pink";
    command = strcat('say',{' '},color);
    system(command)
end

%ORANGE
if (a > 172 && b > 90 && b < 180 && c < 130)
    msgbox('ORANGE')
    color = "Orange";
    command = strcat('say',{' '},color);
    system(command)
end

%GREEN
if (a < 160 && b > 80 && c < 140)
    msgbox('GREEN')
    color = "Green";
    command = strcat('say',{' '},color);
    system(command)
end

%YELLOW
if (a > 245 && b > 200 && c < 200)
    msgbox('YELLOW')
    color = "Yellow";
    command = strcat('say',{' '},color);
    system(command)
end

%BLUE
if (a < 80 && b < 240 && c > 80)
    msgbox('BLUE')
    color = "Blue";
    command = strcat('say',{' '},color);
    system(command)
end

%VIOLET
if (a > 80 && a < 245 && b < 140 && c > 80)
    msgbox('VIOLET')
    color = "Violet";
    command = strcat('say',{' '},color);
    system(command)
    
end
