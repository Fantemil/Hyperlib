for __,v in pairs(game:GetService("Workspace").Decoration:GetDescendants()) do
if v.ClassName == "MeshPart"  then 
   local a = Instance.new("BillboardGui",v)
   a.Name = "ESP"
   a.Size = UDim2.new(5,0, 5,0)
   a.AlwaysOnTop = true
   local b = Instance.new("Frame",a)
   b.Size = UDim2.new(1,0, 1,0)
   b.BackgroundTransparency = 0.80
   b.BorderSizePixel = 0
   b.BackgroundColor3 = Color3.fromRGB(0,0,255)
   local c = Instance.new('TextLabel',b)
   c.Size = UDim2.new(1,0,1,1)
   c.BorderSizePixel = 0
   c.TextSize = 15
   c.Text = v.Name
   c.BackgroundTransparency = 1
   c.TextColor3 = Color3.new(1,1,1)
   c.TextStrokeColor3 = Color3.fromRGB(6, 6, 6)
   c.TextStrokeTransparency = 0.7
end
end