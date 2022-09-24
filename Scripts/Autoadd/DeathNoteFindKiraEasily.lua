local Map = workspace.Map;
local Players = game:GetService("Players");

local function closestPlayerAtPos(Position)
   local MaxRange = math.huge;
   local Closest = nil;
   
   for _, v in Players:GetPlayers() do
       local RootPart = v.Character and v.Character:FindFirstChild("HumanoidRootPart");
       if not RootPart then
           continue;
       end;
       
       local Magnitude = (RootPart.Position - Position).Magnitude;
       if Magnitude < MaxRange then
           Closest = v.Character;
           MaxRange = Magnitude;
       end;
   end;
   
   return Closest;
end;

for _, v in Map:GetChildren() do
   if v.Name == "Id" then
       local Position = v.Position;
       
       local SurfaceGui = v:FindFirstChild("SurfaceGui");
       if not SurfaceGui then
           continue;
       end;
       
       SurfaceGui:GetPropertyChangedSignal("Enabled"):Connect(function()
           local Kira = closestPlayerAtPos(Position);
           if Kira then
               print("Kira is " .. Kira.Name);
           end;
       end);
   end;
end;