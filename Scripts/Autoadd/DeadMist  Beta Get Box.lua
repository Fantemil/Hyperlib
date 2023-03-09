-- Grab Item Only Storage Crates
for i,v in pairs(game:GetService("Workspace").gameSpawns.constructions:GetDescendants()) do
    if v.Name == "image" then
        v.Parent.Parent.Parent.Parent.SpawnerBase.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(math.random(-7.24,7.24),1,math.random(-7.24,7.24))
        wait()
    end
end