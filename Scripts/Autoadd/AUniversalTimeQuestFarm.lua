local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "AUT Quest Farmer", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})
local Section = Tab:AddSection({
 Name =  "Quests"
})
Tab:AddToggle({
 Name = "Take Damage",
 Default = false,
 Callback = function(Value)
getgenv().TakeDamage = Value
spawn(function()
while getgenv().TakeDamage do
local AttackDummy = Workspace.Living:FindFirstChild("Akira_DEV Dummy")
local HUMRP = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
wait()
if AttackDummy:FindFirstChild("HumanoidRootPart") then
HUMRP.CFrame = AttackDummy.HumanoidRootPart.CFrame + AttackDummy.HumanoidRootPart.CFrame.LookVector*2
end
end
end)
 end    
})
Tab:AddToggle({
 Name = "Deal Damage",
 Default = false,
 Callback = function(Value)
getgenv().DealDamage = Value
spawn(function()
while getgenv().DealDamage do
for i,v in pairs(game.Workspace.Living:GetChildren()) do
if v.Name == "Dummy"  and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 then
local HUMRP = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local Dummy = v
wait()
if Dummy:FindFirstChild("Humanoid") and Dummy.Humanoid.Health ~= 0 then
HUMRP.CFrame = Dummy.HumanoidRootPart.CFrame + Dummy.HumanoidRootPart.CFrame.LookVector*-2
local args = {
    [1] = "KEY",
    [2] = "LMB"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "KEY V2",
    [2] = "LMB"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "LMB"
}

game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))

local args = {
    [1] = "KEY",
    [2] = "END-LMB"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "KEY V2",
    [2] = "END-LMB"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "END-LMB"
}

game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))

end
repeat 

if not getgenv().DealDamage then return end
if Dummy:FindFirstChild("Humanoid") then
HUMRP.CFrame = Dummy.HumanoidRootPart.CFrame + Dummy.HumanoidRootPart.CFrame.LookVector*-2
local args = {
    [1] = "KEY",
    [2] = "LMB"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "KEY V2",
    [2] = "LMB"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "LMB"
}

game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))

local args = {
    [1] = "KEY",
    [2] = "END-LMB"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "KEY V2",
    [2] = "END-LMB"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "END-LMB"
}

game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))

end

until Dummy:FindFirstChild("Humanoid").Health == 0
end
end
end
end)
 end    
})
Tab:AddToggle({
 Name = "Block Damage",
 Default = false,
 Callback = function(Value)
getgenv().BlockDamage = Value
spawn(function()
while getgenv().BlockDamage do
local HUMRP = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local Dummy = Workspace.Living:FindFirstChild("Akira_DEV Dummy")
wait()
pcall(function()
if Dummy:FindFirstChild("Humanoid") and Dummy.Humanoid.Health ~= 0 and game.Players.LocalPlayer.Character:FindFirstChild("Values") then
HUMRP.CFrame = Dummy.HumanoidRootPart.CFrame + Dummy.HumanoidRootPart.CFrame.LookVector*2
local args = {
    [1] = "KEY",
    [2] = "X"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "KEY V2",
    [2] = "X"
}

game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))

local args = {
    [1] = "X"
}

game:GetService("ReplicatedStorage").Remotes.InputFunc:InvokeServer(unpack(args))
end
end)
end
end)
 end    
})