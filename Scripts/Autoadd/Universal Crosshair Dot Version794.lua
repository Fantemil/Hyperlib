local d = Drawing.new("Circle")
d.Color, d.Radius, d.Filled, d.Visible = Color3.new(1, 1, 1), 3, true, false
game:GetService("RunService").RenderStepped:Connect(function()
    d.Position = workspace.CurrentCamera.ViewportSize / 2
    d.Visible = true
end)