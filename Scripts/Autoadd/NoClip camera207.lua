local ps = game:GetService("Players")
local lp = ps.LocalPlayer

local function ncamera()
    lp.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
end

ncamera()

lp.CharacterAdded:Connect(function()
    ncamera()
end)