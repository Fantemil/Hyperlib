local workspace = game:GetService("Workspace")

local function findNape(hitFolder)
    return hitFolder:FindFirstChild("Nape")
end

local function expandNapeHitbox(hitFolder)
    local napeObject = findNape(hitFolder)
    if napeObject then
        napeObject.Size = Vector3.new(105, 120, 100)
        napeObject.Transparency = 0.96
        napeObject.Color = Color3.new(1, 1, 1)
        napeObject.Material = Enum.Material.Neon
        napeObject.CanCollide = false
        napeObject.Anchored = false
    end
end

local function processTitans(titansBasePart)
    for _, titan in ipairs(titansBasePart:GetChildren()) do
        local hitboxesFolder = titan:FindFirstChild("Hitboxes")
        if hitboxesFolder then
            local hitFolder = hitboxesFolder:FindFirstChild("Hit")
            if hitFolder then
                expandNapeHitbox(hitFolder)
            end
        end
    end
end

print("Nape Expander Loaded")

local titansBasePart = workspace:FindFirstChild("Titans")
if titansBasePart then
    processTitans(titansBasePart)
end