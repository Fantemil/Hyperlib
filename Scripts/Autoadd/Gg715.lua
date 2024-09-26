-- ÙØ°Ø§ Ø§ÙØ³ÙØ±Ø¨Øª ÙØªÙØ­ ÙÙØ´Ø®ØµÙØ© Ø§ÙØ·ÙØ±Ø§Ù Ø¹ÙØ¯ Ø§ÙØ¶ØºØ· Ø¹ÙÙ ÙÙØªØ§Ø­ "E"
local userInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

local flying = false

local function toggleFly()
    flying = not flying
    if flying then
        humanoid.PlatformStand = true -- ØªØ¹Ø·ÙÙ ØªØ­ÙÙ Ø§ÙÙØ§Ø¹Ø¨
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
        bodyVelocity.Parent = character.HumanoidRootPart
    else
        humanoid.PlatformStand = false -- Ø¥Ø¹Ø§Ø¯Ø© Ø§ÙØªØ­ÙÙ ÙÙØ§Ø¹Ø¨
        for _, obj in ipairs(character.HumanoidRootPart:GetChildren()) do
            if obj:IsA("BodyVelocity") then
                obj:Destroy()
            end
        end
    end
end

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.E then
        toggleFly()
    end
end)