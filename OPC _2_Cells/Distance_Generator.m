% Amir kabir University of Technology (Tehran Polytechnic)
% Computer & Information Technology Engineering Department
% Resource Allocation in Wireless Networks
% OPC Simulation using MATLAB
% Programmer: SeyedHedayat Hosseini
% Date: December, 2015
% Matlab Version: R2014b
% ********************************************************** %

function [ D ] = Distance_Generator(V,T)
%Distance between the 2 users groups which uniformly distributed in 2 500*500 square
%Coverage area and 2 base stations that they are located in (250,250)& (750,250)

BS1=[250,250];
BS2=[750,250];

x=[50,150,400,450,550,600,700-V*T,850,950];
y=ones(1,9).*250;


%  vector of users location, Row 1 is X axis & Row 2 is Y axis of users
%  which indicate by matrix column indexes
Users=zeros(2,9);
for i=1:9
    Users(1,i)=x(1,i);
    Users(2,i)=y(1,i);
end

%BS allocation Vector
%Column 1 is X axis & Column 2 is Y axis of a Base station that
  %they allocate to user which indicate by matrix row indexes
BS=zeros(9,2);
for i=1:9
   if (Users(1,i)<500) 
       BS(i,1)=BS1(1,1);
       BS(i,2)=BS1(1,2);
   else    
       BS(i,1)=BS2(1,1);
       BS(i,2)=BS2(1,2);
   end
end

%Distance matrix, According to Comments of Dr Rasti: distance between user 
  %of j and allocated Base Station to user of i
D = zeros(9,9);
for i=1:9
    for j=1:9
        D(i,j) = (((Users(1,j) - BS(i,1))^2) + ((Users(2,j) - BS(i,2))^2))^(0.5);
    end
end

%str='Users locations are :\n';
%for i=1:NU*2
%    str=strcat(str,sprintf('User %d : (%0.5f,%3.5f)  ',i,Users(1,i),Users(2,i)));
%end
%disp(str);

figure(1);
plot(Users(1,:),Users(2,:),'rO ');
for i=1:9
    text(Users(1,i),Users(2,i),int2str(i));
end
hold on;
plot(BS(:,1),BS(:,2),'B^ ');
legend('Users','Base Stations');
xlabel('X');
ylabel('Y');
end