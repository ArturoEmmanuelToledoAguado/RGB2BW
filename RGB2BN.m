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