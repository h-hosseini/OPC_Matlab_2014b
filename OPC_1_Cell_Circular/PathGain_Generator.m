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
H = zeros(length(D),1);
    for i=1:length(D)
        H(i) = K*D(i)^(-3);
    end

end


