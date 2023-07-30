for i,v in pairs(game.workspace:GetDescendants()) do 	
    if v.Name == "LolaGame" then
        v:Remove()
        end
    end

gamelol = Instance.new("Model")
gamelol.Parent = game.Workspace
gamelol.Name = "LolaGame"

Currentspwn = Spawnpoint

Spawn = Instance.new("Part")
Path = Instance.new("Part")
Path2 = Instance.new("Part")
Plate = Instance.new("Part")
Wall = Instance.new("Part")
Lava1 = Instance.new("Part")
Lava2 = Instance.new("Part")
Lava3 = Instance.new("Part")
tppos = Instance.new("Part")
Spawnpoint = Instance.new("SpawnLocation")
Spawnpoint2 = Instance.new("SpawnLocation")
win = Instance.new("SpawnLocation")
Void = Instance.new("Part")

Path.Parent = gamelol
Path.Position = Vector3.new(83.8, 1937.41, 141.616)
Path.Size = Vector3.new(30,1,7.5)
Path.Anchored = true
Path.Color = BrickColor.new("White").Color

Path2.Parent = gamelol
Path2.Position = Vector3.new(3.7, 1937.41, 141.616)
Path2.Size = Vector3.new(30,1,3.5)
Path2.Anchored = true
Path2.Color = BrickColor.new("Dark stone grey").Color

Wall.Parent = gamelol
Wall.Position = Vector3.new(3.7, 1943.41, 141.616)
Wall.Size = Vector3.new(7.5,11,3.5)
Wall.Anchored = true
Wall.Color = BrickColor.new("Dark stone grey").Color

Spawn.Parent = gamelol
Spawn.Position = Vector3.new(106.3, 1937.41, 141.616)
Spawn.Size = Vector3.new(15,1,15)
Spawn.Anchored = true
Spawn.Color = BrickColor.new("Dark stone grey").Color

Plate.Parent = gamelol
Plate.Position = Vector3.new(43.75, 1937.41, 141.616)
Plate.Size = Vector3.new(50,1,30)
Plate.Anchored = true
Plate.Color = BrickColor.new("Dark stone grey").Color

Lava1.Parent = gamelol
Lava1.Position = Vector3.new(60.3, 1938.41, 141.616)
Lava1.Size = Vector3.new(1, 1, 29.5)
Lava1.Anchored = true
Lava1.Color = BrickColor.new("Dark stone grey").Color
Lava1.Material = Enum.Material.Neon
Lava1.Color = BrickColor.new("Really red").Color

Lava2.Parent = gamelol
Lava2.Position = Vector3.new(55, 1938.41, 141.616)
Lava2.Size = Vector3.new(1, 1, 29.5)
Lava2.Anchored = true
Lava2.Color = BrickColor.new("Dark stone grey").Color
Lava2.Material = Enum.Material.Neon
Lava2.Color = BrickColor.new("Really red").Color

Lava3.Parent = gamelol
Lava3.Position = Vector3.new(50, 1938.41, 141.616)
Lava3.Size = Vector3.new(1, 1, 29.5)
Lava3.Anchored = true
Lava3.Color = BrickColor.new("Dark stone grey").Color
Lava3.Material = Enum.Material.Neon
Lava3.Color = BrickColor.new("Really red").Color

Void.Parent = gamelol
Void.Position = Vector3.new(106.176, 1857.41, 141.616)
Void.Size = Vector3.new(999,1,999)
Void.Anchored = true
Void.Color = BrickColor.new("Dark stone grey").Color
Void.CanCollide = false
Void.Transparency = 1

tppos.Position = Vector3.new(106.176, 1946.41, 141.616)
tppos.Size = Vector3.new(15,1,15)
tppos.Anchored = true
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = tppos.CFrame

for i,v in pairs(game.workspace:GetDescendants()) do 	
    if v.Name == "SpawnLocation" then
        v:Remove()
        end
    end

Spawnpoint.Position = Vector3.new(106.176, 1938.41, 141.616)
Spawnpoint.Size = Vector3.new(5,1,5)
Spawnpoint.Anchored = true
Spawnpoint.Parent = gamelol

Spawnpoint2.Position = Vector3.new(28, 1938.41, 141.616)
Spawnpoint2.Size = Vector3.new(5,1,5)
Spawnpoint2.Anchored = true
Spawnpoint2.Parent = gamelol

win.Position = Vector3.new(-14, 1937.41, 141.616)
win.Size = Vector3.new(5,1,5)
win.Anchored = true
win.Parent = gamelol
win.Material = Enum.Material.Neon
win.Color = BrickColor.new("New Yeller").Color

Void.Touched:Connect(function(Yeah) 
    Yeah.Parent.HumanoidRootPart.CFrame = tppos.CFrame
    end)

Lava1.Touched:Connect(function(Yeah) 
    Yeah.Parent.HumanoidRootPart.CFrame = tppos.CFrame
    end)

Lava2.Touched:Connect(function(Yeah) 
    Yeah.Parent.HumanoidRootPart.CFrame = tppos.CFrame
    end)

Lava3.Touched:Connect(function(Yeah) 
    Yeah.Parent.HumanoidRootPart.CFrame = tppos.CFrame
    end)

Spawnpoint2.Touched:Connect(function(Yeah) 
    tppos.Position = Vector3.new(28, 1946.41, 141.616)
    end)

win.Touched:Connect(function(Yeah) 
    while true do
        print("You are a winner")
        end
    end)