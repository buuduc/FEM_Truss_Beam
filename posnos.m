function [x y k]=posnos(n)
global point
k=find(point(:,3)==n);
x=point(k,1);
y=point(k,2);
end