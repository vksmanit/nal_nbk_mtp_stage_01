% ----------------------------------------------------------------------
% this code is modified version of code give by Mandar Sir. 
% it will performed deapth_first_search in disconnected graph
% ----------------------------------------------------------------------

% ------------------------ written on : Sep 30,2017 --------------------
function my_dfs_new()
    global g1;
    global edges;
    global nodeVisited;
    
    for i = 1:length(nodeVisited)
        if (nodeVisited(i)==0 )
            start_node = i;
            break;
        end
    end

    dfs_new(start_node)
% following if_else condition make sure that all the nodes visited or not    
    if (length(nonzeros(nodeVisited))< length(nodeVisited))
        my_dfs_new()
    else
        return ;       
    end


end

% ----------------------------------------------------------------------
function dfs_new (nodeId)
    global g1;
    global edges;
    global nodeVisited;
    nodeVisited(nodeId) = 1;
    adjEdgeIdsOfCurrentNode = g1{nodeId};
    for edgeId=adjEdgeIdsOfCurrentNode
        edge = edges(edgeId, :);
        otherNode = edge(1,2);
        if otherNode == nodeId 
            otherNode = edge(1,1);
        end
        if 1 == nodeVisited(otherNode)
            continue
        end
        fprintf ('visiting node [%d] from [%d] using edgeId [%d]\n', otherNode, nodeId, edgeId);
        dfs_new (otherNode);
    end
end
