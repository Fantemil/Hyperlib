getgenv().autoOpen = true

while autoOpen and task.wait(6) do
    game:GetService("ReplicatedStorage").COMMUNICATION.FRAMEWORK:InvokeServer("BuyCase", "Prime Case")
end