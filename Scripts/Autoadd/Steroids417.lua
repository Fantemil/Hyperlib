local plr = game.Players.LocalPlayer
local char = plr.Character
  
  for _, child in pairs(char:GetChildren()) do
    if child:IsA("BasePart") then
      child.Massless = false
      child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, math.huge, math.huge) 
    end
  end

local Players = game:GetService("Players")
local function isPartOfPlayerCharacter(part)
    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character
        if character and part:IsDescendantOf(character) then
            return true
        end
    end
    return false
end

for _, part in ipairs(workspace:GetDescendants()) do
    if part:IsA("BasePart") and not isPartOfPlayerCharacter(part) then
        part.CustomPhysicalProperties = PhysicalProperties.new(-9e9999, 9e9999, 0, 0, 0)
    end
end