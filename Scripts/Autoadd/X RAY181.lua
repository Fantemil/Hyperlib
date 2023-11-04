local RunService = game:GetService('RunService')
local LocalPlayer = game:GetService('Players').LocalPlayer
local Camera = workspace.CurrentCamera
local Obscuring = {}

RunService.RenderStepped:connect(function()
    for _, v in pairs(Obscuring) do 
        v.LocalTransparencyModifier = 0
        for _, v2 in pairs(v:GetChildren()) do
            if v2:IsA('Texture') then
                v2.Transparency /= 1000
            end
        end
    end

    if not LocalPlayer.Character then return end
    Obscuring = Camera:GetPartsObscuringTarget({LocalPlayer.Character.HumanoidRootPart.CFrame.p}, LocalPlayer.Character:GetChildren())

    for _, v in pairs(Obscuring) do 
        v.LocalTransparencyModifier = 1
        for _, v2 in pairs(v:GetChildren()) do
            if v2:IsA('Texture') then
                v2.Transparency *= 1000
            end
        end
    end    
end)