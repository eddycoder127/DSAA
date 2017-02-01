clc;clear all;close all;
MainImage = imread('kumbhmela.jpg');
[rows, columns, numberOfColorBands] = size(MainImage);
smallSubImage = imread('shyam.jpg');
[x1,y1,z1] = size(smallSubImage);
templateWidth = x1;
templateHeight = y1;
channelToCorrelate = 1;  % Use the red channel.
correlationOutput = normxcorr2(smallSubImage(:,:,1), MainImage(:,:, channelToCorrelate));
[maxCorrValue, maxIndex] = max(abs(correlationOutput(:)));
[yPeak, xPeak] = ind2sub(size(correlationOutput),maxIndex(1));
corr_offset = [(xPeak-size(smallSubImage,2)) (yPeak-size(smallSubImage,1))];
figure;
imshow(MainImage);
boxRect = [corr_offset(1) corr_offset(2) templateWidth, templateHeight];
rectangle('position', boxRect, 'edgecolor', 'g', 'linewidth',2);