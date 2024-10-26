--Made By: Shag420

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
prompt.HoldDuration = -1
end)
game:GetService'RunService'.RenderStepped:Connect(function()
task.spawn(function()
for i=0,10000,1 do
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Interactions["Search Trash"].trashcluster01a.CFrame + Vector3.new(0,-7,0)
game:GetService("Workspace").Interactions["Search Trash"].trashcluster01a.Handler.Enabled = true
fireproximityprompt(game:GetService("Workspace").Interactions["Search Trash"].trashcluster01a.Handler, 1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end
end)
end)