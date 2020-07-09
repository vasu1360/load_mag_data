function varargout = loadSensors(filename, n, dataLines)
% this function will load a file with data from any # of sensors up to 10
% varargout will have the x#,y#,z# for each sensor 
% - call in main as [x, y, z,...] = loadSensors...
% z]
% n is the number of sensors
% if dataLines is not specified, define defaults
if nargin < 3
    dataLines = [20, Inf];
end

%% Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 30);
opts.DataLines = dataLines;
opts.Delimiter = " ";
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.ConsecutiveDelimitersRule = "join";
opts.LeadingDelimitersRule = "ignore";

%change based on sensor number
switch n
    case 1
        opts.VariableNames = ["x1", "y1", "z1"];
        data = table2array(readtable(filename, opts));
    case 2
        opts.VariableNames = ["x1", "y1", "z1", "x2", "y2", "z2"];
        data = table2array(readtable(filename, opts));
    case 3
        opts.VariableNames = ["x1", "y1", "z1", "x2", "y2", "z2", "x3", "y3", "z3"];
        data = table2array(readtable(filename, opts));
    case 4
        opts.VariableNames = ["x1", "y1", "z1", "x2", "y2", "z2", "x3", "y3", "z3", "x4", "y4", "z4"];
        data = table2array(readtable(filename, opts));
    case 5
        opts.VariableNames = ["x1", "y1", "z1", "x2", "y2", "z2", "x3", "y3", "z3", "x4", "y4", "z4", "x5", "y5", "z5"];
        data = table2array(readtable(filename, opts));
    case 6
        opts.VariableNames = ["x1", "y1", "z1", "x2", "y2", "z2", "x3", "y3", "z3", "x4", "y4", "z4", "x5", "y5", "z5", "x6", "y6", "z6"];
        data = table2array(readtable(filename, opts));
    case 7
        opts.VariableNames = ["x1", "y1", "z1", "x2", "y2", "z2", "x3", "y3", "z3", "x4", "y4", "z4", "x5", "y5", "z5", "x6", "y6", "z6", "x7", "y7", "z7"];
        data = table2array(readtable(filename, opts));
    case 8
        opts.VariableNames = ["x1", "y1", "z1", "x2", "y2", "z2", "x3", "y3", "z3", "x4", "y4", "z4", "x5", "y5", "z5", "x6", "y6", "z6", "x7", "y7", "z7", "x8", "y8", "z8"];
        data = table2array(readtable(filename, opts));
    case 9
        opts.VariableNames = ["x1", "y1", "z1", "x2", "y2", "z2", "x3", "y3", "z3", "x4", "y4", "z4", "x5", "y5", "z5", "x6", "y6", "z6", "x7", "y7", "z7", "x8", "y8", "z8", "x9", "y9", "z9"];
        data = table2array(readtable(filename, opts));
    case 10
        opts.VariableNames = ["x1", "y1", "z1", "x2", "y2", "z2", "x3", "y3", "z3", "x4", "y4", "z4", "x5", "y5", "z5", "x6", "y6", "z6", "x7", "y7", "z7", "x8", "y8", "z8", "x9", "y9", "z9", "x10", "y10", "z10"];
        data = table2array(readtable(filename, opts));
end

dataCount = n*3;
for ii = 1:dataCount
    varargout{:,ii} = data(:,ii);
end

end

