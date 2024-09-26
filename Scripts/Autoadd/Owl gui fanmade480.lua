-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextButton_9 = Instance.new("TextButton")
local TextButton_10 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = true

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255,255,0)
Frame.BorderColor3 = Color3.fromRGB(255,255,0)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.127426162, 0, 0.341796875, 0)
Frame.Size = UDim2.new(0, 399, 0, 400)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextLabel.BorderColor3 = Color3.fromRGB(0,0,0)
TextLabel.BorderSizePixel = 3
TextLabel.Position = UDim2.new(0.00335570471, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 296, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "owl gui fanmade"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextSize = 30.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton.BorderColor3 = Color3.fromRGB(255,255,0)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0, 0, 0.228136882, 0)
TextButton.Size = UDim2.new(0, 90, 0, 42)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Sky"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextSize = 20.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 102, 0)
TextButton_2.BorderSizePixel = 3
TextButton_2.Position = UDim2.new(0.348993272, 0, 0.228136882, 0)
TextButton_2.Size = UDim2.new(0, 90, 0, 42)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "decalspam"
TextButton_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.TextSize = 20.000

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 102, 0)
TextButton_3.BorderSizePixel = 3
TextButton_3.Position = UDim2.new(0.697986603, 0, 0.228136882, 0)
TextButton_3.Size = UDim2.new(0, 90, 0, 42)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "water map"
TextButton_3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.TextSize = 20.000

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 102, 0)
TextButton_4.BorderSizePixel = 3
TextButton_4.Position = UDim2.new(0, 0, 0.448669195, 0)
TextButton_4.Size = UDim2.new(0, 90, 0, 42)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Unanchor"
TextButton_4.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_4.TextSize = 20.000
TextButton_4.TextWrapped = true

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 102, 0)
TextButton_5.BorderSizePixel = 3
TextButton_5.Position = UDim2.new(0.348993301, 0, 0.448669195, 0)
TextButton_5.Size = UDim2.new(0, 90, 0, 42)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "kill all"
TextButton_5.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_5.TextSize = 20.000
TextButton_5.TextWrapped = true

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton_6.BorderColor3 = Color3.fromRGB(255,255,0)
TextButton_6.BorderSizePixel = 3
TextButton_6.Position = UDim2.new(0.697986603, 0, 0.448669195, 0)
TextButton_6.Size = UDim2.new(0, 90, 0, 42)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "EMPTY"
TextButton_6.TextColor3 = Color3.fromRGB(255,255,0)
TextButton_6.TextSize = 20.000
TextButton_6.TextWrapped = true

TextButton_7.Parent = Frame
TextButton_7.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton_7.BorderColor3 = Color3.fromRGB(0, 102, 0)
TextButton_7.BorderSizePixel = 3
TextButton_7.Position = UDim2.new(0.0033557415, 0, 0.650190115, 0)
TextButton_7.Size = UDim2.new(0, 90, 0, 42)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "crash (instant)"
TextButton_7.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_7.TextSize = 20.000
TextButton_7.TextWrapped = true

TextButton_8.Parent = Frame
TextButton_8.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton_8.BorderColor3 = Color3.fromRGB(0, 102, 0)
TextButton_8.BorderSizePixel = 3
TextButton_8.Position = UDim2.new(0.345637619, 0, 0.650190115, 0)
TextButton_8.Size = UDim2.new(0, 90, 0, 42)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = "Hint"
TextButton_8.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_8.TextSize = 20.000
TextButton_8.TextWrapped = true

TextButton_9.Parent = Frame
TextButton_9.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton_9.BorderColor3 = Color3.fromRGB(0, 102, 0)
TextButton_9.BorderSizePixel = 3
TextButton_9.Position = UDim2.new(0.694630921, 0, 0.650190115, 0)
TextButton_9.Size = UDim2.new(0, 90, 0, 42)
TextButton_9.Font = Enum.Font.SourceSans
TextButton_9.Text = "Restore sky"
TextButton_9.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_9.TextSize = 20.000
TextButton_9.TextWrapped = true

TextButton_10.Parent = Frame
TextButton_10.BackgroundColor3 = Color3.fromRGB(255,255,0)
TextButton_10.BorderColor3 = Color3.fromRGB(0, 102, 0)
TextButton_10.BorderSizePixel = 3
TextButton_10.Position = UDim2.new(-0.00335564511, 0, 0.866920173, 0)
TextButton_10.Size = UDim2.new(0, 298, 0, 42)
TextButton_10.Font = Enum.Font.SourceSans
TextButton_10.Text = "made by hypzo"
TextButton_10.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_10.TextSize = 20.000
TextButton_10.TextWrapped = true

-- Scripts:

local function UXPMNF_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	function click()
			s = Instance.new("Sky")
			s.Name = "Sky"
			s.Parent = game.Lighting
			s.SkyboxBk = "http://www.roblox.com/asset/?id=10193259554"
		s.SkyboxDn = "http://www.roblox.com/asset/?id=10193259554"
		s.SkyboxFt = "http://www.roblox.com/asset/?id=10193259554"
		s.SkyboxLf = "http://www.roblox.com/asset/?id=10193259554"
		s.SkyboxRt = "http://www.roblox.com/asset/?id=10193259554"
		s.SkyboxUp = "http://www.roblox.com/asset/?id=10193259554"
			game.Lighting.TimeOfDay = 12
		end
	script.Parent.MouseButton1Down:connect(click)
end
coroutine.wrap(UXPMNF_fake_script)()
local function GZPR_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id=10193259554" then
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
					One.Texture = "http://www.roblox.com/asset/?id=10193259554"
					Two.Texture = "http://www.roblox.com/asset/?id=10193259554"
					Three.Texture = "http://www.roblox.com/asset/?id=10193259554"
					Four.Texture = "http://www.roblox.com/asset/?id=10193259554"
					Five.Texture = "http://www.roblox.com/asset/?id=10193259554"
					Six.Texture = "http://www.roblox.com/asset/?id=10193259554"
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
coroutine.wrap(GZPR_fake_script)()
local function THYBV_fake_script() -- TextButton_3.Script 
	local script = Instance.new('Script', TextButton_3)

	function click()
		Game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")	
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(THYBV_fake_script)()
local function CGGNR_fake_script() -- TextButton_4.Script 
	local script = Instance.new('Script', TextButton_4)

	function click()
		function exPro(root)
			for _, v in pairs(root:GetChildren()) do
				if v:IsA("BasePart") then
					v.Material = "Plastic"
					v.Transparency = 1
					v.Anchored = false
					v.Locked = false
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
coroutine.wrap(CGGNR_fake_script)()
local function NIHPAHP_fake_script() -- TextButton_5.Script 
	local script = Instance.new('Script', TextButton_5)

	function click()
		for i,v in pairs(game.Players:GetChildren()) do
			v.Character:BreakJoints()
		end
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(NIHPAHP_fake_script)()
local function DBZZ_fake_script() -- TextButton_6.Script 
	local script = Instance.new('Script', TextButton_6)

	function click()
		local pt = Instance.new("Part")
		pt.BrickColor = BrickColor.new("Silver")
		pt.Anchored = True
		pt.CanCollide = true
		pt.BottomSurface = "Weld"
		pt.Parent = workspace
		pt.Name = (math.random(1,1000000))
		pt.Size = Vector3.new(50, 1, 50)
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(DBZZ_fake_script)()
local function ACZY_fake_script() -- TextButton_7.Script 
	local script = Instance.new('Script', TextButton_7)

	function click()
		basics = {Color3.new(255/255,0/255,0/255),Color3.new(255/255,85/255,0/255),Color3.new(218/255,218/255,0/255),Color3.new(0/255,190/255,0/255),Color3.new(0/255,85/255,255/255),Color3.new(0/255,0/255,127/255),Color3.new(170/255,0/255,255/255),Color3.new(0/255,204/255,204/255),Color3.new(255/255,85/255,127/255),Color3.new(0/255,0/255,0/255),Color3.new(255/255,255/255,255/255)}
		game.Lighting.FogStart = 25
		game.Lighting.FogEnd = 0.1
		while true do
			game.Lighting.FogColor = basics[math.random(1,#basics)]
		end
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(ACZY_fake_script)()
local function IVVUACL_fake_script() -- TextButton_8.Script 
	local script = Instance.new('Script', TextButton_8)

	function click()
	local m = Instance.new("Hint", game.workspace)
	m.Text = "GET FUCKED BY OWLSPLOITS"
	end
	script.Parent.MouseButton1Down:Connect(click)
end
coroutine.wrap(IVVUACL_fake_script)()
local function QEPGVDS_fake_script() -- TextButton_9.Script 
	local script = Instance.new('Script', TextButton_9)

	function click()
		for i,v in pairs(game.Lighting:GetChildren()) do
			v:Destroy()
		end
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(QEPGVDS_fake_script)()