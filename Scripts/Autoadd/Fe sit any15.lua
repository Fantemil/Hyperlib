local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local players = game:GetService("Players")

local function Sit()
    humanoid.Sit = true
end

local function LayDown()
    humanoid.Sit = false
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Z then
        Sit()
    elseif input.KeyCode == Enum.KeyCode.X then
        LayDown()
    end
end)

for _,plr in pairs(players:GetPlayers()) do
    plr.CharacterAdded:Connect(
        function(newChar)
            newChar.Transparency = 0.5
        end
    )
end
