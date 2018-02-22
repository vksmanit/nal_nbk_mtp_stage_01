function coloops = my_test_prog_01(g1)
    
    coloops = [];
    
    for i = 1 : length(g1)
        coloops = [coloops, g1{i}];
    end
end
