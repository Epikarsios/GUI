function [ Dlab ] = Parse_Dlab_File( Filepath )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
fopen(Filepath);


delimiter = ',';                     % Picarro data seperated by whitespace
headerLinesIn = 1;                   % Specify number headers, not exact         

Dlab = importdata(file, delimiter, headerLinesIn);
end

