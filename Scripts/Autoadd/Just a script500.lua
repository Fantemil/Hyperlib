getgenv().auto = true -- if you want to disable, set to false
function fire(obj)
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, obj, 0)
    wait()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, obj, 1)
end

while auto do wait()
    game:GetService("ReplicatedStorage").Remotes.Functions.Rebirth:InvokeServer()
    for _,v in pairs(game:GetService("Workspace").Lobby.CheckPoints:GetChildren()) do
        fire(v)
    end
end