local function Create()
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local win = library:CreateWindow("Water")

local main = win:CreateFolder("Vehicle Destroyer")

local LocalPlayer = game:GetService("Players").LocalPlayer
local remote = nil;
local display_value = nil;

local function HijackRemote()
local a,b = pcall(function()
for i,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "RemoteEvent" then
if v.Parent.Name == "Server" then
if tostring(v.Parent.Parent.Driver.Value):lower():match(LocalPlayer.Name:lower()) then
remote = v;
display_value:Refresh("[Success]")
return
end
end
end
end
end)
print(a,b)
end

display_value = main:Label(". . .",{
TextSize = 25; -- Self Explaining
TextColor = Color3.fromRGB(255,255,255);
BgColor = Color3.fromRGB(69,69,69);
})

local function UpdateVehicle(Spec, Value)
if remote == nil then display_value:Refresh("[Waiting]"); HijackRemote() return end;

local a,b = pcall(function()
local args = {
[1] = "UpdateVal",
[2] = Spec,
[3] = Value
}


remote:FireServer(unpack(args))
end)
print(a,b)
end

local remote_hijacker = main:Button("Hijack Remote", HijackRemote)
local remote_reseter = main:Button("Reset Remote", function()
remote = nil; display_value:Refresh("[Waiting]");
end)

local reset_stats = main:Button("Reset stats others", function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v ~= LocalPlayer then
if v.leaderstats then
for ii,vv in pairs(v.leaderstats:GetChildren()) do
UpdateVehicle(vv, 0)
end
end
end
end
end)


local stat_increasement = 0;
local body_increasement = 0;


local stat_mixer = main:Button("Give stats", function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v ~= LocalPlayer then
if v.leaderstats then
for ii,vv in pairs(v.leaderstats:GetChildren()) do
UpdateVehicle(vv, vv.Value + stat_increasement)
end
end
end
end
end)

main:Box("Stat increasement", "number", function(value)
stat_increasement = value;
end)

local no_settings = main:Button("No settings", function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v ~= LocalPlayer then
if v.Controls then
for ii,vv in pairs(v.Controls:GetChildren()) do
UpdateVehicle(vv, "")
end
end
end
end
end)

local destroy_settings = main:Button("Destroy settings", function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v ~= LocalPlayer then
if v.Controls then
for ii,vv in pairs(v.Controls:GetChildren()) do
if vv:IsA("StringValue") then
UpdateVehicle(vv, "Fuck off   -do_ntban")
elseif vv:IsA("IntValue") or vv:IsA("NumberValue") then
UpdateVehicle(vv, 9e9)
elseif vv:IsA("BoolValue") then
UpdateVehicle(vv, not vv.Value)
end
end
end
end
end
end)

local body_size_others = main:Button("Increase others size", function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v ~= LocalPlayer then
if v.Character then
for ii,vv in pairs(v.Character.Humanoid:GetChildren()) do
if vv:IsA("IntValue") or vv:IsA("NumberValue") then
UpdateVehicle(vv, body_increasement)
end
end
end
end
end
end)

local body_size_local = main:Button("Increase local size", function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v == LocalPlayer then
if v.Character then
for ii,vv in pairs(v.Character.Humanoid:GetChildren()) do
if vv:IsA("IntValue") or vv:IsA("NumberValue") then
UpdateVehicle(vv, body_increasement)
end
end
end
end
end
end)

local body_size_none = main:Button("No body size", function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Character then
for ii,vv in pairs(v.Character.Humanoid:GetChildren()) do
if vv:IsA("IntValue") or vv:IsA("NumberValue") then
UpdateVehicle(vv, 0)
end
end
end
end
end)

local kill_others = main:Button("Kill others", function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v ~= LocalPlayer then
if v.Character then
for ii,vv in pairs(v.Character:GetDescendants()) do
if vv:IsA("IntValue") or vv:IsA("NumberValue") then
UpdateVehicle(vv, -9e9)
end
end
end
end
end
end)

local ruin_server = main:Button("Ruin server", function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Character then
for ii,vv in pairs(v.Character:GetDescendants()) do
if vv:IsA("IntValue") or vv:IsA("NumberValue") then
UpdateVehicle(vv, 9e9)
end
end
end
end
end)

main:Box("BodySize Increasement", "number", function(value)
body_increasement = value;
end)
end

Create()