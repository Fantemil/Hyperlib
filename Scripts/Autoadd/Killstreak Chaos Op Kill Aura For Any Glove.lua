-- Made by CrapTheKid/Artiotos#0763
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.R and not gameProcessed then

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function GetClosest()
    local Character = LocalPlayer.Character
    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (Character or HumanoidRootPart) then return end

    local TargetDistance = math.huge
    local Target

    for i,v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local TargetHRP = v.Character.HumanoidRootPart
            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
            if mag < TargetDistance then
                TargetDistance = mag
                Target = v
            end
        end
    end

    return Target
end



    local oh1 = GetClosest().Character
    local oh2 = GetClosest().Character:FindFirstChild("Left Arm")
    local oh3 = 90
    local oh4 = 325
    local oh5 = 150
    local oh6 = 1.5
    local oh7 = game:GetService("Players").LocalPlayer.Character.Killstreak.Hand


game:GetService("ReplicatedStorage").gameAssets.events.AntiDataReset:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7)
    
    
    end
end)
-- Made by CrapTheKid/Artiotos#0763