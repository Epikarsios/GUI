function varargout = Command_Test2(varargin)
% COMMAND_TEST2 MATLAB code for Command_Test2.fig
%      COMMAND_TEST2, by itself, creates a new COMMAND_TEST2 or raises the existing
%      singleton*.
%
%      H = COMMAND_TEST2 returns the handle to a new COMMAND_TEST2 or the handle to
%      the existing singleton*.
%
%      COMMAND_TEST2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMMAND_TEST2.M with the given input arguments.
%
%      COMMAND_TEST2('Property','Value',...) creates a new COMMAND_TEST2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Command_Test2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Command_Test2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Command_Test2

% Last Modified by GUIDE v2.5 01-Sep-2018 16:41:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Command_Test2_OpeningFcn, ...
                   'gui_OutputFcn',  @Command_Test2_OutputFcn, ...
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


% --- Executes just before Command_Test2 is made visible.
function Command_Test2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Command_Test2 (see VARARGIN)

% Choose default command line output for Command_Test2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Command_Test2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Command_Test2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Subplot_Top,'visible', 'off');
set(handles.Subplot_Bottom,'visible', 'off');
set(handles.Large_Axis,'visible', 'off');
 set(handles.Quadplot_One,'visible', 'off');
   set(handles.Quadplot_Two,'visible', 'off');
   set(handles.Quadplot_Three,'visible', 'off');
   set(handles.Quadplot_Four,'visible', 'off');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Large_Axis,'visible', 'on');



% --- Executes on selection change in Plot_Menu.
function Plot_Menu_Callback(hObject, eventdata, handles)
% hObject    handle to Plot_Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Plot_Menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Plot_Menu
% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
case 'Large' % User selects peaks.
set(handles.Large_Axis,'visible', 'on');
  set(handles.Quadplot_One,'visible', 'off');
   set(handles.Quadplot_Two,'visible', 'off');
   set(handles.Quadplot_Three,'visible', 'off');
   set(handles.Quadplot_Four,'visible', 'off');
 set(handles.Subplot_Top,'visible', 'off');
   set(handles.Subplot_Bottom,'visible', 'off');
   t = 0:pi/32:2*pi;
   y = sin(t);
   plot(handles.Large_Axis,t,y);
case 'Subplot' % User selects membrane.
   set(handles.Subplot_Top,'visible', 'on');
   set(handles.Subplot_Bottom,'visible', 'on');
   set(handles.Large_Axis,'visible', 'off');
     set(handles.Quadplot_One,'visible', 'off');
   set(handles.Quadplot_Two,'visible', 'off');
   set(handles.Quadplot_Three,'visible', 'off');
   set(handles.Quadplot_Four,'visible', 'off');
case 'Quad Plot' % User selects sinc.
   set(handles.Subplot_Top,'visible', 'off');
   set(handles.Subplot_Bottom,'visible', 'off');
   set(handles.Large_Axis,'visible', 'off');
   set(handles.Quadplot_One,'visible', 'on');
   set(handles.Quadplot_Two,'visible', 'on');
   set(handles.Quadplot_Three,'visible', 'on');
   set(handles.Quadplot_Four,'visible', 'on');
end
% Save the ha

guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function Plot_Menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Plot_Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
