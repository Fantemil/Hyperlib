for __,v in pairs(game:GetService("Workspace").Ignored.Interaction.EASTER:GetChildren()) do
if v:IsA("Part") then
local a = Instance.new("BillboardGui",v)
a.Size = UDim2.new(1,0, 1,0)
a.Name = "A"
a.AlwaysOnTop = true
local b = Instance.new("Frame",a)
b.Size = UDim2.new(1,0, 1,0)
b.BackgroundTransparency = 1
b.BorderSizePixel = 0
local c = Instance.new("TextLabel",b)
c.Text = "Egg Located"
c.Size = UDim2.new(1,0, 1,0)
c.BackgroundTransparency = 1
c.BorderSizePixel = 0
end
end