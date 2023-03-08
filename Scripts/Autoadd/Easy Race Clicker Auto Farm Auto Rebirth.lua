_G.AF = true
while _G.AF == true do
    wait(0.1) -- fine tune to your liking, 0.1 for speed, but you can do 1 second if you have a potato pc
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Stages["25"].CFrame
game:GetService("ReplicatedStorage").CommonEvents.Rebirth:FireServer()
end