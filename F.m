function F(n,vector,result)
global point
[x y k]=posnos(n)
if vector == 'fx'
    point(k,8)=result
elseif vector =='fy'
    point(k,9)=result
elseif vector =='m'
    point(k,10)=result

end
draw_plot()
    
end


% global ax
% global point
% [x y k]=posnos(n)
% switch dir
%     case 'ux'
%     point(k,5)=0
%     case 'uy'
%     point(k,6)=0
%     case 'all'
%     point(k,5)=0
%     point(k,6)=0
% end
% draw_plot()