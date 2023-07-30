-- [[ script by focat#1687 ]] --
--// discord.gg/varity \\--
-- the code is poopoo so lol

getgenv().ToggleKey = "x"
getgenv().TPDelay = 0.5 -- In seconds

local uis = game:GetService("UserInputService")
local hb = game:GetService("RunService").Heartbeat
local lplr = game:GetService("Players").LocalPlayer
local mouse = lplr:GetMouse()
local tping = false

uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode[getgenv().ToggleKey:upper()] then
        tping = not tping
    end
end)

hb:Connect(function()
    if tping then
        lplr.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.p)
        wait(getgenv().TPDelay)
    end
end)