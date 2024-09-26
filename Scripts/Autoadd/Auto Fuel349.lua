getgenv().auto = not auto -- Run the script again to stop it
while wait() do
    if not auto then break end
    game:GetService("ReplicatedStorage"):WaitForChild("Services"):WaitForChild("Events"):WaitForChild("FuelCollect"):InvokeServer("Collectible1", "Spawn")
    game:GetService("ReplicatedStorage"):WaitForChild("Services"):WaitForChild("Events"):WaitForChild("FuelCollect"):InvokeServer("Collectible2", "Spawn")
    game:GetService("ReplicatedStorage"):WaitForChild("Services"):WaitForChild("Events"):WaitForChild("FuelCollect"):InvokeServer("Collectible3", "Spawn")
end