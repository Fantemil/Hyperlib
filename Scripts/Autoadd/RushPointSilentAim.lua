getgenv().Settings = {
   ['FOV'] = 45;
   ['BodyPart'] = 'Head';
   ['FOVCircle'] = false;
};

local Settings = getgenv().Settings;
local CharTable, Network, ModuleLoader, Old, OldIndex, LoadedModules;
local Players = game:GetService('Players');
local Player = Players.LocalPlayer;
local Camera = workspace.CurrentCamera;
local Mouse = Player:GetMouse();
local RunService = game:GetService('RunService');

ModuleLoader = require(game:GetService("ReplicatedStorage").Modules.Shared.ModuleLoader);
LoadedModules = ModuleLoader.LoadedModules;

for Index, Value in next, getgc(true) do
   if (type(Value) == 'function') and (islclosure(Value)) and (debug.getinfo(Value).name == 'NewChar') then
       Characters = getupvalue(Value, 1); --> [1] = table [2] (real-chars) = table (in-game chars)
   end;
end;


Network = LoadedModules.Network;
local Old = Network.FireServer;

local Circle = Drawing.new('Circle');
Circle.Radius = Settings.FOV;
Circle.Visible = Settings.FOVCircle;
Circle.Thickness = 4;
Circle.NumSides = 15;
Circle.Color = Color3.fromRGB(255, 255, 255);

--print(Old, Network.FireSever);

--table.foreach(LoadedModules, print);


local function GetNearest()

   Targets = {};

   for Index, Value in next, Players:GetPlayers() do
           if (Value ~= Player) and (Value.SelectedTeam.Value ~= Player.SelectedTeam.Value) then
           if (not Characters[Value]) then continue end;
           local Char = Characters[Value];
           if (not Char:FindFirstChild(Settings.BodyPart)) then continue end;

           Distance = (Char.HumanoidRootPart.CFrame.p - Camera.CFrame.p).Magnitude;
           worldPoint = Char.Head.Position;
           vector, onScreen = Camera:WorldToScreenPoint(worldPoint);
           magnitude = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(vector.X, vector.Y)).Magnitude;
   
           if (magnitude > Settings['FOV']) then continue end;

           table.insert(Targets, {Value, Distance, Char:FindFirstChild(Settings.BodyPart)});
       end;
   end;

   if (#Targets > 1) then
    table.sort(Targets, function(a, b)
        return a[2] < b[2];
       end);
   end;

   if (#Targets == 0) then
       return nil;
   end;

   return Targets[1][3];
end;

local function ResolveRotation(Target)
  return CFrame.new(Camera.CFrame['p'], Target.CFrame['p']);
end;

local function WTS(Object)
   local Screen = Camera:WorldToViewportPoint(Object)
   return Vector2.new(Screen.x, Screen.y);
end;

Network.FireServer = function(...)
   local Args = {...};

    if (Args[2] == 'FireBullet') then

       local Nearest = GetNearest()

       if (not Nearest) then
           return Old(...);
       end;

       ResolvedRotation = ResolveRotation(Nearest);
       Args[3][1].OriginCFrame = ResolvedRotation;
       Args[3][1].RotationMatrix = ResolvedRotation - ResolvedRotation['p'];

       return Old(unpack(Args));
 
   end;

   return Old(...);
end;

RunService.Stepped:Connect(function()
   Circle.Visible = Settings.FOVCircle;
   Circle.Radius = Settings.FOV;
   Circle.Position = WTS(Mouse.hit.p);
end);