rconsoleclear()
rconsolename('RedLight GreenLight autofarm')
local positions = {
    win = Vector3.new(-346, 3, 415)
}
local storage = {
    gameRunning = false,
    player = game:GetService('Players').LocalPlayer
}
rconsoleprint('Starting AutoFarm')
function checkIfGameStart()
    local wall = game:GetService("Workspace").Mechanics.Preventer
    if wall.CanCollide then 
        return false
    else
        return true
    end
end
while wait() do
    pcall(function()
    if checkIfGameStart() then
        if storage.gameRunning == false then 
            storage.gameRunning = true
            wait(.1)
            storage.player.Character:MoveTo(positions.win)
            rconsoleprint('\nWon game instantly.')
        end
    else
        --rconsoleprint('\nDetected game End.') spammy
        storage.gameRunning = false
    end
    end)
end