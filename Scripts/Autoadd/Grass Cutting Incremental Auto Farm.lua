pcall(getgenv().unload);
local callbacks = {};
local character;
getgenv().unload = function()
   for _, callback in pairs(callbacks) do
       if callback.Disconnect then
           callback:Disconnect();
       end;
   end;
   character:FindFirstChildOfClass("Humanoid").Health = 0;
   callbacks = nil;
end;

local grass = game:GetService("Workspace").GrassObjects;
local runService = game:GetService("RunService");
local localplayer = game:GetService("Players").LocalPlayer;
character = localplayer.Character or localplayer.CharacterAdded:Wait();
local zeroVector = Vector3.new(0, 1024, 0);

--Anti-AFK (Pasted from Infinite Yield)
for _,v in next, getconnections(localplayer.Idled) do
   if v["Disable"] then
       v["Disable"](v);
   elseif v["Disconnect"] then
       v["Disconnect"](v);
   end;
end;

callbacks.CharacterAdded = localplayer.CharacterAdded:Connect(function(model)
   character = model;
end);

local function fastGrassPos()
   for _, grass in next, grass:GetChildren() do
       if grass.Transparency ~= 1 then
           return grass.Position;
       end;
   end;
   return zeroVector;
end;

-- Destroy Homo Grass
for _, v in next, grass:GetChildren() do
   if v.Position.Y < -100 then
       v:Destroy();
       break;
   end;
end;

callbacks.loop = runService.Heartbeat:Connect(function()
   character.HumanoidRootPart.Position = fastGrassPos();
end);