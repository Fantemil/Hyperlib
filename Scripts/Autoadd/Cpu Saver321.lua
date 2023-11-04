local inputservice = game:GetService("UserInputService")
local runservice = game:GetService("RunService")
inputservice.WindowFocusReleased:Connect(function() runservice:Set3dRenderingEnabled(false) end)
inputservice.WindowFocused:Connect(function() runservice:Set3dRenderingEnabled(true) end)