-- Variables to store the state
local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local lastMovementTime = 0

-- Function to send notifications
local function sendNotification(message)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Spacebar Spam";
        Text = message;
        Duration = 2;
    })
end

-- Initial notification to indicate the script is injected
sendNotification("Injected")

-- Get the Key frame within the specific GUI
local keyFrame = player:WaitForChild("PlayerGui"):WaitForChild("MainUI")
                      :WaitForChild("Domain"):WaitForChild("Clashing")
                      :WaitForChild("Key")

local lastPosition = keyFrame.AbsolutePosition


local function spamSpacebar()
    local endTime = tick() + 3
    while tick() < endTime do
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Space, false, game)
        wait(0.2)  -- Adjust the speed of holding the spacebar here
    end
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Space, false, game)  -- Release the key after spamming
end


-- Loop to monitor the Key frame's position and trigger spacebar spam if it moves
game:GetService("RunService").RenderStepped:Connect(function()
    local currentTime = tick()
    local currentPosition = keyFrame.AbsolutePosition

    if currentPosition ~= lastPosition and (currentTime - lastMovementTime) > 30 then
        spamSpacebar()
        lastMovementTime = currentTime
    end

    lastPosition = currentPosition
end)
