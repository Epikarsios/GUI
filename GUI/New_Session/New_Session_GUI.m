function New_Session_GUI( Window_Position)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


New_Session_Window = figure('Visible', 'off', 'Position' ,[Window_Position(1),Window_Position(2),Window_Position(3),Window_Position(4)], 'Resize', 'off','CloseRequestFcn',@my_closereq);
                             
New_Session_Button  = uicontrol('Style','pushbutton', 'String','New Session','Position',[315,220,70,25],'Callback',@New_Session_Button_Callback);
Open_Session_Button = uicontrol('Style','pushbutton', 'String','Open Session','Position',[315,180,70,25]);
                 
align([New_Session_Button,Open_Session_Button],'Center','None');

set(New_Session_Window,'Visible','on');


function New_Session_Button_Callback(~,~) 
% Display surf plot of the currently selected data.
     disp('New Session')
    Window_Position = get(New_Session_Window,'Position');
end

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

