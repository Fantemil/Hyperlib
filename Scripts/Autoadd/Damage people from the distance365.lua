local args = {
    [1] = game:GetService("Players").username.Character.Head,
    [2] = 1 -- This doesn't matter
}

game:GetService("ReplicatedStorage").Remotes.DriftWoodHit:FireServer(unpack(args))

-- IT IS VERY, NEEDED TO GET A STICK FIRST, SO USE THIS REMOTE EXECUTION BELOW

 game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
 if key == "any button to bind it to here" then
workspace.Washed.Driftwood.ObjectRemote:FireServer()
 end
end)