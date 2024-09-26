local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Project Elysian",
    LoadingTitle = "Loading...",
    LoadingSubtitle = "by Harikin_1",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "Big Hub"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
        RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

local mainTab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Label = mainTab:CreateLabel("Humanoid Settings")

local walkSpeedSlider = mainTab:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 500},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.WS = Value
    end,
})

local setWalkSpeedButton = mainTab:CreateButton({
    Name = "Set WalkSpeed",
    Callback = function()
        local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = _G.WS
        end
    end,
})

local jumpPowerSlider = mainTab:CreateSlider({
    Name = "Jump Power",
    Range = {0, 800},
    Increment = 1,
    Suffix = "Power",
    CurrentValue = 10,
    Flag = "Slider2", -- Ensure a unique flag
    Callback = function(Value)
        _G.JP = Value
    end,
})

local setJumpPowerButton = mainTab:CreateButton({
    Name = "Set JumpPower",
    Callback = function()
        local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.JumpPower = _G.JP
        end
    end,
})

local sitButton = mainTab:CreateButton({
    Name = "Sit",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character.Humanoid.Sit = true
        end
    end,
})

local infJumpButton = mainTab:CreateButton({
    Name = "Inf Jump",
    Callback = function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:Connect(function()
            if InfiniteJumpEnabled then
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
            end
        end)
    end,
})

local removeFallDamageButton = mainTab:CreateButton({
    Name = "Remove FallDamage",
    Callback = function()
        local lp = game.Players.LocalPlayer.Character
        while wait(1) do
            local fallDamageScript = lp:FindFirstChild("FallDamage")
            if fallDamageScript and fallDamageScript:IsA("LocalScript") then
                fallDamageScript:Destroy()
            else
                print("No FallDamage Script Detected")
            end
        end
    end,
})

local visualTab = Window:CreateTab("Visual", 4483362458) -- Title, Image

-- Highlight and Name Tag Settings
local FillColorEmployee = Color3.fromRGB(255, 0, 0)
local FillColorPlayer = Color3.fromRGB(0, 255, 0)
local FillColorItem = Color3.fromRGB(255, 165, 0) -- Orange
local DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255, 255, 255)
local OutlineTransparency = 0

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function HighlightEmployee(employee)
    local Hg = Instance.new("Highlight")
    Hg.FillColor = FillColorEmployee
    Hg.DepthMode = DepthMode
    Hg.FillTransparency = FillTransparency
    Hg.OutlineColor = OutlineColor
    Hg.OutlineTransparency = OutlineTransparency
    Hg.Adornee = employee
    Hg.Parent = Storage
end

local function AddNametag(player)
    local billboard = Instance.new("BillboardGui")
    billboard.Adornee = player.Character and player.Character:FindFirstChild("Head")
    billboard.Name = "Nametag"
    billboard.ExtentsOffset = Vector3.new(0, 3, 0)
    billboard.Size = UDim2.new(0, 200, 0, 50)
    billboard.AlwaysOnTop = true
    billboard.Parent = Storage
    
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Text = player.Name
    nameLabel.TextColor3 = Color3.new(1, 1, 1)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.TextStrokeTransparency = 0.5
    nameLabel.TextScaled = false
    nameLabel.Parent = billboard
    
    connections[player] = player.CharacterAdded:Connect(function(char)
        billboard.Adornee = char:FindFirstChild("Head")
    end)
end

local function HighlightPlayer(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColorPlayer
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = OutlineTransparency
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
        AddNametag(plr)
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
        AddNametag(plr)
    end)
end

local function HighlightItem(item)
    local Highlight = Instance.new("Highlight")
    Highlight.FillColor = FillColorItem
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = OutlineTransparency
    Highlight.Adornee = item
    Highlight.Parent = Storage
end

visualTab:CreateButton({
    Name = "Employee ESP",
    Callback = function()
        local Employees = game.Workspace.GameObjects.Physical.Employees:GetChildren()
        for _, employee in ipairs(Employees) do
            HighlightEmployee(employee)
        end
    end
})

visualTab:CreateButton({
    Name = "Player ESP",
    Callback = function()
        for _, player in ipairs(Players:GetPlayers()) do
            HighlightPlayer(player)
        end
        Players.PlayerAdded:Connect(function(player)
            HighlightPlayer(player)
        end)
    end
})