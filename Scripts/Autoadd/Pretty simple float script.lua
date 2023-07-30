
local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

local isFlying = false
local bodyVelocity


local function enableFly()
    if isFlying then return end
    

    local character = player.Character or player.CharacterAdded:Wait()
    
    
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
    bodyVelocity.Parent = character.HumanoidRootPart
    

    mouse.Button1Down:Connect(function()
       
        bodyVelocity.Velocity = Vector3.new(0, 50, 0)
    end)
    
    mouse.Button1Up:Connect(function()
       
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    end)
    
    isFlying = true
end

local function disableFly()
    if not isFlying then return end
    
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    
    isFlying = false
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        if isFlying then
            disableFly()
        else
            enableFly()
        end
    end
end)
