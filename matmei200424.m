function varargout = matmei200424(varargin)
% MATMEI200424 MATLAB code for matmei200424.fig
%      MATMEI200424, by itself, creates a new MATMEI200424 or raises the existing
%      singleton*.
%
%      H = MATMEI200424 returns the handle to a new MATMEI200424 or the handle to
%      the existing singleton*.
%
%      MATMEI200424('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATMEI200424.M with the given input arguments.
%
%      MATMEI200424('Property','Value',...) creates a new MATMEI200424 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matmei200424_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matmei200424_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matmei200424

% Last Modified by GUIDE v2.5 25-Apr-2020 13:29:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matmei200424_OpeningFcn, ...
                   'gui_OutputFcn',  @matmei200424_OutputFcn, ...
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


% --- Executes just before matmei200424 is made visible.
function matmei200424_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matmei200424 (see VARARGIN)

% Choose default command line output for matmei200424
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matmei200424 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matmei200424_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1



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

function pushbutton2_Callback(hObject, eventdata, handles)
global f;
global pathname;
[filename pathname] =uigetfile({'*.*'},'Open');
tic;
str=[pathname filename];
f=imread(str);
axes(handles.axes1);
imshow(f);
set(handles.edit1,'string',str);
set(handles.edit2,'string',toc);


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
AxesBg=axes('units','pixels','pos',[0 0 98 98]);
uistack(AxesBg,'down'); 
axes(AxesBg);
ImageBg=imread('favicon.png');
imshow(ImageBg);
set(AxesBg,'visible','off'); 
set(0,'ShowHiddenHandles','on');
set(gcf,'menubar','figure');


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
hist=rgb2gray(f);
axes(handles.axes2);  
imhist(hist);
toc;
set(handles.edit1,'string','hist=rgb2gray(f)');
set(handles.edit2,'string',toc);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure;


% --- Executes on button press in grayscale.
function grayscale_Callback(hObject, eventdata, handles)
% hObject    handle to grayscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
grayscale=rgb2gray(f);
toc;
axes(handles.axes2); 
imshow(grayscale);
set(handles.edit1,'string','grayscale=rgb2gray(f);');
set(handles.edit2,'string',toc);


% --- Executes on button press in contrast.
function contrast_Callback(hObject, eventdata, handles)
% hObject    handle to contrast (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
contrast=imadjust(f,[0.2 0.3 0;0.6 0.7 1],[]);
toc;
axes(handles.axes2); 
imshow(contrast);
set(handles.edit1,'string','imadjust(f,[0.2 0.3 0;0.6 0.7 1],[]);');
set(handles.edit2,'string',toc);


% --- Executes on button press in reverse.
function reverse_Callback(hObject, eventdata, handles)
% hObject    handle to reverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
grayscale=rgb2gray(f);
reverse=imadjust(grayscale,[0 1],[1 0]);
toc;
axes(handles.axes2); 
imshow(reverse);
set(handles.edit1,'string','hist=rgb2gray(f)');
set(handles.edit2,'string',toc);


% --- Executes on button press in sharpening.
function sharpening_Callback(hObject, eventdata, handles)
% hObject    handle to sharpening (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
Ig=double(f);
w=fspecial('laplacian',0);  
g1=imfilter(f,w,'replicate');  
sharpening=f-g1;  
toc;
axes(handles.axes2); 
imshow(sharpening);
set(handles.edit1,'string','g1=imfilter(f,w,''replicate'');');
set(handles.edit2,'string',toc);


% --- Executes on button press in light.
function light_Callback(hObject, eventdata, handles)
% hObject    handle to light (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
degress=str2double(inputdlg('亮度值'));
tic;
[m,n,k]=size(f);
hsv = rgb2hsv(f);
H=hsv(:,:,1);
S=hsv(:,:,2);
V=hsv(:,:,3);
for i = 1:m
for j = 1: n
hsv(i,j,3) =degress* hsv(i,j,3);
end
end
light=hsv2rgb(hsv);
toc;
axes(handles.axes2); 
imshow(light);
set(handles.edit1,'string','hsv(i,j,3) =1.5* hsv(i,j,3);');
set(handles.edit2,'string',toc);

% --- Executes on button press in inverse.
function inverse_Callback(hObject, eventdata, handles)
% hObject    handle to inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
inverse=255-f;
toc;
axes(handles.axes2); 
imshow(inverse);
set(handles.edit1,'string','inverse=255-f;');
set(handles.edit2,'string',toc);

% --- Executes on button press in gaussian.
function gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
G=fspecial('gaussian', [5 5], 2);
gaussian=imfilter(f,G,'same');
toc;
axes(handles.axes2); 
imshow(gaussian);
set(handles.edit1,'string','gaussian=imfilter(I,G,''same'');');
set(handles.edit2,'string',toc);

% --- Executes on button press in rgbpick.
function rgbpick_Callback(hObject, eventdata, handles)
% hObject    handle to rgbpick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('', ...
	'', ...
	'红','绿','蓝','蓝');
% Handle response
switch choice
    case '红'
        global f;
        tic;
        axes(handles.axes2); 
        imshow(f(:,:,1));
        toc;
        set(handles.edit1,'string','imshow(f(:,:,1));');
        set(handles.edit2,'string',toc);
    case '绿'
        global f;
        tic;
        axes(handles.axes2); 
        imshow(f(:,:,2));
        toc;
        set(handles.edit1,'string','imshow(f(:,:,2));');
        set(handles.edit2,'string',toc);        
    case '蓝'
        global f;
        tic;
        axes(handles.axes2); 
        imshow(f(:,:,3));
        toc;
        set(handles.edit1,'string','imshow(f(:,:,3));');
        set(handles.edit2,'string',toc);            
end

% --- Executes on button press in sizetrans.
function sizetrans_Callback(hObject, eventdata, handles)
% hObject    handle to sizetrans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
size=str2double(inputdlg('变换大小'));
tic;
sizetrans=imresize(f,size);
toc;
axes(handles.axes2); 
imshow(sizetrans);
set(handles.edit1,'string','sizetrans=imresize(f,0.5);');
set(handles.edit2,'string',toc);

% --- Executes on button press in rotate.
function rotate_Callback(hObject, eventdata, handles)
% hObject    handle to rotate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
degress=str2double(inputdlg('旋转角度'));
tic;
rotate=imrotate(f,degress);
toc;
axes(handles.axes2); 
imshow(rotate);
set(handles.edit1,'string','rotate=imrotate(f,180)');
set(handles.edit2,'string',toc);

% --- Executes on button press in mirror.
function mirror_Callback(hObject, eventdata, handles)
% hObject    handle to mirror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
[height,width,dim]=size(f);
tform=maketform('affine',[-1 0 0;0 1 0;width 0 1]);
B=imtransform(f,tform,'nearest');
tform2=maketform('affine',[1 0 0;0 -1 0;0 height 1]);
mirror=imtransform(f,tform2,'nearest');
toc;
axes(handles.axes2); 
imshow(mirror);
set(handles.edit1,'string','mirror=imtransform(f,tform2,''nearest'');');
set(handles.edit2,'string',toc);

% --- Executes on button press in mosaic.
function mosaic_Callback(hObject, eventdata, handles)
% hObject    handle to mosaic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
pix_grp = str2double(inputdlg('马赛克块大小'));
tic;
height = size(f,1);
width = size(f,2);
mosaic=imresize(f,[floor(height/pix_grp) floor(width/pix_grp)]);
mosaic = imresize(mosaic,[height width],'nearest');
mosaic1=mosaic;
toc;
axes(handles.axes2); 
imshow(mosaic1);
set(handles.edit1,'string','mosaic = imresize(mosaic,[height width],''nearest'');');
set(handles.edit2,'string',toc);

% --- Executes on button press in edge.
function edge_Callback(hObject, eventdata, handles)
% hObject    handle to edge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
eg=rgb2gray(f);
eg=edge(eg,'canny');
eg=im2double(eg);
Fa = -1; Fb = 255;
eg=Fa.*eg+ Fb/255;
h = fspecial('gaussian',3,.9);
eg=imfilter(eg,h);
toc;
axes(handles.axes2); 
imshow(eg);
set(handles.edit1,'string','eg=Fa.*g+ Fb/255;');
set(handles.edit2,'string',toc);

% --- Executes on button press in relief.
function relief_Callback(hObject, eventdata, handles)
% hObject    handle to relief (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
f0=rgb2gray(f);
f1=imnoise(f0,'speckle',0.01);
f1=im2double(f1);
h3=1/9.*[111;111;111];
f4=conv2(f1,h3,'same');
h2=fspecial('sobel');
relief=filter2(h2,f1,'same');
K=mat2gray(relief);
toc;
axes(handles.axes2); 
imshow(relief);
set(handles.edit1,'string','f1=imnoise(f0,''speckle'',0.01);');
set(handles.edit2,'string',toc);

% --- Executes on button press in DCT.
function DCT_Callback(hObject, eventdata, handles)
% hObject    handle to DCT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
g1=rgb2gray(f);
dct=dct2(g1);
toc;
axes(handles.axes2); 
imshow(dct);
set(handles.edit1,'string','dct=dct2(g1);');
set(handles.edit2,'string',toc);

% --- Executes on button press in FFT.
function FFT_Callback(hObject, eventdata, handles)
% hObject    handle to FFT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
fft=fft2(f);
toc;
axes(handles.axes2); 
imshow(fft);
set(handles.edit1,'string','fft=fft2(f);');
set(handles.edit2,'string',toc);

% --- Executes on button press in imageinfo.
function imageinfo_Callback(hObject, eventdata, handles)
% hObject    handle to imageinfo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imageinfo(imgetfile);

% --- Executes on button press in piccut.
function piccut_Callback(hObject, eventdata, handles)
% hObject    handle to piccut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
axes(handles.axes1); 
[ImgCut0,rect]=imcrop(f);
toc;
axes(handles.axes2); 
imshow(ImgCut0);
set(handles.edit1,'string','[ImgCut0,rect]=imcrop(f);');
set(handles.edit2,'string',toc);


% --------------------------------------------------------------------
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
choice = questdlg('保存哪个？', ...
	'', ...
	'axes1','axes2','axes2');
% Handle response
switch choice
    case 'axes1'
        [FileName,PathName] = uiputfile({'*.jpg','All Files (*.*)'},...
                                             'Save','Untitled');
         saveimg=getframe(handles.axes1);
         imwrite(saveimg.cdata,[PathName,FileName]);
    case 'axes2'
        [FileName,PathName] = uiputfile({'*.jpg','All Files (*.*)'},...
                                             'Save','Untitled');
        saveimg=getframe(handles.axes2);
        imwrite(saveimg.cdata,[PathName,FileName]);  
end

% --------------------------------------------------------------------
function deliver_Callback(hObject, eventdata, handles)
% hObject    handle to deliver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = questdlg('你要释放？');
if strncmpi(str,'yes',3)
    set(handles.edit1,'string',' ');
    set(handles.edit2,'string',' ');
    cla(handles.axes1,'reset');
    cla(handles.axes2,'reset');
    clear;clc;clear global;
end


% --- Executes on button press in revoke.
function revoke_Callback(hObject, eventdata, handles)
% hObject    handle to revoke (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
str = questdlg('你要撤销？');
if strncmpi(str,'yes',3)
    set(handles.edit1,'string',' ');
    set(handles.edit2,'string',' ');
    cla(handles.axes1,'reset');
    cla(handles.axes2,'reset');
    clc;
    axes(handles.axes1);
    imshow(f);
end

% --- Executes on button press in motionblur.
function motionblur_Callback(hObject, eventdata, handles)
% hObject    handle to motionblur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
tic;
g=im2double(f);
PSF=fspecial('motion',20,0);
frest1 = deconvwnr(f,PSF,0.01);
toc;
axes(handles.axes2); 
imshow(frest1);
set(handles.edit1,'string','PSF=fspecial(''motion'',20,0);');
set(handles.edit2,'string',toc);


% --- Executes on button press in implay.
function implay_Callback(hObject, eventdata, handles)
% hObject    handle to implay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
implay;


% --- Executes on button press in imtool.
function imtool_Callback(hObject, eventdata, handles)
% hObject    handle to imtool (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imtool;


% --- Executes on button press in goon.
function goon_Callback(hObject, eventdata, handles)
% hObject    handle to goon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
choice = questdlg('继续哪个？', ...
	'', ...
	'axes1','axes2','axes2');
% Handle response
switch choice
    case 'axes1'
        goon=getimage(handles.axes1);
        f=goon;
        axes(handles.axes1); 
        imshow(goon);
    case 'axes2'
        goon=getimage(handles.axes2);
        f=goon;
        axes(handles.axes1);
        imshow(goon);
end


% --- Executes on button press in alone.
function alone_Callback(hObject, eventdata, handles)
% hObject    handle to alone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('独立显示哪个？', ...
	'', ...
	'axes1','axes2','axes2');
% Handle response
switch choice
    case 'axes1'
        goon=getimage(handles.axes1);
        f=goon;
        figure,imshow(goon);
    case 'axes2'
        goon=getimage(handles.axes2);
        f=goon;
        figure,imshow(goon);
end
