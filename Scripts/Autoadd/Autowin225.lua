while wait(0.06) do
    for i,v in pairs(workspace.Stage_Monster:GetChildren()) do
        if  v:FindFirstChild("Torso") then
            local args = {
                [1] = {
                    ["CF"] = CFrame.new(-12.618999481201172, 24.49771499633789, -43.56488037109375, 0.910255491733551, 0.00027224465156905353, -0.4140470027923584, -2.9103830456733704e-11, 0.9999997615814209, 0.0006575208972208202, 0.41404712200164795, -0.0005985120078548789, 0.9102552533149719),
                    ["Part"] =v:WaitForChild("Torso"),
                    ["Owner"] = game:GetService("Players").LocalPlayer,
                    ["TargetHead"] = true,
                    ["Character"] =  game:GetService("Players").LocalPlayer.Character,
                    ["Hit"] =v:WaitForChild("Torso"),
                    ["Target"] =v,
                    ["position"] = Vector3.new(81.82274627685547, 24.347740173339844, -251.18887329101562),
                    ["normal"] = Vector3.new(-0.48831304907798767, 0.12276525050401688, 0.8639904260635376),
                    ["Damage"] = 37
                }
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("CastRemote"):FireServer(unpack(args))
        end
    end
end