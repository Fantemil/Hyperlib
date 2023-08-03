repeat task.wait() until game.Players.LocalPlayer
local h = game.Players.LocalPlayer:WaitForChild("NRPBS"):WaitForChild("Health")
h.Changed:connect(function()
    if h.Value < 1 then
        game.ReplicatedStorage.Events.LoadCharacter:FireServer()
    end
end)