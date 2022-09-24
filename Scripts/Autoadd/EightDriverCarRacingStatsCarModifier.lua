local function Create()
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local win = library:CreateWindow("Water")

local main = win:CreateFolder("Vehicle Tuning")
local other = win:CreateFolder("Stat Tuning")

local Player = game:GetService("Players").LocalPlayer
local current_selected = ""
local current_item = nil;
local current_stat = nil;

local SelectPlayer;
local function GetPlayers()
local plr = {"None"}
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
table.insert(plr, v.Name)
end
return plr
end

local function UpdateVehicle(Spec, Value)
local a,b = pcall(function()
local args = {
[1] = "UpdateVal",
[2] = Spec,
[3] = Value
}
           
           local whatever = Spec;
           local tries = 0;
           
           while whatever.ClassName ~= "VehicleSeat" do
               wait()
               tries = tries+1;
               
               if tries >= 5 then break end;
               whatever = whatever.Parent
           end
   whatever.Server.RemoteEvent:FireServer(unpack(args))
end)
print(a, b)
end

local function CustomSpoof(Spec, Value, Remote)
local a,b = pcall(function()
local args = {
[1] = "UpdateVal",
[2] = Spec,
[3] = Value
}
           
   Remote:FireServer(unpack(args))
end)
print(a, b)
end

local display_value = main:Label("Info",{
       TextSize = 25; -- Self Explaining
       TextColor = Color3.fromRGB(255,255,255);
       BgColor = Color3.fromRGB(69,69,69);
   })

SelectPlayer = main:Dropdown("Select Player", GetPlayers(), true, function(cur)
if cur == "None" then return end
Player = game:GetService("Players")[cur]
SelectPlayer:Refresh(GetPlayers())
end)

other:Dropdown("Stat", {"None", "Drift", "Exp", "Lvl"}, true, function(cur)
if cur == "None" then return end
current_stat = Player.leaderstats[cur]
end)

other:Box("Spoof Integer","number", function(value)
if current_stat == nil then return end
       if current_selected == nil then return end

if type(current_stat.Value) == "number" then
   for i,v in pairs(Player.Character:GetChildren()) do
    if v:IsA"Model" then
    if v.Name == current_selected then
           CustomSpoof(current_stat, value, v.DriveSeat.Server.RemoteEvent);
    end
   end
end
else
warn("[-Error-] cannot spoof: " .. type(current_stat) .. " as integer")
end
end)

local function GetCars()
local cars = {"None"};
for i,v in pairs(Player.Character:GetChildren()) do
if v:IsA"Model" then
table.insert(cars, v)
end
end
return cars
end

local specs = {
["Userdata"] = {},
["Name"] = {};
};
   
local display_data;
display_data = main:Dropdown("Select Display", {"None"}, true, function(cur)
if cur == "None" then return end
for i,v in pairs(specs.Userdata) do
if v.Name == cur then
current_item = v;
display_value:Refresh("Value: " .. v.Value)
end
end
end)

local list;
list = main:Dropdown("Select Car", GetCars(), true, function(car)
if car == "None" then list:Refresh(GetCars()) return end
current_selected = car;

specs = {
["Userdata"] = {},
["Name"] = {};
};

for i,v in pairs(Player.Character:GetChildren()) do
if v:IsA"Model" then
if v.Name == current_selected then
if v.DriveSeat.Specs ~= nil then
for ii,vv in pairs(v.DriveSeat.Specs:GetDescendants()) do
table.insert(specs["Userdata"], vv)
table.insert(specs["Name"], vv.Name)
end
end
end
end
end

display_data:Refresh(specs["Name"])
end)

main:Box("Spoof Integer","number", function(value)
if current_item == nil then return end

if type(current_item.Value) == "number" then
UpdateVehicle(current_item, value);
else
warn("[-Error-] cannot spoof: " .. type(current_item) .. " as integer")
end
end)

main:Box("Spoof String","string", function(value)
if current_item == nil then return end

if type(current_item.Value) == "string" then
UpdateVehicle(current_item, value);
else
warn("[-Error-] cannot spoof: " .. type(current_item) .. " as string")
end
end)

main:Button("Give 10000 money", function()
   local args = {
           [1] = "Sanctioned",
           [2] = -10000,
           [3] = "372434240",
           [4] = {}
       }
       
       game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end)
end

Create()