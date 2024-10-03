local player = game.Players.LocalPlayer
local playerInterface = player:WaitForChild("PlayerGui")

local function clearAllGuiElements()
    for _, element in pairs(playerInterface:GetChildren()) do
        if element.Name ~= "TouchGui" then
            element:Destroy()
        end
    end
end

clearAllGuiElements()