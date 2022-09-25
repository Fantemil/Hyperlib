 local lp = game:GetService("Players").LocalPlayer

spawn(function()
    while wait(0.05) do
        pcall(function()
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                local PlayerPos = lp.Character.HumanoidRootPart.Position
                local Range = (PlayerPos - v.Character.HumanoidRootPart.Position).magnitude
                if v ~= lp and v.Backpack:FindFirstChild("Push") and Range > 100 then
                    v.Backpack.Push.PushEvent:FireServer()
                end
            end
        end)
    end
end)

lp.Character.Humanoid.WalkSpeed = 100
lp.Character.Humanoid.JumpPower = 100

lp.Character["Local Ragdoll"]:Destroy()
lp.Character.Controls:Destroy()
lp.Character["State Handler"]:Destroy()
lp.Character.LocalScript:Destroy()