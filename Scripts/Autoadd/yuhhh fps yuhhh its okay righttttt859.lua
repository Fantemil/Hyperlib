-- https://scriptblox.com/u/Shity_Guy
-- https://scriptblox.com/u/Shity_Guy
-- Credits https://scriptblox.com/u/Shity_Guy
-- Credits https://scriptblox.com/u/Shity_Guy
-- Credits https://scriptblox.com/u/Shity_Guy
-- Credits https://scriptblox.com/u/Shity_Guy

-- Variables
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local targetFPS = 1000 -- do not go over 5000 (maybe) also there where you spoof to the fps you want to !
local updateFrequency = 0.1 -- How often to update the FPS display (in seconds)

-- Function to find and update the FPS display
local function updateFPSDisplay()
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    -- Assuming the FPS display is a TextLabel named "FPSLabel" under the Head's BillboardGui
    local head = character:WaitForChild("Head")
    local billboardGui = head:FindFirstChildWhichIsA("BillboardGui")

    if billboardGui then
        local fpsLabel = billboardGui:FindFirstChildWhichIsA("TextLabel")
        
        if fpsLabel then
            spawn(function()
                while character and character.Parent do
                    fpsLabel.Text = "FPS: " .. math.random(targetFPS - 3, targetFPS)
                    wait(updateFrequency)
                end
            end)
        else
            warn("FPS TextLabel not found.")
        end
    else
        warn("BillboardGui not found on head.")
    end
end

-- wtf
updateFPSDisplay()