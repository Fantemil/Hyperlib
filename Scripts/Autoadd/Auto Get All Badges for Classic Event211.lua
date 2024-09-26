local function fireTouchInterest(part)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    firetouchinterest(humanoidRootPart, part, 0)
    wait(0.1) -- Adding a delay of 0.1 seconds
    firetouchinterest(humanoidRootPart, part, 1)
end
local tixNames = {
    "TIX1",
    "TIX2",
    "TIX3",
    "TIX4",
    "TIX5",
    "TIX6",
    "TIX7",
    "TIX8",
    "TIX9",
    "TIX10"
}

local roCoinNames = {
    "RoCoin11",
    "RoCoin12",
    "RoCoin13",
    "RoCoin14",
    "RoCoin15"
}

local function processPartsWithDelay(partNames)
    for _, partName in ipairs(partNames) do
        local part = game.Workspace.Map.Currency:FindFirstChild(partName)
        if part then
            fireTouchInterest(part)
        else
            warn("Part " .. partName .. " not found in game.Workspace.Map.Currency")
        end
        wait(1) -- Adding a delay of 1 seconds between each part
    end
end
local startTime = tick()
while tick() - startTime < 20 do
    processPartsWithDelay(tixNames)
    processPartsWithDelay(roCoinNames)
end