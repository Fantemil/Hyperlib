-- Gui to Lua
-- Version: 3.2

-- Instances:

local Epikhackingplace = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Zyleximage = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local Close = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Execute = Instance.new("ImageButton")
local Clear = Instance.new("ImageButton")
local Infyeild = Instance.new("TextButton")
local Pockethublite = Instance.new("TextButton")
local OpenGUI = Instance.new("TextButton")

--Properties:

Epikhackingplace.Name = "Epik hacking place"
Epikhackingplace.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Epikhackingplace.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Epikhackingplace
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.283280075, 0, 0.222333238, 0)
Frame.Size = UDim2.new(0, 427, 0, 282)

Zyleximage.Name = "Zylex image"
Zyleximage.Parent = Frame
Zyleximage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Zyleximage.BorderColor3 = Color3.fromRGB(0, 0, 0)
Zyleximage.BorderSizePixel = 0
Zyleximage.Position = UDim2.new(0.358313829, 0, 0.0390070938, 0)
Zyleximage.Size = UDim2.new(0, 100, 0, 68)
Zyleximage.Image = "rbxassetid://18275509952"

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.114754029, 0, 0.28014183, 0)
TextBox.Size = UDim2.new(0, 334, 0, 163)
TextBox.Font = Enum.Font.SourceSans
TextBox.MultiLine = true
TextBox.Text = "print"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.866510451, 0, 0, 0)
Close.Size = UDim2.new(0, 57, 0, 46)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 42, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UICorner.Parent = Frame

Execute.Name = "Execute"
Execute.Parent = Frame
Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.00702568982, 0, 0.858155906, 0)
Execute.Size = UDim2.new(0, 46, 0, 39)
Execute.Image = "rbxassetid://18224532618"

Clear.Name = "Clear"
Clear.Parent = Frame
Clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.121779859, 0, 0.865248144, 0)
Clear.Size = UDim2.new(0, 48, 0, 38)
Clear.Image = "rbxassetid://18224535693"

Infyeild.Name = "Inf yeild"
Infyeild.Parent = Frame
Infyeild.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Infyeild.BorderColor3 = Color3.fromRGB(0, 0, 0)
Infyeild.BorderSizePixel = 0
Infyeild.Position = UDim2.new(0, 0, 0.258865237, 0)
Infyeild.Size = UDim2.new(0, 48, 0, 50)
Infyeild.Font = Enum.Font.SourceSans
Infyeild.Text = "IY"
Infyeild.TextColor3 = Color3.fromRGB(255, 255, 255)
Infyeild.TextSize = 14.000

Pockethublite.Name = "Pocket hub lite"
Pockethublite.Parent = Frame
Pockethublite.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Pockethublite.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pockethublite.BorderSizePixel = 0
Pockethublite.Position = UDim2.new(0, 0, 0.436170101, 0)
Pockethublite.Size = UDim2.new(0, 48, 0, 50)
Pockethublite.Font = Enum.Font.SourceSans
Pockethublite.Text = "Pocket hub"
Pockethublite.TextColor3 = Color3.fromRGB(255, 255, 255)
Pockethublite.TextSize = 10.000

OpenGUI.Name = "Open GUI"
OpenGUI.Parent = Epikhackingplace
OpenGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenGUI.BorderSizePixel = 0
OpenGUI.Position = UDim2.new(0.00729927002, 0, 0.331612915, 0)
OpenGUI.Size = UDim2.new(0, 68, 0, 50)
OpenGUI.Font = Enum.Font.SourceSans
OpenGUI.Text = "Open GUI"
OpenGUI.TextColor3 = Color3.fromRGB(0, 0, 0)
OpenGUI.TextSize = 14.000

-- Scripts:

local function IIFWZR_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
end
coroutine.wrap(IIFWZR_fake_script)()
local function TLVZARU_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)()
	end)
end
coroutine.wrap(TLVZARU_fake_script)()
local function IVBSDB_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)

	local button = script.Parent
	local textbox = script.Parent.Parent.TextBox
	button.MouseButton1Click:Connect(function()
		textbox.Text = ""
	end)
end
coroutine.wrap(IVBSDB_fake_script)()
local function IVOL_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(IVOL_fake_script)()
local function TSIUB_fake_script() -- Infyeild.LocalScript 
	local script = Instance.new('LocalScript', Infyeild)

	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)
end
coroutine.wrap(TSIUB_fake_script)()
local function TCGHWWL_fake_script() -- Pockethublite.LocalScript 
	local script = Instance.new('LocalScript', Pockethublite)

	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Ali-droidlol/Pocket-hub-lite/main/Pocket%20hub%20lite"))()
	end)
end
coroutine.wrap(TCGHWWL_fake_script)()
local function PDBPFDT_fake_script() -- OpenGUI.LocalScript 
	local script = Instance.new('LocalScript', OpenGUI)

	local frame = script.Parent.Parent.Frame  -- change âTestâ to the name of the frane
	local open = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if frame.Visible == false then
			frame.Visible = true
		end
	end)
	
end
coroutine.wrap(PDBPFDT_fake_script)()
