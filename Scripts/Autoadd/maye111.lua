while true do task.wait()
    pcall(function()
       for i,v in pairs(game.Players:GetPlayers()) do
           if v ~= game.Players.LocalPlayer then
               v.Character:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
               game:GetService("ReplicatedStorage").Characters.Creel.Remotes.VinePull:FireServer(v.Character)
            end
       end
    end)
end