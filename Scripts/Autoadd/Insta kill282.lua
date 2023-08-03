getgenv().IsEnabled = true

local Players = game:GetService("Players")
local Client = Players.LocalPlayer
local Event = game:GetService("ReplicatedStorage").Remotes.WeaponConnection

while task.wait(0.05) and IsEnabled do
    pcall(function()
        for _, Player in ipairs(Players:GetPlayers()) do
            if Player == Client then continue end
            if not Client.Character then continue end
            
            local Character = Player.Character
            if not Character then continue end
            
            local Part = Character.PrimaryPart
            local Humanoid = Character:FindFirstChild("Humanoid")
            
            if not Humanoid then continue end
            if not Part then continue end
            
            local Weapon = Client.Character:FindFirstChildWhichIsA("Tool") or Client.Backpack:FindFirstChildWhichIsA("Tool")
            
            Event:FireServer(Weapon.Name, "OnHit", Part, Character.Humanoid, {
                ["Instance"] = Part,
                ["Material"] = Enum.Material.Plastic,
                ["Normal"] = Part.Position,
                ["Position"] = Part.Position
            }, false)
        end
    end)
end