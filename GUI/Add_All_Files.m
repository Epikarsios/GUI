function  Add_All_Files(Fullpath)
%UNTITLED3 Summary of this function goes here
%  
[filepath,name,ext] = fileparts(Fullpath);
addpath(genpath(filepath));

end

