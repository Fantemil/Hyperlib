local Character = game:GetService("Players").LocalPlayer.Character

local HumanoidRootPart = Character.HumanoidRootPart

while workspace:FindFirstChild("NPCSettings",1) do
    local ohString1 = "Combat"
    local ohBoolean2 = true
    
    game:GetService("Players").LocalPlayer.Backpack.Client.Server.CS:FireServer(ohString1, ohBoolean2)
    
        
    local Enemy = workspace:FindFirstChild("NPCSettings",1).Parent
    
    HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame * CFrame.new(0,0,3.5)
    
    wait(.25)

    local ohNil1 = nil
    local ohBoolean2 = false
    local ohNil3 = nil
    local ohNumber4 = 1
    local ohCFrame5 = Enemy.HumanoidRootPart.CFrame
    local ohVector36 = Vector3.new(6, 6, 4)
    
    game:GetService("Players").LocalPlayer.Backpack.Client.Server.Combat:FireServer(ohNil1, ohBoolean2, ohNil3, ohNumber4, ohCFrame5, ohVector36)
end