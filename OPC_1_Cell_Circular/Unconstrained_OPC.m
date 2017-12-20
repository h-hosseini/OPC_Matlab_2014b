% Amir kabir University of Technology (Tehran Polytechnic)
% Computer & Information Technology Engineering Department
% Resource Allocation in Wireless Networks
% OPC Simulation using MATLAB
% Programmer: SeyedHedayat Hosseini
% Date: December, 2015
% Matlab Version: R2014b
% ********************************************************** %

function [P,Gamma]= Unconstrained_OPC( NU,eta_vector,Noise,initial_power,H)
%This function simulate Costrained TPC algorithm
iteration=150;
P(:,1)=initial_power;
Gamma(:,1)=SINR(H,initial_power,Noise,NU);
 % If we want to delete a user, The following For loop & its condition are used 
%for i=1:NU
    
%if isnan(P(NU,1))
 %           P(i,1)=0;
%end
        % The following line is used by Constrained OPC algorithm

%if P(i,1)>P_bar(i,1)
  %      P(i,1)= P_bar(i,1);
 %   end
%end

for i=2:iteration
    P(:,i)=eta_vector(:,1).*Gamma(:,i-1)./P(:,i-1);
   % for j=1:NU
   %     if isnan(P(j,i))
   %         P(j,i)=0;
   %     end
        % The following lines are used by Constrained OPC algorithm
        %if P(i,j)>P_bar(1,j)
        %    P(i,j)= P_bar(1,j);
       % end
    
    %end
 Gamma(:,i)=SINR(H,P(:,i),Noise,NU);


 
end
figure(2);

for i=1:NU
    

   
    plot(1:iteration,P(i,:)), grid on;
    
    xlabel('Iteration');
    ylabel('Powers');
    hold on;
end

figure(3);

for i=1:NU
    

   
    plot(1:iteration,Gamma(i,:)),grid on;
    
    xlabel('Iteration');
    ylabel('SINR');
    hold on;
end


end



