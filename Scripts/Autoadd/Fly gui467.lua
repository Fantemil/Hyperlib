local ChatService = game:GetService("Chat")

local function enableFly(player)
    -- Check if the player is already flying
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        local humanoid = player.Character.Humanoid
        if humanoid.PlatformStand then
            return
        end
    end
   
    local humanoid = player.Character.Humanoid
    humanoid.PlatformStand = true
end

local function disableFly(player)
    -- Check if the player is flying
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        local humanoid = player.Character.Humanoid
        if not humanoid.PlatformStand then
            return
        end
    end
   
    local humanoid = player.Character.Humanoid
    humanoid.PlatformStand = false
end

local function changeFlySpeed(player, speed)
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        local humanoid = player.Character.Humanoid
        humanoid.WalkSpeed = speed
    end
end

ChatService:RegisterChatCallback(Enum.ChatCallbackType.OnServerReceivingMessage, function(player, message, channel)
    if message:lower() == "/fly" then
        enableFly(player)
    end
    
 "/fly off"
    if message:lower() == "/fly off" then
        disableFly(player)
    end
end)

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local button = Instance.new("TextButton")
button.Text = "Change Fly Speed"
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0, 10, 0, 10)
button.Parent = screenGui

local textBox = Instance.new("TextBox")
textBox.PlaceholderText = "Enter Fly Speed"
textBox.Size = UDim2.new(0, 150, 0, 30)
textBox.Position = UDim2.new(0, 10, 0, 70)
textBox.Parent = screenGui

local function handleClick()
    local flySpeed = tonumber(textBox.Text)
    if flySpeed then
        changeFlySpeed(game.Players.LocalPlayer, flySpeed)
    end
end

button.MouseButton1Click:Connect(handleClick)