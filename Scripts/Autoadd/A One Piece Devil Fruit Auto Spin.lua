getgenv().autoTap = true
local playerName = game.Players.LocalPlayer.Name

spawn(function()
    while autoTap == true do
        local args = {
            [1] = 60
        }
        
        game:GetService("Players"):WaitForChild(playerName):WaitForChild("PlayerGui"):WaitForChild("SpinGui"):WaitForChild("LOL"):WaitForChild("Spin"):WaitForChild("Spin"):WaitForChild("Reward"):FireServer(unpack(args))
        wait()
    end
end)