function  link_branch_for_NBK = nal_nbk_link_branch_for_NBK(cktnetlist)
% --------------------------------------------------------------------------------
% Syntax : link_branch_for_NBK = nal_nbk_link_branch_for_NBK(cktnetlist)
%
% This function return link branch for NBK network, which is used to
% write the loop matrix for NBK. 
% --------------------------------------------------------------------------------

% ------------------------ written on : Mar 17, 2018 -----------------------------
    [nodeVisited, edgeId_of_tree_of_B,dfs_nodes_of_B]= nal_nbk_dfs_search_of_G_dot_B(cktnetlist);

    % This function will give the tree for graph NBK i.e. for graph G.(BUK).
    % Is this true ???
    % Tree for G.B is as same as tree for graph NBK.
    % Also will the K branches will be the Link branched of NBK.
    nal_nbk_A_and_B_part = nal_nbk_partition(cktnetlist);
    B_branch_index = find(not(nal_nbk_A_and_B_part));
    K_branch = nal_nbk_K_branch_hybrid_analysis(cktnetlist);

    link_branch_for_NBK = [K_branch];
    not_member  = zeros(1,length(edgeId_of_tree_of_B));
    for i = 1:length(B_branch_index)
        if (not_member == ismember(edgeId_of_tree_of_B,B_branch_index(i)))
            % can we delete the member so that the serch won't be in full array
            link_branch_for_NBK = [link_branch_for_NBK, B_branch_index(i)];
        end
    end
end
