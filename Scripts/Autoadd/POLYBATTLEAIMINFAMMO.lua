game:GetService('RunService').Stepped:Connect(function()
    pcall(function()
        game.Players.LocalPlayer.PlayerGui.ScreenGui.Right.ScaleYY.Bottom.EQ.Ammo.Ammo.Text = '-1'
        require(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Folder').config).AMMO = 2
    end)
end)

function GetClosestPlayer()
    local Plr = nil
    local BestDis = math.huge
    for i, v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") and v.Team ~= game.Players.LocalPlayer.Team then
                local Pos = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local magnitude = (Vector2.new(Pos.X, Pos.Y) - Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y)).magnitude
                if magnitude < BestDis then
                    Plr = v
                    BestDis = magnitude
                end
            end
        end
    end
    return Plr
end
function HitTarget()
    pcall(function()
        game.Players.LocalPlayer.PlayerGui.ScreenGui.Center.ScaleYY.Middle.MouseIcon.TargetHitImage.ImageTransparency = 0.3;
        if not crossOn then
    crossOn = true
        delay(0.3, function()
        pcall(function()
        while game.Players.LocalPlayer.PlayerGui.ScreenGui.Center.ScaleYY.Middle.MouseIcon.TargetHitImage.ImageTransparency < 1 do
        wait(0.1);
        game.Players.LocalPlayer.PlayerGui.ScreenGui.Center.ScaleYY.Middle.MouseIcon.TargetHitImage.ImageTransparency = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Center.ScaleYY.Middle.MouseIcon.TargetHitImage.ImageTransparency + 0.1;
        end;
        crossOn = false;
            end)
            end)
        end
end)
end
GameMeta = getrawmetatable(game)
setreadonly(GameMeta,false)
OldMt = GameMeta.__namecall
GameMeta.__namecall = newcclosure(function(self,...)
    if getnamecallmethod() == 'FireServer' and tostring(self) == 'ChangeStat' then
        return
    end
    if getnamecallmethod() == 'FireServer' and tostring(self) == 'BulletEvent' and GetClosestPlayer() ~= nil then
        Args = {...}
        Target = GetClosestPlayer()
        if not Args[3] then
            return OldMt(self,...)
        end
        local v1 = {
            ["shotCode"] = { game.Workspace.CurrentCamera.CFrame.Position, (CFrame.new(game.Workspace.CurrentCamera.CFrame.p,Target.Character.Head.Position).LookVector) }, 
            ["target"] = Target, 
            ["originObj"] = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Folder'), 
            ["bulletID"] = Args[3], 
            ["pos"] = Target.Character.Head.Position
        }
        local rem = game:GetService("ReplicatedStorage").Remote.DmgEvent
        rem:FireServer(v1)
        HitTarget()
        return OldMt(self,...)
    end
    return OldMt(self,...)
end)