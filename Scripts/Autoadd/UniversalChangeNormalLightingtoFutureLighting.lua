setscriptable(Lighting, "Technology", true)
Lighting.Technology = Enum.Technology.Future

for _, v in next, workspace:GetDescendants() do
    if v:IsA("PointLight") or v:IsA("SpotLighting") or v:IsA("SurfaceLight") then
        local Light = v
        if not Light.Shadows then
            Light.Shadows = true
        end
    end
end