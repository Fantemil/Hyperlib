-- Esp: Spider, Items
getgenv().Spider = true
getgenv().Items = true

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local ItemsFolder = Workspace:WaitForChild("Items")
local Player = Players.LocalPlayer

local Config = {
    DistanceMetric = "euclidean",
    Interval = 0.20
}

local function Gui(parent, text)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(0, 200, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
    billboardGui.AlwaysOnTop = true
    billboardGui.Parent = parent

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextStrokeTransparency = 0.5
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 14
    textLabel.Text = text
    textLabel.ZIndex = 10
    textLabel.Parent = billboardGui

    return billboardGui
end

local function updateGui(billboardGui, text)
    local textLabel = billboardGui:FindFirstChildOfClass("TextLabel")
    if textLabel then
        textLabel.Text = text
    end
end

local function getModels()
    local modelList = {}
    for _, descendant in ipairs(ItemsFolder:GetDescendants()) do
        if descendant:IsA("Model") then
            table.insert(modelList, descendant)
        end
    end
    return modelList
end

local function getSpider()
    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character
        if character and character:FindFirstChild("IsSpiderCharacter") then
            return player
        end
    end
    return nil
end

local function DistanceCalculator(position1, position2, options)
    options = options or {}
    local is2D = options.is2D or false
    local metric = options.metric or "euclidean"

    local delta = position1 - position2
    if is2D then
        delta = Vector3.new(delta.X, delta.Y, 0)
    end

    if metric == "euclidean" then
        return delta.Magnitude
    elseif metric == "manhattan" then
        return math.abs(delta.X) + math.abs(delta.Y) + math.abs(delta.Z)
    elseif metric == "chebyshev" then
        return math.max(math.abs(delta.X), math.abs(delta.Y), math.abs(delta.Z))
    else
        return delta.Magnitude
    end
end

local function formatDistance(distance)
    return string.format("%.2f", distance)
end

local function SpiderEsp()
    while true do
        pcall(function()
            if Player.Character and Player.Character:FindFirstChild("Head") then
                local playerHead = Player.Character.Head
                local spiderPlayer = getSpider()
                if spiderPlayer and spiderPlayer.Character then
                    local character = spiderPlayer.Character
                    local head = character:FindFirstChild("Head")
                    if head then
                        local distance = DistanceCalculator(head.Position, playerHead.Position, {is2D = false, metric = Config.DistanceMetric})
                        local text = "Spider [ Distance: " .. formatDistance(distance) .. " ]"
                        local billboardGui = head:FindFirstChildOfClass("BillboardGui") or createGui(head, text)
                        updateGui(billboardGui, text)
                    end
                end
            end
        end)
        task.wait(Config.Interval)
    end
end

local function ItemsEsp()
    while true do
        pcall(function()
            if Player.Character and Player.Character:FindFirstChild("Head") then
                local playerHead = Player.Character.Head
                for _, model in ipairs(getModels()) do
                    local primaryPart = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
                    if primaryPart then
                        local distance = DistanceCalculator(primaryPart.Position, playerHead.Position, {is2D = false, metric = Config.DistanceMetric})
                        local text = model.Name .. " [ Distance: " .. formatDistance(distance) .. " ]"
                        local billboardGui = primaryPart:FindFirstChildOfClass("BillboardGui") or createGui(primaryPart, text)
                        updateGui(billboardGui, text)
                    end
                end
            end
        end)
        task.wait(Config.Interval)
    end
end

task.spawn(SpiderEsp)
task.spawn(ItemsEsp)