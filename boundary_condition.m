function boundary_condition(n,dir)
global point
[x y k]=posnos(n)
switch dir
    case 'ux'
        point(k,11)=0
    case 'uy'
        point(k,12)=0
    case 'm'
        point(k,13)=0
    case 'all'
        point(k,13)=0
        point(k,11)=0
        point(k,12)=0
end
draw_plot()
end