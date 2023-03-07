if getgenv().autoFarm then getgenv().autoFarm = false
else getgenv().autoFarm = true end
while getgenv().autoFarm do
 fireclickdetector(game:GetService("Workspace").Floppa.ClickDetector)
 for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
  if v.Name == "Money" or v.Name == "Money Bag" then
   firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 0)
   task.wait()
  end
 end
 if game:GetService("Workspace").Floppa.Configuration.Hunger.Value < 30 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Floppa Food") then
        game:GetService("ReplicatedStorage").Events.Unlock:FireServer(unpack({[1] = "Floppa Food",[2] = "the_interwebs"}))
  fireproximityprompt(game:GetService("Workspace")["Key Parts"].Bowl.Part.ProximityPrompt, 0)
 end
 if game:GetService("Workspace").Floppa.Configuration.Happiness.Value < 30 then fireproximityprompt(game:GetService("Workspace").Floppa.HumanoidRootPart.ProximityPrompt, 0) end
 task.wait()
end