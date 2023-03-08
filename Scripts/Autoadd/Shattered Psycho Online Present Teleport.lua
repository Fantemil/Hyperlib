_G.TP = true

while _G.TP do
   for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
       if v.Name == "RedPresent" or v.Name == "GreenPresent" or v.Name == "BluePresent" then
           if v.PresentBow:FindFirstChild("BillboardGui") then
           else
               if v.Name == "BluePresent" and v:FindFirstChild("OpenPresent") then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PresentBow.CFrame
               wait(0.2)
               fireproximityprompt(v.OpenPresent)
               else if v.Name == "GreenPresent" and v:FindFirstChild("OpenPresent") then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PresentBow.CFrame
               wait(0.2)
               fireproximityprompt(v.OpenPresent)
               else if v.Name == "RedPresent" and v:FindFirstChild("OpenPresent") then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PresentBow.CFrame
               wait(0.2)
               fireproximityprompt(v.OpenPresent)
               end
               end
           end
           end
       end
   end
   wait(3)
end