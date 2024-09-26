local folder = game.ReplicatedStorage.Morphs

local children = folder:GetChildren()

for _, child in ipairs(children) do
    print(child.Name)
end