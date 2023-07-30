Kill Aura -
getgenv().killaura = true

while killaura do task.wait()
pcall( function()
local args = {
    [1] = "M1"
}

game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").RemoteEvent:FireServer(unpack(args))
task.wait()
local args = {
    [1] = "Hitbox",
    [2] = 1,
    [3] = "M1"
}

game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").RemoteEvent:FireServer(unpack(args))
end)
end




Godmode -
game.Players.LocalPlayer.Character.Dash.RemoteEvent:FireServer("Falldmg", 0/0);
