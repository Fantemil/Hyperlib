local VIM = game:GetService("VirtualInputManager")
local plr = game:GetService("Players").LocalPlayer
local gui = plr.PlayerGui["Interact_Gui"].Cash["Icon_Click"]

while task.wait(0.5) do -- there's a server-sided delay
   -- Simulates The Key Being Pressed
    VIM:SendMouseButtonEvent(gui.AbsolutePosition.X+gui.AbsoluteSize.X/2,gui.AbsolutePosition.Y+50,0,true,gui,1)
    
    -- Simulates The Key Being Released
    VIM:SendMouseButtonEvent(gui.AbsolutePosition.X+gui.AbsoluteSize.X/2,gui.AbsolutePosition.Y+50,0,false,gui,1) 
end
