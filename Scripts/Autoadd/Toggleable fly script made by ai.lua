-- Synapse X Fly Script

local flying = false

local function fly()
    local player = game:GetService("Players").LocalPlayer
    local mouse = player:GetMouse()

    mouse.KeyDown:connect(function(key)
        if key == "e" then
            flying = not flying
        end
    end)

    local input = game:GetService("UserInputService")
    local function onInputBegan(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.Space and not gameProcessedEvent then
            input:Capture()
            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        end
    end

    local function onInputEnded(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.Space and not gameProcessedEvent then
            input:Release()
            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        end
    end

    input.InputBegan:connect(onInputBegan)
    input.InputEnded:connect(onInputEnded)

    game:GetService('RunService').Stepped:connect(function()
        if flying then
            local velocity = (player.Character.HumanoidRootPart.CFrame.LookVector * 50) + Vector3.new(0, 25, 0)
            player.Character.HumanoidRootPart.Velocity = velocity
        end
    end)

    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
    end
end

fly()
