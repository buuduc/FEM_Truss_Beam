function [x y k]=posnosreal(n) % ham the hien vi tri gia tri thuc
global point
k=find(point(:,4)==n);
x=point(k,1);
y=point(k,2);
end