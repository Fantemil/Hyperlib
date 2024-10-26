local a1 = workspace["Glass Bridge"]["GlassPane"]
local function b2(c3)
    return c3:IsA("Part") and c3.Parent.Name == "Glass"
end

local function d4(e5, f6, g7)
    if e5 then
        g7.Color = Color3.fromRGB(255, 0, 0)
    elseif f6 then
        g7.Color = Color3.fromRGB(0, 255, 0)
    end
end

for _, h8 in pairs(a1:GetDescendants()) do
    if b2(h8) then
        d4(h8["CanTouch"] and not h8["CanCollide"], not h8["CanTouch"] and h8["CanCollide"], h8)
    end
end