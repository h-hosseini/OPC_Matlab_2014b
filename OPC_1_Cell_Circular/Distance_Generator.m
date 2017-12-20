% Amir kabir University of Technology (Tehran Polytechnic)
% Computer & Information Technology Engineering Department
% Resource Allocation in Wireless Networks
% OPC Simulation using MATLAB
% Programmer: SeyedHedayat Hosseini
% Date: December, 2015
% Matlab Version: R2014b
% ********************************************************** %

function [ d ] = Distance_Generator(NU)

d = zeros(NU,1);

for i=1:NU
    d(i,1) = rand(1)*250;
end

%d=[100;100;200;230;250];


figure(1);
plot(d,0,'rO ');
for i=1:NU
    text(d(i,1),.3,int2str(i));
end
hold on;
plot(0,0,'B* ');
%legend('Users','Base Stations');
xlabel('Distance');
ylabel(' ');
end