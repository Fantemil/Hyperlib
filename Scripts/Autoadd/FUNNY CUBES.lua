NOTE: i used ai for this script lol
local CUBE_SIZE = 3 -- Replace with the desired size of the cubes
local CUBE_COLOR = Color3.fromRGB(0, 162, 255) -- Replace with the desired color of the cubes
local CUBE_MATERIAL = Enum.Material.Neon -- Replace with the desired material of the cubes
local CUBE_FALL_SPEED = 25 -- Replace with the desired speed of the cube falling
local CUBE_SPAWN_INTERVAL = 1 -- Replace with the desired interval between cube spawns
local function spawnCubes()
    local cube = Instance.new("Part")
    cube.Size = Vector3.new(CUBE_SIZE, CUBE_SIZE, CUBE_SIZE)
    cube.Color = CUBE_COLOR
    cube.Material = CUBE_MATERIAL
    cube.Anchored = false
    cube.CanCollide = true
    cube.Position = Vector3.new(math.random(-50, 50), 50, math.random(-50, 50))
    cube.Parent = game.Workspace
    
    local fallVelocity = Vector3.new(0, -CUBE_FALL_SPEED, 0)
    cube.Velocity = fallVelocity
end

game:GetService("RunService").Heartbeat:Connect(function()
    if math.floor(game:GetService("Workspace").DistributedGameTime) % CUBE_SPAWN_INTERVAL == 0 then
        spawnCubes()
    end
end)