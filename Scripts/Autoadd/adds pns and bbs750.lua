-- Local Player'Ä±n karakterini al
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Torso veya HumanoidRootPart kÄ±smÄ±nÄ± al
local torso = character:FindFirstChild("Torso") or character:FindFirstChild("HumanoidRootPart")
local head = character:FindFirstChild("Head")

-- BaÅÄ±n rengini al
local skinColor = head and head.Color or Color3.fromRGB(255, 204, 153) -- Ten rengi, eÄer "Head" yoksa varsayÄ±lan bir ten rengi kullan

-- Fonksiyon: GÃ¶ÄÃ¼se top ekleme
local function addSphereToChest(positionOffset)
    local sphere = Instance.new("Part")
    sphere.Shape = Enum.PartType.Ball
    sphere.Size = Vector3.new(1.5, 1.5, 1.5) -- Topun boyutu
    sphere.Material = Enum.Material.SmoothPlastic
    sphere.Color = skinColor -- Topun rengi (ten rengi)
    sphere.Anchored = false
    sphere.CanCollide = false

    -- WeldInstance ile topu Torso'ya baÄla
    local weld = Instance.new("WeldConstraint")
    weld.Part0 = torso
    weld.Part1 = sphere

    sphere.Parent = character
    sphere.CFrame = torso.CFrame * CFrame.new(positionOffset)

    weld.Parent = sphere
end
local function addLittleSphereToChest(positionOffset)
    local sphere = Instance.new("Part")
    sphere.Shape = Enum.PartType.Ball
    sphere.Size = Vector3.new(0.2, 0.2, 0.2) -- Topun boyutu
    sphere.Material = Enum.Material.SmoothPlastic
    sphere.Color = skinColor -- Topun rengi (ten rengi)
    sphere.Anchored = false
    sphere.CanCollide = false

    -- WeldInstance ile topu Torso'ya baÄla
    local weld = Instance.new("WeldConstraint")
    weld.Part0 = torso
    weld.Part1 = sphere

    sphere.Parent = character
    sphere.CFrame = torso.CFrame * CFrame.new(positionOffset)

    weld.Parent = sphere
end
-- Ä°ki top ekle
addSphereToChest(Vector3.new(-0.5, 0, -0.5)) -- Sol top (daha yakÄ±n ve Ã¶ne)
addSphereToChest(Vector3.new(0.5, 0, -0.5))  -- SaÄ top (daha yakÄ±n ve Ã¶ne)
addLittleSphereToChest(Vector3.new(0.5, 0, -1.2))
addLittleSphereToChest(Vector3.new(-0.5, 0, -1.2))

-- Alt kÄ±sÄ±m

local function addTasakToChest(positionOffset)
    local sphere = Instance.new("Part")
    sphere.Shape = Enum.PartType.Ball
    sphere.Size = Vector3.new(0.5, 0.5, 0.5) -- Topun boyutu
    sphere.Material = Enum.Material.SmoothPlastic
    sphere.Color = skinColor -- Topun rengi (ten rengi)
    sphere.Anchored = false
    sphere.CanCollide = false

    -- WeldInstance ile topu Torso'ya baÄla
    local weld = Instance.new("WeldConstraint")
    weld.Part0 = torso
    weld.Part1 = sphere

    sphere.Parent = character
    sphere.CFrame = torso.CFrame * CFrame.new(positionOffset)

    weld.Parent = sphere
end

local function addYarakToChest(positionOffset)
    local sphere = Instance.new("Part")
    sphere.Shape = Enum.PartType.Block
    sphere.Size = Vector3.new(0.5, 0.5, 3) -- Topun boyutu
    sphere.Material = Enum.Material.SmoothPlastic
    sphere.Color = skinColor -- Topun rengi (ten rengi)
    sphere.Anchored = false
    sphere.CanCollide = false

    -- WeldInstance ile topu Torso'ya baÄla
    local weld = Instance.new("WeldConstraint")
    weld.Part0 = torso
    weld.Part1 = sphere

    sphere.Parent = character
    sphere.CFrame = torso.CFrame * CFrame.new(positionOffset)

    weld.Parent = sphere
end

local function addBasToChest(positionOffset)
    local sphere = Instance.new("Part")
    sphere.Shape = Enum.PartType.Ball
    sphere.Size = Vector3.new(0.6, 0.6, 0.6) -- Topun boyutu
    sphere.Material = Enum.Material.SmoothPlastic
    sphere.Color = skinColor -- Topun rengi (ten rengi)
    sphere.Anchored = false
    sphere.CanCollide = false

    -- WeldInstance ile topu Torso'ya baÄla
    local weld = Instance.new("WeldConstraint")
    weld.Part0 = torso
    weld.Part1 = sphere

    sphere.Parent = character
    sphere.CFrame = torso.CFrame * CFrame.new(positionOffset)

    weld.Parent = sphere
end

addTasakToChest(Vector3.new(-0.3, -1, -0.5))
addTasakToChest(Vector3.new(0.3, -1, -0.5))
addYarakToChest(Vector3.new(0, -1, -1))
addBasToChest(Vector3.new(0, -1, -2.5))

