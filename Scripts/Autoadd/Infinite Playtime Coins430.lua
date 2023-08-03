local plr = game:GetService("Players").LocalPlayer
local runservice = game:GetService("RunService")

runservice.RenderStepped:Connect(function()
   if plr.Character and plr.Character:WaitForChild("HumanoidRootPart") then
    plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NODOOR.CFrame
end
end)