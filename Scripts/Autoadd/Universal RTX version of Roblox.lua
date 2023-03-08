local Blur = Instance.new("BlurEffect", game.Lighting)
Blur.Size = 4.1
game.Lighting.GlobalShadows = true
settings().Rendering.QualityLevel = "Level21"

for _,v in pairs(game:GetDescendants()) do
    if v:IsA("BasePart") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Reflectance = v.Reflectance + 1
    elseif v:IsA("MeshPart") then
        v.Reflectance = v.Reflectance + 1
    end
end