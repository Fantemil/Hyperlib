for _,v in pairs(game:GetService("Workspace").EventHunt:GetChildren()) do
   if v:FindFirstChild("ProximityPrompt") and v:FindFirstChild("SurfaceAppearance") then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
           task.wait(2)
               fireproximityprompt(v.ProximityPrompt)
               task.wait()
           end
       end