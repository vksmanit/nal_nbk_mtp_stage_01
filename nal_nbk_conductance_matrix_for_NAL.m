function conductace_matrix_for_NAL = nal_nbk_conductace_matrix_for_NAL(cktnetlist)
% --------------------------------------------------------------------------------
% Syntax :- conductace_matrix_for_NAL = nal_nbk_conductace_matrix_for_NAL(cktnetlist)
%
% This function will return conductace_matrix_for_NAL of for network NAL i.e. graph Gx(AUL).
% --------------------------------------------------------------------------------

% ----------------------------- written on : Mar 13, 2018 ------------------------- 

     nal_nbk_A_and_B_part = nal_nbk_partition(cktnetlist) ;
     G = zeros(max(find(nal_nbk_A_and_B_part)));
    
     for i = 1:length(G)
         if (strcmp(cktnetlist.elements{i}.name(1),'R'))
             resistance_value = cell2mat(cktnetlist.elements{i}.parms);
             G(i,i) = 1/resistance_value;
         end
     end
end
