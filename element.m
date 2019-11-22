function a=element(type,n,n1,n2,A)
global elem
global point
global bodem
a=1
for i=1:size(elem,1)
    if elem(i,[1 2])==[n1 n2] | elem(i,[1 2])==[n2 n1]
        a=0
    end
end
if size(elem,1)>0 && isempty(find(elem(:,4)==n))==0
    a=0
end
if a==1
elem=[elem;[n1 n2,A,n]];
end
switch type
    case 'truss'
    for i=1:size(elem,1)
        for j=1:2
            if isempty(find(bodem==elem(i,j)))
                bodem =[bodem;elem(i,j)]
                run=find(point(:,3)==elem(i,j))
                point(run,4)=size(bodem,1)
                point(run,5)=size(bodem,1)*2-1
                point(run,6)=size(bodem,1)*2
            end
        end
    end
case 'beam'
    for i=1:size(elem,1)
        for j=1:2
            if isempty(find(bodem==elem(i,j)))
                bodem =[bodem;elem(i,j)]
                run=find(point(:,3)==elem(i,j))
                point(run,4)=size(bodem,1)
                point(run,5)=size(bodem,1)*3-2
                point(run,6)=size(bodem,1)*3-1
                point(run,7)=size(bodem,1)*3
            end
        end
    end
end
draw_plot()
elem
end


 