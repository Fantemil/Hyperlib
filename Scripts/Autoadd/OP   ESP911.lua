print("ESP PF Initialized.")
enemyteam = game.Workspace.Players:GetChildren()[1]
friendlyteam = game.Workspace.Players:GetChildren()[2]
while wait(0.1) do
    for ,v in enemyteam:GetDescendants() do
        if v.ClassName == "Model" then
            if v:FindFirstChild("Highlight") then

            else
            local h = Instance.new("Highlight",v)
            h.FillColor = Color3.new(1,0,0)
            h.FillTransparency = 0.4
            print(string.format("Highlighted %s",v.Name))

            end

        end
    end
    for ,v in friendlyteam:GetDescendants() do
        if v.ClassName == "Model" then
            if v:FindFirstChild("Highlight") then

            else
            local h = Instance.new("Highlight",v)
            h.FillColor = Color3.new(0.227451, 1, 0.054902)
            h.FillTransparency = 0.8
            print(string.format("Highlighted %s",v.Name))

            end

        end
    end
end