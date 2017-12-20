% Amir kabir University of Technology (Tehran Polytechnic)
% Computer & Information Technology Engineering Department
% Resource Allocation in Wireless Networks
% OPC Simulation using MATLAB
% Programmer: SeyedHedayat Hosseini
% Date: December, 2015
% Matlab Version: R2014b
% ********************************************************** %

function [SINR] = SINR(H , P , noise,NU)
% Generate the SINR of users


SINR = zeros(NU,1); 
 
for i=1:NU
    intf = 0;
    for j=1:NU
        if j~= i
            intf = intf + P(j)*H(j);
        end
    end
    SINR(i) = P(i)*H(i) / (intf + noise);
end


end