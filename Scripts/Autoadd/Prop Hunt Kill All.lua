local LocalPlayer = game.Players.LocalPlayer
while wait() do
    for i, v in next, game.Players:GetChildren() do
        if v ~= LocalPlayer then
            pcall(
                function()
                    local args = {
                        [1] = LocalPlayer.Character.HumanoidRootPart.CFrame.p,
                        [2] = CFrame.lookAt(
                            LocalPlayer.Character.HumanoidRootPart.CFrame.p,
                            v.Character.HumanoidRootPart.CFrame.p
                        ).lookVector *
                            (v.Character.HumanoidRootPart.CFrame.p - LocalPlayer.Character.HumanoidRootPart.CFrame.p).magnitude,
                        [3] = {
                            ["instance"] = v.Character.HumanoidRootPart,
                            ["normal"] = Vector3.new(1, 0, 0),
                            ["position"] = v.Character.HumanoidRootPart.Position
                        },
                        [4] = math.random(),
                        [5] = false
                    }
                    game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/networking@NetEvents").shoot:FireServer(
                        unpack(args)
                    )
                end
            )
        end
    end
end