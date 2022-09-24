       getgenv().a = true
       while getgenv().a == true do
       local ohString1 = "Cave"
       game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(ohString1)
       wait()
       end