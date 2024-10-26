-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.313901275, 0, 0.301664352, 0)
Frame.Size = UDim2.new(0, 304, 0, 227)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0.026955856, 0, 0.210715815, 0)
TextButton.Size = UDim2.new(0, 87, 0, 48)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "skybox"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.BorderSizePixel = 3
TextButton_2.Position = UDim2.new(0.355903238, 0, 0.21952638, 0)
TextButton_2.Size = UDim2.new(0, 87, 0, 48)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "decal"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.BorderSizePixel = 3
TextButton_3.Position = UDim2.new(0.70458746, 0, 0.21952638, 0)
TextButton_3.Size = UDim2.new(0, 87, 0, 48)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "particles"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 999999.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 304, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "l00pgui (version scriptblox)"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 999999.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.546255529, 0)
TextLabel_2.Size = UDim2.new(0, 304, 0, 103)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "BETA"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function TYEVGR_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	
	function click()
		s = Instance.new("Sky")
		s.Name = "Sky"
		s.Parent = game.Lighting
		s.SkyboxBk = "http://www.roblox.com/asset/?id=17057758216"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=17057758216"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=17057758216"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=17057758216"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=17057758216"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=17057758216"
		game.Lighting.TimeOfDay = 12
	end
	
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(TYEVGR_fake_script)()
local function VBDNZYR_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=17057758216" then
					v.Parent = nil
				elseif v:IsA("BasePart") then
					v.Material = "Plastic"
					v.Transparency = 0
					local One = Instance.new("Decal", v)
					local Two = Instance.new("Decal", v)
					local Three = Instance.new("Decal", v)
					local Four = Instance.new("Decal", v)
					local Five = Instance.new("Decal", v)
					local Six = Instance.new("Decal", v)
					One.Texture = "http://www.roblox.com/asset/?id=17057758216"
					Two.Texture = "http://www.roblox.com/asset/?id=17057758216"
					Three.Texture = "http://www.roblox.com/asset/?id=17057758216"
					Four.Texture = "http://www.roblox.com/asset/?id=17057758216"
					Five.Texture = "http://www.roblox.com/asset/?id=17057758216"
					Six.Texture = "http://www.roblox.com/asset/?id=17057758216"
					One.Face = "Front"
					Two.Face = "Back"
					Three.Face = "Right"
					Four.Face = "Left"
					Five.Face = "Top"
					Six.Face = "Bottom"
				end
				exPro(v)
			end
		end
		function asdf(root)
			for _, v in pairs(root:GetChildren()) do
				asdf(v)
			end
		end
		exPro(game.Workspace)
		asdf(game.Workspace)
	end
	
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(VBDNZYR_fake_script)()
local function WKOH_fake_script() -- TextButton_3.Script 
	local script = Instance.new('Script', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Players:GetChildren()) do
			local emit = Instance.new("ParticleEmitter")
			emit.Parent = v.Character.Head
			emit.Texture = "http://www.roblox.com/asset/?id=17040358070"
			emit.VelocitySpread = 10
		end
	end)
end
coroutine.wrap(WKOH_fake_script)()
