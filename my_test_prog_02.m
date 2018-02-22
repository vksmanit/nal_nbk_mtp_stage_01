function modified_g1_of_tree =  my_test_prog_02()
    global common_nodes;
    global modified_g1_of_tree;
    cktnetlist = nal_nbk_ckt_02_report();
    g1_of_tree_of_A = nal_nbk_nodeInfo_of_tree_of_A(cktnetlist);
    
    common_nodes = nal_nbk_A_and_B_common_nodes(cktnetlist);
    temp(g1_of_tree_of_A,cktnetlist)

end



function temp (g1_of_tree)
    global common_nodes;
    global modified_g1_of_tree;
    for i = 1:length(g1_of_tree)
        if(length(g1_of_tree{i}) == 1 && common_nodes(i) ~= 1)
            edge_entry_in_node_i = g1_of_tree{i};
            g1_of_tree(i) = [];
            common_nodes(i) = [];
            break;
        else 
            return;
        end
    end


    for i = 1:length(g1_of_tree)
        index = find(g1_of_tree{i} == edge_entry_in_node_i);
        if (index)
            g1_of_tree{i}(index) = [];
            break;
        end
    end

    

    modified_g1_of_tree = g1_of_tree;

    temp(modified_g1_of_tree)


end

