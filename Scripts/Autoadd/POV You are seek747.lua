--[[
    SCRIPT BY help_me0443 ON DISCORD

    EXECUTE BEFORE SEEK CHASE

    Works on floor 2 & floor 1
]]

local Camera = workspace.CurrentCamera
local Head = workspace.SeekMovingNewClone.SeekRig.Head.Eye
game:GetService("RunService").RenderStepped:Connect(function()
   Camera.CFrame = Head.CFrame
end)