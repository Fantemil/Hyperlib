if game.CoreGui:FindFirstChild("InstertedObjects") then
	game.CoreGui["InstertedObjects"]:Destroy()
end

local InsertedObjects = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local esp = Instance.new("TextButton")

--Properties:

InsertedObjects.Name = "InsertedObjects"
InsertedObjects.Parent = game.CoreGui

Frame.Parent = InsertedObjects
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.611881196, 0, 0.349823326, 0)
Frame.Size = UDim2.new(0, 200, 0, 200)
Frame.Active = true
Frame.Draggable = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(117, 164, 206)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(123, 201, 201)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(224, 138, 175))}
UIGradient.Parent = Frame

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Frame

esp.Name = "esp"
esp.Parent = Frame
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
esp.BackgroundTransparency = 0.950
esp.BorderSizePixel = 0
esp.Size = UDim2.new(0, 200, 0, 200)
esp.Font = Enum.Font.GothamMedium
esp.Text = "Item Esp"
esp.TextColor3 = Color3.fromRGB(0, 0, 0)
esp.TextScaled = true
esp.TextSize = 14.000
esp.TextWrapped = true
esp.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
		if v.ClassName == 'TouchTransmitter' and v.Parent.Name == 'Handle' then -- checks if it has a handle and if its a touchtransmitter
			local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
			local TextLabel = Instance.new('TextLabel') -- makes text label

			BillboardGui.Parent = v.Parent -- what the billboardgui goes into
			BillboardGui.AlwaysOnTop = true -- if its on top or not
			BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
			BillboardGui.StudsOffset = Vector3.new(0,2,0)

			TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
			TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
			TextLabel.BackgroundTransparency = 1 -- transparency
			TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
			TextLabel.Text = v.Parent.Parent.Name -- what the label says
			TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
			TextLabel.TextScaled = true -- if the text is scaled or not
		end
	end
end)