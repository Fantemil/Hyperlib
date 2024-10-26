local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- GUI oluÅturma
local screenGui = Instance.new("ScreenGui", playerGui)
local frame = Instance.new("Frame", screenGui)

frame.Size = UDim2.new(0, 300, 0, 800)
frame.Position = UDim2.new(0.5, -150, 0.5, -400)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
frame.Active = true
frame.Draggable = true

local function createButton(name, position, color, text, func)
    local button = Instance.new("TextButton", frame)
    button.Size = UDim2.new(1, 0, 0, 40)
    button.Position = position
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = color
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 20

    button.MouseButton1Click:Connect(func)
end

local isSpeedEnabled = false
local originalWalkSpeed = humanoid.WalkSpeed

createButton("Speed", UDim2.new(0, 0, 0, 0), Color3.fromRGB(255, 0, 0), "Speed", function()
    if not isSpeedEnabled then
        humanoid.WalkSpeed = 100
        isSpeedEnabled = true
    else
        humanoid.WalkSpeed = originalWalkSpeed
        isSpeedEnabled = false
    end
end)

createButton("Kill All", UDim2.new(0, 0, 0, 50), Color3.fromRGB(0, 255, 0), "Kill All", function()
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer ~= player then
            local targetCharacter = targetPlayer.Character
            if targetCharacter then
                local targetHumanoid = targetCharacter:FindFirstChildOfClass("Humanoid")
                if targetHumanoid then
                    targetHumanoid.Health = 0
                end
            end
        end
    end
end)

createButton("Gun Mod", UDim2.new(0, 0, 0, 100), Color3.fromRGB(0, 0, 255), "Gun Mod (AK-47)", function()
    -- AK-47 silahÄ± ver ve mermileri sonsuz yap
end)

createButton("Tase All", UDim2.new(0, 0, 0, 150), Color3.fromRGB(255, 255, 0), "Tase All", function()
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer ~= player then
            -- TÃ¼m oyuncularÄ± mahkum yap
        end
    end
end)

createButton("Headshot", UDim2.new(0, 0, 0, 200), Color3.fromRGB(255, 165, 0), "Headshot", function()
    -- TÃ¼m atÄ±Ålar kafadan gitsin
end)

createButton("Prison", UDim2.new(0, 0, 0, 250), Color3.fromRGB(128, 0, 128), "Prison", function()
    -- Karakteri mahkum yap
end)

createButton("Police", UDim2.new(0, 0, 0, 300), Color3.fromRGB(0, 128, 0), "Police", function()
    -- Karakteri polis yap
end)

createButton("Kill All Police", UDim2.new(0, 0, 0, 350), Color3.fromRGB(255, 0, 255), "Kill All Police", function()
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer.Team.Name == "Police" and targetPlayer ~= player then
            local targetCharacter = targetPlayer.Character
            if targetCharacter then
                local targetHumanoid = targetCharacter:FindFirstChildOfClass("Humanoid")
                if targetHumanoid then
                    targetHumanoid.Health = 0
                end
            end
        end
    end
end)

createButton("Kill Prisoners", UDim2.new(0, 0, 0, 400), Color3.fromRGB(255, 165, 0), "Kill Prisoners", function()
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer.Team.Name == "Prison" and targetPlayer ~= player then
            local targetCharacter = targetPlayer.Character
            if targetCharacter then
                local targetHumanoid = targetCharacter:FindFirstChildOfClass("Humanoid")
                if targetHumanoid then
                    targetHumanoid.Health = 0
                end
            end
        end
    end
end)

createButton("Kill Leakage", UDim2.new(0, 0, 0, 450), Color3.fromRGB(255, 0, 0), "Kill Leakage", function()
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer.Team.Name == "Leakage" and targetPlayer ~= player then
            local targetCharacter = targetPlayer.Character
            if targetCharacter then
                local targetHumanoid = targetCharacter:FindFirstChildOfClass("Humanoid")
                if targetHumanoid then
                    targetHumanoid.Health = 0
                end
            end
        end
    end
end)

createButton("Kill Aura", UDim2.new(0, 0, 0, 500), Color3.fromRGB(0, 255, 255), "Kill Aura", function()
    -- Otomatik Ã¶ldÃ¼rme iÅlevi
end)

createButton("Give All Guns", UDim2.new(0, 0, 0, 550), Color3.fromRGB(128, 128, 0), "Give All Guns", function()
    -- TÃ¼m silahlarÄ± ver
end)

createButton("Drop Gun", UDim2.new(0, 0, 0, 600), Color3.fromRGB(255, 128, 0), "Drop Gun", function()
    -- SilahlarÄ± yere at ve reset at
end)

createButton("Car", UDim2.new(0, 0, 0, 650), Color3.fromRGB(128, 0, 128), "Car", function()
    -- Prison Life'daki araba getir
end)

createButton("Music", UDim2.new(0, 0, 0, 700), Color3.fromRGB(0, 128, 128), "Music", function()
    -- MÃ¼zik Ã§alma iÅlevi
end)

