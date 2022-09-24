game:GetService("RunService").Stepped:connect(function()
wait(1)
for i,v in pairs(game.Workspace.Fountains.Fountain:GetDescendants()) do
       if v:IsA("TouchTransmitter") then
           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
       end
   end
end)