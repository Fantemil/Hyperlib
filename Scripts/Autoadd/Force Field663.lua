local function d()
    local a = game:GetDescendants()
    for _, b in ipairs(a) do
        if (b:IsA("Script") or b:IsA("LocalScript")) and b.Name == "DetectSafeZone" then
            b:Destroy()
        end
    end
end

d()
