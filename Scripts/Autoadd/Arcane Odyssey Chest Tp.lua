getgenv().AutoChest = true


while AutoChest == true do

local plyr = game.Players.LocalPlayer
local Char = plyr.Character
local HumRP = Char.HumanoidRootPart

for _, Object in pairs(game.Workspace:GetDescendants()) do
if string.match(Object.Name, "Chest") and Object:FindFirstChild("Base") then
HumRP.CFrame = Object:FindFirstChild("Base").CFrame
wait(5)
end
end
end