getgenv().on = true
function nailfarm(chr)
    repeat task.wait() until chr:FindFirstChild("HumanoidRootPart") and chr:FindFirstChild("Humanoid")
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "NailGiver" then
            firetouchinterest(chr.HumanoidRootPart, v, 0)
            task.wait()
            spawn(function()
                while task.wait() do
                    chr:PivotTo(CFrame.new(1305.17981, 62.4999962, -536.520264, 2.26143748e-05, -7.75179956e-08, 1, 4.17010888e-08, 1, 7.75170506e-08, -1, 4.16993338e-08, 2.26143748e-05))
                end
            end)
            firetouchinterest(chr.HumanoidRootPart, v, 1)
            task.wait(0.2)
            chr:PivotTo(CFrame.new(1305.17981, 62.4999962, -536.520264, 2.26143748e-05, -7.75179956e-08, 1, 4.17010888e-08, 1, 7.75170506e-08, -1, 4.16993338e-08, 2.26143748e-05))
            chr.Humanoid.Health = 0
        end
    end
end

if getgenv().on == false then
    getgenv().farm:Disconnect()
    getgenv().farm = nil
else
    getgenv().farm = game.Players.LocalPlayer.CharacterAdded:Connect(nailfarm)
    nailfarm(game.Players.LocalPlayer.Character)
end