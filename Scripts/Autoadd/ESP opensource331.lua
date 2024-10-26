local function createChamsE(part)
    local chams = Instance.new("BoxHandleAdornment")
    chams.Size = part.Size
    chams.AlwaysOnTop = true
    chams.ZIndex = 10
    chams.Adornee = part
    chams.Color3 = Color3.new(255, 0, 0)
    chams.Transparency = 0.9
    chams.Parent = part
end

local function createChamsH(part)
    local chams = Instance.new("BoxHandleAdornment")
    chams.Size = part.Size
    chams.AlwaysOnTop = true
    chams.ZIndex = 10
    chams.Adornee = part
    chams.Color3 = Color3.new(0, 255, 0)
    chams.Transparency = 0.9
    chams.Parent = part
end

local function applyChamsToEnemies()
    for _, object in pairs(workspace.active.Programming.Enemies:GetDescendants()) do
        if object:IsA("Model") and object.Name == "Enemy" then
            for _, part in pairs(object:GetChildren()) do
                if part:IsA("BasePart") then
                    createChamsE(part)
                end
            end
        end
    end
end

local function applyChamsToHostages()
    for _, object in pairs(workspace.active.Programming.Enemies:GetDescendants()) do
        if object:IsA("Model") and object.Name == "Hostage" then
            for _, part in pairs(object:GetChildren()) do
                if part:IsA("BasePart") then
                    createChamsH(part)
                end
            end
        end
    end
end

applyChamsToEnemies()
applyChamsToHostages() 