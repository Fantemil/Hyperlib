local gui = Instance.new("ScreenGui")
gui.Name = "ScreenGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Text = "KABOOMA"
button.Size = UDim2.new(0, 100, 0, 50)
button.Position = UDim2.new(0.5, -50, 0.5, -25)
button.Parent = gui

local function convertToMesh(part)
    local meshPart = Instance.new("MeshPart")
    meshPart.Name = part.Name
    meshPart.Size = part.Size
    meshPart.Position = part.Position
    meshPart.Rotation = part.Rotation
    meshPart.Anchored = part.Anchored
    meshPart.CanCollide = part.CanCollide
    meshPart.Material = part.Material
    meshPart.BrickColor = part.BrickColor
    meshPart.Transparency = part.Transparency
    meshPart.Reflectance = part.Reflectance
    meshPart.MeshId = ""
    meshPart.TextureID = ""

    if part:IsA("UnionOperation") then
        meshPart.UsePartColor = true
    end

    part:Destroy()

    return meshPart
end

button.MouseButton1Click:Connect(function()
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local meshPart = convertToMesh(part)
            meshPart.Parent = workspace
        end
    end

    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            player.Character:BreakJoints()
        end
    end

local function flipPart(part)
    part.CFrame = part.CFrame * CFrame.Angles(math.pi, 0, 0)
    if part:IsA("Model") then
        for _, childPart in ipairs(part:GetDescendants()) do
            if childPart:IsA("BasePart") then
                flipPart(childPart)
            end
        end
    end
end

local function flipMap()
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            flipPart(part)
        end
    end
end

local function flipCharacter(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Sit = true
        humanoid.PlatformStand = true
        humanoid.AutoRotate = false
        humanoid.Sit = false
        humanoid.PlatformStand = false
        humanoid.AutoRotate = true

        local torso = character:FindFirstChild("HumanoidRootPart")
        if torso then
            torso.CFrame = torso.CFrame * CFrame.Angles(math.pi, 0, 0)
        end
    end
end

local function flipPlayers()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            flipCharacter(player.Character)
        end
    end
end

end)