
local image = 'https://i.ibb.co/Bs1Xnhr/71fa98e2ef272ce8a946bc81a3e96d2857021fd1-2-1.png'
local imageData = game:HttpGet(image)
local mouse = game:GetService('Players').LocalPlayer:GetMouse()

local cursor = Drawing.new('Image')
cursor.Data = imageData
cursor.Visible = true 
cursor.Size = Vector2.new(64,64)

game:GetService('RunService').RenderStepped:Connect(function()
    cursor.Position = Vector2.new(mouse.x-25,mouse.y+10)
end)

game:GetService('UserInputService').MouseIconEnabled = false -- Disables current mouse 
