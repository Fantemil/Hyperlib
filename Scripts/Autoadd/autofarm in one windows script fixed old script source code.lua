getgenv().killaura = false
getgenv().autofarm = false --true to make it on,false to make it stop









































































































-- credits me:skull:
coroutine.wrap(function()
    while wait() do
        if getgenv().autofarm == true then
            pcall(function()
                for i,v in pairs(game.workspace.Ignore.Zombies:GetChildren()) do --enemy location
                    
                        if v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            repeat
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,5,0) * CFrame.Angles(math.rad(-90),0,0) --distance and angles
                            until v.Humanoid.Health <= 0 or getgenv().autofarm == false
                        end
                    end
                    end)
                    end
    end
end)()

local LocalPlayer = game.Players.LocalPlayer


function is_within_distance(zombie, dist)
    if zombie:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return (LocalPlayer.Character.HumanoidRootPart.Position - zombie.HumanoidRootPart.Position).Magnitude <= (dist or 30)
    end
    return false
end


while task.wait(.1) and killaura do
    for i,v in pairs(workspace.Ignore.Zombies:GetChildren()) do
        if v and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and is_within_distance(v, 80) then
            game:GetService("ReplicatedStorage").Framework.Remotes.KnifeHitbox:FireServer(v.Humanoid)
        end
    end
end






















































































































--credits to me







































































