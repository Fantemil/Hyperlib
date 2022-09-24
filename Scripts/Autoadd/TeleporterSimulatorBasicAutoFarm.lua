_G.Auto = true
while _G.Auto == true do wait(0.4)
   for i,v in pairs(workspace.TimeSpheres[1]:GetChildren()) do
       if v.Name == "1" then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame
       end
   end
   end