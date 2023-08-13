local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Obby but you are a bird.", "DarkTheme")
local Tab = Window:NewTab("Nest Teleporter")

local function teleportToNest(distance)
    local player = game.Players.LocalPlayer
    local nest = game.Workspace.Nests[tostring(distance / 10)] -- Adjust based on your nest structure
    
    if player and nest then
        local character = player.Character
        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
        
        if humanoidRootPart then
            humanoidRootPart.CFrame = nest.CFrame * CFrame.new(0, 5, 0) -- Adjust the offset if needed
        end
    end
end

local function createNestButton(section, distance)
    section:NewButton(distance .. "m Spawn", "ButtonInfo", function()
        teleportToNest(distance)
    end)
end

local function createNestSection(startDistance, endDistance)
    local sectionTitle = startDistance .. " to " .. endDistance .. "m nests"
    local section = Tab:NewSection(sectionTitle)
    
    for distance = startDistance, endDistance, 10 do
        createNestButton(section, distance)
    end
end

createNestSection(0, 100)
createNestSection(100, 200)