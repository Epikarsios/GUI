classdef Lakeshore_336_Temperature_Controller
   properties
      A = struct('Temperature', '','Setpoint','','Heater_Range','');
      C = struct('Temperature', '','Setpoint','','Heater_Range','');
   end
   methods
      function obj = set.A(obj,Input)
         if Input >= 320;
            erIn = Input;
            obj.A.Temperature = erIn;
         else
            obj.A.Temperture = NaN;
         end
      
      end
   end
end