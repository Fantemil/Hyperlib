for _,v in pairs(workspace.Fruits:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end

game.workspace.Fruits.ChildAdded:Connect(function(x)
   for _,v in pairs(game.workspace.Fruits:GetDescendants()) do
       if v:IsA("TouchTransmitter") then
           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
           wait()
           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
       end
   end
end)