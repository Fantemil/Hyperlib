while true do
for i,v in pairs(game.workspace.Points:GetDescendants()) do
   if v.name == "Point" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
   wait(0.2)
   end
end
    wait(3)
end