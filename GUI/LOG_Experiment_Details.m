function [File_Data] = LOG_Experiment_Details( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[Filename, Path] = uiputfile('.txt', 'Choose Location and Filename');
File_Data.Filename = Filename;
File_Data.Path = Path;

end

