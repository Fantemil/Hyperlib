local Players = game:GetService("Players")
local player = Players.LocalPlayer
local mouse = player:GetMouse()

local targetCFrame = CFrame.new(Vector3.new(1104.5144, 66.4840546, 115.464737, 0, 0, -1, 0, 1, 0, 1, 0, 0)) -- Change these coordinates to your desired teleport location

local isPaused = false

while true do
    if not isPaused then
        player.Character:SetPrimaryPartCFrame(targetCFrame)
    end
    
    wait(1) 
    
    
    mouse.KeyDown:Connect(function(key)
        if key == "p" then -- Change "p" to any key you want to use for pausing
            isPaused = not isPaused
        end
    end)
end