function buonnguqua(huhu,phantu,giatri)
global elem
elem(1,11)=0
switch huhu
    case 'phanbo'
        hang=find(elem(:,4)==phantu)
        [x1,y1,vitri1]=posnos(elem(hang,1)); % lay vi tri va so hang
        [x2,y2,vitri2]=posnos(elem(hang,2));
        L=sqrt((x1-x2)^2+(y1-y2)^2);
        P=giatri(1)
        Q=giatri(2)
        S=(y2-y1)/L;
        C=(x2-x1)/L;
        (L/2)*[P*C-Q*S,P*S+Q*C,Q*L/6,P*C-Q*S,P*S+Q*C,-Q*L/6]
        elem(hang,5:10)=elem(hang,5:10)+(L/2)*[P*C-Q*S,P*S+Q*C,Q*L/6,P*C-Q*S,P*S+Q*C,-Q*L/6]
        elem(hang,11)=1
    case 'taptrung'
        hang=find(elem(:,4)==phantu)
        [x1,y1,vitri1]=posnos(elem(hang,1)); % lay vi tri va so hang
        [x2,y2,vitri2]=posnos(elem(hang,2));
        L=sqrt((x1-x2)^2+(y1-y2)^2);
        Q=giatri
        S=(y2-y1)/L;
        C=(x2-x1)/L;
        elem(hang,5:10)=elem(hang,5:10)+1*[-Q*S/2,Q*C/2,Q*L/8,-Q*S/2,Q*C/2,-Q*L/8]
        elem(hang,11)=2
    case 'moment'
         hang=find(elem(:,4)==phantu)
        hang=find(elem(:,4)==phantu)
        [x1,y1,vitri1]=posnos(elem(hang,1)); % lay vi tri va so hang
        [x2,y2,vitri2]=posnos(elem(hang,2));
        L=sqrt((x1-x2)^2+(y1-y2)^2);
        M=giatri
        S=(y2-y1)/L;
        C=(x2-x1)/L;
        elem(hang,5:10)=elem(hang,5:10)+1*[3*(M/(2*L))*S,-3*(M/(2*L))*C,-M/4,-3*(M/(2*L))*S,3*(M/(2*L))*C,-M/4]
        elem(hang,11)=3
end