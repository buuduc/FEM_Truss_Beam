clc 
clear all % dung clear all de xoa cac bien truoc do
close all
%tao ma tran chua toa do cac node
nut = [0 0 ;...% cot1 la hoanh do x
       1 0;...% cot2 la hoanh do y
       2 0;...%moi nut tong ung so thu tu
     1 -1];%tao ma tran phan tuket noi cac nut
%%khai bao vat lieu
E=1e11;
%khai bao dien tich
A=100e-4;
phantu = [1 4;...
2 4;...
3 4];
dof_he=2*size(nut,1);
%nhap dieu kien chuyen vi 
rangbuoc=[1 2 3 4 5 6];
%rangbuoc=[2 4 5 7];
%nhap dieu kin bien luc
Ftt=zeros(dof_he,1);%khoi tao vector tai tong the
Ftt(7)=10000; %luc tac dung theo phuong x ti nut 4=10000
Ftt(8)=-10000;

%luc tac dung theo phuong y ti nut 4=10000
f1=figure
hold on
grid on
% Tao ma tran phan tu ket noi cac nut
for i = 1: size(phantu,1)
    % lay so thu nut dau va nut cuoi cua tung phan tu tu ma tran "phantu"
    nuti = phantu(i,1);% cot1 la nut dau (nuti), lay hang i vi dang muon xet pt nthi i
    nutj = phantu(i,2);
    xi = nut(nuti,1);% hoanh do
    xj = nut(nutj,1);% hoanh do
    yi = nut(nuti,2);% tung do
    yj = nut(nutj,2);% tung do
    plot([xi xj],[yi yj],'-r','linewidth',4);
end
for i=1:size(phantu,1)
    nuti = phantu(i,1);% cot1 la nut dau (nuti), lay hang i vi dang muon xet pt nthi i
    nutj = phantu(i,2);
    xi = nut(nuti,1);% hoanh do
    xj = nut(nutj,1);% hoanh do
    yi = nut(nuti,2);% tung do
    yj = nut(nutj,2);% tung do
     text((xi+xj)/2,(yi+yj)/2+0.05,num2str(i),'BackgroundColor',[1 1 1],'EdgeColor',[0 0 0],...
    'FontSize',18)%,'Color',[1 0 0],'LineWidth',3)% chuyen tu dang so sang dang chuoi
end
pause(0)
for i = 1:size(nut,1) %lap tu nut 1 den nut 5 (so hang bang 4)
    plot(nut(i,1),nut(i,2),'.','markersize',40);%ve tung nut
    text(nut(i,1)+0.05,nut(i,2)+0.05,num2str(i),'BackgroundColor',[0 1 0],'EdgeColor',[0 0 0],...
    'FontSize',18,'Color',[1 0 0],'LineWidth',3)% chuyen tu dang so sang dang chuoi
end
%%vex dieu kien bien luc
for i=1:length(Ftt)
    m=mod(i,2);
    if m==1&&Ftt(i)~=0%luc ngang tuong ung bac tu do le
        x= nut((i+1)/2,1);%Ftt(i)+1=so nut*2
        y=nut((i+1)/2,2);
        if Ftt(i)>0
            quiver(x,y,0.5,0,'lineWidth',2,'color',[0 0.02 0.3],...
    'autoscalefactor',1);
        else
            quiver(x,y,-0.5,0,'lineWidth',2,'color',[0 0.02 0.3],...
    'autoscalefactor',1);
        end
    elseif m==0&&Ftt(i)~=0
        x= nut((i)/2,1);
        y=nut((i)/2,2);
       if Ftt(i)>0
            quiver(x,y,0,0.5,'lineWidth',2,'color',[0 0.02 0.3],...
    'autoscalefactor',1);
        else
            quiver(x,y,0,-0.5,'lineWidth',2,'color',[0 0.02 0.3],...
    'autoscalefactor',1);
        end
    end
    axis equal
end
%%ve dieu kien bien chuyen vi
for i=1:length(rangbuoc)
    m=mod(rangbuoc(i),2);
    if m==1 %xet rang buoc le 1,3,5
        x= nut((rangbuoc(i)+1)/2,1);
        y=nut((rangbuoc(i)+1)/2,2);
        %sonut*2-1=rangbuoc=>sonut=(rangbuoc+1)/2
        plot(x-0.15,y,'>','markersize',30,'markerfacecolor','y');
    elseif m==0
        x= nut((rangbuoc(i))/2,1);
        y=nut((rangbuoc(i))/2,2);
       plot(x,y-0.13,'^','markersize',30,'markerfacecolor','y');
    end
end
Ktt=zeros(dof_he,dof_he); % k tong the
axis equal
for i = 1: size(phantu,1)
nuti = phantu(i,1);% cot1 la nut dau (nuti), lay hang i vi dang muon xet pt nthi i
nutj = phantu(i,2);
xi = nut(nuti,1);% hoanh do
xj = nut(nutj,1);% hoanh do
yi = nut(nuti,2);% tung do
yj = nut(nutj,2);% tung do
L= sqrt((xj-xi)^2+(yj-yi)^2);%chieu dai cua tung phan tu
S=(yj-yi)/L;%sin goc hop boi phan tu va phuong ngang
C=(xj-xi)/L;%cos goc hop boi phan tu va phuong ngang
Kpt = ((E*A)/L)*[C^2 C*S -C^2 -C*S;....
                 C*S S^2 -C*S -S^2;....
                 -C^2 -C*S C^2 C*S;....
                -C*S -S^2 C*S S^2]
mt_bool=[phantu(i,1)*2-1 phantu(i,1)*2 phantu(i,2)*2-1 phantu(i,2)*2]
Ktt(mt_bool,mt_bool)= Ktt(mt_bool,mt_bool) + Kpt
%Ktt([1 2 7 8],[1 2 7 8])=Ktt([1 2 7 8],[1 2 7 8]) + Kpt
end
Ktt_nguyenven=Ktt%nghia la ktt ban dau truoc khi khu dieu kien bien
%%khu dieu kien bien
for i=1:length(rangbuoc)
    for j=1:dof_he%lap tu dot 1 den dot cuoi cung (tong so cot=dof
    Ktt(rangbuoc(i),j)=0;%hang can thiet la rang buoc
    Ktt(j,rangbuoc(i))=0;
    Ktt(rangbuoc(i),rangbuoc(i))=1;
    end
end
%%gia he pt dai so de tinh vector chuyen vi
Ktt
Utt=inv(Ktt)*Ftt
%%tinh phan luc
phan_luc=Ktt_nguyenven*Utt-Ftt
%% mo phong qua trinh bien dang cua ket cau
% figure
% hold on%chi tac dung cho 1 figure
% phongto=10000;
% N=100;
% for k=1:N%chia qua trinhk bien dang ra N lan
%     hold off
%     plot(0,0'.');
% % Tao ma tran phan tu ket noi cac nut
% for i = 1: size(phantu,1)%ve tat ca phan tu tai lan thu K
%     % lay so thu nut dau va nut cuoi cua tung phan tu tu ma tran "phantu"
%     nuti = phantu(i,1);% cot1 la nut dau (nuti), lay hang i vi dang muon xet pt nthi i
%     nutj = phantu(i,2);
%     xi = nut(nuti,1);% hoanh do
%     xj = nut(nutj,1);% hoanh do
%     yi = nut(nuti,2);% tung do
%     yj = nut(nutj,2);% tung do
%     plot([xi xj],[yi yj],'-r','linewidth',4);
%     mt_bool=[phantu(i,1)*2-1 phantu(i,1)*2 phantu(i,2)*2-1 phantu(i,2)*2]
%     Upt=Utt(mt_bool);%dau ket qua chuyen vi tong pha tu
%     plot([xi+Upt(1)*phongto xj+Upt(3)*phongto],[yi+Upt(2)*phongto yj+Upt(4)*phongto],'-g','linewidth',4);
%     % ve phan tu sau khi bi   en dang
%     hold on
%     grid on
%     axis equal
%     axis([0 2.5 -1.5 0.5]);
%     getframe
%    
% end
% end