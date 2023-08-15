local player = game.Players.LocalPlayer.Character

local areas = {
    ["Clownfish Town"] = workspace.Areas["Clownfish Town"].EnemyHolder,
    ["Ruins"] = workspace.Areas.Ruins.EnemyHolder,
    ["Elemental Cave"] = workspace.Areas["Elemental Cave"].EnemyHolder,
    ["Cliffside Stairs"] = workspace.Areas["Cliffside Stairs"].EnemyHolder
}

local function bringDummies()
    local humanoidRootPart = player.HumanoidRootPart
    local dummiesToBring = {
        ["Clownfish Town"] = {"Dummy", "Dummy2"},
        ["Ruins"] = {"JetpackDummy", "Charger", "AggressiveDummy"},
        ["Elemental Cave"] = {"ShurkinNinja", "ScytheNinja", "Ninja"},
        ["Cliffside Stairs"] = {"SwordPirate", "Cannoneer", "Swabbie"}
    }
    
    for areaName, dummyNames in pairs(dummiesToBring) do
        local area = areas[areaName]
        if area then
            for _, dummyName in ipairs(dummyNames) do
                local dummy = area:FindFirstChild(dummyName)
                if dummy then
                    local dummyHumanoidRootPart = dummy:FindFirstChild("HumanoidRootPart")
                    if dummyHumanoidRootPart then
                        local direction = (humanoidRootPart.Position - dummyHumanoidRootPart.Position).Unit
                        local offset = direction * 5
                        dummyHumanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position + offset, humanoidRootPart.Position)
                    end
                end
            end
        end
    end
end

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.Q then
        bringDummies()
    end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)