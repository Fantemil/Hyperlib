local Players = game:GetService("Players")
local Client = game:GetService("Players").LocalPlayer
local Stepped = game:GetService("RunService").Stepped
firetouchinterest(Client.Character.HumanoidRootPart, Workspace.Morphs["Darth Vader"].Pad, 0)
task.wait(1)
Client.Backpack["DarthVader-3"].Parent = Client.Character
task.wait(1)
local Target
Stepped:Connect(function ()
for i,v in next, Players:GetPlayers() do
if v ~= Client and v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 and v.Backpack:FindFirstChildOfClass("Tool") then
Target = v.Character
end
end
end)
task.spawn(function ()
while task.wait(.1) do
if Target ~= nil then
local Tool = Client.Character:FindFirstChild("DarthVader-3")
local Root = Target.HumanoidRootPart
if Tool then
Tool.GetEvent:FireServer(Root.Position + Root.Velocity / 5)
Tool.Event:FireServer(0)
elseif not Tool then
Client.Backpack["DarthVader-3"].Parent = Client.Character
end
end
end
end)