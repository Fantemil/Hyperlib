local esp_settings = {
   textsize = 16,
   colour = 255,255,255
}

local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel",gui)

local plr = game.Players.LocalPlayer

gui.Name = "ESP";
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
esp.Text = "Spooky"
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
esp.BorderSizePixel = 4;
esp.BorderColor3 = Color3.new(esp_settings.colour)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = esp_settings.textsize
esp.TextColor3 = Color3.fromRGB(esp_settings.colour)

_G.Active = true

game:GetService("RunService").RenderStepped:Connect(function()
   for i,v in pairs (workspace.Game.Players:GetDescendants()) do
       if _G.Active and v:FindFirstChild("HRP") and v.HRP and v.HRP:FindFirstChild("ESP") == nil then
           gui:Clone().Parent = v.HRP
end
   end
end)

-- Drawing Lib

task.wait(.5)

local lines =  {
   
}

for i,v in pairs(workspace.Game.Players:GetDescendants()) do
   if v.Name == "ESP" and _G.Active then
       local camera = workspace.Camera

       local Line = Drawing.new("Line")

       table.insert(lines, {Line = Line, part = v.Parent})

       Line.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
       Line.Color = Color3.fromRGB(255, 255, 255)
       Line.Thickness = 2
   end
end

workspace.Game.Players.DescendantAdded:Connect(function(v)
   if v.Name == "ESP" and _G.Active then
       local camera = workspace.Camera
       local Line = Drawing.new("Line")

       table.insert(lines, {Line = Line, part = v.Parent})

       Line.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
       Line.Color = Color3.fromRGB(255, 255, 255)
       Line.Thickness = 2
   end
end)

game:GetService("RunService").RenderStepped:Connect(function()
   for i,v in pairs(lines) do
       if v.part ~= nil and _G.Active then
           local camera = workspace.Camera
           local v2, inViewport = camera:WorldToViewportPoint(v.part.Position)
           v.Line.To = Vector2.new(v2.X, v2.Y)
           v.Line.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)

           v.Line.Visible = (inViewport and v.part and v.part.Parent and true) or false

           if v.part == nil then
               v.Line.Visible = false
               v.Line = nil
           end
       end
   end
end)