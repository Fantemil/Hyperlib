local Tool = "Fists" -- Change to whatever melee you would like
-- Made by peke#7374 / shitass

game:GetService("RunService").RenderStepped:Connect(function() task.wait()
    for i, v in pairs(game.Players:GetChildren()) do
        if v:IsA("Player") and v ~= game.Players.LocalPlayer then
            game:GetService("ReplicatedStorage").FuncMeleeWeapon:FireServer(game:GetService("Players").LocalPlayer.Backpack:WaitForChild(Tool),"MeleeHit",v.Character:WaitForChild("Head"))
        end
    end
end)