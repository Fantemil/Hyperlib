local Finity = loadstring(game:HttpGet("https://pastebin.com/raw/y4eeFHp0"))()

local FinityWindow = Finity.new(true)
FinityWindow.ChangeToggleKey(Enum.KeyCode.T)

local Rage = FinityWindow:Category("Main Functions")

local op = Rage:Sector("Hot Features")

op:Cheat("Button", "ActivateAllBackLights", function()
while true do
for i,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do
local bool_1 = true;
local bool_2 = true;
local Target = v.ChassisMain.Lights;
Target:FireServer(bool_1, bool_2);
wait()
end
end
end)


op:Cheat("Button", "FlipAllCars", function()
for i,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do
local Target = v.ChassisMain.Flip;
Target:FireServer();
end
end)


op:Cheat("Button", "LoopFlipAllCars(Curse)", function()
for i,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do
local Target = v.ChassisMain.Flip;
Target:FireServer();
end  
end)


op:Cheat("Button", "ModCar", function()
for i,v in pairs(game:GetService("Workspace").Cars:GetChildren()) do
local aa = require(v.StatsModule)
aa.GearSpeeds[1] = 11111
aa.GearSpeeds[-1] = -11111
aa.GearTorques[1] = 5000
aa.GearTorques[-1] = 5000
aa.TurnSpeed = 11
aa.BrakePower = 6000
aa.ShiftTime = 0  
aa.StartTime = 0
for i,v in pairs(aa.GearSpeeds) do print(i,v) end end
end)


op:Cheat("Button", "Feinvisible", function()
for i,v in pairs (game:GetService("Workspace").Cars:GetDescendants()) do
   if v:IsA("VehicleSeat") then
local userdata_1 =v;
local Target = game:GetService("ReplicatedStorage").Remotes.Seat;
Target:FireServer(userdata_1);
end
end
end)

op:Cheat("Button", "Lag Server", function()
while true do
   local string_1 = "Fiat";
local Target = game:GetService("ReplicatedStorage").Remotes.Spawn;
Target:FireServer(string_1);
wait()
end
end)