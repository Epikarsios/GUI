function Session_Configure_GUI( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

Session_Configure_Window = figure('Visible', 'off', 'Position' ,[360,500,500,285], 'Resize', 'off','CloseRequestFcn',@my_closereq);
                             
New_Session_Button  = uicontrol('Style','pushbutton', 'String','New Session','Position',[315,220,70,25],'Callback',@New_Session_Button_Callback);
Open_Session_Button = uicontrol('Style','pushbutton', 'String','Open Session','Position',[315,180,70,25],'Callback', @Open_Session_Button_Callback);
Search_Button = uicontrol('Style','pushbutton','String','Analysis','Position',[315,135,70,25], 'Callback', @Search_Button_Callback);
                             
align([New_Session_Button,Open_Session_Button,Search_Button],'Center','None');

set(Session_Configure_Window,'Visible','on');


function New_Session_Button_Callback(~,~) 
% Display surf plot of the currently selected data.
     disp('New Session')
     User_Position= get(Session_Configure_Window,'Position');
     New_Session_GUI(User_Position);
     set(Session_Configure_Window,'Visible', 'off');
    
end

function Open_Session_Button_Callback(~,~) 
% Display surf plot of the currently selected data.
     disp('Open Session')
     User_Position= get(Session_Configure_Window,'Position');
     Open_Session_GUI(User_Position);
     set(Session_Configure_Window,'Visible', 'off');
    
end




function Search_Button_Callback(~,~) 
% Display surf plot of the currently selected data.
     disp('Search')
     User_Position= get(Session_Configure_Window,'Position');
     Search_GUI(User_Position);
     set(Session_Configure_Window,'Visible', 'off');
    
end


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

