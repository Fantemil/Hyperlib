local RunService = game:service'RunService'
for i = 1, #workspace.Classes:GetChildren() do 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Classes[tostring(i)].CFrame
    RunService.Heartbeat:Wait()
end 