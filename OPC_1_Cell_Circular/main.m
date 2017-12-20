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


NU=5;

BG_Noise = 10^(-10);

eta = 0.05;


D=Distance_Generator(NU);
H=PathGain_Generator(D,0.1);


initial_power=ones(NU,1).*(rand(NU,1)*1);
%initial_power=[0.129906208473730;0.568823660872193;0.469390641058206 ;0.011902069501241;0.337122644398882];

eta_vector=ones(NU,1)*eta;
[P_OPC,SINR_OPC]= Unconstrained_OPC( NU,eta_vector,BG_Noise,initial_power,H);    