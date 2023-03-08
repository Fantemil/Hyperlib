if getgenv().Loaded == nil then
getgenv().Loaded = true
else game.Players.LocalPlayer:Kick("Load Script Once")    
end

local UIS = game:GetService("UserInputService")
getgenv().config = {
    Toggle_Key = "F"; -- Change to the key you want
    Started = false; -- Don't touch this
}


UIS.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode[getgenv().config.Toggle_Key] then
    if getgenv().config.Started == false then
        getgenv().config.Started = true
    else getgenv().config.Started = false
end
end
end)

game.RunService.Stepped:Connect(function()
if getgenv().config.Started and game:GetService("Players").LocalPlayer.PlayerGui.Select.Enabled == true then
pcall(function()
game:GetService("Players").LocalPlayer.PlayerGui.Select.Frame.RemoteEvent:FireServer("Minigun")
game:GetService("Players").LocalPlayer.PlayerGui.Select.Enabled = false
end)
end    
end)

game.RunService.Stepped:Connect(function()
if getgenv().config.Started then task.wait(.5)
if not game.Players.LocalPlayer.Backpack:FindFirstChild("Minigun") and not (game.Players.LocalPlayer.Character:FindFirstChild("Minigun")) then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
end

for i,v in ipairs(game.Players:GetPlayers()) do if v~=game.Players.LocalPlayer then

pcall(function()

local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
if v.Character.Humanoid.Health > 0 and not v.Character:FindFirstChild("ForceField") then
if v.Backpack:FindFirstChild("Hitman") or (v.Backpack:FindFirstChild("Minigun")) then
local args = {
    [1] = v.Character.HumanoidRootPart.Position+v.Character.HumanoidRootPart.Velocity/3.5
}

game:GetService("Players").LocalPlayer.Character.Minigun.RemoteFunction:InvokeServer(unpack(args))
elseif not v:FindFirstChild("Hitman") and distance <= 60 and v.Character.Humanoid.Health > 0 and not v.Character:FindFirstChild("ForceField") then
    local args = {
    [1] = v.Character.HumanoidRootPart.Position+v.Character.HumanoidRootPart.Velocity/3.5
}

game:GetService("Players").LocalPlayer.Character.Minigun.RemoteFunction:InvokeServer(unpack(args))

end
end
end)
end
end
end
end)