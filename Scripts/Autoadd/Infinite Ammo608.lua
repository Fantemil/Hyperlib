local player = game.Players.LocalPlayer
local backpack = player.Backpack
local character = game.Workspace.Characters[player.Name]
local guns = game.ReplicatedStorage.Guns

local function checkGunExists(name)
    for i,v in pairs(guns:GetDescendants()) do
            if v.Name == name then return true
        end
    end
end

for i,v in pairs(backpack:GetDescendants()) do
    if checkGunExists(v.Name) then
        v:SetAttribute("Ammo", math.huge)
    end
end

for i,v in pairs(character:GetDescendants()) do
    if checkGunExists(v.Name) then
        v:SetAttribute("Ammo", math.huge)
    end
end