function P(what,element,x)
global elem
if what=='beam'
%     for i=1:size(elem,1)
%         if element == [elem(i,1),elem(i,2)] |element == [elem(i,2),elem(i,1)]
%             elem(i,:)=[]
%             break
%         end
    [x1,y1,vitri1]=posnos(elem(hang,1));
    [x2,y2,vitri2]=posnos(elem(hang,2));
    L=sqrt((x1-x2)^2+(y1-y2)^2);
    S=(y2-y1)/L;
    C=(x2-x1)/L;
%     Kpt = ((E*A)/L)*[C^2 C*S -C^2 -C*S;....
%                  C*S S^2 -C*S -S^2;....
%                  -C^2 -C*S C^2 C*S;....
%                 -C*S -S^2 C*S S^2]
        P1=1-(3*x^2/L^2)+2*(x^3/L^3)
        P2=x-(2*x^2/L)+x^3/L
        P3=3*x^2/L^2-2*x^3/L^3
        P4=-x^2/L+x^3/L^2      
        n=pos_elem(element)
        elem(n,4:9)=[S*P1 C*P1 P2 -S*P3 C*P3 P4]
elseif what=='truss'
    

end
