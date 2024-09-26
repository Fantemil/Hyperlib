
local function EquipAllItems(player)
    local backpack = player:WaitForChild("Backpack")
    for _, item in ipairs(backpack:GetChildren()) do
        if item:IsA("Tool") then
            item.Parent = player.Character
        end
    end
end


local player = game.Players.LocalPlayer
EquipAllItems(player)
