clear all
close all
clc

%%%%%%%%%%%%%%%%%% M = 1.7 %%%%%%%%%%%%%%%%%%%
Alpha1 = [0 3 7 11 18 24];
CD1 = [0.1232 0.1279 0.1635 0.23207 0.4299...
    0.67665];
plot(Alpha1,CD1,'-d','LineWidth',2,...
'MarkerEdgeColor','k','MarkerFaceColor','m',...
                         'MarkerSize',7)
hold all
grid on
axis([0 25 0 0.9])
xlabel('Angle of Atack'); ylabel('CD')
axis auto
axis normal
%%%%%%%%%%%%%%%%%% M = 2.2 %%%%%%%%%%%%%%%%%%%
Alpha2 = [0 2 5 9 13 17 20 24];
CD2 = [0.1026 0.1069 0.1257 0.17528 0.2547...
    0.3662 0.4721 0.64479];
plot(Alpha2,CD2,'-o','LineWidth',2,...
'MarkerEdgeColor','k','MarkerFaceColor','y',...
                         'MarkerSize',7)
%%%%%%%%%%%%%%%%%% M = 3.0 %%%%%%%%%%%%%%%%%%%
Alpha3 = [0 4 8 15 19 24];
CD3 = [0.082066 0.0957 0.13030 0.24162...
    0.3535 0.55408];
plot(Alpha3,CD3,'-s','LineWidth',2,...
'MarkerEdgeColor','k','MarkerFaceColor','c',...
                         'MarkerSize',5)
%%%%%%%%%%%%%%%%%% M = 3.7 %%%%%%%%%%%%%%%%%%%
Alpha4 = [0 3 5 9 13 17 20 24];
CD4 = [0.06966 0.0773 0.0867 0.12585 0.1766...
    0.25751 0.3427 0.48742];
plot(Alpha4,CD4,'-h','LineWidth',2,...
'MarkerEdgeColor','k','MarkerFaceColor','g',...
                         'MarkerSize',7)
legend1 = legend('M = 1.7','M = 2.2',...
    'M = 3.0','M = 3.7');
set(legend1,...
 'Position',[0.14345 0.7191 0.18392 0.188]);

%%%%%%%%%%%%% Drag Calculation %%%%%%%%%%%%%
P=polyfit(Alpha1,CD1,3);
P2=polyfit(Alpha2,CD2,3);
P3=polyfit(Alpha3,CD3,3);
P4=polyfit(Alpha4,CD4,3); M=[1.7 2.2 3.0 3.7];
d1 = 7100.32*P*M(1)^2; d2 = 7100.32*P2*M(2)^2;
d3 = 7100.32*P3*M(3)^2; d4 = 7100.32*P4*M(4)^2;
A=0:0.1:24;
dd1=polyval(d1,A); dd2=polyval(d2,A);
dd3=polyval(d3,A); dd4=polyval(d4,A);
figure(2)
plot(A,dd1,'r','LineWidth',2); hold all
plot(A,dd2,'b','LineWidth',2)
plot(A,dd3,'g','LineWidth',2)
plot(A,dd4,'k','LineWidth',2)
grid on
xlabel('Angle of Atack [Degree]')
ylabel('Drag [N]')
legend1 = legend('M = 1.7','M = 2.2',...
    'M = 3.0', 'M = 3.7');
set(legend1,'Position',[0.14 0.74 0.29 0.16]);
axis auto
axis normal

%%%%%% Gravity Force VS Time and Theta %%%%%
clc
clear all
close all
g = 9.81; mo = 10; Mu = 0.2; mc = 5.5; j=0;
for theta = 0 : 15 : 90 % [deg]
    j= j + 1; i=0;
for t = 0:0.001:100
  i = i +1; tt(i) = t; FuelCon = Mu.*t;
  Fg(i) = (mo - FuelCon).*g.*sind(theta);
if Fg(i) <= 0
    break
elseif FuelCon >= mc
    break
end
end
ttt = [tt tt(i)+0.2*tt(i)]; FFg = [Fg Fg(i)]; 
plot(ttt,FFg,'lineWidth',2); hold all
end
grid on
xlabel('Time'); ylabel('Gravity Force')
legend1 = legend('Theta = 0','Theta = 15',...
    'Theta = 30','Theta = 45','Theta = 60',...
    'Theta = 75','Theta = 90');
set(legend1,...
    'Position',[0.68 0.588 0.214 0.322]);

%%%%%% Gravity Force VS Time and Mu %%%%%%
clc
clear all
close all
g = 9.81; mo = 10; theta = 90; mc = 5.5; j=0;
for Mu = 0.1
    j= j+1; i=0;
for T = 0:0.01:25
  i = i +1; tt(i) = T; FuelCon = Mu.*T;
  Fg(i) = (mo - FuelCon).*g.*sind(theta);
if FuelCon >= mc
   break
end
end
ttt = [tt tt(i)+0.2*tt(i)]; FFg = [Fg Fg(i)];
plot(ttt,FFg,'lineWidth',2); hold all
end
clear T tt Fg FuelCon ttt FFg
for  Mu=0.25
    j= j+1; i=0;
for T = 0:0.01:25
  i = i +1; tt(i) = T; FuelCon = Mu.*T;
  Fg(i) = (mo - FuelCon).*g.*sind(theta);
if FuelCon >= mc
   break
end
end
ttt = [tt tt(i)+0.2*tt(i)]; FFg = [Fg Fg(i)];
plot(ttt,FFg,'lineWidth',2)
end
clear T tt Fg FuelCon ttt FFg 
for  Mu=0.5
    j= j+1; i=0;
for T = 0:0.01:25
  i = i +1; tt(i) = T; FuelCon = Mu.*T;
  Fg(i) = (mo - FuelCon).*g.*sind(theta);
if FuelCon >= mc
   break
end
end
ttt = [tt tt(i)+0.2*tt(i)]; FFg = [Fg Fg(i)];
plot(ttt,FFg,'lineWidth',2)
end
clear T tt Fg FuelCon ttt FFg
for  Mu=0.75
    j= j+1; i=0;
for T = 0:0.01:25
  i = i +1; tt(i) = T; FuelCon = Mu.*T;
  Fg(i) = (mo - FuelCon).*g.*sind(theta);
if FuelCon >= mc
   break
end
end
ttt = [tt tt(i)+0.2*tt(i)]; FFg = [Fg Fg(i)];
plot(ttt,FFg,'lineWidth',2)
end
clear T tt Fg FuelCon ttt FFg
for  Mu=1.0
    j= j+1; i=0;
for T = 0:0.01:25
  i = i +1;  tt(i) = T; FuelCon = Mu.*T;
  Fg(i) = (mo - FuelCon).*g.*sind(theta);
if FuelCon >= mc
   break
end
end
ttt = [tt tt(i)+0.2*tt(i)]; FFg = [Fg Fg(i)];
plot(ttt,FFg,'lineWidth',2)
end
grid on
xlabel('Time'); ylabel('Gravity Force') 
legend1 = legend('Mu = 0.1  [kg/s]','Mu = 0.25  [kg/s]',...
    'Mu = 0.5 [kg/s]','Mu = 0.75 [kg/s]','Mu =   1 [kg/s]');
set(legend1,...
    'Position',[0.142 0.128 0.267 0.322]);

%%%%%%%%%%%%%%%% Trust Force %%%%%%%%%%%%%%%%%%
CD_VS_Alpha; close all
mo = 10; mc = 5.5; Vs = 340; g = 9.81;
TTTT = [dd1;dd2;dd3;dd4];
C1 = 425.79219; C2 = 67.5694;
M_max = [1.7 2.2 3.0 3.7]; i=0;
for Mu = 0.25:0.25:1.0
i = i + 1; HH = Mu; j=0;    
figure(i)
for j= 1:4
    Drag = TTTT(j,:);
    T = Drag + C1*Mu*M_max(j) + C2;
    plot(A,T,'LineWidth',2); hold all
end
xlabel('Alpha');ylabel('Thrust Force'); grid on
legend1 = legend('M = 1.7','M = 2.2',...
    'M = 3.0','M = 3.7');
set(legend1,...
'Position',[0.143 0.719 0.1839 0.188]);
end







