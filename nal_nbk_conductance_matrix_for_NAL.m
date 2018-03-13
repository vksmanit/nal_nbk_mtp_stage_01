function conductance_matrix_for_NAL = nal_nbk_conductance_matrix_for_NAL(cktnetlist)
% --------------------------------------------------------------------------------
% Syntax :- conductance_matrix_for_NAL = nal_nbk_conductance_matrix_for_NAL(cktnetlist)
%
% This function will return conductace_matrix_for_NAL of for network NAL i.e. graph Gx(AUL).
% --------------------------------------------------------------------------------

% ----------------------------- written on : Mar 13, 2018 ------------------------- 

     nal_nbk_A_and_B_part = nal_nbk_partition(cktnetlist) ;
     conductance_matrix_for_NAL = zeros(max(find(nal_nbk_A_and_B_part)));
    
     for i = 1:length(conductance_matrix_for_NAL)
         if (strcmp(cktnetlist.elements{i}.name(1),'R'))
             resistance_value = cell2mat(cktnetlist.elements{i}.parms);
             conductance_matrix_for_NAL (i,i) = 1/resistance_value;
         end
     end

     %EA 
end
