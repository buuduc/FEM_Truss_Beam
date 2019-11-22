function a=nodebm(n,x,y)
global point
global show_node
shownode(show_node)  

if isempty(point)==1 | isempty(find(point(:,3)==n))==1
    point = [point;[x y n 0 0 0 0 0 0 -1 -1 -1]]
    % x y real fake ux uy uq fx fy mz cvx cvy cvz
    a=1
else
%     fprintf(' your node is exist, do you want to override ?')
%     if input('')==1
%         point(find(point(:,3)==n),:)=[]
%         point= [point;[x y n]]
%     else 
    a=0
    
end  
    draw_plot()

end
 