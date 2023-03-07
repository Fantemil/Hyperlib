getgenv().a = true

while a do task.wait()
    for i,v in pairs(workspace.Enemies:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(v.PrimaryPart.Position) < 21 then
            local args = {
                [1] = 0,
                [2] = game:GetService("Players").LocalPlayer.Character,
                [3] = v,
                [4] = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"),
                [5] = "Slash"
            }

            game:GetService("ReplicatedStorage").RS.Remotes.Combat.DealWeaponDamage:FireServer(unpack(args))
        end
    end
end