_G.xmass = true
spawn(function()
while _G.xmass do
   pcall(function()
   game:GetService("ReplicatedStorage").Christmas.ResetTree:InvokeServer()
   wait(3)
end)
end
end)
while _G.xmass do
   wait()
   pcall(function()
for i,v in pairs(game:GetService("Workspace").Christmas.DecorationHunt:GetDescendants()) do
   if v.Name == "client" and _G.xmass == true and v.MeshId == game:GetService("Workspace").Christmas.hologram.MeshId then
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
 wait(0.2)
game:GetService("ReplicatedStorage").Christmas.PickupDecoration:InvokeServer(v.Parent)
wait(0.2)
       game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Christmas.TreeModel.Deliver.Position)
wait(0.2)
game:GetService("ReplicatedStorage").Christmas.DeliverDecoration:InvokeServer()
wait(0.2)
   end
end
end)
end