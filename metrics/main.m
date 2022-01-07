%% Li H, Wu X J. DenseFuse: A Fusion Approach to Infrared and Visible Images[J]. arXiv preprint arXiv:1804.08361, 2018. 
%% https://arxiv.org/abs/1804.08361
close all;
clear all
clc
% addpath(genpath(cd));
% I = imread('HMSD_IR18.tif.tif');
% % R = imread('VIS18.tif');
% I = rgb2gray(I);
% % R = rgb2gray(R);
% imwrite(I,'./fusion image dtcwt/HMSD_IR18.png')
% % imwrite(R,'VIS18.tif')
[imagename1, imagepath1]=uigetfile('datasets\*.jpg;*.bmp;*.png;*.tif;*.tiff;*.pgm;*.gif','Please choose the first input image');
A=imread(strcat(imagepath1,imagename1)); 
[imagename2,imagepath2]=uigetfile('datasets\*.jpg;*.bmp;*.png;*.tif;*.tiff;*.pgm;*.gif','Please choose the first input image'); 
B=imread(strcat(imagepath2,imagename2));
[imagename2,imagepath2]=uigetfile('Proposed\*.jpg;*.bmp;*.png;*.tif;*.tiff;*.pgm;*.gif','Please choose the first input image'); 
F=imread(strcat(imagepath2,imagename2));

disp("Start");
disp('---------------------------Analysis---------------------------');
%result = analysis_Reference(F,A,B);
% [EN,MI,Qabf,FMI_pixel,FMI_dct,FMI_w,Nabf,SCD,SSIM, MS_SSIM] = analysis_Reference(F,A,B)
Result = analysis_Reference(F,A,B)
disp('Done');


