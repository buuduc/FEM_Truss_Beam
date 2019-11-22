function TP=SOLVE(E)
global elem
global point
global bodem
point1=point
disp(bodem)
size(bodem,1)
tai=[]
cv=[]
a=find(point(:,5)==0);
point1(a',:)=[];
%lenh  de test
% a=[1 2;3 4;5 6;7 8]
% point1(:,5:6)=a
Ktt=zeros([size(bodem,1)*2,size(bodem,1)*2]);
for hang=1:size(elem,1)
    A=elem(hang,3)
    [x1,y1,vitri1]=posnos(elem(hang,1));
    [x2,y2,vitri2]=posnos(elem(hang,2));
    L=sqrt((x1-x2)^2+(y1-y2)^2);
    S=(y2-y1)/L;
    C=(x2-x1)/L;
    Kpt = ((E*A)/L)*[C^2 C*S -C^2 -C*S;....
                 C*S S^2 -C*S -S^2;....
                 -C^2 -C*S C^2 C*S;....
                -C*S -S^2 C*S S^2]
     mt_bool=[ point1(vitri1,5:6),point1(vitri2,5:6)]
     Ktt(mt_bool,mt_bool)= Ktt(mt_bool,mt_bool) + Kpt
end
danhso=[];
for hang=1:size(point1,1)
    tai(point1(hang,5),1)=point1(hang,8);
    tai(point1(hang,6),1)=point1(hang,9);
    danhso(point1(hang,5),1)=point1(hang,3);
    danhso(point1(hang,6),1)=point1(hang,3);
    cv(point1(hang,5))=point1(hang,11);
    cv(point1(hang,6))=point1(hang,12);
end
TP=[]

stt=1:size(cv,2); %stt la cai ham de danh dau cac thong so chuyen vi bi ngam
%stt la thang vo dung
K1=Ktt; 
tai1=tai
ttt=find(cv==-1)
stt(ttt)=[]
K1(stt,:)=[]
K1(:,stt)=[]
tai1(stt,:)=[]
giatri=inv(K1)*tai1
cv(ttt)=giatri'
taisol=Ktt*cv'-tai
for i=1:size(danhso)
    p=mod(i,2);
    if p==1
        TP=[TP; danhso(i,1) cv(i) 0 taisol(i) 0];
    elseif p==0
        TP(end,[3 5])=[cv(i) taisol(i)];
    end
end
% TP(2,2)
% TP(1,2)
global N
N=[]
for hang=1:size(elem,1)
    A=elem(hang,3)
    [x1,y1,vitri1]=posnos(elem(hang,1));
    [x2,y2,vitri2]=posnos(elem(hang,2));
    L=sqrt((x1-x2)^2+(y1-y2)^2);
    S=(y2-y1)/L;
    C=(x2-x1)/L;
    Se=(E*A/L)*[-C -S C S]
    bool=[ point1(vitri1,5:6),point1(vitri2,5:6)]
    Qe=cv(bool)'
    Ne=Se*Qe
    
    N=[N; elem(hang,4) Ne]
end
global result
result= TP




%%
global SL
SL=1
end


% se ra sao neu ta dung theo vi tri cua nó
