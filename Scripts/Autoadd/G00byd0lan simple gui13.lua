local g00by = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")

--Properties:

g00by.Name = "g00by"
g00by.Parent = game.Players.LocalPlayer.PlayerGui

Frame.Parent = g00by
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.0818181857, 0, 0.163987145, 0)
Frame.Size = UDim2.new(0, 197, 0, 386)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(-0.010240728, 0, -0.00202420354, 0)
ImageLabel.Size = UDim2.new(0, 197, 0, 386)
ImageLabel.Image = "http://www.roblox.com/asset/?id=12285082171"

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 0.350
TextButton.Position = UDim2.new(0, 0, 0.156015188, 0)
TextButton.Size = UDim2.new(0, 195, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "skybox"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 0.350
TextButton_2.Position = UDim2.new(-0.0125614554, 0, 0.305274665, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "music"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BackgroundTransparency = 0.400
TextButton_3.Position = UDim2.new(-0.0125614693, 0, 0.453817725, 0)
TextButton_3.Size = UDim2.new(0, 197, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "particals "
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Position = UDim2.new(-0.0125614693, 0, -0.000833027123, 0)
TextLabel.Size = UDim2.new(0, 199, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "g00byd0lan hack"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.BackgroundTransparency = 0.350
TextButton_4.Position = UDim2.new(-0.0125614693, 0, 0.601036251, 0)
TextButton_4.Size = UDim2.new(0, 198, 0, 50)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "decal spam"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000

-- Module Scripts:

local fake_module_scripts = {}

do -- nil.MainModule
	local script = Instance.new('ModuleScript', nil)
	script.Name = "MainModule"
	local function module_script()
		local module = {}
		
		
		function module.g00by(target)
			local target = game.Players:WaitForChild(_G.Target)
			script.g00by:Clone() .Parent = target.Playergui
		end
		return module
		
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function SMIAOGD_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(SMIAOGD_fake_script)()
local function NFCJZ_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		local ID = "http://www.roblox.com/asset/?id=12285157525"
		local Sky = Instance.new("Sky")
		Sky.Parent = game.Lighting
		Sky.Name = "NewSky"
		Sky.MoonTextureId = ID
		Sky.SkyboxBk = ID
		Sky.SkyboxDn = ID
		Sky.SkyboxFt = ID
		Sky.SkyboxLf = ID
		Sky.SkyboxRt = ID
		Sky.SkyboxUp = ID
		Sky.SunTextureId = ID
	end)
end
coroutine.wrap(NFCJZ_fake_script)()
local function UWCEK_fake_script() -- TextButton_2.Sounds 
	local script = Instance.new('Script', TextButton_2)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		local s = Instance.new("Sound") s.Parent = game.Workspace  s.SoundId ="rbxassetid://1847661821" s.Name = "music thingy" s.Looped=true  s:Play()
	end)
end
coroutine.wrap(UWCEK_fake_script)()
local function IGSK_fake_script() -- TextButton_3.Script 
	local script = Instance.new('Script', TextButton_3)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		t3 = "http://www.roblox.com/asset/?id=12285157525"
	
		local p = game.Players:GetChildren()
		local w = game.Workspace:GetChildren()
	
		for i,v in pairs(p) do
			local pe = Instance.new("ParticleEmitter", v.Character.Head)
			pe.Texture = t3
			pe.VelocitySpread = 100
		end
	
		for _, Object in pairs(game.Workspace:GetChildren()) do
			if Object.ClassName == "Part" or "Model" then
				local fe = Instance.new("ParticleEmitter", Object)
				fe.Texture = t3
			end
		end
	end)
end
coroutine.wrap(IGSK_fake_script)()
local function GIHY_fake_script() -- TextButton_4.Script 
	local script = Instance.new('Script', TextButton_4)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	script.Parent.MouseButton1Click:Connect(function()
		local _Workspace = game:GetService("Workspace")
		local Surfaces = {"Front", "Back", "Left", "Right", "Top", "Bottom"}
		local ID = "http://www.roblox.com/asset/?id=12285157525"
	
		for _, Part in pairs(_Workspace:GetDescendants()) do
			if Part:IsA("BasePart") and Part.Name ~= "Camera" and Part.Name ~= "Terrain" then
				for i = 1, #Surfaces do
					local Decal = Instance.new("Decal")
					Decal.Texture = ID
					Decal.ZIndex = 10
					Decal.Name = "Decal"..Surfaces[i]
					Decal.Parent = Part
					Decal.Face = Surfaces[i]
				end
			end
		end
	end)
end
coroutine.wrap(GIHY_fake_script)()
