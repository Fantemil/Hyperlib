for k,v in pairs(game:GetService("Workspace").Water:GetChildren()) do
   v.CanCollide = true
   v.Anchored = true
   v.Material = "Ice"
   v:Clone().Parent = v.Parent
   v:Destroy()
end

for i , v in pairs (game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "Ocean" then
        v.Name = "NotWater"
    end
end
local newfolder = Instance.new("Folder")
newfolder.Name = "Water"
newfolder.Parent = game:GetService("Workspace")
wait(0.1)
game:GetService("Workspace").Water.Name = "NotWaterBruh"