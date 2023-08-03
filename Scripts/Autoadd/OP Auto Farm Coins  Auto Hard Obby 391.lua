-- made by squidard 2.0#5101
-- stupid lava code by lo434324 (v3rm profile)
-- library by kavo

for i,v in pairs (workspace:GetDescendants()) do
if v.Name == "Lava" then
v.CanTouch = false
v.CanCollide = false
end
end
-- ^makes lava stupid

local NewPart = Instance.new("Part")
NewPart.Position = Vector3.new(-10059, 7, -6)
NewPart.Anchored = true
NewPart.Parent = game.Workspace

local NewPart = Instance.new("Part")
NewPart.Position = Vector3.new(-10070, 7, -2)
NewPart.Anchored = true
NewPart.Parent = game.Workspace
-- ^makes 2 simple parts for the disappearing cubes

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
-- ^kavo ui library

function autofarmstart ()
getgenv().start = true;

while wait(7) do
if getgenv().start == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10020, 7, -7)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10028, 7, -7)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10036, 8, -4)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10047, 11, -4)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10059, 11, -6)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10070, 11, -2)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10084, 11, -5)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10096, 11, -4)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10109, 11, -4)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10123, 11, -5)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10136, 15, -4)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10147, 14, -6)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10158, 10, -11)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10170, 11, -10)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10178, 11, -3)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10196, 20, -5)
end
end
end
-- ^auto farm code

function stopautofarmstart ()
getgenv().start = false;
end
-- ^stop auto farm code

local Window = Library.CreateLib("Plates Of Fate: Remastered", "DarkTheme")
local AutoFarmTab = Window:NewTab("Main")
local AutofarmSection = AutoFarmTab:NewSection("Coins (Wait a few seconds after turning it on)")
local autofarm = nil
local stopautofarm = nil
-- ^library variables

AutofarmSection:NewToggle("Auto Obby","Ez coins",function(t)
autofarm = t

if autofarm then
autofarmstart()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
if not autofarm then return end
autofarmstart()
end)
end
end)
-- ^auto farm button

AutofarmSection:NewToggle("Stop Auto Obby","No more ez coins",function(t)
stopautofarm = t

if stopautofarm then
stopautofarmstart()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
if not stopautofarm then return end
stopautofarmstart()
end)
end
end)
-- ^stop auto farm button