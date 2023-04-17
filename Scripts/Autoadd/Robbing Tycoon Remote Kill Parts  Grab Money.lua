while task.wait(1) do
   pcall(function()
        for _,v in pairs(workspace:GetDescendants()) do -- grab money
   if v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
               end
           end
for i,v in pairs(game.Workspace:GetDescendants()) do -- remove kill parts most of them
   if v.Name == "KillPart" or v.Name == "1" or v.Name == "2" or v.Name == "3" or v.Name == "Lasers" or v.Name == "Lazer" or v.Name == "Trip" or v.Name == "Spike" or v.Name == "DamageEr" or v.Name == "LaserFence" or v.Name == "Laser" or v.Name == "LaserFence2"  or v.Name == "LaserWalls" or v.Name == "VaultProtection" or v.Name == "MovingLasers" or v.Name == "Lever" or v.Name == "MainSurface" or v.Name == "Distribute" then
               v:Destroy()

   end end
end
) end
   

   