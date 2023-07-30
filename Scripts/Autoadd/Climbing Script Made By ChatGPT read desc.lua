-- This script allows players to climb walls by pressing the "W" key

local climbSpeed = 20 -- Adjust this value to change the climbing speed

local player = game.Players.LocalPlayer
local humanoid = player.Character:FindFirstChildOfClass("Humanoid")

if humanoid then
    local climbEvent = Instance.new("BindableEvent")
    climbEvent.Name = "ClimbEvent"
    climbEvent.Parent = script

    local climbConnection
    local function onClimbKeyDown()
        climbConnection = climbEvent.Event:Connect(function()
            humanoid:Move(Vector3.new(0, climbSpeed, 0), true)
        end)
    end

    local function onClimbKeyUp()
        if climbConnection then
            climbConnection:Disconnect()
            climbConnection = nil
        end
    end

    game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and input.KeyCode == Enum.KeyCode.W then
            onClimbKeyDown()
        end
    end)

    game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed)
        if not gameProcessed and input.KeyCode == Enum.KeyCode.W then
            onClimbKeyUp()
        end
    end)
end
