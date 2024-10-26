local function onPlayerAdded(player)
local function CreatePermPart(part, parent)
    local properties = {
        ["TopSurface"] = "f",
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = true,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }

    if not part:FindFirstChild("Shape") then
    --line i had to take out
    end

    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser", part.Position, part.Position, properties)
end

local function CreateWeld(parentPart, childPart)
    local weld = Instance.new("Weld")
    weld.Part0 = parentPart
    weld.Part1 = childPart
    weld.C0 = parentPart.CFrame:Inverse() * childPart.CFrame
    weld.Parent = parentPart
end

local function CreatePartsFromAsset(assetId, position)
    local model = game:GetObjects("rbxassetid://" .. tostring(assetId))[1]
    local parts = model:GetDescendants()

    local parentPart = nil

    local primaryPart = model.PrimaryPart or nil
    if not primaryPart then
        for _, part in ipairs(parts) do
            if part:IsA("BasePart") and part.ClassName ~= "Texture" then
                primaryPart = part
                break
            end
        end
    end

    for _, part in ipairs(parts) do
        if part:IsA("BasePart") and not part:IsA("UnionOperation") and part.ClassName ~= "Texture" then
            local newPart = part:Clone()
            newPart.Parent = game.Workspace

            if primaryPart then
                newPart.Position = position + (newPart.Position - primaryPart.Position)
            else
                newPart.Position = position
            end

            CreatePermPart(newPart, game.Workspace)

            if parentPart then
                CreateWeld(parentPart, newPart)
            end

            parentPart = newPart
        elseif not part:IsA("UnionOperation") then
            part:Destroy()
        end
    end

    model:Destroy()
end

local assetId = 4572305378
local position = Vector3.new(204, 7, -262)
CreatePartsFromAsset(assetId, position)
end

onPlayerAdded()

wait(1)

local function CreatePermPart(part, parent)
    local properties = {
        ["TopSurface"] = "f",
        ["Material"] = part.Material,
        ["Reflectance"] = part.Reflectance,
        ["BrickColor"] = part.BrickColor,
        ["Transparency"] = part.Transparency,
        ["Size"] = part.Size,
        ["Position"] = part.Position,
        ["CanCollide"] = part.CanCollide,
        ["Anchored"] = true,
        ["Parent"] = parent,
        ["Orientation"] = part.Orientation
    }

    if not part:FindFirstChild("Shape") then
        properties["Shape"] = Enum.PartType.Block
    end

    require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser", part.Position, part.Position, properties)
end

local function CreateWeld(parentPart, childPart)
    local weld = Instance.new("Weld")
    weld.Part0 = parentPart
    weld.Part1 = childPart
    weld.C0 = parentPart.CFrame:Inverse() * childPart.CFrame
    weld.Parent = parentPart
end

local function CreatePartsFromAsset(assetId, position)
    local model = game:GetObjects("rbxassetid://" .. tostring(assetId))[1]
    local parts = model:GetDescendants()

    local parentPart = nil

    local primaryPart = model.PrimaryPart or nil
    if not primaryPart then
        for _, part in ipairs(parts) do
            if part:IsA("BasePart") and part.ClassName ~= "Texture" then
                primaryPart = part
                break
            end
        end
    end

    for _, part in ipairs(parts) do
        if part:IsA("BasePart") and not part:IsA("UnionOperation") and part.ClassName ~= "Texture" then
            local newPart = part:Clone()
            newPart.Parent = game.Workspace

            if primaryPart then
                newPart.Position = position + (newPart.Position - primaryPart.Position)
            else
                newPart.Position = position
            end

            CreatePermPart(newPart, game.Workspace)

            if parentPart then
                CreateWeld(parentPart, newPart)
            end

            parentPart = newPart
        elseif not part:IsA("UnionOperation") then
            part:Destroy()
        end
    end

    model:Destroy()
end

local assetId = 4572305378
local position = Vector3.new(204, 7, -262)
CreatePartsFromAsset(assetId, position)