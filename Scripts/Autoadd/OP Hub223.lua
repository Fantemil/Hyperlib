local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Hide and Seek Extreme Hub",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "HideandSeek"
})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local savedCFrame = nil
local espEnabled = false
local highlights = {}

local function setupESP(character, playerName, isIt)
    
    local existingBillboard = character:FindFirstChild("NameBillboard")
    if existingBillboard then
        existingBillboard:Destroy()
    end
    
    if playerName ~= game.Players.LocalPlayer.Name then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "NameBillboard"
        billboard.Adornee = character:FindFirstChild("Head")
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = character

        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.TextColor3 = isIt and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(0, 255, 0)
        textLabel.TextStrokeTransparency = 0.5
        textLabel.TextScaled = true
        textLabel.Text = playerName
        textLabel.Parent = billboard
    end

    if not character:FindFirstChild("ESP") then
        local highlight = Instance.new("Highlight")
        highlight.Name = "ESP"
        highlight.Parent = character
        highlight.Adornee = character
        highlight.FillColor = isIt and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(0, 255, 0
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.OutlineTransparency = 0.2
    end
end

local function updateESP()
    for _, highlight in pairs(highlights) do
        if highlight and highlight.Parent then
            highlight:Destroy()
        end
    end
    highlights = {}

    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Character then
            local nameBillboard = player.Character:FindFirstChild("NameBillboard")
            if nameBillboard then
                nameBillboard:Destroy()
            end
        end
    end

    if espEnabled then
        local players = game.Players:GetPlayers()
        for _, otherPlayer in ipairs(players) do
            if otherPlayer.Character then
                local character = otherPlayer.Character
                local isIt = otherPlayer:FindFirstChild("PlayerData") and otherPlayer.PlayerData:FindFirstChild("It") and otherPlayer.PlayerData.It.Value
                setupESP(character, otherPlayer.Name, isIt)
                table.insert(highlights, character:FindFirstChild("ESP"))
            end
        end
    end
end

Tab:AddButton({
    Name = "Auto Collect Coins",
    Callback = function()
        local player = game.Players.LocalPlayer
        savedCFrame = player.Character.HumanoidRootPart.CFrame
        
        local coins = game.Workspace.GameObjects:GetChildren()
        for _, coin in ipairs(coins) do
            if coin.Name == "Credit" then
                player.Character.HumanoidRootPart.CFrame = coin.CFrame
                wait(0.1)
            end
        end
        
        if savedCFrame then
            player.Character.HumanoidRootPart.CFrame = savedCFrame
        end
    end    
})

Tab:AddButton({
    Name = "Teleport to All Players",
    Callback = function()
        local player = game.Players.LocalPlayer
        savedCFrame = player.Character.HumanoidRootPart.CFrame
        
        local players = game.Players:GetPlayers()
        for _, otherPlayer in ipairs(players) do
            if otherPlayer ~= player then
                player.Character.HumanoidRootPart.CFrame = otherPlayer.Character.HumanoidRootPart.CFrame
                wait(0.1)
            end
        end
        
        if savedCFrame then
            player.Character.HumanoidRootPart.CFrame = savedCFrame
        end
    end    
})

Tab:AddToggle({
    Name = "ESP",
    Default = false,
    Callback = function(Value)
        espEnabled = Value
        updateESP()
    end    
})

OrionLib:Init()