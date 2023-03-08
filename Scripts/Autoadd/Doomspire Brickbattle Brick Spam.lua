while true do
   if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Trowel") then
       game:GetService("Players").LocalPlayer.Backpack.Trowel.Update:FireServer(CFrame.new(0, 140, 0))
   else
       game:GetService("Players").LocalPlayer.Character.Trowel.Update:FireServer(CFrame.new(0, 140, 0))
   end
wait(.1)
end