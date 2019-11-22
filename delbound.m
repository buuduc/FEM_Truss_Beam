function delbound(n,dir)
global point
[x y k]=posnos(n)
switch dir
    case 'ux'
        point(k,11)=-1
    case 'uy'
        point(k,12)=-1
    case 'm'
        point(k,13)=-1
    case 'all'
        point(k,13)=-1
        point(k,11)=-1
        point(k,12)=-1
end
draw_plot()
end