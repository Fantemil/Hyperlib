--// Exploit Check \--
if firetouchinterest == nil then
while true do
end
end
--// Services \--
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
--// Variables \--
local Player = Players.LocalPlayer
local Money = Player:WaitForChild("leaderstats"):WaitForChild("Cash")
--// Remotes \--
local Rebirth = ReplicatedStorage:WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TycoonService"):WaitForChild("RF"):WaitForChild("Rebirth")
local CanRebirth = ReplicatedStorage.Knit.Services.TycoonService.RF:WaitForChild("IsRebirthAvailable")
local BuyObject = ReplicatedStorage.Knit.Services.TycoonService.RF:WaitForChild("BuyObject")
local GetTycoon = ReplicatedStorage.Knit.Services.TycoonService.RF:WaitForChild("GetTycoon")
--// Get Tycoon \--
local Tycoon = nil
for _, Folder in next, Workspace:WaitForChild("Tycoons"):GetChildren() do
if Folder:GetAttribute("Owner") == Player.Name then
Tycoon = Folder
break
end
end
if Tycoon == nil then
warn("Tycoon not found :(")
return
end
Player.leaderstats:WaitForChild("Rebirths"):GetPropertyChangedSignal("Value"):Connect(function()
task.wait(1)
Tycoon = GetTycoon:InvokeServer()
end)
--// Touch \--
function Touch(Part)
local Primary = Player.Character and Player.Character.PrimaryPart or false
if Primary and Part then
firetouchinterest(Primary, Part, 0)
firetouchinterest(Primary, Part, 1)
end
end
--// Get Cheapest Button \--
function GetCheapestButton()
-- Check
if Tycoon:FindFirstChild("Buttons") == nil then
return false, 0
end
local Lowest = math.huge
local Button = false
for _, Btn in next, Tycoon.Buttons:GetChildren() do
local Config = Btn:FindFirstChild("config") and require(Btn.config) or false
if Btn:FindFirstChild("Top") and Config then
if Config.Type == "Regular" and Config.Cost < Lowest then
Lowest = Config.Cost
Button = Btn.Top
elseif Config.Type == "Two Option" then
BuyObject:InvokeServer(Btn.Name, #Config.Options)
end
end
end
return Button, Lowest
end
--// Auto-Purchase \--
while task.wait() do
local Buy, Cost = GetCheapestButton()
if Buy ~= false and Cost <= Money.Value then
Touch(Buy)
elseif Cost == math.huge then
Rebirth:InvokeServer()
else
pcall(function()
Touch(Tycoon.ATMs.ATM.Collect)
end)
end
end