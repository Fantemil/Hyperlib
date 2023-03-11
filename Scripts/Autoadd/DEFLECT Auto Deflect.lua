_G.IsToggle = true;
_G.Distance = 17;
-- Settings definition

local player = game:GetService("Players").LocalPlayer;
local isDeflected = false;

game:GetService("RunService").Heartbeat:Connect(function()
   if (not _G.IsToggle) then return end;
   
   local ball = workspace:FindFirstChild("Ball");
   if (not ball) then return end;
   
   local character = player.Character;
   if (not character) then return end;
   
   local rootPart = character:FindFirstChild("HumanoidRootPart");
   if (not rootPart) then return end;
   
   local distance = (rootPart.Position - ball.Main.Position).Magnitude;
   if (distance > _G.Distance) then return end;

   if (not character:FindFirstChild("TargetHighlight")) then
       isDeflected = false;
       return;
   end
   if (isDeflected) then return end
   isDeflected = true;
   
   mouse1click();
end);