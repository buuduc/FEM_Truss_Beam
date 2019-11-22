function a = DELE(what,who)
global elem
global point
disp(elem)
a=0
switch what
    case 'node'
    if isempty(find(elem==who))
        [x y n]=posnos(who)
        point(n,:)=[]
        a=1
    end
    case 'element'
            k=find(elem(:,4)==who);
            elem(k,:)=[]
            a=1
end
draw_plot()
end

%     for i=1:size(elem,1)
%         if who == [elem(i,1),elem(i,2)] |who == [elem(i,2),elem(i,1)]
%             elem(i,:)=[]
%             break
%         end

%     end
        