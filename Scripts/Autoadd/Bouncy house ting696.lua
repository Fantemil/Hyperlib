local UserInputService = game:GetService("UserInputService")

local spheres = {}


local function createSpherePart(position)

    local spherePart = Instance.new("Part")
    spherePart.Size = Vector3.new(4, 4, 4) 
    spherePart.Position = position
    spherePart.Anchored = false 
    spherePart.CanCollide = true
    spherePart.Shape = Enum.PartType.Ball 
    spherePart.Material = Enum.Material.SmoothPlastic
    spherePart.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255)) 

    -- Create BodyVelocity to control initial bounce
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(math.random(-5, 5), math.random(10, 15), math.random(-5, 5)) 
    bodyVelocity.MaxForce = Vector3.new(5000, 5000, 5000)
    bodyVelocity.Parent = spherePart


    local bodyGyro = Instance.new("BodyGyro")
    bodyGyro.P = 3000
    bodyGyro.D = 100
    bodyGyro.Parent = spherePart


    local bodyForce = Instance.new("BodyForce")
    bodyForce.Force = Vector3.new(0, -400, 0) --gravity
    bodyForce.Parent = spherePart


    spherePart.Parent = game.Workspace


    table.insert(spheres, spherePart)
end


for i = 1, 200 do 
    local xOffset = math.random(-50, 50)
    local yOffset = math.random(10, 50)
    local zOffset = math.random(-50, 50)
    local position = Vector3.new(xOffset, yOffset, zOffset)
    createSpherePart(position)
end


local function deleteAllSpheres()
    for _, sphere in ipairs(spheres) do
        if sphere and sphere.Parent then
            sphere:Destroy()
        end
    end
    -- Clear the table
    spheres = {}
end


UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.F then
            deleteAllSpheres()
        end
    end
end)