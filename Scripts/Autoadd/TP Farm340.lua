getgenv().KeyCode = Enum.KeyCode.E
getgenv().Distance = 12

game:GetService"UserInputService".InputBegan:Connect(function(KeyCode)
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer 
getgenv().FrontPos = nil
local character = Workspace:FindFirstChild(player.Name)
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
local forwardVector = humanoidRootPart.CFrame.LookVector
local frontPosition = humanoidRootPart.Position + (forwardVector * getgenv().Distance)
getgenv().FrontPos = frontPosition
print("InputBegan",KeyCode)
if KeyCode.KeyCode == getgenv().KeyCode then
for i,v in pairs(game:GetService("Workspace").Mobs:GetChildren()) do
if v:FindFirstChild("Zombie").Health ~= 0 then
v:FindFirstChild("HumanoidRootPart").Anchored = true
v:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(getgenv().FrontPos)
print("TP'ed",v.Name,"at",getgenv().FrontPos)
end
end
end
end)