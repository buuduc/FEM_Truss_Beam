function anima()
global result
result
global point
point1=point
cv=result(:,1:3)
figure
cv(:,2:3)=cv(:,2:3)/50;
for i=1:50
    for i=1:size(cv,1)
        [x,y,n]=posnos(cv(i,1));
        point(n,[1 2])=point(n,[1 2])+cv(i,2:3);
        draw_plot();;
        pause(0.001);
        hold off
    end
end
point=point1