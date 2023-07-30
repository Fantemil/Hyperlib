local parts = game:GetService("Workspace"):GetDescendants()
local canCollideParts = {}
for _, part in ipairs(parts) do
    if part:IsA("BasePart") and not part.CanCollide then
        table.insert(canCollideParts, part)
    end
end
for _, part in ipairs(canCollideParts) do
    part.Transparency = 0.9
end
