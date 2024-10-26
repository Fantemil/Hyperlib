-- ÐÐ¾Ð»ÑÑÐ°ÐµÐ¼ ÑÐµÐºÑÑÐµÐ³Ð¾ Ð¸Ð³ÑÐ¾ÐºÐ° Ð¸ ÐµÐ³Ð¾ Ð¿ÐµÑÑÐ¾Ð½Ð°Ð¶Ð°
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- ÐÑÐµÐ¼ÐµÐ½Ð½Ð°Ñ Ð¿ÐµÑÐµÐ¼ÐµÐ½Ð½Ð°Ñ Ð´Ð»Ñ ÑÑÐ°Ð½ÐµÐ½Ð¸Ñ Ð¸Ð½ÑÐ¾ÑÐ¼Ð°ÑÐ¸Ð¸ Ð¾ ÑÐ¾Ð¼, Ð½ÑÐ¶Ð½Ð¾ Ð»Ð¸ Ð¿ÑÐ¾Ð´Ð¾Ð»Ð¶Ð°ÑÑ Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ðµ
local continueLoop = true

-- Ð¤Ð»Ð°Ð³, ÑÐºÐ°Ð·ÑÐ²Ð°ÑÑÐ¸Ð¹, Ð½Ð°Ð¶Ð°ÑÐ° Ð»Ð¸ ÐºÐ»Ð°Ð²Ð¸ÑÐ° E
local ePressed = false

-- Ð¡Ð¿Ð¸ÑÐ¾Ðº ÑÐ¾Ð±ÑÐ°Ð½Ð½ÑÑ Ð¾Ð±ÑÐµÐºÑÐ¾Ð²
local collectedObjects = {}

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ, ÐºÐ¾ÑÐ¾ÑÐ°Ñ Ð±ÑÐ´ÐµÑ Ð²ÑÐ¿Ð¾Ð»Ð½ÑÑÑÑÑ Ð¿ÑÐ¸ Ð½Ð°Ð¶Ð°ÑÐ¸Ð¸ ÐºÐ»Ð°Ð²Ð¸Ñ
local userInputService = game:GetService("UserInputService")

-- ÐÐ±ÑÐ°Ð±Ð¾ÑÑÐ¸Ðº Ð½Ð°Ð¶Ð°ÑÐ¸Ñ ÐºÐ»Ð°Ð²Ð¸Ñ
userInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Six then
        continueLoop = false -- ÐÑÐ»Ð¸ Ð½Ð°Ð¶Ð°ÑÐ° ÐºÐ»Ð°Ð²Ð¸ÑÐ° 6, Ð¿ÑÐµÐºÑÐ°ÑÐ°ÐµÐ¼ Ð²ÑÐ¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ðµ
    elseif input.KeyCode == Enum.KeyCode.Seven then
        -- ÐÐ±Ð½ÑÐ»ÑÐµÐ¼ ÑÐ¿Ð¸ÑÐ¾Ðº ÑÐ¾Ð±ÑÐ°Ð½Ð½ÑÑ Ð¾Ð±ÑÐµÐºÑÐ¾Ð² Ð¿ÑÐ¸ Ð½Ð°Ð¶Ð°ÑÐ¸Ð¸ ÐºÐ»Ð°Ð²Ð¸ÑÐ¸ 7
        collectedObjects = {}
        print("Ð¡Ð¿Ð¸ÑÐ¾Ðº ÑÐ¾Ð±ÑÐ°Ð½Ð½ÑÑ Ð¾Ð±ÑÐµÐºÑÐ¾Ð² Ð¾Ð±Ð½ÑÐ»ÑÐ½")
    elseif input.KeyCode == Enum.KeyCode.E then
        ePressed = true -- ÐÑÐ¼ÐµÑÐ°ÐµÐ¼, ÑÑÐ¾ ÐºÐ»Ð°Ð²Ð¸ÑÐ° E Ð±ÑÐ»Ð° Ð½Ð°Ð¶Ð°ÑÐ°
    end
end)

-- ÐÑÐ¾Ð²ÐµÑÐºÐ°, Ð±ÑÐ» Ð»Ð¸ Ð¾Ð±ÑÐµÐºÑ ÑÐ¶Ðµ ÑÐ¾Ð±ÑÐ°Ð½
local function isObjectCollected(object)
    return collectedObjects[object] == true
end

-- ÐÐ¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¾Ð±ÑÐµÐºÑÐ° Ð² ÑÐ¿Ð¸ÑÐ¾Ðº ÑÐ¾Ð±ÑÐ°Ð½Ð½ÑÑ
local function collectObject(object)
    collectedObjects[object] = true
end

-- ÐÑÐ¾Ð²ÐµÑÐºÐ° Ð½Ð° Ð½Ð°Ð»Ð¸ÑÐ¸Ðµ Ð´Ð¾ÑÐµÑÐ½ÐµÐ³Ð¾ ÑÐ»ÐµÐ¼ÐµÐ½ÑÐ° Difficulty Ð¸ ÐµÐ³Ð¾ Ð·Ð½Ð°ÑÐµÐ½Ð¸Ñ
local function isExclusive(object)
    local difficulty = object:FindFirstChild("Difficulty")
    if difficulty and difficulty:IsA("StringValue") then
        -- ÐÑÐ»Ð¸ ÑÐ¾Ð´ÐµÑÐ¶Ð¸Ð¼Ð¾Ðµ Difficulty = "Exclusive", Ð¾Ð±ÑÐµÐºÑ Ð¿ÑÐ¾Ð¿ÑÑÐºÐ°ÐµÑÑÑ
        return difficulty.Value == "Exclusive"
    end
    return false
end

-- Ð¢ÐµÐ»ÐµÐ¿Ð¾ÑÑÐ¸ÑÑÐµÐ¼ÑÑ Ð¿Ð¾ Ð¾ÑÐµÑÐµÐ´Ð¸ Ðº ÐºÐ°Ð¶Ð´Ð¾Ð¼Ñ Ð¾Ð±ÑÐµÐºÑÑ Ð² Workspace
for _, object in ipairs(workspace:GetDescendants()) do
    -- ÐÑÐ¾Ð²ÐµÑÑÐµÐ¼, ÑÐ²Ð»ÑÐµÑÑÑ Ð»Ð¸ Ð¾Ð±ÑÐµÐºÑ ÑÐ°ÑÑÑÑ Ð¼Ð¾Ð´ÐµÐ»Ð¸, ÐºÐ¾ÑÐ¾ÑÑÑ Ð¼Ð¾Ð¶Ð½Ð¾ ÑÐµÐ»ÐµÐ¿Ð¾ÑÑÐ¸ÑÐ¾Ð²Ð°ÑÑ (Ð½Ð°Ð¿ÑÐ¸Ð¼ÐµÑ, BasePart)
    if object:IsA("BasePart") and not isObjectCollected(object) then
        if not continueLoop then break end -- ÐÑÐµÑÑÐ²Ð°ÐµÐ¼ ÑÐ¸ÐºÐ», ÐµÑÐ»Ð¸ Ð½Ð°Ð¶Ð°ÑÐ° ÐºÐ»Ð°Ð²Ð¸ÑÐ° 6
        
        -- ÐÑÐ¾Ð²ÐµÑÑÐµÐ¼ Ð½Ð°Ð»Ð¸ÑÐ¸Ðµ Difficulty Ð¸ ÐµÐ³Ð¾ Ð·Ð½Ð°ÑÐµÐ½Ð¸Ðµ
        if isExclusive(object) then
            print("ÐÐ±ÑÐµÐºÑ Ð¿ÑÐ¾Ð¿ÑÑÐµÐ½ Ð¸Ð·-Ð·Ð° Difficulty = Exclusive: ", object.Name)
            continue -- ÐÑÐ¾Ð¿ÑÑÐºÐ°ÐµÐ¼ Ð¾Ð±ÑÐµÐºÑ, ÐµÑÐ»Ð¸ Ð¾Ð½ Ð¸Ð¼ÐµÐµÑ Difficulty = "Exclusive"
        end

        -- Ð¢ÐµÐ»ÐµÐ¿Ð¾ÑÑÐ¸ÑÑÐµÐ¼ Ð¿ÐµÑÑÐ¾Ð½Ð°Ð¶Ð° Ð¸Ð³ÑÐ¾ÐºÐ° Ðº Ð¾Ð±ÑÐµÐºÑÑ
        humanoidRootPart.CFrame = object.CFrame
        print("Ð¢ÐµÐ»ÐµÐ¿Ð¾ÑÑÐ¸ÑÐ¾Ð²Ð°Ð»Ð¸ÑÑ Ðº Ð¾Ð±ÑÐµÐºÑÑ: ", object.Name)
        
        -- Ð¡Ð±ÑÐ¾Ñ ÑÐ»Ð°Ð³Ð° Ð´Ð»Ñ Ð½Ð°Ð¶Ð°ÑÐ¸Ñ E
        ePressed = false
        local timer = 0
        local collected = false
        
        -- ÐÐ´ÐµÐ¼, Ð¿Ð¾ÐºÐ° Ð¸Ð³ÑÐ¾Ðº Ð½Ð°Ð¶Ð¼ÐµÑ E Ð¸Ð»Ð¸ Ð¿ÑÐ¾Ð¹Ð´ÐµÑ 5 ÑÐµÐºÑÐ½Ð´
        repeat
            wait(0.1) -- ÐÐ°Ð´ÐµÑÐ¶ÐºÐ° Ð´Ð»Ñ Ð¿Ð»Ð°Ð²Ð½Ð¾Ð³Ð¾ ÑÐ¸ÐºÐ»Ð°
            timer = timer + 0.1
            if ePressed then
                -- ÐÐ±ÑÐµÐºÑ ÑÐ¾Ð±ÑÐ°Ð½
                collected = true
                collectObject(object)
                print("ÐÐ±ÑÐµÐºÑ ÑÐ¾Ð±ÑÐ°Ð½: ", object.Name)
                object:Destroy() -- Ð£Ð´Ð°Ð»ÑÐµÐ¼ Ð¾Ð±ÑÐµÐºÑ
            end
        until collected or timer >= 5 or not continueLoop -- ÐÐ¸Ð±Ð¾ Ð¾Ð±ÑÐµÐºÑ ÑÐ¾Ð±ÑÐ°Ð½, Ð»Ð¸Ð±Ð¾ Ð¿ÑÐ¾ÑÐ»Ð¾ 5 ÑÐµÐºÑÐ½Ð´, Ð»Ð¸Ð±Ð¾ Ð·Ð°Ð²ÐµÑÑÐµÐ½Ð¸Ðµ ÑÐ¸ÐºÐ»Ð°
        
        if not collected then
            print("ÐÐ±ÑÐµÐºÑ Ð½Ðµ ÑÐ¾Ð±ÑÐ°Ð½ Ð² ÑÐµÑÐµÐ½Ð¸Ðµ 5 ÑÐµÐºÑÐ½Ð´, Ð¿ÐµÑÐµÐ¼ÐµÑÐ°ÐµÐ¼ÑÑ Ðº ÑÐ»ÐµÐ´ÑÑÑÐµÐ¼Ñ")
        end

        -- ÐÐ¾Ð±Ð°Ð²Ð»ÑÐµÐ¼ Ð·Ð°Ð´ÐµÑÐ¶ÐºÑ Ð¿ÐµÑÐµÐ´ ÑÐµÐ»ÐµÐ¿Ð¾ÑÑÐ¾Ð¼ Ðº ÑÐ»ÐµÐ´ÑÑÑÐµÐ¼Ñ Ð¾Ð±ÑÐµÐºÑÑ
        wait(1) -- ÐÐ°Ð´ÐµÑÐ¶ÐºÐ° Ð¼ÐµÐ¶Ð´Ñ ÑÐµÐ»ÐµÐ¿Ð¾ÑÑÐ°Ð¼Ð¸ Ð´Ð»Ñ Ð¿Ð»Ð°Ð²Ð½Ð¾Ð³Ð¾ Ð¿ÐµÑÐµÐ¼ÐµÑÐµÐ½Ð¸Ñ
    end
end

print("Ð¦Ð¸ÐºÐ» Ð·Ð°Ð²ÐµÑÑÐµÐ½ Ð¸Ð»Ð¸ Ð±ÑÐ» Ð¿ÑÐµÑÐ²Ð°Ð½.")
