game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(v)
   if v:IsA("Sound") then
       if v.SoundId == "rbxassetid://147722227" then
   game.Players.LocalPlayer.Character["Handsign Training"]:Activate()
   end

   end
end)