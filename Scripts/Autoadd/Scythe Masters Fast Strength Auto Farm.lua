_G.on = not _G.on
game:GetService("Players").LocalPlayer.PlayerGui.AddValues.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.AddValues.Enabled
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
       shared.scythe = v.Name
   end
end
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(item)
       if item:IsA("Tool") then
       shared.scythe = item.Name
   end
end)
game.Players.LocalPlayer.leaderstats.Rebirths.Changed:Connect(function(val)
   game.Players.LocalPlayer.leaderstats.Rebirths.Value = math.huge
end)
while _G.on do
pcall(function()
game:GetService("RunService").Heartbeat:Wait()
game.Players.LocalPlayer.Character[shared.scythe].Handle.Script.RemoteEvent:FireServer()
end)
end