function show_element(turn)
global elem
if turn==1
    for i=1:size(elem,1)
        nuti = elem(i,1);% cot1 la nut dau (nuti), lay hang i vi dang muon xet pt nthi i
        nutj = elem(i,2);
%         xi = nut(nuti,1);% hoanh do
%         xj = nut(nutj,1);% hoanh do
%         yi = nut(nuti,2);% tung do
%         yj = nut(nutj,2);% tung do
        [xi,yi,n]=posnos(nuti)
        [xj,yj,n]=posnos(nutj)
         text((xi+xj)/2,(yi+yj)/2+0.05,num2str(elem(i,4)),'BackgroundColor',[1 1 1],'EdgeColor',[0 0 0],...
        'FontSize',18)%,'Color',[1 0 0],'LineWidth',3)% chuyen tu dang so sang dang chuoi
    end
end
end