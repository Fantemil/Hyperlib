 _G.autoa = true
while _G.autoa == true do
wait()
pcall(function()
for i,v in pairs(game.Workspace:GetDescendants()) do
   if v.Name == "Door" and v.Area.Value == 1 then --Change 1 to any area number u can farm in--
       wait()
   if v.Open.Value == true then
       wait(2)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
   if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.OtherFrames.FullStorage.Visible == true then
       wait(0.5)
game:GetService("ReplicatedStorage").Events.SellCandy:FireServer(game.Workspace.Locations.SellAreas.Sell)
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.OtherFrames.FullStorage.Visible = false
end
else
   if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.OtherFrames.Tricked.Visible == true then
wait(1)
game:GetService("ReplicatedStorage").Events.FightEnemy:FireServer()
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.OtherFrames.Tricked.Visible = false
wait(4)
if game.Workspace:WaitForChild("Monsters") then
_G.kill = true
while _G.kill == true do
       wait()
           wait()
if game.Workspace:FindFirstChild("Monsters"):FindFirstChildOfClass("Model").HumanoidRootPart then      
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Monsters:FindFirstChildOfClass("Model").HumanoidRootPart.CFrame-Vector3.new(0,16,0)
if  game.Workspace.Monsters:FindFirstChildOfClass("Model").HP.Value >= 0 then
   game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
   game.Workspace.Monsters:FindFirstChildOfClass("Model").HumanoidRootPart.Anchored = true
   local v = game.Workspace.Monsters:FindFirstChildOfClass("Model")
   game:GetService("ReplicatedStorage").Events.HitEnemy:InvokeServer(v)
   wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
end
end
end
end
end
end
end
end)
end