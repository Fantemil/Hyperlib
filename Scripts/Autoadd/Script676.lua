
_G.IceSpam = true
while wait() and _G.IceSpam do
    pcall(function()
        for i, v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                game:GetService("ReplicatedStorage").Events.createIce:FireServer(v.Character.HumanoidRootPart.CFrame.p)
           end
       end
    end)
end