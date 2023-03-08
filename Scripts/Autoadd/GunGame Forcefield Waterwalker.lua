game:GetService("Players").LocalPlayer.Character.Head.BillboardGui:Destroy()
game:GetService("Workspace").Interactives.Water.CanCollide = true
game:GetService("Workspace").Interactives.Water.TouchInterest:Destroy() -- Water Godmode
game:GetService("Workspace").Interactives.Safezone.Shape = Enum.PartType.Ball
game:GetService("Workspace").Interactives.Safezone.Transparency = 0.5
game:GetService("Workspace").Interactives.Safezone.Size = Vector3.new(30,30,30)
game:GetService("Workspace").Interactives.Safezone.Material = Enum.Material.ForceField
game:GetService("Workspace").Interactives.Safezone.Color = Color3.new(0.2, 0.8, 0.8)
_G.FFB = true
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Q then -- Forcefield on
        _G.FFB = true
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.T then -- Forcefield off        
        _G.FFB = false
    end
end)

game.RunService.Heartbeat:connect(function()
    if _G.FFB == true then
        game:GetService("Workspace").Interactives.Safezone.Transparency = 0
        game:GetService("Workspace").Interactives.Safezone.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame        --Activate
    end
    if _G.FFB == false then    
        game:GetService("Workspace").Interactives.Safezone.Transparency = 1
        game:GetService("Workspace").Interactives.Safezone.CFrame = game:GetService("Workspace").Interactives.SpawnLocation.CFrame                --Deactivate
    end
end)