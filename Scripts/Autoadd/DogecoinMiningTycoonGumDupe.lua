while wait() do
   for _,v in pairs(game.Workspace.Gumdrops:GetDescendants()) do
       if v:IsA("TouchTransmitter") then
           wait()
           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
       end
   end
end