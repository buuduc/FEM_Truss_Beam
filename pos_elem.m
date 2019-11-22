function n=pos_elem(a)
global elem
n=0
for i=1:size(elem,1)
    if elem(i,[1 2])==a
        n=i
        break
    end
end

