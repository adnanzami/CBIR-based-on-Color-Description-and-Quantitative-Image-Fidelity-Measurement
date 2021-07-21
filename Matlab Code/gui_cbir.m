function varargout = gui_cbir(varargin)
% GUI_CBIR MATLAB code for gui_cbir.fig
%      GUI_CBIR, by itself, creates a new GUI_CBIR or raises the existing
%      singleton*.
%
%      H = GUI_CBIR returns the handle to a new GUI_CBIR or the handle to
%      the existing singleton*.
%
%      GUI_CBIR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_CBIR.M with the given input arguments.
%
%      GUI_CBIR('Property','Value',...) creates a new GUI_CBIR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_cbir_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_cbir_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_cbir

% Last Modified by GUIDE v2.5 21-Sep-2017 15:57:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_cbir_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_cbir_OutputFcn, ...
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


% --- Executes just before gui_cbir is made visible.
function gui_cbir_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_cbir (see VARARGIN)

% Choose default command line output for gui_cbir
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_cbir wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_cbir_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% % --- Executes on button press in load_database.
% function load_database_Callback(hObject, eventdata, handles)
% % hObject    handle to load_database (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% 
% % --- Executes on button press in load_image.
% function load_image_Callback(hObject, eventdata, handles)
% 
% % hObject    handle to load_image (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% 
% % --- Executes on button press in retrieve_image.
% function retrieve_image_Callback(hObject, eventdata, handles)
% % hObject    handle to retrieve_image (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% 
% 
% 
% function n_im_Callback(hObject, eventdata, handles)
% % hObject    handle to n_im (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of n_im as text
% %        str2double(get(hObject,'String')) returns contents of n_im as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function n_im_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to n_im (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
% 
% 
% 
function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
global a;
        a = str2double(get(hObject,'String')); %returns contents of edit3 as a double
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% 
% % --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.mat','Select the MAT-file');
load(FileName, 'database');
msgbox('Select an image to be searched');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.jpg','Select an image');
cd (PathName);
im=imread(FileName);
axes(handles.axes1);
imshow(im);
title('Query Image');
global featv; featv=getColourHistRGB(FileName)
msgbox('Image selected');
working_path = '../';
cd(working_path);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% n=get(handles.n_im,'string');
% n=str2double(n);
global featv;
global a;
program5_do_image_retrieval(featv,a+1);

% % --- Executes on button press in pushbutton8.
% function pushbutton8_Callback(hObject, eventdata, handles)
% % hObject    handle to pushbutton8 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
