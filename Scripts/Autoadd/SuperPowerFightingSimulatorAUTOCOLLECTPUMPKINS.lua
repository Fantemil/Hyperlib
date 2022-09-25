local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart


for i,v in pairs(game.Workspace.EvilPumpkins:GetChildren()) do
   wait(.5)
   fireclickdetector(v.ClickDetector, 150)
   hrp.CFrame = v.CFrame
end


-- you can server hop too if you want (until you reach maximum collection of pumpkins per day)