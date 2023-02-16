for i,v in pairs(workspace:GetChildren()) do
    if v.Name == "fakediamond1" then v:Destroy() end
end

local diamondmesh = Instance.new("MeshPart")
diamondmesh.Anchored = true
diamondmesh.MeshId = "rbxassetid://10241207391"
diamondmesh.Name = "fakediamond1"
diamondmesh.Size = Vector3.new(0.507319, 0.543082, 0.585802)
Instance.new("Highlight", diamondmesh)

local player = game.Players.LocalPlayer
local character = player.character
local arena
local cupFolder

for _, v in pairs(game:GetService("Workspace").ArenasREAL:GetDescendants()) do
    if v:IsA("TextLabel") and v.Text == "@"..player.Name then
        arena = v.Parent.Parent.Parent.Parent.Parent.Parent.Parent
    end
end

for _, v in pairs(arena:GetDescendants()) do
    if v.Name == "Spot" then
        v.Parent.Name = tostring(v.Value)
        cupFolder = v.Parent.Parent
    end
end

for _,diamond in pairs(arena.ArenaTemplate.Important.Diamonds:GetChildren()) do
    if diamond.Transparency == 1 then continue end
    
    local closest,distance = nil, 1000
    for _,cup in pairs(cupFolder:GetChildren()) do
        local mag = (cup.Detail.Position - diamond.Position).Magnitude
        if mag < distance then closest = cup distance = mag end
    end
    
    local clone = diamondmesh:Clone()
    clone.Parent = workspace
    clone.Position = closest.Primary.Position
    closest.Primary:GetPropertyChangedSignal("Position"):Connect(function()
        clone.Position = closest.Primary.Position
    end)
end