for i,v in pairs(game:GetService("ReplicatedStorage").Player:GetDescendants()) do
if v:IsA("MeshPart") or v:IsA("Part") then
    local adornment = Instance.new("BoxHandleAdornment")
    adornment.Adornee = v
    adornment.AlwaysOnTop = true
    adornment.ZIndex = 1
    adornment.Size = v.Size
    adornment.Color = BrickColor.new("Bright green")
    adornment.Transparency = 0.3
    adornment.Parent = v
end
end
for i,v in pairs(game.Workspace:GetChildren()) do
  if  v:FindFirstChild("Head") then

      for i,v in pairs(v:GetChildren()) do
    if v:IsA("Part") then


    local adornment = Instance.new("BoxHandleAdornment")
    adornment.Adornee = v
    adornment.AlwaysOnTop = true
    adornment.ZIndex = 1
    adornment.Size = v.Size
    adornment.Color = BrickColor.new("Bright green")
    adornment.Transparency = 0.3
    adornment.Parent = v

      end
end
      for i,v in pairs(v:GetChildren()) do
    if v:IsA("MeshPart") then

    local adornment = Instance.new("BoxHandleAdornment")
    adornment.Adornee = v
    adornment.AlwaysOnTop = true
    adornment.ZIndex = 1
    adornment.Size = v.Size
    adornment.Color = BrickColor.new("Bright green")
    adornment.Transparency = 0.3
    adornment.Parent = v
    end
    end
end
end



local ad
        ad= hookmetamethod(game, "__index", newcclosure(function(...)
            local self, k = ...
            if  not checkcaller() and k == "Size" and self.Name == "Head" then
                return Vector3.new(1.67325, 0.836624, 0.836624)
            end

            return ad(...)
        end))

for i,v in pairs(game:GetService("ReplicatedStorage").Player:GetDescendants()) do
if v.Name == "Head" then
v.Size = Vector3.new(2, 3, 3)
end
end

for i,v in pairs(game.Workspace:GetChildren()) do 
if v:FindFirstChild("Torso") then
v:FindFirstChild("Head").Size = Vector3.new(2, 3, 3)
end
end

for i,v in pairs(game:GetService("ReplicatedStorage").Player:GetDescendants()) do
if v:IsA("MeshPart") or v:IsA("Part") then
    local adornment = Instance.new("BoxHandleAdornment")
    adornment.Adornee = v
    adornment.AlwaysOnTop = true
    adornment.ZIndex = 1
    adornment.Size = v.Size
    adornment.Color = BrickColor.new("Bright green")
    adornment.Transparency = 0.3
    adornment.Parent = v
end
end
for i,v in pairs(game.Workspace:GetChildren()) do
  if  v:FindFirstChild("Head") then

      for i,v in pairs(v:GetChildren()) do
    if v:IsA("Part") then


    local adornment = Instance.new("BoxHandleAdornment")
    adornment.Adornee = v
    adornment.AlwaysOnTop = true
    adornment.ZIndex = 1
    adornment.Size = v.Size
    adornment.Color = BrickColor.new("Bright green")
    adornment.Transparency = 0.3
    adornment.Parent = v

      end
end
      for i,v in pairs(v:GetChildren()) do
    if v:IsA("MeshPart") then

    local adornment = Instance.new("BoxHandleAdornment")
    adornment.Adornee = v
    adornment.AlwaysOnTop = true
    adornment.ZIndex = 1
    adornment.Size = v.Size
    adornment.Color = BrickColor.new("Bright green")
    adornment.Transparency = 0.3
    adornment.Parent = v
    end
    end
end
end



local ad
        ad= hookmetamethod(game, "__index", newcclosure(function(...)
            local self, k = ...
            if  not checkcaller() and k == "Size" and self.Name == "Head" then
                return Vector3.new(1.67325, 0.836624, 0.836624)
            end

            return ad(...)
        end))

for i,v in pairs(game:GetService("ReplicatedStorage").Player:GetDescendants()) do
if v.Name == "Head" then
v.Size = Vector3.new(2, 3, 3)
end
end

for i,v in pairs(game.Workspace:GetChildren()) do 
if v:FindFirstChild("Torso") then
v:FindFirstChild("Head").Size = Vector3.new(2, 3, 3)
end
end