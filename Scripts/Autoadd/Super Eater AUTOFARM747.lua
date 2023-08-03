getgenv().AutoEat=true;
game:GetService("RunService").Heartbeat:Connect(function()
    spawn(function()
        if getgenv().AutoEat then
            wait(0.1)
            for _,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                  if string.sub(v.Name, 0, 4) == "Food" then
                        v.Parent = game:GetService("Players").LocalPlayer.Character;
                  end
            end
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMass", math.huge});
        end
    end)
end)