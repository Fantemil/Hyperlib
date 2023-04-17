local i = false
local ToggleKey = Enum.KeyCode.Semicolon --https://developer.roblox.com/en-us/api-reference/enum/KeyCode
--must hit togglekey to start
local length = 10 --number of studs between you and other players to hit them (you cant do like 100 and kill everyone)
getgenv().toggle = false
function killaura(character)
    spawn(function()
        while task.wait(0.1) do
            if getgenv().toggle == true then
                if game.Players.LocalPlayer.Character then
                    if character then
                        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("HumanoidRootPart") then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude < length then
                                local num = 0
                                while task.wait() do
                                    if not getgenv().toggle then
                                        break
                                    end
                                    if character.Humanoid.Health > 0 then
                                        num = num + 1
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame
                                        if i then
                                            i = false
                                            game:GetService("ReplicatedStorage").Remotes.Hit:FireServer("Right Arm")
                                        else
                                            i = true
                                            game:GetService("ReplicatedStorage").Remotes.Hit:FireServer("Left Arm")
                                        end
                                    else
                                        break
                                    end
                                    wait(0.1)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                                end
                            end
                        end
                    end
                end
            else
                repeat task.wait() until getgenv().toggle
            end
        end
    end)
end
for i, v in pairs(game.Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer then
        killaura(v.Character)
        v.CharacterAdded:Connect(function()
            task.wait(0.5)
            killaura(v.Character)
        end)
    end
end
game.Players.ChildAdded:Connect(function(v)
    killaura(v.Character)
    v.CharacterAdded:Connect(function()
        task.wait(0.5)
        killaura(v.Character)
    end)
end)
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == ToggleKey then
        if getgenv().toggle then
            getgenv().toggle = false
        else
            getgenv().toggle = true
        end
    end
end)