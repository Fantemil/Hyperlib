--get all event items
--https://www.roblox.com/games/8893378293/

--Andy_Wirus#5999
--https://v3rmillion.net/showthread.php?tid=1164050

local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players.PlayerAdded:Wait()

local debounce = 0

local roller = game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.4"].knit.Services.PlaneLootService.RF.PurchaseRoll
local quesion = game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.4"].knit.Services.QuestionService.RF.AnsweredQuestion

game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.4"].knit.Services.VehicleService.RE.ChangeVehicle:FireServer("Plane")
player.Character.PrimaryPart.Anchored = true

for _, v in pairs(workspace.Collectables:GetChildren()) do
task.spawn(v["__comm__"].RE.Collected.FireServer, v["__comm__"].RE.Collected)
end

for _, v in pairs(workspace.QuestionBoards:GetChildren()) do
for i = 1, 4 do
task.spawn(quesion.InvokeServer, quesion, v, i)
end
end

while task.wait(1) do
for _, v in pairs(workspace["Air Race"]:GetDescendants()) do
if v:IsA("TouchTransmitter") and player.Character and player.Character.PrimaryPart then
firetouchinterest(v.Parent, player.Character.PrimaryPart, 0)
firetouchinterest(v.Parent, player.Character.PrimaryPart, 1)
end
end
if debounce > 5 then
for i = 1, 14 do
task.spawn(roller.InvokeServer, roller, i)
end
debounce = 0
end
debounce += 1
end