getgenv().enabled = false -- true for ON / false for OFF
what = "BlendToken" -- Replace with whichever mob you want to farm

while enabled do
   for _, v in ipairs(game.Workspace:GetChildren()) do
       if v.Name == what then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
           break
       end
   end
   wait(0.5)
end