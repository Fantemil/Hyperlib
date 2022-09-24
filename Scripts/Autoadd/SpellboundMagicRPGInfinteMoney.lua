while task.wait() do
   game:GetService("ReplicatedStorage").Events.GrantItem:FireServer("Wand48")
   game:GetService("ReplicatedStorage").Events.Coins2:FireServer("Wand48")
end