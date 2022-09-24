G.Enabled = true
local plrs = game:GetService("Players")

game:GetService("RunService").Stepped:Connect(function()
    if _G.Enabled then
        if plrs.LocalPlayer.Character.Humanoid.Info.Stamina.Value >= 1 then
            if not plrs.LocalPlayer.PlayerGui:FindFirstChild("PushupsGui") then
                game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("J", function()end)
            else
                plrs.LocalPlayer.PlayerGui.PushupsGui.Pushups.RemoteEvent:FireServer()
            end
        end
    end
end)