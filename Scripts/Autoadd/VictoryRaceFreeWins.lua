while true do
       for i,v in pairs(game.Workspace:GetChildren()) do
   if v.Name == "Win" then
       game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.CFrame)
       wait(.1)
       end
       end
       wait()
end