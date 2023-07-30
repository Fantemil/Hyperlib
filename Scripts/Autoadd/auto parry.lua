local charac = game:GetService("Players").LocalPlayer.Character
local human = charac:FindFirstChild("Humanoid")
local remote = game:GetService("ReplicatedStorage").Remotes.Block
local x,y = human.Health,human.MaxHealth
human.HealthChanged:connect(function(z)
    if z<=x+(y-x) then x=z; remote:FireServer(true); wait(.4); remote:FireServer(false)
        else x=z
    end
end)