function Search_GUI( Window_Position)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


Search_Window = figure('Visible', 'off', 'Position' ,[Window_Position(1),Window_Position(2),Window_Position(3),Window_Position(4)], 'Resize', 'off','CloseRequestFcn',@my_closereq);
                             
          

set(Search_Window,'Visible','on');



function my_closereq(~,~)
% Close request function 
% to display a question dialog box 
   selection = questdlg('Do you want to Quit?',...
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


