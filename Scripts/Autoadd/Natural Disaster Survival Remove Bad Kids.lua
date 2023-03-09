local Structure = workspace:WaitForChild("Structure")

local BadKids = {"Lava", "Virus", "TornadoPart", "MeteorTemplate"}
Structure.DescendantAdded:Connect(function(descendant)
    if table.find(BadKids, descendant.Name) then
        task.wait(0)
        descendant:Destroy()
    end
end)