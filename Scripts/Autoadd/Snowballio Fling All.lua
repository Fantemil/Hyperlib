local uis = game:GetService("UserInputService")

local msg = Instance.new("Message", game.Workspace)
msg.Text = "press E to fling everyone except you."
game.Debris:AddItem(msg, 3)

uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
        local l__HitPlayer__13 = game.ReplicatedStorage:WaitForChild("Events"):WaitForChild("HitPlayer");
        for i, v in pairs(game.Players:GetChildren()) do
               if v == game.Players.LocalPlayer then
                print("no")
                else
                    l__HitPlayer__13:FireServer((Vector3.new(v.Character.HumanoidRootPart.CFrame.p.X, 0, v.Character.HumanoidRootPart.CFrame.p.Z) - Vector3.new(game.Workspace.top.CFrame.p.X, 0, game.Workspace.top.CFrame.p.Z)).Unit, 5000, 1000, v);        
                end
        end
    end
end)