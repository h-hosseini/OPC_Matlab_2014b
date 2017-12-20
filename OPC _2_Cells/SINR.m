% Amir kabir University of Technology (Tehran Polytechnic)
% Computer & Information Technology Engineering Department
% Resource Allocation in Wireless Networks
% OPC Simulation using MATLAB
% Programmer: SeyedHedayat Hosseini
% Date: December, 2015
% Matlab Version: R2014b
% ********************************************************** %

function [Gamma_2cells] = SINR( P , noise,K,V,T)
% Generate the SINR of users
D = Distance_Generator(V,T)
H=PathGain_Generator( D,K );

L1=length(H(:,1));
L2=length(H(1,:));
Gamma_2cells=zeros(1,L2);


for i=1:L1
   temp = 0;
   for j=1:L2%Interference imposed to user i from others at BS
       if(i~= j)
          temp = temp + H(i,j)*P(j);
       end
   end

temp = temp + noise; %Total interference imposed to user i at BS
Gamma_2cells(i) = (P(i)*H(i,i))/(temp);
end




end