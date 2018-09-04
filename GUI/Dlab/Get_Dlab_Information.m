function [ Filepath ] = Get_Dlab_Information( )
%UNTITLED2 Summary of this function goes here
%   Function takes no argumnets, Opens dialog box for user to select file
    
type = '../*.Dlab';    % selects type to be comma seperated values file 
[file,path] = uigetfile(type);
Filepath =[path,file];
end

