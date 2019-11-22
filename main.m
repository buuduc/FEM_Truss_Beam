
function main()

%%copy doan nay vao opening function
clc
% close all

clear point elem bodem show_node 
global point
global elem
global bodem
global show_node
global show_elem
show_node=1
show_elem=1
bodem=[];
point =[];
elem=[];
grid on
hold off
%%
% figure
% ax=axes('Position',[0.0267857142857143 0.0480952380952383 0.680357142857143 0.747142857142857]);

% hold off
% node(3,1,1)
% element(2,3)
% element(1,3)
% element(1,2)
% F(3,'fx',10e3)
% F(3,'fy',-20e3)
% 
% boundary_condition(1,'all');
% boundary_condition(2,'all');

node(3,2,0);
node(4,1,-1);
node(1,0,0);
node(2,1,0);
% node(5,9,-9);
% node(7,-10,10);

% element('beam',2,7,8,10e-4);
% F(1,'m',-100)
% delef(1,'m')
axis equal
% pos_elem([3 4])
% 
% % % DELE('element',[3 4])
% % % DELE('node',4)
% % 
%%
element('truss',1,1,4,100e-4);
element('truss',2,2,4,100e-4);
element('truss',3,3,4,100e-4);
element('truss',2,2,3,10)
F(4,'fx',10000);
F(4,'fy',-10000);
% F(4,'m',1000)
% F(1,'m',-1000)
boundary_condition(2,'ux');
boundary_condition(1,'ux');
boundary_condition(3,'ux');
boundary_condition(2,'uy');
boundary_condition(1,'uy');
boundary_condition(3,'uy');
boundary_condition(3,'all');
% axis equal
% buonnguqua('moment',1,1)
% buonnguqua('taptrung',2,5)
% SOLVE(1e11)
%%beam


% E=2e11
% A=100e-4
% J=1000e-8
% node(1,0,0)
% node(0,0,0)

%%
% % DELE('element',2)
% % hold off
% % hold off
% % % CLC_VAR()
% % 
% % draw_plot()

% bieudonoiluc()
% SOLVE_B(10,5)
% elem
% end
% anima()
