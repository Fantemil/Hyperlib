--Made by Rouxhaver
Divide = 5 -- higher = less quality, lower = higher quality + lag

game:GetService("RunService"):Set3dRenderingEnabled(false)
Coregui = game:GetService("CoreGui")
sg = Instance.new("ScreenGui", Coregui)
sg.IgnoreGuiInset = true
sg.ResetOnSpawn = false
Gui = Instance.new("Frame", sg)
Coregui.RobloxGui.Enabled = false
Coregui.RobloxGui.Enabled = true
Camera = workspace.CurrentCamera
ScreenPixels = Vector2.new(math.floor(Camera.ViewportSize.X/Divide),math.floor(Camera.ViewportSize.Y/Divide))

for i2 = 0, ScreenPixels.Y-1, 1 do
 for i = 0, ScreenPixels.X-1, 1 do
  local Pixel = Instance.new("Frame",Gui)
  Pixel.Size = UDim2.new(0,Divide,0,Divide)
  Pixel.Position = UDim2.new(0,i*Divide,0,i2*Divide)
  Pixel.BorderSizePixel = 0
 end
end

while task.wait() do
 for i,Pixel in pairs(Gui:GetChildren()) do
  local Raycast = Camera:ViewportPointToRay(Pixel.Position.X.Offset,Pixel.Position.Y.Offset)
  Raycast = Ray.new(Raycast.Origin, Raycast.Direction * 1000)

  local target, hit = workspace:FindPartOnRay(Raycast)
  if target then do
    Pixel.BackgroundColor3 = target.Color
   end else
   Pixel.BackgroundColor3 = Color3.fromRGB(56, 235, 255)
  end
 end
end