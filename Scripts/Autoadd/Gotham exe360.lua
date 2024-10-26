-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local key = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton1 = Instance.new("TextButton")
local text = Instance.new("TextLabel")
local TextButton2 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local Frame = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

key.Name = "key"
key.Parent = ScreenGui
key.Active = true
key.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
key.Draggable = true
key.Position = UDim2.new(0.0366116166, 415, 0.168316841, 66)
key.Size = UDim2.new(0.3115578, 0, 0.508250833, 0)

TextButton.Parent = key
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.642857134, 0, 0.790584385, 0)
TextButton.Size = UDim2.new(0.297235012, 0, 0.172077924, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "ss execute"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton1.Name = "TextButton1"
TextButton1.Parent = key
TextButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton1.BackgroundTransparency = 1.000
TextButton1.Position = UDim2.new(0.382488489, 0, 0.790584385, 0)
TextButton1.Size = UDim2.new(0.235023037, 0, 0.172077924, 0)
TextButton1.Font = Enum.Font.SourceSans
TextButton1.Text = "clear"
TextButton1.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton1.TextScaled = true
TextButton1.TextSize = 14.000
TextButton1.TextWrapped = true

text.Name = "text"
text.Parent = key
text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
text.Size = UDim2.new(1, 0, 0.152597398, 0)
text.Font = Enum.Font.GothamBold
text.Text = "Gotham executor"
text.TextColor3 = Color3.fromRGB(107, 107, 107)
text.TextScaled = true
text.TextSize = 14.000
text.TextStrokeColor3 = Color3.fromRGB(0, 187, 255)
text.TextStrokeTransparency = 0.000
text.TextWrapped = true

TextButton2.Name = "TextButton2"
TextButton2.Parent = key
TextButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton2.BackgroundTransparency = 1.000
TextButton2.Position = UDim2.new(0.0529953837, 0, 0.790584385, 0)
TextButton2.Size = UDim2.new(0.297235012, 0, 0.172077924, 0)
TextButton2.Font = Enum.Font.SourceSans
TextButton2.Text = "execute"
TextButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.TextScaled = true
TextButton2.TextSize = 14.000
TextButton2.TextWrapped = true

TextLabel.Parent = key
TextLabel.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
TextLabel.BorderSizePixel = 2
TextLabel.Position = UDim2.new(0.0207373295, 0, 0.233834401, 0)
TextLabel.Size = UDim2.new(0.97926265, 0, 0.156105638, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Script"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextBox.Parent = TextLabel
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Position = UDim2.new(0, 0, 0.986981273, 0)
TextBox.Size = UDim2.new(0.999999821, 0, 2.37153006, 0)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.MultiLine = true
TextBox.PlaceholderText = "Console's script..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 255, 0)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.454414934, 0, 0.470297039, 0)
Frame.Size = UDim2.new(0.0717875063, 0, 0.165016502, 0)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 0.990
TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "G"
TextLabel_2.TextColor3 = Color3.fromRGB(89, 198, 220)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function TDQNWU_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Visible = false
	script.Parent.Parent.key.Visible = false
	wait(1)
	script.Parent.Visible = true
	loading=math.random(5, 15)
	spawn(function()
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(15), {Rotation = 555}):Play()
	end)
	wait(loading)
	script.Parent.BackgroundTransparency = 0.5
	script.Parent.TextLabel.TextTransparency = 0.5
	wait(1)
	script.Parent.BackgroundTransparency = 1
	script.Parent.TextLabel.TextTransparency = 1;script.Parent.Visible = false
	wait(1.6)
	script.Parent.Parent.key.Visible = true;
end
coroutine.wrap(TDQNWU_fake_script)()
local function JQGTW_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	
	errorGetWarned=math.random(1, 100)if errorGetWarned==100 then game.Players.LocalPlayer:Kick("error 492: got whilelisted by number")end
	
	--sorry for obfuscating i just obfuscated this executor script of execute ss
	local frame=script.Parent.key
	frame.TextButton.MouseButton1Click:Connect(function()for i, v in pairs(game.ReplicatedStorage:GetDescendants())do if v:IsA("RemoteEvent") and (not string.match(v.Name, "Ban")) and not (v.Parent.Name == "DefaultChatSystemChatEvents") then v:FireServer(frame.TextLabel.TextBox.Text) print(v.Name.. " executed lol") end;end;end)
	
	frame.TextButton2.MouseButton1Click:Connect(function()
		assert(loadstring(frame.TextLabel.TextBox.Text))()
	end)
	
	frame.TextButton1.MouseButton1Click:Connect(function()
		frame.TextLabel.TextBox.Text = ""
	end)
	
	frame.Draggable=(true);frame.Active=true; -- drag script
end
coroutine.wrap(JQGTW_fake_script)()
