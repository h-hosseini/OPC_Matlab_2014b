% Amir kabir University of Technology (Tehran Polytechnic)
% Computer & Information Technology Engineering Department
% Resource Allocation in Wireless Networks
% OPC Simulation using MATLAB
% Programmer: SeyedHedayat Hosseini
% Date: December, 2015
% Matlab Version: R2014b
% ********************************************************** %

function [P,Gamma]= Unconstrained_OPC( eta_vector,Noise,initial_power,K,V)
%This function simulate Costrained TPC algorithm

iteration=201;

%memory allocation
P=zeros(iteration,9);
Gamma=zeros(iteration,9);

P(1,:)=initial_power;
Gamma(1,:)=SINR(initial_power,Noise,K,V,0);

%for i=1:9

    
%if isnan(P(1,i))
%            P(1,i)=0;
%end
        % The following line is used by Constrained OPC algorithm

%if P(1,i)>P_bar(1,i)
  %      P(1,i)= P_bar(1,i);
 %   end
%end

for i=2:iteration
    T=(i-1)*10^(-1) %*10^-2 %*(10^(-3));
    
    P(i,:)=eta_vector(1,:).*Gamma(i-1,:)./P(i-1,:);
    %Delete & constrained
    %for j=1:9 
     %   if isnan(P(i,j))
      %      P(i,j)=0;
     %   end
        % The following lines are used by Constrained OPC algorithm
        %if P(i,j)>P_bar(1,j)
        %    P(i,j)= P_bar(1,j);
       % end
    %end

     Gamma(i,:)=SINR(P(i,:),Noise,K,V,T);


 
end


 i=1:iteration;
    

   figure(2);
    plot(i,P(i,2),i,P(i,7),i,P(i,8)),grid on;
    
    xlabel('Iteration');
    ylabel('Powers');
   


figure(3);
i=1:iteration;
    

   
plot(i,Gamma(i,2),i,Gamma(i,7),i,Gamma(i,8)),grid on;    
xlabel('Iteration');
ylabel('SINR');
hold on;



end



