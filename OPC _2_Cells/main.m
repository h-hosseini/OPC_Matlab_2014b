% Amir kabir University of Technology (Tehran Polytechnic)
% Computer & Information Technology Engineering Department
% Resource Allocation in Wireless Networks
% OPC Simulation using MATLAB
% Programmer: SeyedHedayat Hosseini
% Date: December, 2015
% Matlab Version: R2014b
% ************* MAIN SCRIPT ************* %

clc;
clear all ;



BG_Noise = 10^(-10);
%BG_Noise = 0;%Background nois
%BG_Noise = input('Enter Background nois: ');

%P_Bar=1;
%P_Bar = 0;%Maximum Power 
%P_Bar = input('Enter Maximum Power: ');

eta = 0.05;
%eta = 0;%eta
%eta = input('Enter eta: ');

V=20;  %m/s

K=0.1;
initial_power=ones(1,9).*(rand(1,9)*10);

eta_vector=ones(1,9)*eta;

[P_OPC,SINR_OPC]= Unconstrained_OPC(eta_vector,BG_Noise,initial_power,K,V);    