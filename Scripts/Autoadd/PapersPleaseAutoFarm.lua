game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
  prompt.HoldDuration = prompt, -1
end)

_G.looping = true
while _G.looping do task.wait(2.1)

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Miscellaneous.Jobs.NPCs["NPC_Smuggling"].Head.Position+Vector3.new(0,0,2))
task.wait(0.3)
fireproximityprompt(game:GetService("Workspace").Miscellaneous.Jobs.Regions.Smuggling.ProximityPrompt)
task.wait(0.3)
local ohBoolean1 = true
local ohString2 = "Heavy"

game:GetService("ReplicatedStorage").Events["777702c7-e85b-457d-9932-749800ec560a"]:FireServer(ohBoolean1, ohString2)
task.wait(0.5)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Miscellaneous.Jobs.SmugglingJob.ReceivingPoint3.Position)

end