for i,v in pairs(game:GetService("Workspace").Morphs:GetChildren()) do


local args = {
   [1] = -700000,
   [2] = v.Name,
}

game:GetService("ReplicatedStorage").MorphVerify:FireServer(unpack(args))
end