local Camera = workspace.CurrentCamera
local ControlModule = game:GetService("Players").LocalPlayer.PlayerScripts.PlayerModule.ControlModule

local oldnewindex; oldnewindex = hookmetamethod(game, "__newindex", function(self, index, value)
   if not checkcaller() and self == Camera and tostring(index) == 'CFrame' then
       if getcallingscript() ~= ControlModule then
           return
       end
   end

   return oldnewindex(self, index, value)
end)