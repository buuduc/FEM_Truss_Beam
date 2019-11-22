function TP=SOLVE_B(E,J)
global elem
global point
global bodem
point1=point
global SL

disp(bodem)
size(bodem,1)
tai=[]
cv=[]
a=find(point(:,5)==0);
point1(a',:)=[];
%lenh  de test
% a=[1 2;3 4;5 6;7 8]
% point1(:,5:6)=a
taimax=max(max(point(:,5:7)))
taithanh=zeros(taimax,1)
if size(elem,2)>6
for i=1:size(elem,1)
    [x1,y1,vitri1]=posnos(elem(i,1)); % lay vi tri va so hang
    [x2,y2,vitri2]=posnos(elem(i,2));
    bool=[point(vitri1,[5 6 7]),point(vitri2,[5 6 7])]
    taithanh(bool,1)=taithanh(bool,1)+[elem(i,5:10)]'
end
end
Ktt=zeros([size(bodem,1)*3,size(bodem,1)*3]); % the hien moi lien he
for hang=1:size(elem,1) 
    A=elem(hang,3)
    [x1,y1,vitri1]=posnos(elem(hang,1)); % lay vi tri va so hang
    [x2,y2,vitri2]=posnos(elem(hang,2));
    L=sqrt((x1-x2)^2+(y1-y2)^2);
    S=(y2-y1)/L;
    C=(x2-x1)/L;
    B=12*J/(L^2);
Kpt = (E/L)*[A*C^2+B*S^2 (A-B)*C*S -B*L*S/2 -(A*C^2+B*S^2) -(A-B)*C*S -B*L*S/2;
(A-B)*C*S A*S^2+B*C^2 B*L*C/2 -(A-B)*C*S -(A*S^2+B*C^2) B*L*C/2;
-B*L*S/2 B*L*C/2 4*J B*L*S/2 -B*L*C/2 2*J;
-(A*C^2+B*S^2) -(A-B)*C*S B*L*S/2 A*C^2+B*S^2 (A-B)*C*S B*L*S/2;
-(A-B)*C*S -(A*S^2+B*C^2) -B*L*C/2 (A-B)*C*S A*S^2+B*C^2 -B*L*C/2;
-B*L*S/2 B*L*C/2 2*J B*L*S/2 -B*L*C/2 4*J]
     mt_bool=[ point1(vitri1,5:7),point1(vitri2,5:7)]
     Ktt(mt_bool,mt_bool)= Ktt(mt_bool,mt_bool) + Kpt
end
danhso=[];
for hang=1:size(point1,1)
    tai(point1(hang,5),1)=point1(hang,8);
    tai(point1(hang,6),1)=point1(hang,9);
    tai(point1(hang,7),1)=point1(hang,10);
    danhso(point1(hang,5),1)=point1(hang,3);
    danhso(point1(hang,6),1)=point1(hang,3);
    danhso(point1(hang,7),1)=point1(hang,3);
    cv(point1(hang,5))=point1(hang,11);
    cv(point1(hang,6))=point1(hang,12);
    cv(point1(hang,7))=point1(hang,13);
end
TP=[]
danhso
cv
tai=tai+taithanh

stt=1:size(cv,2); %stt la cai ham de danh dau cac thong so chuyen vi bi ngam
%stt la thang vo dung
K1=Ktt; 
tai1=tai;
ttt=find(cv==-1)
stt(ttt)=[];
K1(stt,:)=[];
K1(:,stt)=[];
tai1(stt,:)=[];
giatri=inv(K1)*tai1;
cv(ttt)=giatri';
taisol=Ktt*cv'-tai;
for i=1:size(danhso);
    p=mod(i,3);
    if p==1
        TP=[TP; danhso(i,1) cv(i) 0 0 taisol(i) 0 0];
    elseif p==2
        TP(end,[3 6])=[cv(i) taisol(i)];
    elseif p==0
        TP(end,[4 7])=[cv(i) taisol(i)];
    end
    end
% TP(2,2)
% TP(1,2)
global result
result= TP
SL=1
end

% se ra sao neu ta dung theo vi tri cua nó
