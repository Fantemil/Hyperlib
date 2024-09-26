local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local ESPEnabled = false
local ESPTransparency = 0.5
local ESPUpdateDelay = 0.1  -- Ajusta este valor segÃºn lo que consideres rÃ¡pido

local function getRoot(part)
    return part:IsA("Model") and part.PrimaryPart or part:FindFirstChildWhichIsA("BasePart") or part
end

local function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

local function createESP(plr)
    local CoreGuiFolder = CoreGui:FindFirstChild(plr.Name .. "_ESP")

    if CoreGuiFolder then
        CoreGuiFolder:Destroy()
    end

    local ESPholder = Instance.new("Folder")
    ESPholder.Name = plr.Name .. "_ESP"
    ESPholder.Parent = CoreGui

    local function createAdornment(part)
        local a = Instance.new("BoxHandleAdornment")
        a.Name = plr.Name
        a.Parent = ESPholder
        a.Adornee = part
        a.AlwaysOnTop = true
        a.ZIndex = 10
        a.Size = part.Size
        a.Transparency = ESPTransparency
        a.Color = plr.TeamColor
        return a
    end

    repeat wait(ESPUpdateDelay) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")

    for _, part in pairs(plr.Character:GetChildren()) do
        if part:IsA("BasePart") then
            createAdornment(part)
        end
    end

    if plr.Character and plr.Character:FindFirstChild("Head") then
        local BillboardGui = Instance.new("BillboardGui")
        local TextLabel = Instance.new("TextLabel")

        BillboardGui.Adornee = plr.Character.Head
        BillboardGui.Name = plr.Name
        BillboardGui.Parent = ESPholder
        BillboardGui.Size = UDim2.new(0, 100, 0, 150)
        BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
        BillboardGui.AlwaysOnTop = true

        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundTransparency = 1
        TextLabel.Position = UDim2.new(0, 0, 0, -50)
        TextLabel.Size = UDim2.new(0, 100, 0, 100)
        TextLabel.Font = Enum.Font.SourceSansSemibold
        TextLabel.TextSize = 20
        TextLabel.TextColor3 = Color3.new(1, 1, 1)
        TextLabel.TextStrokeTransparency = 0
        TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
        TextLabel.Text = 'Name: ' .. plr.Name
        TextLabel.ZIndex = 10

        local espLoopFunc
        local teamChange
        local addedFunc

        addedFunc = plr.CharacterAdded:Connect(function()
            if ESPEnabled then
                espLoopFunc:Disconnect()
                teamChange:Disconnect()
                ESPholder:Destroy()
                wait(ESPUpdateDelay)
                createESP(plr)
                addedFunc:Disconnect()
            else
                teamChange:Disconnect()
                addedFunc:Disconnect()
            end
        end)

        teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
            if ESPEnabled then
                espLoopFunc:Disconnect()
                addedFunc:Disconnect()
                ESPholder:Destroy()
                wait(ESPUpdateDelay)
                createESP(plr)
                teamChange:Disconnect()
            else
                teamChange:Disconnect()
            end
        end)

        local function espLoop()
            if CoreGui:FindFirstChild(plr.Name .. "_ESP") then
                if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                    local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
                    TextLabel.Text = 'Name: ' .. plr.Name .. ' | Health: ' .. round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1) .. ' | Studs: ' .. pos
                end
            else
                teamChange:Disconnect()
                addedFunc:Disconnect()
                espLoopFunc:Disconnect()
            end
        end

        espLoopFunc = RunService.RenderStepped:Connect(espLoop)
    end
end

local function toggleESP()
    ESPEnabled = not ESPEnabled
    for _, plr in pairs(Players:GetPlayers()) do
        createESP(plr)
    end
end

-- Puedes activar/desactivar el ESP llamando a esta funciÃ³n
toggleESP()
