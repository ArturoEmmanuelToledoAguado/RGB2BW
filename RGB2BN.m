clc;
close all;
clear all;

%Extracción de la imagen
img=imread('Gera.jpg');
[f c]=size(img);%Tamaño de la imagen

%Extraccion de planos R (Red), G (Green) y B (Blue) a manita :D
img_R(:,:,1)=img(:,:,1);
img_G(:,:,1)=img(:,:,2);
img_B(:,:,1)=img(:,:,3);

% %Se muestran los planos de la imagen
% figure()
% subplot(1,3,1)
% imshow(img_R)
% title('Red Channel')
% subplot(1,3,2)
% imshow(img_G)
% title('Green Channel')
% subplot(1,3,3)
% imshow(img_B)
% title('Blue Channel')

%%Uso de la formula NTSC ( National Television Standards Comitee)
%%(0.299*R)+(0.587*G)+(0.114*B)
%Multiplicacion por sus valores
img_R=img_R*.299;
img_G=img_G*.587;
img_B=img_B*.114;
%Suma de los valores
img_BW=img_R+img_G+img_B;
figure()
imshow(img_BW)%Se muestra la imagen en blanco y negro

%%Uso de la funcion RGB2GRAY
imgRGB2Gray = rgb2gray(img);
figure()
imshow(imgRGB2Gray)


% %Extraccion de planos R (Red), G (Green) y B (Blue)
% [R,G,B] = imsplit(img);
% figure()
% subplot(1,3,1)
% imshow(R)
% title('Red Channel')
% subplot(1,3,2)
% imshow(G)
% title('Green Channel')
% subplot(1,3,3)
% imshow(B)
% title('Blue Channel')