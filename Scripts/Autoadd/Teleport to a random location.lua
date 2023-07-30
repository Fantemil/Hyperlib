--Made by dixigod#0001
--Discord.gg/proxihub
local function teleportPlayer()
    local player = game:GetService("Players").LocalPlayer
    local randomLocation = Vector3.new(math.random(-500, 500), math.random(5, 50), math.random(-500, 500))
    player.Character:MoveTo(randomLocation)
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.G then
        teleportPlayer()
    end
end)