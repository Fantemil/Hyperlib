--inspired by https://scriptblox.com/script/Universal-Script-RainbowTouch-10782
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function onPartTouched(part)
    -- Change the color and material of the part to gold
    part.Color = Color3.fromRGB(255, 215, 0)
    part.Material = Enum.Material.Reflective
    
    -- Tween the transparency of the part to 0 over 2 seconds and add a cool effect
    local initialTransparency = part.Transparency
    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear)
    local tweenProperties = {Transparency = 0}
    local tween = TweenService:Create(part, tweenInfo, tweenProperties)
    tween:Play()
end

-- Connect the "Touched" event of all parts in the game to the "onPartTouched" function
for _, part in pairs(game:GetDescendants()) do
    if part:IsA("BasePart") then
        part.Touched:Connect(onPartTouched)
    end
end
