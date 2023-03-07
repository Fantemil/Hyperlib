while task.wait(0.01) do
    local Zone = tostring(game.Players.LocalPlayer.PlayerStats.Zone.Value)
    for a,b in pairs(game.Workspace.Mobs:GetChildren()) do
        if b.Name:match(Zone) then
            for i,v in pairs(b:GetDescendants()) do
                if v.Name == "HumanoidRootPart" then
                    while v.Parent.Human.Health > 0 do

                        task.wait(0.01)
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Slash:FireServer(1)
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Slash:FireServer(2)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,0,6)
                    end
                end
            end
        end
    end
end