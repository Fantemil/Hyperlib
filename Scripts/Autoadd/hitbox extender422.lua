
local function hitboxextend()
    local zombies = game.Workspace:FindFirstChild("Zombies")
    if zombies then
        for _, hitbox in pairs(zombies:GetDescendants()) do
            if hitbox:IsA("Model") and hitbox:FindFirstChild("Head") then
                local head = hitbox.Head
                head.Size = Vector3.new(5, 5, 5)
            end
        end
    end
end


while true do
    hitboxextend()
    wait(0.5)
end