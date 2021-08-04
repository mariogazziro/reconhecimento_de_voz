clear all
close all
[audioIn,fs]=audioread('an36-fejs-b.wav');

F0MinMax=[50 500]; 
frame_length=25; 
timestep=10; 
SHR_Threshold=0.4; 
ceiling=1250; 
med_smooth=0; 
check_voicing=0;

[f0_time,f0_value,SHR,f0_candidates]=shrp(audioIn,fs,F0MinMax,frame_length,timestep,SHR_Threshold,ceiling,med_smooth,check_voicing);

time = [ 0:length(audioIn)-1 ]/fs; 

subplot(2,1,1)
plot( time, audioIn, 'b' );
xlabel( 'Tempo (s)' ); 
ylabel('Amplitude');
title( 'Forma de onda da amostra'); 

subplot(2,1,2)
plot(f0_time/1000, f0_value, 'r');
xlabel( 'Tempo (s)' ); 
ylabel('Pitch (Hz)');
   
