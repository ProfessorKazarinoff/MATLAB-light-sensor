%% Arduino Group Project: The Temps
% This code should be able to run for a user defined time and plot the
% light level for the course of that time using the connected Arduino
% Hardware.

%%
clear
close all
clc

%%
delete(instrfindall);
a = serial('COM4'); % connect to the arduino in order to read information. Check the Port to ensure the arduino is connected.
fopen(a);
t = input('Enter the time, in minutes, that you would like to record the light levels: ');

%%
figure
h = animatedline;
title('Light Sensor');
xlabel('time (min)');
ylabel('voltage');
ax = gca;
% get current axis - used from example code
ax.YGrid = 'on';
x = linspace(1,100,100);
start = datetime('now');
finish = datenum(clock + [0 0 0 0 t 0]); % set the time the loop should finish equal to the user defined time lapse

%%
while datenum(clock) <= finish
i=1:length(x);
data = fscanf(a, '%f'); % reads the data from the arduino code
t = datetime('now') - start;
addpoints(h,datenum(t),data);
ax.XLim = datenum([t-seconds(15) t]); % Update axes
datetick('x','keeplimits') % update tick marks
drawnow update; % plot the current voltage vs time values
end

%% Close the serial port
fclose(a);
delete(a)
clear a;
disp('Serial Port is closed')
