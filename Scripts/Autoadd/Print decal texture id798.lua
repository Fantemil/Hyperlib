local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()

local ft = Instance.new("Tool")
ft.Name = "Image Tool"
ft.RequiresHandle = false
ft.Parent = lp.Backpack
ft.Activated:Connect(function()
	print(mouse.Target:FindFirstChildWhichIsA("Decal").Texture)
end)