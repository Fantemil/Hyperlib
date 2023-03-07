local lv = Vector3.zero

game:GetService("RunService").RenderStepped:Connect(function()
 local x,y,z = game.Workspace.CurrentCamera.CFrame:ToEulerAnglesXYZ()
 x,y,z = math.deg(x),math.deg(y),math.deg(z)
 
 game.Lighting.Blur.Size = math.clamp((Vector3.new(x,y,z)-lv).Magnitude/2,2,10)
 lv = Vector3.new(x,y,z)
end)