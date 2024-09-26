_G.autofarm = true -- toggle
_G.tpspeed = 0.7 -- everything under 0.7 is detected by anti-cheat

local ts = game:GetService("TweenService")
local player = game.Players.LocalPlayer

if _G.autofarm then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Autofarm",
        Text = "Autofarm has been enabled",
        Duration = 0.5
    })
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "Autofarm",
        Text = "Autofarm has been disabled",
        Duration = 0.5
    })
end

while _G.autofarm do
    for _, v in pairs(workspace.Scene.ResourceNodes1:GetChildren()) do
        if not _G.autofarm then break end
        if v:IsA("Part") and v:FindFirstChild("Prefab") then
            local tween = ts:Create(
                player.Character.HumanoidRootPart,
                TweenInfo.new(_G.tpspeed),
                {CFrame = v.CFrame}
            )
            tween:Play()
            tween.Completed:Connect(function()
               if v.NodeType.Value == 1 then 
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Autofarm",
                    Text = "Exp orb collected",
                    Duration = 0.1
                })
                elseif v.NodeType.Value == 2 then
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Autofarm",
                    Text = "Coin orb collected",
                    Duration = 0.1
                })
                else
                    game.StarterGui:SetCore("SendNotification", {
                    Title = "Autofarm",
                    Text = "Speed Orb collected",
                    Duration = 0.1
                })
               end
            end)
            tween.Completed:Wait()
        end
    end
    wait(0.1)
end
