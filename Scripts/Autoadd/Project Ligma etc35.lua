local USPLoader = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local proto = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local ely = Instance.new("ImageButton")
local texte = Instance.new("TextLabel")
local credit = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local ligma = Instance.new("ImageButton")
local TextLabel_2 = Instance.new("TextLabel")
local stigma = Instance.new("ImageButton")
local TextLabel_3 = Instance.new("TextLabel")

USPLoader.Name = "USPLoader"
USPLoader.Parent = game.CoreGui

Frame.Parent = USPLoader
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame.Position = UDim2.new(0.192893401, 0, 0.257107526, 0)
Frame.Size = UDim2.new(0, 762, 0, 410)

proto.Name = "proto"
proto.Parent = Frame
proto.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
proto.BackgroundTransparency = 0.650
proto.Position = UDim2.new(0.0734908134, 0, 0.203753322, 0)
proto.Size = UDim2.new(0, 100, 0, 100)
proto.Image = "rbxassetid://8605189649"

TextLabel.Parent = proto
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.5, 0, 1, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 45)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Protosmasher UI"
TextLabel.TextColor3 = Color3.fromRGB(71, 71, 71)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

ely.Name = "ely"
ely.Parent = Frame
ely.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ely.BackgroundTransparency = 0.650
ely.Position = UDim2.new(0.632545948, 0, 0.203753352, 0)
ely.Size = UDim2.new(0, 100, 0, 100)
ely.Image = "rbxassetid://8550773023"

texte.Name = "texte"
texte.Parent = ely
texte.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
texte.BackgroundTransparency = 1.000
texte.Position = UDim2.new(-0.449999988, 0, 1, 0)
texte.Size = UDim2.new(0, 188, 0, 38)
texte.Font = Enum.Font.SourceSans
texte.Text = "Elysian UI"
texte.TextColor3 = Color3.fromRGB(0, 112, 216)
texte.TextScaled = true
texte.TextSize = 14.000
texte.TextWrapped = true

credit.Name = "credit"
credit.Parent = Frame
credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credit.BackgroundTransparency = 1.000
credit.Position = UDim2.new(0.0341207348, 0, 0, 0)
credit.Size = UDim2.new(0, 736, 0, 50)
credit.Font = Enum.Font.Oswald
credit.Text = "Unrestricted Script Project Loader By LordMuhamad"
credit.TextColor3 = Color3.fromRGB(143, 0, 0)
credit.TextScaled = true
credit.TextSize = 14.000
credit.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(0, 56, 0, 50)
ImageLabel.Image = "rbxassetid://8265774555"

ligma.Name = "ligma"
ligma.Parent = Frame
ligma.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ligma.BackgroundTransparency = 0.650
ligma.Position = UDim2.new(0.368766427, 0, 0.203753322, 0)
ligma.Size = UDim2.new(0, 100, 0, 100)
ligma.Image = "rbxassetid://87162794"

TextLabel_2.Parent = ligma
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.5, 0, 1, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 45)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Project Ligma UI"
TextLabel_2.TextColor3 = Color3.fromRGB(71, 71, 71)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

stigma.Name = "stigma"
stigma.Parent = Frame
stigma.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
stigma.BackgroundTransparency = 0.650
stigma.Position = UDim2.new(0.832020998, 0, 0.203459024, 0)
stigma.Size = UDim2.new(0, 100, 0, 100)
stigma.Image = "rbxassetid://8265774555"

TextLabel_3.Parent = stigma
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(-0.5, 0, 1, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 43)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Stigma UI"
TextLabel_3.TextColor3 = Color3.fromRGB(71, 71, 71)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

-- Scripts:

local function NSFFAZZ_fake_script() -- proto.protoS 
	local script = Instance.new('LocalScript', proto)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://pastebin.com/raw/AkU2spGc'))()
		wait(5)
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(NSFFAZZ_fake_script)()
local function QSEP_fake_script() -- ely.elyS 
	local script = Instance.new('LocalScript', ely)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://pastebin.com/raw/CsFAQyXr'))()
		wait(5)
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(QSEP_fake_script)()
local function MLGUG_fake_script() -- ligma.ligmaS 
	local script = Instance.new('LocalScript', ligma)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://pastebin.com/raw/MUfsexG1'))()
		wait(5)
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(MLGUG_fake_script)()
local function BOELMAO_fake_script() -- stigma.stigmaS 
	local script = Instance.new('LocalScript', stigma)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://pastebin.com/raw/GtghHMkA'))()
		wait(5)
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(BOELMAO_fake_script)()
local function BVIEDA_fake_script() -- Frame.drag 
	local script = Instance.new('LocalScript', Frame)
script.Parent.Draggable = true
end
coroutine.wrap(BVIEDA_fake_script)()