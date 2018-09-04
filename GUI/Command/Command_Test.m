function varargout = Command_Test(varargin)
% COMMAND_TEST MATLAB code for Command_Test.fig
%      COMMAND_TEST, by itself, creates a new COMMAND_TEST or raises the existing
%      singleton*.
%
%      H = COMMAND_TEST returns the handle to a new COMMAND_TEST or the handle to
%      the existing singleton*.
%
%      COMMAND_TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMMAND_TEST.M with the given input arguments.
%
%      COMMAND_TEST('Property','Value',...) creates a new COMMAND_TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Command_Test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Command_Test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Command_Test

% Last Modified by GUIDE v2.5 01-Sep-2018 15:41:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Command_Test_OpeningFcn, ...
                   'gui_OutputFcn',  @Command_Test_OutputFcn, ...
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


% --- Executes just before Command_Test is made visible.
function Command_Test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Command_Test (see VARARGIN)

% Choose default command line output for Command_Test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Command_Test wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = Command_Test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
%set(handles.Four_Plot, 'Visible', 'off');
%set(handles.One_Plot, 'Visible', 'off');
%set(handles.Two_Plot, 'Visible', 'on');


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Two_Plot, 'Visible', 'off');
%set(handles.One_Plot, 'Visible', 'off');
%set(handles.Four_Plot, 'Visible', 'On');
disp('off')


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.One_Plot, 'Visible', 'off');
%set(handles.Four_Plot, 'Visible', 'off');
set(handles.Two_Plot, 'Visible', 'on');
disp('on')
