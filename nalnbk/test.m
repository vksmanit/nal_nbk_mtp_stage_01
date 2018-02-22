%        1   2   3   4
% This code was give by Mandar Datar for referance of deapth first searc
% After running this in matlab/octave run dfs_new(nodeId) to get dfs_search of graph complete.


global edges;
edges = [1,2;2,3;1,3;1,4];

global N;
N = 4;

global g1;
g1 = cell (N, 1);
for i=1:size (edges, 1)
    edge = edges(i,:);
    node1 = edge(1,1);
    node2 = edge(1,2);
    %%% note here if we remove 'if isempty (g1(node1))' condition then also it works fine
    if isempty (g1(node1))
        g1{node1} = [i];
    else
        g1{node1} = [g1{node1}, i];
    end
    if isempty (g1(node2))
        g1{node2} = [i];
    else
        g1{node2} = [g1{node2}, i];
    end
end

global nodeVisited;
nodeVisited = zeros (size (g1, 1), 1);






% g1 = { [2, 4]; [1, 3]; [2, 4]; [1, 1, 3] };
% g1 = { [2, 3, 4]; [1, 3]; [1, 2]; [1] };
