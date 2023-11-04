local player = game:GetService("Players").LocalPlayer

local pets = player.Toys

function autocraft()
    for i,v in pairs(pets:GetDescendants()) do
    local args = {
    [1] = "Fuse",
    [2] = {
        [1] = game:GetService("Players").LocalPlayer.Toys:FindFirstChild(v.Name),
        [2] = game:GetService("Players").LocalPlayer.Toys:FindFirstChild(v.Name),
        [3] = game:GetService("Players").LocalPlayer.Toys:FindFirstChild(v.Name),
        [4] = game:GetService("Players").LocalPlayer.Toys:FindFirstChild(v.Name),
        [5] = game:GetService("Players").LocalPlayer.Toys:FindFirstChild(v.Name)
    }
}

game:GetService("ReplicatedStorage").Remotes.Craft:FireServer(unpack(args))
end
end


while wait() do
    autocraft()
end