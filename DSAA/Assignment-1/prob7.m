clc;clear all;close all;
[input,freq_input]=audioread('sample1.wav');

input=input(:,1);
audiowrite('sample1_24.wav',input,24000);
audiowrite('sample1_16.wav',input,16000);
audiowrite('sample1_08.wav',input,8000);
audiowrite('sample1_04.wav',input,4000);



[effect1,freq_e]=audioread('church_effect.wav');
e1=effect1(:,1);
outfile_e1=(conv(input,e1,'same'));
audiowrite('church_sample1_e1.wav',outfile_e1,freq_input);

[effect2,freq_e]=audioread('hall_effect.wav');
e2=effect2(:,1);
outfile_e2=(conv(input,e2,'same'));
audiowrite('hall_sample1_e2.wav',outfile_e2,freq_input);

[effect3,freq_e]=audioread('open_air_effect.wav');
e3=effect3(:,1);
outfile_e3=(conv(input,e3,'same'));
audiowrite('open_air_sample_e3.wav',outfile_e3,freq_input);
