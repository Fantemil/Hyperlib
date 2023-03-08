local function GetClosest()
    for i,v in ipairs(game.Players:GetPlayers()) do if v~=game.Players.LocalPlayer then
        local TargetDistance = 20
        local Target
            local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
            if mag < TargetDistance then
                TargetDistance = mag
                Target = v
            return Target
            end
       end
    end
end

spawn(function()
    while task.wait() do
        pcall(function()
            if GetClosest() ~= nil then
            task.wait(.43)
                if GetClosest().Character:FindFirstChild("IsRagdoll").Value ~= true or GetClosest().Character:FindFirstChild("IsRagdoll2").Value ~= true then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Server.Slap:FireServer(GetClosest().Character)
                end
            end
        end)
    end
end)