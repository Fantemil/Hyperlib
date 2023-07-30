-- Made by mxkxkks 

local character = game.Players.LocalPlayer.Character
local checkRadius = 8 --Change distance if you want

local mt = getrawmetatable(character.HumanoidRootPart)
local oldIndex = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(t, k)
    if k == "CheckRadius" then
        return checkRadius
    end
    return oldIndex(t, k)
end)
setreadonly(mt, true)

local function checkNearbyPlayers()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character then
            local distance = (player.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
            if distance <= character.HumanoidRootPart.CheckRadius and player.Character:GetAttribute("Shooting") then
                local jumpAction = "Jump"
                local event = game:GetService("ReplicatedStorage").GameEvents.ClientAction
                event:FireServer(jumpAction)
            end
        end
    end
end

while true do
    checkNearbyPlayers()
    wait(0.1)
end