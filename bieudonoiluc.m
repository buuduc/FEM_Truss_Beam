function bieudonoiluc()
cla
global elem
global N
global point
hold on
axis equal
xoay_90=[cos(pi/2) sin(pi/2);-sin(pi/2) cos(pi/2)];
xoay_tru_90=[cos(-pi/2) sin(-pi/2);-sin(-pi/2) cos(-pi/2)];
m=abs(N(1,2));
for i=1:(size(N,1)-1)
    if abs(N(i,2))<abs(N(i+1,2))
        m=abs(N(i+1,2));
    end
end
for i=1:size(N,1)
    nuti = elem(i,1);
    nutj = elem(i,2);
    [xi,yi,dkm]=posnos(nuti);
    [xj,yj,dkm]=posnos(nutj);
%     xi=nut(nuti,1);;
%     xj=nut(nutj,1);
%     yi=nut(nuti,2);
%     yj=nut(nutj,2);
    AD=[xj-xi;yj-yi];
    %plot([xi xj],[yi yj],'-b','linewidth',4)
    if N(i,2)>0
        OE=xoay_90*AD;
       %rectangle('Position',[xj,yj,xi+OE(1)*0.2*abs(N(i,2))/m,yi+OE(2)*0.2*abs(N(i,2))/m],'FaceColor',[1 0 0])
       x=[xi xj xj+OE(1)*0.2*abs(N(i,2))/m xi+OE(1)*0.2*abs(N(i,2))/m xi];
       y=[yi yj yj+OE(2)*0.2*abs(N(i,2))/m yi+OE(2)*0.2*abs(N(i,2))/m yi];
       fill(x,y,'r')
    else
        OE=xoay_tru_90*AD;
        %rectangle('Position',[xj,yj,xi+OE(1)*0.2*abs(N(i,2))/m,yi+OE(2)*0.2*abs(N(i,2))/m],'FaceColor',[0 1 0])
        x=[xi xj xj+OE(1)*0.2*abs(N(i,2))/m xi+OE(1)*0.2*abs(N(i,2))/m xi];
        y=[yi yj yj+OE(2)*0.2*abs(N(i,2))/m yi+OE(2)*0.2*abs(N(i,2))/m yi];
        fill(x,y,'b')
    end
end
for i=1:size(elem,1)
    nuti = elem(i,1);
    nutj = elem(i,2);
    [xi,yi,dkm]=posnos(nuti);
    [xj,yj,dkm]=posnos(nutj);
%     xi=nut(nuti,1);
%     xj=nut(nutj,1);
%     yi=nut(nuti,2);
%     yj=nut(nutj,2);
    AD=[xj-xi;yj-yi];
    plot([xi xj],[yi yj],'-b','linewidth',4)
    if (xj-xi)<=0 && (yj-yi)>=0 || (xj-xi)>=0 && (yj-yi)<=0 
        text((xi+xj)/2+0.05,(yi+yj)/2+0.05,num2str(i),'LineStyle','none',...
        'EdgeColor',[0 0 0],...
        'FontSize',12,...
        'Color',[0 0 0 ]);% chuyen tu dang so sang dang chuoi
    elseif (xj-xi)<0 && (yj-yi)<0 || (xj-xi)>0 && (yj-yi)>0 
        text((xi+xj)/2-0.05,(yi+yj)/2+0.05,num2str(i),'LineStyle','none',...
        'EdgeColor',[0 0 0],...
        'FontSize',12,...
        'Color',[0 0 0]);% chuyen tu dang so sang dang chuoi
    end
end