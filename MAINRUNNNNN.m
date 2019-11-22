% close all
% clear all
% clc 
% Guichinhthuc()
x0=0
y0=0
R=2
hold on
% rectangle('Position',[x0-R y0-R 2*R 2*R],'EdgeColor',[1,0,0],'linewidth',3)
x1=1
y1=2
x2=3
y2=4
a=x1:0.1:x2
b=y1:0.1:y2
% plot([x1 x2],[y1 y2],'<','color',[59/255 67/255 179/255],'linewidth',4);
plot(a,b,'^','color',[59/255 67/255 179/255],'linewidth',4);
axis equal


guide
