getgenv().AllOfUsAreDeadAutoFarm = not AllOfUsAreDeadAutoFarm


if not AllOfUsAreDeadAutoFarmExecuted then
    getgenv().AllOfUsAreDeadAutoFarmExecuted = true
    game.StarterGui:SetCore("SendNotification", {Title = "ProBaconHub",Text = "Thanks for using this first return script!"})
end
if AllOfUsAreDeadAutoFarm then
    game.StarterGui:SetCore("SendNotification", {Title = "ProBaconHub",Text = "Equip gun to start farming."})
    game.StarterGui:SetCore("SendNotification", {Title = "ProBaconHub",Text = "Execute again to stop farming."})
    while task.wait(0.00001) do
        if not AllOfUsAreDeadAutoFarm then
            break
        end
        task.spawn(function()
            local args1 = {
                [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"),
                [2] = {
                    ["id"] = 2046,
                    ["charge"] = 0,
                    ["dir"] = Vector3.new(0.5608824491500854, -0.008607717230916023, -0.8278507590293884),
                    ["origin"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
                }
            }
            game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponFired:FireServer(unpack(args1))
        end)

        task.spawn(function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                local args2 = {
                    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"),
                    [2] = {
                        ["p"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position,
                        ["pid"] = 1,
                        ["part"] = workspace.Enemies:FindFirstChildWhichIsA("Model").UpperTorso,
                        ["d"] = 28.583362579345703,
                        ["maxDist"] = 28.581480026245117,
                        ["h"] = workspace.Enemies:FindFirstChildWhichIsA("Model").Humanoid,
                        ["sid"] = 2050,
                        ["m"] = Enum.Material.Plastic,
                        ["t"] = 0.7758734321173678,
                        ["targetsHit"] = 1,
                        ["n"] = Vector3.new(-0.4834476113319397, -0.6209316253662109, 0.6170270442962646)
                    }
                }
                local Target = workspace.Enemies:FindFirstChildWhichIsA("Model")
                repeat
                    task.wait(0.00001)
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                    game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(unpack(args2))
                until not Target or string.sub(Target.HealthBar_BillBoardGui.BackgroundFrame.HealthText.Text, 1, 1) == 0
                Target:Destroy()
            end
        end)
    end
else
    game.StarterGui:SetCore("SendNotification", {Title = "ProBaconHub",Text = "Auto farm stopped. Execute again to start farming."})
end