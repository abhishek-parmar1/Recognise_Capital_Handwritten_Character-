function varargout = extractor(varargin)
% EXTRACTOR MATLAB code for extractor.fig
%      EXTRACTOR, by itself, creates a new EXTRACTOR or raises the existing
%      singleton*.
%
%      H = EXTRACTOR returns the handle to a new EXTRACTOR or the handle to
%      the existing singleton*.
%
%      EXTRACTOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXTRACTOR.M with the given input arguments.
%
%      EXTRACTOR('Property','Value',...) creates a new EXTRACTOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before extractor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to extractor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help extractor

% Last Modified by GUIDE v2.5 15-Nov-2016 14:04:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @extractor_OpeningFcn, ...
                   'gui_OutputFcn',  @extractor_OutputFcn, ...
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


% --- Executes just before extractor is made visible.
function extractor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to extractor (see VARARGIN)

% Choose default command line output for extractor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes extractor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = extractor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

 function initialize_gui(fig_handle, handles, isreset)
    if isfield(handles, 'metricdata') && ~isreset
        return;
    end

    guidata(handles.figure1, handles);

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

      [filename,pathname]=uigetfile('*.*','select the image file','on');
      %uigetfile displays a box that lists files in the current
      %folder and enables you to select or enter the name of a file.
      %If the file name is file exists, uigetfile returns the file name as 
      %a string when you click Open. If you click Cancel, uigetfile returns 0.
      % displays only those files with extensions that match
      %uigetfile returns the name of the file in FileName and its path in PathName.
      
      I=fullfile(pathname,filename);
      %stores the image in the form of matrix specified at the folder (path of image) and
      %file name(image name)
      
      complete=strcat(filename,pathname);
      %concatenate path and file name to display in text box
      
      set(handles.edit1,'string',complete);
      %display full path at gui
      
      axes1=imread(I);
      axes(handles.axes1);
      image(axes1)
      %display image at the axis in the gui

      rendering(I);
      %pass image to another function


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
