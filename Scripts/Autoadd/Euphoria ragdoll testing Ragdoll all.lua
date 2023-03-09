for i,v in pairs(game.Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer then
        task.spawn(function()
            while v do
                task.wait(0.2)
                v.Character:WaitForChild("activeragdoll")
                v.Character.activeragdoll:WaitForChild("rd")
                v.Character.activeragdoll.rd:FireServer(v.Character.activeragdoll.V)
            end
        end)
    end
end