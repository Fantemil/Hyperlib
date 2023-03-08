getgenv().Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
 local args = {...}
 if getnamecallmethod() == 'FireServer' and self.Name == 'PlayerImpactRemote' then
          local args = {
   [1] = "unblocking"
}

game:GetService("ReplicatedStorage").RemoteEvents.PlayerStaminaRemote:FireServer(unpack(args))

 end
 return old(self, unpack(args))
end)
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tool)

if tool:IsA("Tool") and tool.Name == "Gloves" then
 
 local zee = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Gloves")
 
 zee.Activated:Connect(function()
wait(0.2)
      local args = {
   [1] = "blocking"
}

game:GetService("ReplicatedStorage").RemoteEvents.PlayerStaminaRemote:FireServer(unpack(args))
end)
end
end)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tool)

if tool:IsA("Tool") and tool.Name == "Gloves" then
 
 local zee = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Gloves")
 
 zee.Activated:Connect(function()
wait(0.2)
      local args = {
   [1] = "blocking"
}

game:GetService("ReplicatedStorage").RemoteEvents.PlayerStaminaRemote:FireServer(unpack(args))
end)
end
end)
end)