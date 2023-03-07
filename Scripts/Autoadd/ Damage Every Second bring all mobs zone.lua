_G.a = not _G.a 
repeat wait()
    lvl = tonumber(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.TopBar.EXP.DamagePerSecond.Text:sub(6))
    if lvl >= 100 then
        for i,v in pairs(game:GetService("Workspace").MobsZone3:GetDescendants()) do
            if v:IsA('Model') then
                if v:FindFirstChild('HumanoidRootPart') then
                   v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
                end
            end
        end
    elseif lvl >= 50 then
        for i,v in pairs(game:GetService("Workspace").MobsZone2:GetDescendants()) do
            if v:IsA('Model') then
                if v:FindFirstChild('HumanoidRootPart') then
                   v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
                end
            end
        end
    else
        for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
            if v:IsA('Model') then
                if v:FindFirstChild('HumanoidRootPart') then
                   v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
                end
            end
        end
    end
until _G.a == false