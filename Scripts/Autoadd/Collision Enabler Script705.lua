--makes it so that you can collide with players and their limbs (Use with scripts like Snake)
--NOTE: collision is not server sided and only happens on your client (Fling scripts only work on you not others)

LP = game.Players.LocalPlayer
while wait(3) do
    for i,v in pairs(game.Players:GetDescendants()) do
        if v:IsA("Player") and workspace:FindFirstChild(v.Name) and v ~= LP and workspace[v.Name]:FindFirstChild("CHECKER") == nil then
            checker = Instance.new("BoolValue",workspace[v.Name])
            checker.Name = "CHECKER"
            for i,v in pairs(workspace:WaitForChild(v.Name):GetDescendants()) do
                if v:IsA("Part") or v:IsA("MeshPart") then
                    local collider = Instance.new("Part",v)
                    collider.Size = v.Size
                    collider.Position = v.Position
                    collider.Transparency = 1
                    local weld = Instance.new("Weld",v)
                    weld.Part0 = v
                    weld.Part1 = collider
                end
            end
        end
    end
end