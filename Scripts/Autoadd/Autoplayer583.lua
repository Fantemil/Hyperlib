-- https://www.roblox.com/games/6159892946/Aim-Trainer
-- https://github.com/dragonssk/misc-releases/blob/main/aim-trainer-autoplayer.lua

local toggle = false
local userInputService = game:GetService('UserInputService')
local local_mouse = game:GetService('Players').LocalPlayer:GetMouse()

workspace.Effects:Destroy()

game:GetService('UserInputService').InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        toggle = not toggle
    end
end)

while task.wait() do
    if #workspace.Targets:GetChildren() ~= 0 and toggle then
        local target_v3 = workspace.CurrentCamera:WorldToViewportPoint(workspace.Targets:GetChildren()[1].Position)
        local mouse = userInputService:GetMouseLocation()
        mousemoverel(-(mouse.X-target_v3.X), -(mouse.Y-target_v3.Y))
    end
    if local_mouse.Target.Parent == workspace.Targets then
        mouse1click()
    end
end