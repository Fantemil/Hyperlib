game:GetService("RunService").RenderStepped:Connect(function()
    for _, plr in pairs(game.Players:GetChildren()) do
        if plr.Character and plr ~= game.Players.LocalPlayer then
            if plr.Backpack:FindFirstChild("Knife") or plr.Character:FindFirstChild("Knife") then
                if not plr.Character:FindFirstChild("MM2MDR") then
                    local hl = Instance.new("Highlight")
                    hl.Parent = plr.Character
                    hl.FillTransparency = 1
                    hl.OutlineTransparency = 0
                    hl.OutlineColor = Color3.fromRGB(255, 0, 0)
                    hl.Name = "MM2MDR"
                end
                if plr.Character:FindFirstChild("MM2MDB") then
                    plr.Character:FindFirstChild("MM2MDB"):Destroy()
                end
                if plr.Character:FindFirstChild("MM2MDW") then
                    plr.Character:FindFirstChild("MM2MDW"):Destroy()
                end
            elseif plr.Backpack:FindFirstChild("Gun") or plr.Character:FindFirstChild("Gun") then
                if not plr.Character:FindFirstChild("MM2MDB") then
                    local hl = Instance.new("Highlight")
                    hl.Parent = plr.Character
                    hl.FillTransparency = 1
                    hl.OutlineTransparency = 0
                    hl.OutlineColor = Color3.fromRGB(0, 0, 255)
                    hl.Name = "MM2MDB"
                end
                if plr.Character:FindFirstChild("MM2MDW") then
                    plr.Character:FindFirstChild("MM2MDW"):Destroy()
                end
                if plr.Character:FindFirstChild("MM2MDR") then
                    plr.Character:FindFirstChild("MM2MDR"):Destroy()
                end
            else
                if not plr.Character:FindFirstChild("MM2MDW") then
                    local hl = Instance.new("Highlight")
                    hl.Parent = plr.Character
                    hl.FillTransparency = 1
                    hl.OutlineTransparency = 0
                    hl.OutlineColor = Color3.fromRGB(255, 255, 255)
                    hl.Name = "MM2MDW"
                end
                if plr.Character:FindFirstChild("MM2MDB") then
                    plr.Character:FindFirstChild("MM2MDB"):Destroy()
                end
                if plr.Character:FindFirstChild("MM2MDR") then
                    plr.Character:FindFirstChild("MM2MDR"):Destroy()
                end
            end
        end
    end
    if workspace:FindFirstChild("GunDrop") then
        if not workspace.GunDrop:FindFirstChild("MM2MDG") then
            local hl = Instance.new("Highlight")
            hl.Parent = workspace.GunDrop
            hl.FillTransparency = 0.5
            hl.OutlineTransparency = 0
            hl.OutlineColor = Color3.fromRGB(0, 255, 0)
            hl.FillColor = Color3.fromRGB(255, 180, 29)
            hl.Name = "MM2MDG"
        end
    end
end)