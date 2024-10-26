local lplr = game:GetService("Players").LocalPlayer.Character
for i,v in pairs(game:GetService("Workspace"):WaitForChild("Crystals"):GetChildren()) do
    lplr.HumanoidRootPart.CFrame = v.TRIGGER.CFrame
    wait(0.5)
    fireproximityprompt(v.TRIGGER.ProximityPrompt)
end
lplr.HumanoidRootPart.CFrame = workspace.Portal.PORTALUNLOCK.CFrame
fireproximityprompt(workspace.Portal.PORTALUNLOCK.ProximityPrompt)
wait(0.2)
fireproximityprompt(workspace.Portal.PORTALUNLOCK.ProximityPrompt2)
wait(8)
lplr.HumanoidRootPart.CFrame = workspace.EVENTMAIN.BUILD["Number1"].CFrame
wait(0.4)
fireproximityprompt(workspace.EVENTMAIN.BUILD["Number1"].ProximityPrompt)
wait(0.4)
lplr.HumanoidRootPart.CFrame = workspace.EVENTMAIN.BUILD["Number2"].CFrame
wait(0.4)
fireproximityprompt(workspace.EVENTMAIN.BUILD["Number2"].ProximityPrompt)
wait(0.4)
lplr.HumanoidRootPart.CFrame = workspace.EVENTMAIN.BUILD["Number3"].CFrame
wait(0.4)
fireproximityprompt(workspace.EVENTMAIN.BUILD["Number3"].ProximityPrompt)
wait(0.4)
lplr.HumanoidRootPart.CFrame = workspace.EVENTMAIN.BUILD["Number4"].CFrame
wait(0.4)
fireproximityprompt(workspace.EVENTMAIN.BUILD["Number4"].ProximityPrompt)
wait(0.6)
lplr.HumanoidRootPart.CFrame = CFrame.new(-4099, 343, 30100)
-- you have to collect the end reward your self sorry i accidently clicked it trying to find the proxprompt sad