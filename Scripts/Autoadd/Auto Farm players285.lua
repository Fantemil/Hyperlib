loadstring(game:HttpGet("https://pastefy.app/Kzc4felK/raw",true))()

local toggleKey = Enum.KeyCode.F
local teleportDelay = 0.3
local teleporting = false

local function teleportToRandomPlayer()
    local players = game:GetService("Players"):GetPlayers()
    local randomPlayer = players[math.random(1, #players)]
    game.Players.LocalPlayer.Character:MoveTo(randomPlayer.Character.HumanoidRootPart.Position)
end

local function toggleTeleport()
    teleporting = not teleporting
    if teleporting then
        while teleporting do
            teleportToRandomPlayer()
            wait(teleportDelay)
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == toggleKey then
        toggleTeleport()
    end
end)
