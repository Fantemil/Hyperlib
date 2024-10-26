local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function removeClothes()
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Shirt") or item:IsA("Pants") then
            item:Destroy()
        end
    end
end

removeClothes()