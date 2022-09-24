while true do
    for i, v in next, workspace.Checkouts.Register_Test1.Items:GetChildren() do
        game:GetService("ReplicatedStorage").Remote:FireServer("ScanItem", v, workspace.Checkouts.Register_Test1)
    end
    
    for i, v in next, workspace.Checkouts.Register_Test_2.Items:GetChildren() do
        game:GetService("ReplicatedStorage").Remote:FireServer("ScanItem", v, workspace.Checkouts.Register_Test_2)
    end
    task.wait()
end