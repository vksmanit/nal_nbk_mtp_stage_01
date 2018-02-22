function nal_nbk_A_and_B_part = nal_nbk_partition(cktnetlist)
% --------------------------------------------------------------------------------
% Syntax : nal_nbk_A_and_B_part = nal_nbk_partition(cktnetlist) 
%
% This function will return the nal_nbl_A_and_B_part matrix 
% representing each element with the row index value equal to '1', if 
% it is belongs to the A-part otherwise it is in B-parts.
%
% V-source and Low resistances are kept in part A
% I-source and High resistances are kept in part B
% --------------------------------------------------------------------------------

% ------------------------ written on : Sep 21, 2017 -----------------------------

   
    nal_nbk_A_and_B_part = zeros(1,length(cktnetlist.elements));
    for i = 1:length(cktnetlist.elements) %iterating through all the elements of cktnetlist
        
        % find if it is V-source put it into the A-part
        if (strcmp(cktnetlist.elements{i}.name(1), 'V')) %compare it if it is V-source
            nal_nbk_A_and_B_part(i) = 1;
        end
        % find the value of resistance source 
        % if it is less than the 1k ohm put it into A part
         
        if (strcmp(cktnetlist.elements{i}.name(1), 'R')) %compare it if it is Resistance 
            if(cell2mat(cktnetlist.elements{i}.parms) <= 1000) 
                nal_nbk_A_and_B_part(i) = 1;
            end
        end

    end 


end

