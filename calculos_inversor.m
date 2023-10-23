clear all;
clc;

%% Calculos para o inversor CMOS e casamento

% Parametros
CD =9;
EF = 51;

Vtn = 0.4+(CD/100); %V
Vtp = -Vtn; %V

kn_prime = (390 + EF)*1e-6; %A/V2
kp_prime = (82 + EF)*1e-6; %A/V2

Vdd = 2; %V

Id_sat_min = (0.2 + (CD/100))*1e-3; %A

C_out = 30e-15; %F

L_tec = 0.15e-6; %m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


W_n = 2 * L_tec * (Id_sat_min)/(kn_prime * ((Vdd/2)-Vtn)^2);

W_p = (kn_prime/kp_prime) * W_n