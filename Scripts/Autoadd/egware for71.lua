--Egware


local function getPlayersName()
    for i, v in pairs(game:GetChildren()) do
        if v.ClassName == "Players" then
            return v.Name
        end
    end
end

local players = getPlayersName()
local plr = game[players].LocalPlayer

local function modifyCharacter(character, targetPart)
    local partsToModify = {
        "RightUpperLeg",
        "LeftUpperLeg",
        "HeadHB",
        "HumanoidRootPart"
    }

    for _, v in pairs(partsToModify) do
        local part = character:FindFirstChild(v)
        if part then
            part.CanCollide = false
            part.Transparency = targetPart == v and 0.5 or 1
            part.Size = Vector3.new(13, 13, 13)
        end
    end
end

local silentAimEnabled = false
local targetPart = "HeadHB"
local espEnabled = false
local espColor = Color3.fromRGB(255, 0, 0)

local function updateModMenu()
    if silentAimEnabled then
        coroutine.resume(coroutine.create(function()
            while wait(1) do
                coroutine.resume(coroutine.create(function()
                    for _, v in pairs(game[players]:GetPlayers()) do
                        if v.Name ~= plr.Name and v.Character then
                            modifyCharacter(v.Character, targetPart)
                        end
                    end
                end))
            end
        end))
    end
end

local function updateESP()
    if espEnabled then
        for _, v in pairs(game[players]:GetPlayers()) do
            if v.Name ~= plr.Name and v.Character then
                local character = v.Character
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    local espBox = humanoidRootPart:FindFirstChild("ESpBox")
                    if not espBox then
                        espBox = Instance.new("BoxHandleAdornment")
                        espBox.Name = "ESpBox"
                        espBox.Size = Vector3.new(5, 8, 5)
                        espBox.Color3 = espColor
                        espBox.Transparency = 0.7
                        espBox.AlwaysOnTop = true
                        espBox.Adornee = humanoidRootPart
                        espBox.ZIndex = 0
                        espBox.Parent = humanoidRootPart
                    else
                        espBox.Color3 = espColor
                    end
                end
            end
        end
    end
end

local modMenu = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 250)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderSizePixel = 0
frame.Parent = modMenu

local title = Instance.new("TextLabel")
title.Text = "EgWare"
title.Size = UDim2.new(0, 250, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.FontSize = Enum.FontSize.Size24
title.BorderSizePixel = 0
title.Parent = frame

local silentAimToggle = Instance.new("TextButton")
silentAimToggle.Text = "Toggle Silent Aim"
silentAimToggle.Size = UDim2.new(0, 200, 0, 30)
silentAimToggle.Position = UDim2.new(0, 25, 0, 40)
silentAimToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
silentAimToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
silentAimToggle.Font = Enum.Font.SourceSans
silentAimToggle.FontSize = Enum.FontSize.Size18
silentAimToggle.BorderSizePixel = 0
silentAimToggle.Parent = frame
silentAimToggle.MouseButton1Click:Connect(function()
    silentAimEnabled = not silentAimEnabled
    updateModMenu()
end)

local targetPartDropdown = Instance.new("TextLabel")
targetPartDropdown.Text = "Select Target Part:"
targetPartDropdown.Size = UDim2.new(0, 200, 0, 20)
targetPartDropdown.Position = UDim2.new(0, 25, 0, 90)
targetPartDropdown.Font = Enum.Font.SourceSans
targetPartDropdown.FontSize = Enum.FontSize.Size18
targetPartDropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
targetPartDropdown.Parent = frame

local targetPartDropdownButton = Instance.new("TextButton")
targetPartDropdownButton.Text = targetPart
targetPartDropdownButton.Size = UDim2.new(0, 200, 0, 30)
targetPartDropdownButton.Position = UDim2.new(0, 25, 0, 110)
targetPartDropdownButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
targetPartDropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
targetPartDropdownButton.Font = Enum.Font.SourceSans
targetPartDropdownButton.FontSize = Enum.FontSize.Size18
targetPartDropdownButton.BorderSizePixel = 0
targetPartDropdownButton.Parent = frame
targetPartDropdownButton.MouseButton1Click:Connect(function()
    local partOptions = {"RightUpperLeg", "LeftUpperLeg", "HeadHB", "HumanoidRootPart"}
    local currentIndex = 1
    for i, v in ipairs(partOptions) do
        if v == targetPart then
            currentIndex = i
            break
        end
    end
    currentIndex = currentIndex % #partOptions + 1
    targetPart = partOptions[currentIndex]
    targetPartDropdownButton.Text = targetPart
    updateModMenu()
end)

local espToggle = Instance.new("TextButton")
espToggle.Text = "Toggle ESP"
espToggle.Size = UDim2.new(0, 200, 0, 30)
espToggle.Position = UDim2.new(0, 25, 0, 160)
espToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
espToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
espToggle.Font = Enum.Font.SourceSans
espToggle.FontSize = Enum.FontSize.Size18
espToggle.BorderSizePixel = 0
espToggle.Parent = frame
espToggle.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    updateModMenu()
    updateESP()
end)

modMenu.Parent = game.Players.LocalPlayer.PlayerGui