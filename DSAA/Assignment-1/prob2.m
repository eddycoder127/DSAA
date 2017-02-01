clc;clear all;close all;
m1 = zeros(250,500);
m2 = ones(250,500);
m3 = [m1; m2];
figure('Name','input');
imshow(m3,[]);
filt = [-1 -2 -1; 0 0 0; 1 2 1];
m4 = imfilter(m3,filt);
figure('Name','output');
imshow(m4);
m3 = imread('cameraman.tif');
figure('Name','Cameraman - original');
imshow(m3);
m3_new1 = imfilter(m3,filt);
figure('Name','Cameraman - filter 1');
imshow(m3_new1);
filt_new = transpose(filt);
m3_new2 = imfilter(m3,filt_new);
figure('Name','Cameraman - filter 2');
imshow(m3_new2);


