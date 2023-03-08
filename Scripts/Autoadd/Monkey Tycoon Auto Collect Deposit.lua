local func;
for i,v in next, getgc(true) do
    if type(v) == 'function' and islclosure(v) and not is_synapse_function(v) and getinfo(v).name == 'collect' then
        func = v
    end
end

for i,v in next, workspace.Drops:GetChildren() do
    func(v)
end

workspace.Drops.ChildAdded:Connect(function(a)
    task.wait(0.2)
    func(a)
end)

game.Players.LocalPlayer.PlayerGui.MainUI.DropsInventory.Amount.Amount.Changed:Connect(function(a)
    if a == 'Text' then
        game:GetService("ReplicatedStorage").GTycoonClient.Remotes.DepositDrops:FireServer()
    end
end)