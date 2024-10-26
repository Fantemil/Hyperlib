getgenv().farm = true -- false/true

local plr = game.Players.LocalPlayer
local collector = nil

for _, plot in ipairs(workspace.Plots:GetChildren()) do
    if plot:GetAttribute("Owner") == plr.UserId then
        collector = plot.Items.Conveyor.Basket
        break
    end
end

if plr and collector then
    while getgenv().farm do
        local bananas = tonumber(plr.PlayerGui.MainGameGui.Currencies.Bananas.TextLabel.Text)
        local customers = workspace.Customers:GetChildren()

        if bananas and bananas <= 0 then
            plr.Character.HumanoidRootPart.CFrame = collector.CFrame + Vector3.new(0, 2, 0)
            wait(0.5)
            fireproximityprompt(collector.ProximityPrompt)
        else
            for _, npc in ipairs(customers) do
                local humPart = npc:FindFirstChild("HumanoidRootPart")
                if humPart then
                    plr.Character.HumanoidRootPart.CFrame = humPart.CFrame + Vector3.new(0, 2, 0)
                    wait(0.5)
                    fireproximityprompt(humPart.ProximityPrompt)
                end
            end
        end
        wait(1.2)
    end
end