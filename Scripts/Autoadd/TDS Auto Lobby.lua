if not game:IsLoaded() then game.Loaded:Wait() end
if game.PlaceId == 5591597781 then
    local tp = game.Players.LocalPlayer:WaitForChild("PlayerGui", math.huge):WaitForChild("RoactGame", math.huge):WaitForChild("Rewards", math.huge):WaitForChild("content", math.huge):WaitForChild("gameOver", math.huge)
    tp:GetPropertyChangedSignal("Visible"):Connect(function()
        if tp.Visible then
            game:GetService("TeleportService"):Teleport(3260590327)
        end
    end)
end