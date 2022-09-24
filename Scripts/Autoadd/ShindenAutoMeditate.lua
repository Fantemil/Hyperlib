game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(v)
   if v:IsA("Sound") then
       if v.SoundId == "rbxassetid://244264387" then
   game.Players.LocalPlayer.Character["Meditation Training"]:Activate()
   end

   end
end)