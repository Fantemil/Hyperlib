-- Part ESP Function START
function CreateESPPart(BodyPart,color,text)
    local ESPPartparent = BodyPart
    local Box = Instance.new("BoxHandleAdornment")
    Box.Size = BodyPart.Size + Vector3.new(0.1, 0.1, 0.1)
    Box.Name = "ESPPart"
    Box.Adornee = ESPPartparent
    Box.Color3 = color
    Box.AlwaysOnTop = true
    Box.ZIndex = 5
    Box.Transparency = 0.25
    Box.Parent = BodyPart
    local Billboard = Instance.new("BillboardGui")
    Billboard.Name = "TextPart"
    Billboard.AlwaysOnTop = true
    Billboard.Size = UDim2.fromScale(6, 6)
    Billboard.StudsOffset = Vector3.new(0,5,0)
    Billboard.Parent = ESPPartparent
    local Text = Instance.new("TextLabel")
    Text.Parent = Billboard
    Text.RichText = true
    Text.TextScaled = true
    Text.Text = text
    Text.Size = UDim2.fromScale(1, 1)
    Text.Font = "Antique"
    Text.TextColor3 = Color3.new(0,0,0)
    Text.TextStrokeColor3 = Color3.new(1,1,1)
    Text.TextStrokeTransparency = 0
    Text.BackgroundTransparency = 1
end
-- Part ESP Function END

-- Add Radio ESP Function START
function AddRadioESP(actionables)
    for index, child in pairs(actionables) do
        if child.Name == "Radio" then
            if math.floor(child.Progress.Value) < 99 then
                CreateESPPart(child.PrimaryPart, Color3.fromRGB(255,0,0), "Radio: "..tostring(math.floor(child.Progress.Value)).."%")
            else
                CreateESPPart(child.PrimaryPart, Color3.fromRGB(0,255,0), "Radio Done! "..tostring(math.floor(child.Progress.Value)).."%")
            end
        end
    end
end
-- Add Radios ESP Function END

-- Remove Existing Radio ESP Function START
function RemoveExistingRadioESP(actionables)
    for index, child in pairs(actionables) do
        if child.Name == "Radio" then
            if child.PrimaryPart:FindFirstChild("ESPPart") then
                child.PrimaryPart.ESPPart:Destroy()
                child.PrimaryPart.TextPart:Destroy()
            end
        end
    end
end
-- Remove Existing Radio ESP Function END

-- Add MedKit ESP Function START
function AddMedKitESP(actionables)
    for index, child in pairs(actionables) do
        if child.Name == "MedKit" and child:IsA("BasePart") then
            CreateESPPart(child, Color3.fromRGB(255,128,128), "MedKit")
        end
    end
end
-- Add MedKit ESP Function END

-- Remove Existing MedKit ESP Function START
function RemoveExistingMedKitESP(actionables)
    for index, child in pairs(actionables) do
        if child.Name == "MedKit" and child:IsA("BasePart") then
            if child:FindFirstChild("ESPPart") then
                child.ESPPart:Destroy()
                child.TextPart:Destroy()
            end
        end
    end
end
-- Remove Existing MedKit ESP Function END

-- Add WeaponLocker ESP Function START
function AddWeaponLockerESP(actionables)
    for index, child in pairs(actionables) do
        if child.Name == "WeaponLocker" then
            CreateESPPart(child.Lockers.lockers, Color3.fromRGB(255,255,255), "Weapon Locker")
        end
    end
end
-- Add WeaponLocker ESP Function END

-- Remove Existing WeaponLocker ESP Function START
function RemoveExistingWeaponLockerESP(actionables)
    for index, child in pairs(actionables) do
        if child.Name == "WeaponLocker" then
            if child.Lockers.lockers:FindFirstChild("ESPPart") then
                child.Lockers.lockers.ESPPart:Destroy()
                child.Lockers.lockers.TextPart:Destroy()
            end
        end
    end
end
-- Remove Existing WeaponLocker ESP Function END

if workspace:FindFirstChild("Actionables") then
    print("Actionables folder Found.")
    local ActionablesFolder = workspace.Actionables
    local children = ActionablesFolder:GetChildren()
    local medkitChildren = ActionablesFolder:GetChildren()
    while wait(5) do
        RemoveExistingRadioESP(children)
        RemoveExistingMedKitESP(medkitChildren)
        RemoveExistingWeaponLockerESP(children)
        wait()
        AddRadioESP(children)
        AddMedKitESP(medkitChildren)
        AddWeaponLockerESP(children)
    end
else
    warn("You are not in a Cryptik Match.")
    local WarningScreenGui = Instance.new("ScreenGui")
    WarningScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
    local WarningTextLabel = Instance.new("TextLabel")
    WarningTextLabel.Parent = WarningScreenGui
    WarningTextLabel.RichText = true
    WarningTextLabel.TextScaled = true
    WarningTextLabel.Text = "You are not in a Cryptik Match."
    WarningTextLabel.Size = UDim2.fromScale(1, 0.25)
    WarningTextLabel.Font = "Antique"
    WarningTextLabel.TextColor3 = Color3.new(0,0,0)
    WarningTextLabel.TextStrokeColor3 = Color3.new(255,255,255)
    WarningTextLabel.TextStrokeTransparency = 0
    WarningTextLabel.BackgroundTransparency = 1
    wait(5)
    WarningScreenGui:Destroy()
end