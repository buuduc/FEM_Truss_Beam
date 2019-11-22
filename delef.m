function delef(n,direct)
global point
switch direct
    case 'fx'
        [x y k]=posnos(n)
        point(k,8)=0
        case 'fy'
        [x y k]=posnos(n)
        point(k,9)=0
        case 'm'
        [x y k]=posnos(n)
        point(k,10)=0
end
draw_plot()
end