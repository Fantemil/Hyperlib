getgenv().autoaltar = true


if getgenv().autoaltar then
   if game:GetService("Workspace"):FindFirstChild("Altar") then
       spawn(function()
       while getgenv().autoaltar do task.wait()
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Altar["Thin Wall"].CFrame
           task.wait()
           fireproximityprompt(game:GetService("Workspace").Altar["Thin Wall"].ProximityPrompt)
       end
   end)
   end
end