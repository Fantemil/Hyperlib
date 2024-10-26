--[Open source]
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local droppedItemsFolder = game.Workspace:WaitForChild("DroppedItems")

local lines = {} -- Ð¢Ð°Ð±Ð»Ð¸ÑÐ° Ð´Ð»Ñ ÑÑÐ°Ð½ÐµÐ½Ð¸Ñ Ð»Ð¸Ð½Ð¸Ð¹

local function clearLines()
    for _, line in pairs(lines) do
        if line then
            line:Destroy() -- Ð£Ð´Ð°Ð»ÑÐµÐ¼ ÑÑÐ°ÑÑÑ Ð»Ð¸Ð½Ð¸Ñ
        end
    end
    lines = {} -- ÐÑÐ¸ÑÐ°ÐµÐ¼ ÑÐ°Ð±Ð»Ð¸ÑÑ Ð»Ð¸Ð½Ð¸Ð¹
end

local function drawLineToItem(item)
    local attachment1
    if item:IsA("BasePart") then
        attachment1 = Instance.new("Attachment", item)
    elseif item:IsA("Model") then
        local basePart = item:FindFirstChildWhichIsA("BasePart")
        if basePart then
            attachment1 = Instance.new("Attachment", basePart)
        else
            return -- ÐÑÐ»Ð¸ Ð² Model Ð½ÐµÑ BasePart, Ð¿ÑÐ¾Ð¿ÑÑÐºÐ°ÐµÐ¼ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð»Ð¸Ð½Ð¸Ð¸
        end
    else
        return -- ÐÑÐ»Ð¸ Ð¾Ð±ÑÐµÐºÑ Ð½Ðµ BasePart Ð¸ Ð½Ðµ Model, Ð¿ÑÐ¾Ð¿ÑÑÐºÐ°ÐµÐ¼ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð»Ð¸Ð½Ð¸Ð¸
    end

    local attachment0 = Instance.new("Attachment", humanoidRootPart)
    local line = Instance.new("Beam")
    line.Attachment0 = attachment0
    line.Attachment1 = attachment1
    line.Color = ColorSequence.new(Color3.new(1, 0, 0)) -- ÐÑÐ°ÑÐ½ÑÐ¹ ÑÐ²ÐµÑ Ð»Ð¸Ð½Ð¸Ð¸
    line.FaceCamera = true
    line.Parent = humanoidRootPart
    table.insert(lines, line) -- ÐÐ¾Ð±Ð°Ð²Ð»ÑÐµÐ¼ Ð»Ð¸Ð½Ð¸Ñ Ð² ÑÐ°Ð±Ð»Ð¸ÑÑ
end

local function updateLines()
    while wait(3) do -- Ð¦Ð¸ÐºÐ» Ñ Ð·Ð°Ð´ÐµÑÐ¶ÐºÐ¾Ð¹ Ð² 3 ÑÐµÐºÑÐ½Ð´Ñ
        clearLines()
        for _, item in pairs(droppedItemsFolder:GetDescendants()) do
            if item:IsA("BasePart") or item:IsA("Model") then
                drawLineToItem(item)
            end
        end
    end
end

updateLines()
