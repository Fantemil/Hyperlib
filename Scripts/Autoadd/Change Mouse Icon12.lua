local url = 'https://i.imgur.com/TLX4XDa.png' -- png link e.g. https://example.com/image.png

writefile('mouseicon.png', syn.request({Url=url}).Body)
local image = Drawing.new("Image")
image.Data = readfile('mouseicon.png')
image.Size = Vector2.new(25,25)
image.Visible = true
local mouse = game.Players.LocalPlayer:GetMouse()
local insetY = game:GetService("GuiService"):GetGuiInset().Y
game:GetService("RunService").RenderStepped:Connect(function()
  image.Position = Vector2.new(mouse.X, mouse.Y + insetY)
  game:GetService("UserInputService").MouseIconEnabled = false
end)