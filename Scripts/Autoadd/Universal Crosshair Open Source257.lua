local Crosshair = Drawing.new("Line")
Crosshair.Color = Color3.new(1, 1, 1) 
Crosshair.Thickness = 2

local Crosshair2 = Drawing.new("Line")
Crosshair2.Color = Color3.new(1, 1, 1)
Crosshair2.Thickness = 2

game:GetService("RunService").RenderStepped:Connect(function()
    local Center = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
    
    
    Crosshair.From = Vector2.new(Center.X - 10, Center.Y)
    Crosshair.To = Vector2.new(Center.X + 10, Center.Y)
    Crosshair.Visible = true
    
    
    Crosshair2.From = Vector2.new(Center.X, Center.Y - 10)
    Crosshair2.To = Vector2.new(Center.X, Center.Y + 10)
    Crosshair2.Visible = true
end)