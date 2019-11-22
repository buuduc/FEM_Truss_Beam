function draw_plot()
cla
global elem
global point
global show_node
global show_elem
disp(point)
cla
for i=1:size(point,1)
    plot(point(i,1),point(i,2),'.','markersize',40);
    hold on
end
for i=1:size(elem,1) % ve thanh
    [x1,y1]=posnos(elem(i,1));
    [x2,y2]=posnos(elem(i,2));
    plot([x1 x2],[y1 y2],'color',[59/255 67/255 179/255],'linewidth',4);
    hold on
end
if size(point,1)>=1
maxmax=max(max(abs(point(:,8:9))));
end
for i=1:size(point,1)
    x=point(i,1);
    y=point(i,2);
    if point(i,8)~=0
        quiver(x,y,0.5*(point(i,8)/maxmax),0,'lineWidth',2,'color',[0 1 0.3],'autoscalefactor',1);
    end
    if point(i,9)~=0
        quiver(x,y,0,0.5*(point(i,9)/maxmax),'lineWidth',2,'color',[0 1 0.3],'autoscalefactor',1);
    end
end
%%ham nay cho phep ve ngam chuyen vi
for i=1:size(point,1) 
    x=point(i,1);
    y=point(i,2);
    if point(i,11)==0
        plot(x-0.10,y,'>','markersize',20,'markerfacecolor','y');
    
    end
    if point(i,12)==0
        plot(x,y-0.10,'^','markersize',20,'markerfacecolor','y');
    end
    if point(i,13)==0
        x0=point(i,1)
        y0=point(i,2)
        R=0.1
        hold on
        rectangle('Position',[x0-R y0-R 2*R 2*R],'EdgeColor',[0,1,1],'linewidth',3)
    end
end
%% ve moment xoan

for i=1:size(point,1)
    x0=point(i,1);
    y0=point(i,2);
    R=0.1
    if point(i,10)>0
%         rectangle('Position',[x0-R y0-R 2*R 2*R],'Curvature',1,'EdgeColor',[0,1,0],'linewidth',3)
        r=0.1
        t=linspace(-45,115);
        plot(r*cosd(t)+x0,r*sind(t)+y0,'linewidth',3,'Color',[1 0 0])
        plot(r*cosd(115)+x0,r*sind(115)+y0,'<','markersize',12,'markerfacecolor',[1 0 0],'color',[1 0 0]);
%         plot(x0,y0+R,'<','markersize',10,'markerfacecolor',[0,1,0]);
    elseif point(i,10)<0
%         rectangle('Position',[x0-R y0-R 2*R 2*R],'Curvature',1,'EdgeColor',[1,0,0],'linewidth',3)
%         plot(x0,y0+R,'>','markersize',10,'markerfacecolor',[0,1,0]);
        r=0.1
        t=linspace(100,315);
        plot(r*cosd(t)+x0,r*sind(t)+y0,'linewidth',3,'Color',[1 0 0])
        plot(r*cosd(100)+x0,r*sind(100)+y0,'>','markersize',12,'markerfacecolor',[1 0 0],'color',[1 0 0]);
    end
end

%%
grid on
axis equal 
shownode(show_node)
show_element(show_elem)

end   