getgenv().autoOpen = true

while autoOpen and task.wait(6) do
    for i, v in pairs((game:GetService("ReplicatedStorage")).COMMUNICATION:GetChildren()) do
        if v:IsA("RemoteFunction") then
            v:InvokeServer("BuyCase", "Prime Case")
        end
    end
end