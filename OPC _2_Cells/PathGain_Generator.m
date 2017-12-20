% Amir kabir University of Technology (Tehran Polytechnic)
% Computer & Information Technology Engineering Department
% Resource Allocation in Wireless Networks
% OPC Simulation using MATLAB
% Programmer: SeyedHedayat Hosseini
% Date: December, 2015
% Matlab Version: R2014b
% ********************************************************** %

function [ H ] = PathGain_Generator( D,K )
% Generate the path gain of users
% D is the distance matrix
L1=length(D(:,1));
L2=length(D(1,:));
H = zeros(L1,L2);

for i=1:L1
    for j=1:L2
        H(i,j) = K*D(i,j)^(-3);
    end
end
end