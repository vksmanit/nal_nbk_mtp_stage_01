% This code was give by Mandar Datar for referance of deapth first searc
% After running this in matlab/octave run dfs_new(nodeId) to get dfs_search of graph complete.

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
