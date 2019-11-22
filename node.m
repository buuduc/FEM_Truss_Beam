function a=node(n,x,y)
global point
global show_node
shownode(show_node)  

if isempty(point)==1 | isempty(find(point(:,3)==n))==1
    point = [point;[x y n 0 0 0 0 0 0 0 -1 -1 -1]];
    a=1;
else
%     fprintf(' your node is exist, do you want to override ?')
%     if input('')==1
%         point(find(point(:,3)==n),:)=[]
%         point= [point;[x y n]]
%     else 
    a=0;
    
end  
    draw_plot();

end
 