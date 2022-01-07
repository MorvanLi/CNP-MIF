clear all;
close all;
clc;
addpath(genpath(cd));
%%
[imagename1, imagepath1]=uigetfile('sourceimages\*.jpg;*.bmp;*.png;*.tif;*.tiff;*.pgm;*.gif','Please choose the first input image');
img1=imread(strcat(imagepath1,imagename1));
[imagename2,imagepath2]=uigetfile('sourceimages\*.jpg;*.bmp;*.png;*.tif;*.tiff;*.pgm;*.gif','Please choose the first input image'); 
img2=imread(strcat(imagepath2,imagename2));
figure;imshow(img1);
figure;imshow(img2);
if size(img1,3)>1
    img1 = rgb2gray(img1);
    img2 = rgb2gray(img2);
end
A=double(img1)/255;
B=double(img2)/255;
disp("starting ...........")
imgf=fuse_NSST_CNP(A,B); 
F=uint8(imgf*255);
figure,imshow(F);
