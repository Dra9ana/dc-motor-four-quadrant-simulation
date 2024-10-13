% Inicijalizacija parametara
% Nominalnli podaci
clear
close all;
clc;

Un = 230; % V
In = 26; % A
nn = 1430; % rpm
wn = nn*pi/30; % rad/s

% Motor
Ra = 0.9; % Ohms
La = 0.025; % H
Ta = La/Ra; % vremenska konstanta indukta
PsiFn = (Un-Ra*In)/wn; % Nominalni fluks
mn = PsiFn*In; % Nominalni momenat
J = 0.5; % kg*m^2 

% Aktuator
Udc = 250; % napod DC linka
fc = 1000; % uÄ?estanost komutacije Ä?opera
Tc = 1/fc;
ucmax=1;
ucmin=-1;

Ts=10e-6; % perioda odabiranja
%% Podesavanja

% vremenske konstante u sekundama
Tpi = 2.6e-3;
Tpu = 2.6e-3;
Tpw = 5e-3;

% pojacanja 
Kpi = 0.2;% V/A
Kpw = 10/150;% V*s/rad

% regulacija struje
Kc = Udc;
Ti = Ta;
Te = Tc+Tpi;
Ki = Ta*Ra/2/Te/Kc/Kpi;

% regulacija brzine
Te_prim=Tpw+2*(Tc+Tpi);

Kw=J*Kpi/2/Te_prim/PsiFn/Kpw;
Tw=4*Te_prim;

sim('Simulacija_18a.slx');
