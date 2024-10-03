getgenv().toggle = true
getgenv().size = Vector3.new(5, 5, 5)
getgenv().infstamina = true

game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().toggle then
        local ball = game:GetService("Workspace"):FindFirstChild("Temp"):FindFirstChild("Ball")
        local mesh = ball:FindFirstChildOfClass("SpecialMesh")
        if ball and ball:IsA("BasePart") then
            pcall(function()
                ball.Size = getgenv().size
                ball.Transparency = 0
                ball.BrickColor = BrickColor.new("Really blue")
                ball.Material = Enum.Material.Neon
                ball.CanCollide = false
            end)
            if not mesh then
                pcall(function()
                    mesh = Instance.new("SpecialMesh")
                    mesh.Parent = ball
                    mesh.Scale = Vector3.new(1.8 / getgenv().size.X, 1.8 / getgenv().size.Y, 1.8 / getgenv().size.Z)
                    mesh.MeshType = Enum.MeshType.Sphere
                end)
            end
        end
    end
end)
