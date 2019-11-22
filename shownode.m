function shownode(i)
global point
if i==1
    for i=1:size(point,1)
        text(point(i,1)+0.1,point(i,2)-0.1,num2str(point(i,3)),'BackgroundColor',[0 1 0],'EdgeColor',[0 0 0],...
    'FontSize',10,'Color',[1 0 0],'LineWidth',3)
    end
end
end