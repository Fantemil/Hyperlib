local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function GetClosest()
    local Character = LocalPlayer.Character
    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (Character or HumanoidRootPart) then return end

    local TargetDistance = math.huge
    local Target

    for i,v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Team ~= LocalPlayer.Team then
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

local function Input(input, gameProcessedEvent)
 if UserInputService:IsKeyDown(Enum.KeyCode.E) then
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('Gun') then
                local ohString1 = "Gun"
                local ohCFrame2 = GetClosest().Character.PlayerHitbox.CFrame
                local ohInstance3 = GetClosest().Character.PlayerHitbox
                
                game:GetService("ReplicatedStorage").Remotes.Guns.Fire:FireServer(ohString1, ohCFrame2, ohInstance3)
                task.wait()
        elseif LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('Sniper') then
            local ohString1 = "Sniper"
            local ohCFrame2 = GetClosest().Character.PlayerHitbox.CFrame
            local ohInstance3 = GetClosest().Character.PlayerHitbox
            
            game:GetService("ReplicatedStorage").Remotes.Guns.Fire:FireServer(ohString1, ohCFrame2, ohInstance3)      
        end
 end
end
 
UserInputService.InputBegan:Connect(Input)