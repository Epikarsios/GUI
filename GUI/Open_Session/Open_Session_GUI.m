function Open_Session_GUI(Window_Position )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

Open_Session_Window = figure('Visible', 'off', 'Position' ,[Window_Position(1),Window_Position(2),Window_Position(3),Window_Position(4)], 'Resize', 'off','CloseRequestFcn',@my_closereq);
                             
                    

set(Open_Session_Window,'Visible','on');


Filepath = Get_Dlab_Information();
Dlab_File = fopen(Filepath, 'w+');


delimiter = '\t';                     %  data seperated by tab
headerLinesIn = 1;                   % Specify number headers, not exact         

Data = importdata(Dlab_File, delimiter, headerLinesIn); % Imports data






function my_closereq(~,~)
% Close request function 
% to display a question dialog box 
   selection = questdlg('Close This Figure?',...
      'Close Request Function',...
      'Yes','No','Yes'); 
   switch selection, 
      case 'Yes',
         delete(gcf)
      case 'No'
      return 
   end
end

end
