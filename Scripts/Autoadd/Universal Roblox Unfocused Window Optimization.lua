if not setfpscap then return end

local UserInputService, RunService = game:GetService("UserInputService"), game:GetService("RunService")

UserInputService.WindowFocusReleased:Connect(function()
 RunService:Set3dRenderingEnabled(false); setfpscap(5)
end)

UserInputService.WindowFocused:Connect(function()
 RunService:Set3dRenderingEnabled(true); setfpscap(360)
end)