--boobs lol

local ScreenGui = Instance.new("ScreenGui")

local Base = Instance.new("Frame")

local Top = Instance.new("Frame")

local First = Instance.new("TextLabel")

local Second = Instance.new("TextLabel")

local Location = Instance.new("TextLabel")

local Exit = Instance.new("TextButton")

local HomeContainer = Instance.new("Frame")

local Players = Instance.new("Frame")

local ImageLabel = Instance.new("ImageLabel")

local TextLabel = Instance.new("TextLabel")

local Mask = Instance.new("TextButton")

local Server = Instance.new("Frame")

local ImageLabel_2 = Instance.new("ImageLabel")

local TextLabel_2 = Instance.new("TextLabel")

local Mask_2 = Instance.new("TextButton")

local LocalPlayer = Instance.new("Frame")

local ImageLabel_3 = Instance.new("ImageLabel")

local TextLabel_3 = Instance.new("TextLabel")

local Mask_3 = Instance.new("TextButton")

local Scripts = Instance.new("Frame")

local ImageLabel_4 = Instance.new("ImageLabel")

local TextLabel_4 = Instance.new("TextLabel")

local Mask_4 = Instance.new("TextButton")

local Miscellaneous = Instance.new("Frame")

local ImageLabel_5 = Instance.new("ImageLabel")

local TextLabel_5 = Instance.new("TextLabel")

local Mask_5 = Instance.new("TextButton")

local Settings = Instance.new("Frame")

local ImageLabel_6 = Instance.new("ImageLabel")

local TextLabel_6 = Instance.new("TextLabel")

local Mask_6 = Instance.new("TextButton")

local Navigator = Instance.new("ScrollingFrame")

local Item = Instance.new("TextButton")

local ServerContainer = Instance.new("ScrollingFrame")

local dd = Instance.new("TextButton")

local ImageLabel_7 = Instance.new("ImageLabel")

local LocalPlayerContainer = Instance.new("ScrollingFrame")

local PlayersContainer = Instance.new("ScrollingFrame")



-- Properties

local hist = game:GetService("LogService"):GetLogHistory()

local eiss = false

for i,v in pairs(hist) do

	if string.find(v["message"]:lower(), "eiss") then

		eiss = true

		warn("Detected EISS, Parenting to PlayerGui")

	end

end

if eiss then

	ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

	game.StarterGui.ResetPlayerGuiOnSpawn = false

else

	ScreenGui.Parent = game.CoreGui

end



Base.Name = "Base"

Base.Parent = ScreenGui

Base.Active = true

Base.BackgroundColor3 = Color3.new(0.054902, 0.0901961, 0.113725)

Base.BorderColor3 = Color3.new(0.0156863, 0.027451, 0.0352941)

Base.BorderSizePixel = 2

Base.Draggable = true

Base.Position = UDim2.new(0, 50, 0, 250)

Base.Selectable = true

Base.Size = UDim2.new(0, 450, 0, 250)



Top.Name = "Top"

Top.Parent = Base

Top.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

Top.BackgroundTransparency = 0.5

Top.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)

Top.Position = UDim2.new(0, 10, 0, 7)

Top.Size = UDim2.new(1, -20, 0, 20)



First.Name = "First"

First.Parent = Top

First.BackgroundColor3 = Color3.new(1, 1, 1)

First.BackgroundTransparency = 1

First.BorderColor3 = Color3.new(0.32549, 0.313726, 0.313726)

First.Size = UDim2.new(1, 0, 1, 0)

First.Font = Enum.Font.SourceSans

First.FontSize = Enum.FontSize.Size18

First.Text = "  T0PK3K 3.0"

First.TextColor3 = Color3.new(0.721569, 0.027451, 0.211765)

First.TextStrokeTransparency = 0

First.TextXAlignment = Enum.TextXAlignment.Left



Second.Name = "Second"

Second.Parent = Top

Second.BackgroundColor3 = Color3.new(1, 1, 1)

Second.BackgroundTransparency = 1

Second.BorderColor3 = Color3.new(0.32549, 0.313726, 0.313726)

Second.Position = UDim2.new(1, -125, 0, 0)

Second.Size = UDim2.new(0, 100, 1, 0)

Second.Font = Enum.Font.SourceSans

Second.FontSize = Enum.FontSize.Size18

Second.Text = "Cerberus Edition"

Second.TextColor3 = Color3.new(0.721569, 0.027451, 0.211765)

Second.TextStrokeTransparency = 0

Second.TextXAlignment = Enum.TextXAlignment.Left



Location.Name = "Location"

Location.Parent = Top

Location.BackgroundColor3 = Color3.new(1, 1, 1)

Location.BackgroundTransparency = 1

Location.BorderColor3 = Color3.new(0.32549, 0.313726, 0.313726)

Location.Position = UDim2.new(0, 90, 0, 0)

Location.Size = UDim2.new(1, -200, 1, 0)

Location.Font = Enum.Font.SourceSansBold

Location.FontSize = Enum.FontSize.Size18

Location.Text = "Home"

Location.TextColor3 = Color3.new(0.588235, 0.0196078, 0.172549)

Location.TextStrokeTransparency = 0



Exit.Name = "Exit"

Exit.Parent = Top

Exit.BackgroundColor3 = Color3.new(0.588235, 0.0196078, 0.172549)

Exit.BorderSizePixel = 0

Exit.Position = UDim2.new(1, -18, 0, 2)

Exit.Size = UDim2.new(0, 16, 0, 16)

Exit.Font = Enum.Font.SourceSansBold

Exit.FontSize = Enum.FontSize.Size14

Exit.Text = "X"

Exit.TextColor3 = Color3.new(1, 1, 1)

Exit.MouseButton1Down:connect(function()

	Base.Parent = nil

end)



HomeContainer.Name = "HomeContainer"

HomeContainer.Parent = Base

HomeContainer.BackgroundColor3 = Color3.new(1, 1, 1)

HomeContainer.BackgroundTransparency = 1

HomeContainer.Position = UDim2.new(0, 10, 0, 50)

HomeContainer.Size = UDim2.new(1, -20, 1, -65)



Players.Name = "Players"

Players.Parent = HomeContainer

Players.BackgroundColor3 = Color3.new(1, 1, 1)

Players.BackgroundTransparency = 1

Players.Position = UDim2.new(0.666000009, 10, 0, 0)

Players.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel.Parent = Players

ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel.BackgroundTransparency = 1

ImageLabel.Position = UDim2.new(0.5, -25, 0, 0)

ImageLabel.Size = UDim2.new(0, 50, 0, 50)

ImageLabel.Image = "rbxassetid://573066980"

ImageLabel.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel.Parent = Players

TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel.BackgroundTransparency = 1

TextLabel.Position = UDim2.new(0, 10, 1, -40)

TextLabel.Size = UDim2.new(1, -20, 0, 20)

TextLabel.Font = Enum.Font.SourceSansBold

TextLabel.FontSize = Enum.FontSize.Size24

TextLabel.Text = "Players"

TextLabel.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask.Name = "Mask"

Mask.Parent = Players

Mask.BackgroundColor3 = Color3.new(1, 1, 1)

Mask.BackgroundTransparency = 1

Mask.Position = UDim2.new(0, 27, 0, 0)

Mask.Size = UDim2.new(1, -56, 0, 65)

Mask.Font = Enum.Font.SourceSans

Mask.FontSize = Enum.FontSize.Size14

Mask.Text = ""



Server.Name = "Server"

Server.Parent = HomeContainer

Server.BackgroundColor3 = Color3.new(1, 1, 1)

Server.BackgroundTransparency = 1

Server.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_2.Parent = Server

ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_2.BackgroundTransparency = 1

ImageLabel_2.Position = UDim2.new(0.5, -23, 0, 0)

ImageLabel_2.Size = UDim2.new(0, 46, 0, 46)

ImageLabel_2.Image = "rbxassetid://573084509"

ImageLabel_2.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_2.Parent = Server

TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_2.BackgroundTransparency = 1

TextLabel_2.Position = UDim2.new(0, 10, 1, -40)

TextLabel_2.Size = UDim2.new(1, -20, 0, 20)

TextLabel_2.Font = Enum.Font.SourceSansBold

TextLabel_2.FontSize = Enum.FontSize.Size24

TextLabel_2.Text = "Server"

TextLabel_2.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_2.Name = "Mask"

Mask_2.Parent = Server

Mask_2.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_2.BackgroundTransparency = 1

Mask_2.Position = UDim2.new(0, 27, 0, 0)

Mask_2.Size = UDim2.new(1, -56, 0, 65)

Mask_2.Font = Enum.Font.SourceSans

Mask_2.FontSize = Enum.FontSize.Size14

Mask_2.Text = ""



LocalPlayer.Name = "LocalPlayer"

LocalPlayer.Parent = HomeContainer

LocalPlayer.BackgroundColor3 = Color3.new(1, 1, 1)

LocalPlayer.BackgroundTransparency = 1

LocalPlayer.Position = UDim2.new(0.333000004, 10, 0, 0)

LocalPlayer.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_3.Parent = LocalPlayer

ImageLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_3.BackgroundTransparency = 1

ImageLabel_3.Position = UDim2.new(0.5, -25, 0, 0)

ImageLabel_3.Size = UDim2.new(0, 50, 0, 50)

ImageLabel_3.Image = "rbxassetid://573078228"

ImageLabel_3.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_3.Parent = LocalPlayer

TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_3.BackgroundTransparency = 1

TextLabel_3.Position = UDim2.new(0, 10, 1, -40)

TextLabel_3.Size = UDim2.new(1, -20, 0, 20)

TextLabel_3.Font = Enum.Font.SourceSansBold

TextLabel_3.FontSize = Enum.FontSize.Size24

TextLabel_3.Text = "LocalPlayer"

TextLabel_3.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_3.Name = "Mask"

Mask_3.Parent = LocalPlayer

Mask_3.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_3.BackgroundTransparency = 1

Mask_3.Position = UDim2.new(0, 27, 0, 0)

Mask_3.Size = UDim2.new(1, -56, 0, 65)

Mask_3.Font = Enum.Font.SourceSans

Mask_3.FontSize = Enum.FontSize.Size14

Mask_3.Text = ""



Scripts.Name = "Scripts"

Scripts.Parent = HomeContainer

Scripts.BackgroundColor3 = Color3.new(1, 1, 1)

Scripts.BackgroundTransparency = 1

Scripts.Position = UDim2.new(0, 0, 0.5, 0)

Scripts.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_4.Parent = Scripts

ImageLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_4.BackgroundTransparency = 1

ImageLabel_4.Position = UDim2.new(0.5, -25, 0, 0)

ImageLabel_4.Size = UDim2.new(0, 50, 0, 50)

ImageLabel_4.Image = "rbxassetid://573081437"

ImageLabel_4.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_4.Parent = Scripts

TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_4.BackgroundTransparency = 1

TextLabel_4.Position = UDim2.new(0, 10, 1, -40)

TextLabel_4.Size = UDim2.new(1, -20, 0, 20)

TextLabel_4.Font = Enum.Font.SourceSansBold

TextLabel_4.FontSize = Enum.FontSize.Size24

TextLabel_4.Text = "Scripts"

TextLabel_4.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_4.Name = "Mask"

Mask_4.Parent = Scripts

Mask_4.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_4.BackgroundTransparency = 1

Mask_4.Position = UDim2.new(0, 27, 0, 0)

Mask_4.Size = UDim2.new(1, -56, 0, 65)

Mask_4.Font = Enum.Font.SourceSans

Mask_4.FontSize = Enum.FontSize.Size14

Mask_4.Text = ""



Miscellaneous.Name = "Miscellaneous"

Miscellaneous.Parent = HomeContainer

Miscellaneous.BackgroundColor3 = Color3.new(1, 1, 1)

Miscellaneous.BackgroundTransparency = 1

Miscellaneous.Position = UDim2.new(0.333000004, 10, 0.5, 0)

Miscellaneous.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_5.Parent = Miscellaneous

ImageLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_5.BackgroundTransparency = 1

ImageLabel_5.Position = UDim2.new(0.5, -23, 0, 0)

ImageLabel_5.Size = UDim2.new(0, 46, 0, 46)

ImageLabel_5.Image = "rbxassetid://573087376"

ImageLabel_5.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_5.Parent = Miscellaneous

TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_5.BackgroundTransparency = 1

TextLabel_5.Position = UDim2.new(0, 10, 1, -40)

TextLabel_5.Size = UDim2.new(1, -20, 0, 20)

TextLabel_5.Font = Enum.Font.SourceSansBold

TextLabel_5.FontSize = Enum.FontSize.Size24

TextLabel_5.Text = "Miscellaneous"

TextLabel_5.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_5.Name = "Mask"

Mask_5.Parent = Miscellaneous

Mask_5.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_5.BackgroundTransparency = 1

Mask_5.Position = UDim2.new(0, 27, 0, 0)

Mask_5.Size = UDim2.new(1, -56, 0, 65)

Mask_5.Font = Enum.Font.SourceSans

Mask_5.FontSize = Enum.FontSize.Size14

Mask_5.Text = ""



Settings.Name = "Settings"

Settings.Parent = HomeContainer

Settings.BackgroundColor3 = Color3.new(1, 1, 1)

Settings.BackgroundTransparency = 1

Settings.Position = UDim2.new(0.666000009, 10, 0.5, 0)

Settings.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_6.Parent = Settings

ImageLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_6.BackgroundTransparency = 1

ImageLabel_6.Position = UDim2.new(0.5, -23, 0, 0)

ImageLabel_6.Size = UDim2.new(0, 46, 0, 46)

ImageLabel_6.Image = "rbxassetid://573090294"

ImageLabel_6.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_6.Parent = Settings

TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_6.BackgroundTransparency = 1

TextLabel_6.Position = UDim2.new(0, 10, 1, -40)

TextLabel_6.Size = UDim2.new(1, -20, 0, 20)

TextLabel_6.Font = Enum.Font.SourceSansBold

TextLabel_6.FontSize = Enum.FontSize.Size24

TextLabel_6.Text = "Settings"

TextLabel_6.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_6.Name = "Mask"

Mask_6.Parent = Settings

Mask_6.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_6.BackgroundTransparency = 1

Mask_6.Position = UDim2.new(0, 27, 0, 0)

Mask_6.Size = UDim2.new(1, -56, 0, 65)

Mask_6.Font = Enum.Font.SourceSans

Mask_6.FontSize = Enum.FontSize.Size14

Mask_6.Text = ""



Navigator.Name = "Navigator"

Navigator.Parent = Base

Navigator.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

Navigator.BackgroundTransparency = 0.5

Navigator.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)

Navigator.Position = UDim2.new(0, 10, 0, 35)

Navigator.Size = UDim2.new(0, 125, 1, -45)

Navigator.Visible = false

Navigator.BottomImage = "rbxassetid://573102620"

Navigator.MidImage = "rbxassetid://573102620"

Navigator.ScrollBarThickness = 5

Navigator.TopImage = "rbxassetid://573102620"



Item.Name = "Item"

Item.Parent = Navigator

Item.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

Item.BackgroundTransparency = 0.5

Item.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)

Item.Position = UDim2.new(0, 5, 0, 5)

Item.Size = UDim2.new(1, -15, 0, 20)

Item.Selected = true

Item.Font = Enum.Font.SourceSans

Item.FontSize = Enum.FontSize.Size14

Item.Text = "NavItem"

Item.TextColor3 = Color3.new(0.721569, 0.721569, 0.721569)



ServerContainer.Name = "ServerContainer"

ServerContainer.Parent = Base

ServerContainer.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

ServerContainer.BackgroundTransparency = 0.5

ServerContainer.Position = UDim2.new(0, 140, 0, 35)

ServerContainer.Size = UDim2.new(1, -150, 1, -45)

ServerContainer.Visible = false

ServerContainer.BottomImage = "rbxassetid://573102620"

ServerContainer.MidImage = "rbxassetid://573102620"

ServerContainer.ScrollBarThickness = 5

ServerContainer.TopImage = "rbxassetid://573102620"



dd.Name = "dd"

dd.Parent = ServerContainer

dd.BackgroundColor3 = Color3.new(0.0196078, 0.0313726, 0.0431373)

dd.Position = UDim2.new(0, 6, 0, 6)

dd.Size = UDim2.new(0.5, -10, 0, 20)

dd.Visible = false

dd.Font = Enum.Font.SourceSans

dd.FontSize = Enum.FontSize.Size14

dd.Text = "Troll Spam"

dd.TextColor3 = Color3.new(0.780392, 0.780392, 0.780392)

dd.TextStrokeTransparency = 0.5



ImageLabel_7.Parent = dd

ImageLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_7.BackgroundTransparency = 1

ImageLabel_7.Position = UDim2.new(0, 2, 0, 0)

ImageLabel_7.Size = UDim2.new(0, 20, 0, 20)

ImageLabel_7.Image = "rbxassetid://133293265"



LocalPlayerContainer.Name = "LocalPlayerContainer"

LocalPlayerContainer.Parent = Base

LocalPlayerContainer.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

LocalPlayerContainer.BackgroundTransparency = 0.5

LocalPlayerContainer.Position = UDim2.new(0, 140, 0, 35)

LocalPlayerContainer.Size = UDim2.new(1, -150, 1, -45)

LocalPlayerContainer.Visible = false

LocalPlayerContainer.BottomImage = "rbxassetid://573102620"

LocalPlayerContainer.MidImage = "rbxassetid://573102620"

LocalPlayerContainer.ScrollBarThickness = 5

LocalPlayerContainer.TopImage = "rbxassetid://573102620"



PlayersContainer.Name = "PlayersContainer"

PlayersContainer.Parent = Base

PlayersContainer.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

PlayersContainer.BackgroundTransparency = 0.5

PlayersContainer.Position = UDim2.new(0, 140, 0, 35)

PlayersContainer.Size = UDim2.new(1, -150, 1, -45)

PlayersContainer.Visible = false

PlayersContainer.BottomImage = "rbxassetid://573102620"

PlayersContainer.MidImage = "rbxassetid://573102620"

PlayersContainer.ScrollBarThickness = 5

PlayersContainer.TopImage = "rbxassetid://573102620"



function MakeContainer(n)

	local cont = PlayersContainer:Clone()

	cont.Name = n .. 'Container'

	cont.Parent = Base

	return cont

end



local ScriptsContainer = MakeContainer('Scripts')

local MiscContainer = MakeContainer('Miscellaneous')



local topkek = {}

topkek.store = {}

topkek.cache = {}

topkek.libgui = {}

topkek.libsettings = {}

topkek.libutil = {}

topkek.libwindows = {}

topkek.libcmd = {}

--[[ gay ass dropdown lib i made a while ago ]]--

dropdown = {}

dropdown.new = function(gui, items, placeholder)

	local self = {}

	self.value = placeholder

	self.items = items

	self.gui = gui

	

	if self.gui:FindFirstChild("__DROPDOWN") then

		self.gui["__DROPDOWN"]:Destroy()

	end

	

	self.debug = false

	

	self.gui.Text = placeholder

	self.gui.BorderSizePixel = 0

	self.gui.ZIndex = 1

	

	self.textcolor = self.gui.TextColor3

	function self.make()

		if self.gui:FindFirstChild("__DROPDOWN") then

			self.gui["__DROPDOWN"]:Destroy()

		end

			

		

		self.selectgui = Instance.new("ScrollingFrame")

		self.selectgui.Parent = self.gui

		self.selectgui.Name = "__DROPDOWN"

		self.selectgui.Size = UDim2.new(1, 0, 0, 100)

		self.selectgui.Position = UDim2.new(0, 0, 0, self.gui.AbsoluteSize.Y)

		self.selectgui.BorderSizePixel = 0

		self.selectgui.ZIndex = 2

		self.selectgui.BackgroundTransparency = self.gui.BackgroundTransparency

		self.selectgui.BackgroundColor3 = self.gui.BackgroundColor3

		self.selectgui.Visible = false

		self.selectgui.CanvasSize = UDim2.new(0, 0, 0, (#self.items-1) * 20)

		self.selectgui.ScrollBarThickness = 5

		

		if #self.items < 4 then

			self.selectgui.CanvasSize = UDim2.new(0, 0, 0, 0)

			self.selectgui.Size = UDim2.new(1, 0, 0, (#self.items-1) * 20)

		end

		

		self.item = Instance.new("TextButton")

		self.item.Size = UDim2.new(1, 0, 0, 20)

		self.item.Position = UDim2.new(0, 0, 0, 0)

		self.item.BackgroundTransparency = self.gui.BackgroundTransparency - 0.1

		self.item.BackgroundColor3 = self.gui.BackgroundColor3

		self.item.BorderSizePixel = 0

		self.item.ZIndex = 2

		self.item.TextColor3 = self.gui.TextColor3

		self.item.Font = Enum.Font.SourceSans

		self.item.FontSize = Enum.FontSize.Size14

		

		self.curitem = nil

		

		for i, v in pairs(self.items) do

			if not (v == self.value) then

				local ti = self.item:Clone()

				ti.Parent = self.selectgui

				if i == 1 then i = 2 end

				ti.Position = UDim2.new(0, 0, 0, (i - 2) * 20)

				ti.Text = v

				ti.MouseButton1Down:connect(function()

					self.value = v

					self.open = false

					self.selectgui.Visible = false

					self.gui.Text = v

					self.make()

				end)

			end

		end

	end

	

	self.getvalue = function()

		return self.value

	end

	

	self.update = function(itms)

		self.items = itms

		self.make()

	end



	self.open = false	

	

	self.gui.MouseButton1Down:connect(function()

		if self.open == false then

			self.selectgui.CanvasPosition = Vector2.new(0, 0)

			self.selectgui.Visible = true

			self.open = true

		else

			self.selectgui.Visible = false

			self.open = false

		end

	end)

	

	self.make()

	return self

end

--[[ libsettings lole ]]--

topkek.libsettings.store = {}

function topkek.libsettings:getSetting(k)

	return topkek.libsettings.store[k]

end



function topkek.libsettings:setSetting(k,v)

	topkek.libsettings.store[k]=v

end



-- [[ libutil ]] --

function topkek.libutil:createObject(o, p)

	local a, b = pcall(function()

		Instance.new(o)

	end)

	if not a then

		return

	end

	local obj = Instance.new(o)

	for prop, val in pairs(p) do

		pcall(function()

			obj[prop] = val 

		end)

	end

	return obj

end

function topkek.libutil:Color3(r,g,b)

	return Color3.new(r/255,g/255,b/255)

end; color3 = function(r,g,b) return topkek.libutil:Color3(r,g,b) end

function topkek.libutil:recurseDecal(img)--topkek2.0 code tbh

	img = 'rbxassetid://' .. img

	local function skybox(x)

		local sky = Instance.new("Sky",game.Lighting)

		local fcs={"Bk","Dn","Ft","Lf","Rt","Up"}

		for i,v in pairs(fcs) do

			sky["Skybox"..v]=x

		end

	end

	local function particle(p, b)

		local a = Instance.new("ParticleEmitter", p)

		a.Rate = 500

		a.Lifetime = NumberRange.new(20, 30)

		a.VelocitySpread = 200

		a.Texture = b

	end

			

	local function decal(p, b)

		local sides = {"Back", "Bottom", "Front", "Left", "Right", "Top"}

		for i, v in pairs(sides) do

			local a = Instance.new("Decal", p)

			a.Texture = b

			a.Face = v

		end

	end

			

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function() -- 'error occured, no output from Lua' LOLE

				if v:IsA("BasePart") then

					particle(v, img)

					decal(v, img)

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

			

	recurse(game)

	skybox(img)

end

function topkek.libutil:recurseRemove(type_)

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function()

				if v:IsA(type_) then

					v:Destroy()

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

	recurse(game)

end

function topkek.libutil:recurseSet(type_,prop,val)

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function()

				if v:IsA(type_) then

					v[prop]=val

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

	recurse(game)

end

function topkek.libutil:recurseSetObj(obj,type_,prop,val)

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function()

				if v:IsA(type_) then

					v[prop]=val

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

	recurse(obj)

end

function topkek.libutil:recurseFunc(type_,func)

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function()

				if v:IsA(type_) then

					func(v)

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

	recurse(game)

end

function topkek.libutil:Play(id)

	local mu = Instance.new("Sound", game.Workspace)

	mu.Volume = 1

	mu.Looped = true

	mu.Pitch = 1

	mu.SoundId = "rbxassetid://"..tostring(id)

	mu:Play()

end

function topkek.libutil:GetPlayerList()

	local list = {'Everybody'}

	for i, v in pairs(game:service'Players':GetPlayers()) do

		table.insert(list, v.Name)

	end

	return list

end

function topkek.libutil:doPlayers(drop, func)

	local str = drop.getvalue()

	local plrs = {}

	if str == 'Everybody' then

		plrs = game:GetService('Players'):GetPlayers()

	else

		plrs = {game:GetService('Players'):FindFirstChild(str)}

	end

	for i, v in pairs(plrs) do

		func(v)

	end

end

function topkek.libutil:insert(id)

	if topkek.cache[id] then return topkek.cache[id] end -- moist

	local obj = game:service'InsertService':LoadAsset(id):GetChildren()[1]

	topkek.cache[id] = obj:Clone()

	return obj

end; insert = function(id) return topkek.libutil:insert(id) end

function topkek.libutil:getTorso(plr) --r15 compatibility lole

	if plr.Character then

		if plr.Character:FindFirstChild('UpperTorso') then

			return plr.Character.UpperTorso

		else

			return plr.Character.Torso

		end

	end

end

function topkek.libutil:weiner(plr)

	plr=plr.Character

	Shaft=Instance.new("Part", plr)

	Shaft.Name='Shaft'

	Shaft.Size=Vector3.new(1, 2.5, 1)

	Shaft.TopSurface=0

	Shaft.BottomSurface=0

	Shaft.CanCollide=true

	Cyln=Instance.new("CylinderMesh", Shaft)

	Cyln.Scale=Vector3.new(0.5,0.7,0.5)

	Instance.new("Weld", plr)

	plr.Weld.Part0=plr:FindFirstChild("Torso") or plr:FindFirstChild("LowerTorso")

	plr.Weld.Part1=plr.Shaft 

	plr.Weld.C0=CFrame.new(0,-0.35,-0.9)*CFrame.fromEulerAnglesXYZ(2.2,0,0) 

	Shaft.BrickColor=BrickColor.new("Pastel brown")

	Tip=Instance.new("Part", plr)

	Tip.Name='Tip'

	Tip.TopSurface=0

	Tip.BottomSurface=0

	Tip.Size=Vector3.new(1, 1, 1)

	Tip.CanCollide=true

	Tip.Touched:connect(function(prt) if prt.Parent~=player then spawn(function() for i=1, 5 do local pert=Instance.new("Part", player) pert.CFrame=CFrame.new(prt.Position) pert.CanCollide=true local mesh=Instance.new("BlockMesh", pert) mesh.Scale=Vector3.new(0.2,0.2,0.2) pert.BrickColor=BrickColor.new("White") end end) end end)

	Cyln2=Instance.new("SpecialMesh", Tip)

	Cyln2.MeshType='Sphere'

	Cyln2.Scale=Vector3.new(0.6,0.6,0.6)

	Instance.new("Weld", plr).Name='Weld2'

	plr.Weld2.Part0=plr.Shaft

	plr.Weld2.Part1=plr.Tip 

	plr.Weld2.C0=CFrame.new(0,-.9,0)

	Tip.BrickColor=BrickColor.new("Pink")

	-----

	Ball1=Instance.new("Part", plr)

	Ball1.Name='Ball1'

	Ball1.Size=Vector3.new(1, 1, 1)

	Ball1.TopSurface=0

	Ball1.BottomSurface=0

	Cyln3=Instance.new("SpecialMesh", Ball1)

	Cyln3.MeshType='Sphere'

	Cyln3.Scale=Vector3.new(0.4,0.4,0.4)

	Instance.new("Weld", plr).Name='Weld3'

	plr.Weld3.Part0=plr.Shaft

	plr.Weld3.Part1=plr.Ball1 

	plr.Weld3.C0=CFrame.new(0.225,.4,0.2)

	Ball1.BrickColor=BrickColor.new("Pastel brown")

	-----

	Ball2=Instance.new("Part", plr)

	Ball2.Name='Ball2'

	Ball2.Size=Vector3.new(1, 1, 1)

	Ball2.TopSurface=0

	Ball2.BottomSurface=0

	Cyln3=Instance.new("SpecialMesh", Ball2)

	Cyln3.MeshType='Sphere'

	Cyln3.Scale=Vector3.new(0.4,0.4,0.4)

	Instance.new("Weld", plr).Name='Weld4'

	plr.Weld4.Part0=plr.Shaft

	plr.Weld4.Part1=plr.Ball2 

	plr.Weld4.C0=CFrame.new(-0.225,.4,0.2)

	Ball2.BrickColor=BrickColor.new("Pastel brown")

end

function topkek.libutil:scalePlayer(plr, sz)

	local pchar = plr.Character

	if pchar:FindFirstChild("UpperTorso") then

		warn("Player [" ..plr.Name.. "] is R15.")

		return

	end

	local function scale(chr,scl)

	

		for _,v in pairs(pchar:GetChildren()) do

			if v:IsA("Hat") then

				v:Clone()

				v.Parent = game.Lighting

			end

		end

			

	    local Head = chr['Head']

	    local Torso = chr['Torso']

	    local LA = chr['Left Arm']

	    local RA = chr['Right Arm']

	    local LL = chr['Left Leg']

	    local RL = chr['Right Leg']

	    local HRP = chr['HumanoidRootPart']

	

	    wait(0.1)

	   

	    Head.formFactor = 3

	    Torso.formFactor = 3

	    LA.formFactor = 3

	    RA.formFactor = 3

	    LL.formFactor = 3

	    RL.formFactor = 3

	    HRP.formFactor = 3

	    

	    Head.Size = Vector3.new(scl * 2, scl, scl)

	    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)

	    LA.Size = Vector3.new(scl, scl * 2, scl)

	    RA.Size = Vector3.new(scl, scl * 2, scl)

	    LL.Size = Vector3.new(scl, scl * 2, scl)

	    RL.Size = Vector3.new(scl, scl * 2, scl)

	    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)

	    

	    local Motor1 = Instance.new('Motor6D', Torso)

	    Motor1.Part0 = Torso

	    Motor1.Part1 = Head

    	Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)

    	Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)

    	Motor1.Name = "Neck"

			    

    	local Motor2 = Instance.new('Motor6D', Torso)

    	Motor2.Part0 = Torso

    	Motor2.Part1 = LA

    	Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)

    	Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)

    	Motor2.Name = "Left Shoulder"

    	

    	local Motor3 = Instance.new('Motor6D', Torso)

   		Motor3.Part0 = Torso

    	Motor3.Part1 = RA

    	Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)

    	Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)

    	Motor3.Name = "Right Shoulder"

    	

    	local Motor4 = Instance.new('Motor6D', Torso)

    	Motor4.Part0 = Torso

    	Motor4.Part1 = LL

    	Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)

    	Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)

    	Motor4.Name = "Left Hip"

    	

    	local Motor5 = Instance.new('Motor6D', Torso)

    	Motor5.Part0 = Torso

    	Motor5.Part1 = RL

    	Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)

    	Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)

    	Motor5.Name = "Right Hip"

    	

    	local Motor6 = Instance.new('Motor6D', HRP)

    	Motor6.Part0 = HRP

    	Motor6.Part1 = Torso

    	Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)

    	Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)

    	    

	end

	

	scale(pchar, sz)

	

	for _,v in pairs(game.Lighting:GetChildren()) do

		if v:IsA("Hat") then

			v.Parent = pchar

		end

	end

end

function topkek.libutil:dickShooter()

	Player = game:GetService("Players").LocalPlayer

	Character = Player.Character

	PlayerGui = Player.PlayerGui

	Backpack = Player.Backpack

	Torso = Character.Torso

	Head = Character.Head

	LeftArm = Character["Left Arm"]

	LeftLeg = Character["Left Leg"]

	RightArm = Character["Right Arm"]

	RightLeg = Character["Right Leg"]

	LS = Torso["Left Shoulder"]

	LH = Torso["Left Hip"]

	RS = Torso["Right Shoulder"]

	RH = Torso["Right Hip"]

		Tool = Instance.new("HopperBin")

		Tool.Parent = Backpack

		Tool.Name = "Painis"

	Bin = Tool

	so = function(id, par, vol, pit)

		

		coroutine.resume(coroutine.create(function()

			

			local sou = Instance.new("Sound", par or workspace)

			sou.Volume = vol

			sou.Pitch = pit or 1

			sou.SoundId = id

			wait()

			sou:play()

			wait(6)

			sou:Remove()

		end

	))

	end

	

	ob1d = function(mouse)

		

		size = 0.5

		mode = 1

		color = BrickColor.new(Color3.new(math.random(), math.random(), math.random()))

		mo = Instance.new("Model")

		mo.Name = "EEEEUGH HA HA HAAAAA"

		mo.Parent = workspace

		game.Debris:AddItem(mo, 10)

		p = Instance.new("Seat")

		p.Name = "Torso"

		p.Size = Vector3.new(14, 50, 14) * size

		p.BrickColor = color

		m = Instance.new("SpecialMesh")

		m.Parent = p

		p.Name = "Torso"

		p.Parent = mo

		p = Instance.new("Seat")

		p.Shape = "Ball"

		p.Size = Vector3.new(24, 24, 24) * size

		p.BrickColor = color

		p.Name = "Legball"

		for i = 1, 10 do

			lol = Instance.new("Seat")

			lol.BrickColor = BrickColor:Black()

			lol.Name = "SEE?"

			lol.Parent = mo

			lol.Size = Vector3.new(1, math.random(30, 40), 1) * size

			w = Instance.new("Weld")

			w.Part0 = p

			w.Part1 = lol

			w.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))

			w.Parent = w.Part0

		end

		p.Parent = mo

		w = Instance.new("Weld")

		w.Part0 = mo.Torso

		w.Part1 = p

		w.C0 = CFrame.new(16 * (size / 2), -48 * (size / 2), 0)

		w.Parent = w.Part0

		p = Instance.new("Seat")

		p.Shape = "Ball"

		p.Size = Vector3.new(24, 24, 24) * size

		p.BrickColor = color

		p.Name = "Legball"

		for i = 1, 10 do

			lol = Instance.new("Seat")

			lol.BrickColor = BrickColor:Black()

			lol.Name = "SEE?"

			lol.Parent = mo

			lol.Size = Vector3.new(1, math.random(30, 40), 1) * size

			w = Instance.new("Weld")

			w.Part0 = p

			w.Part1 = lol

			w.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))

			w.Parent = w.Part0

		end

		p.Parent = mo

		w = Instance.new("Weld")

		w.Part0 = mo.Torso

		w.Part1 = p

		w.C0 = CFrame.new(-16 * (size / 2), -48 * (size / 2), 0)

		w.Parent = w.Part0

		p = Instance.new("Seat")

		p.Shape = "Ball"

		p.Size = Vector3.new(21, 15, 21) * size

		p.BrickColor = color

		p.Name = "Legball"

		for i = 1, 10 do

			lol = Instance.new("Seat")

			lol.BrickColor = BrickColor:Black()

			lol.Name = "SEE?"

			lol.Parent = mo

			lol.Size = Vector3.new(1, math.random(30, 40), 1) * size

			w = Instance.new("Weld")

			w.Part0 = p

			w.Part1 = lol

			w.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))

			w.Parent = w.Part0

		end

		p.Parent = mo

		w = Instance.new("Weld")

		w.Part0 = mo.Torso

		w.Part1 = p

		w.C0 = CFrame.new(0, 60 * (size / 2), 0)

		m = Instance.new("SpecialMesh")

		m.Parent = p

		p.Name = "Head"

		w.Parent = w.Part0

		s = Instance.new("Sound")

		s.Parent = mo.Torso

		s.Volume = 100

		s.Pitch = 1

		s.SoundId = "http://www.roblox.com/asset/?id=149779810"

		s.Looped = true

		s:play()

		coroutine.resume(coroutine.create(function(Part)

			

			while Part.Parent ~= nil do

				wait(math.random())

				so("http://www.roblox.com/asset/?id=148636758", Part, 100, 1)

			end

		end

	), mo.Torso)

		mo.Torso.CFrame = mo.Torso.CFrame * Torso.CFrame * CFrame.new(0, 0, -50 * size) * CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)

		mo.Torso.Velocity = mouse.Hit.lookVector * 400

		coroutine.resume(coroutine.create(function(Part)

			

			while 1 do

				wait(math.random(0, 1) + math.random())

				Part.RotVelocity = Vector3.new(math.random(-40, 40), math.random(-40, 40), math.random(-40, 40))

			end

		end

	), mo.Torso)

	end

	

	ob1u = function(mouse)

		

	end

	

	buttonhold = false

	key = function(key, mouse)

		

	end

	

	key2 = function(key, mouse)

		

	end

	

	s = function(mouse)

		

		mouse.Button1Down:connect(function()

			

			ob1d(mouse)

		end

	)

		mouse.Button1Up:connect(function()

			

			ob1u(mouse)

		end

	)

		mouse.KeyDown:connect(key)

		mouse.KeyUp:connect(key2)

	end

	

	ds = function(mouse)

		

	end

	

	Bin.Selected:connect(s)

	Bin.Deselected:connect(ds)

end

--[[ libgui xd ]]--

topkek.libgui.seperation = 12

function topkek.libgui:addLeftIcon(parent, img, sz)

	topkek.libutil:createObject('ImageLabel', {

		Parent = parent;

		BackgroundTransparency = 1;

		Position = UDim2.new(0, 2, 0, 0);

		Size = UDim2.new(0, sz, 0, sz);

		Image = img;

	})

end

function topkek.libgui:hookContainer(o, sepr, stt)

	if not o:IsA("ScrollingFrame") then

		return nil

	end	

	

	local self = {}

	self.main = o

	self.drawX = 0

	self.drawY = stt or topkek.libgui.seperation/2

	self.drawHeight = 0

	self.sepr = sepr or topkek.libgui.seperation

	

	function self:drawButton(sz, txt, func, ysz, cbgd)

		local xposOffset = 0

		local xposScale = self.drawX

		local xszOffset = 0

		local xszScale = sz

		if not (self.drawX == 0)  then

			xszOffset = -4

			if sz + self.drawX > 0.998 then

				xszOffset = -11

			end

		elseif sz == 1 then

			xszOffset = -(self.sepr) - 5

			xposOffset = self.sepr/2

		else

			xszOffset = -4 + -(self.sepr/2)

			xposOffset = self.sepr/2

		end

		if not ysz then ysz = 20 end

		local obj = topkek.libutil:createObject("TextButton", {

			Parent = self.main;

			BackgroundColor3 = cbgd or color3(15, 23, 30);

			BorderColor3 = color3(27, 42, 53);

			Position = UDim2.new(xposScale, xposOffset, 0, self.drawY);

			Size = UDim2.new(xszScale, xszOffset, 0, ysz);

			Font = 'SourceSans';

			FontSize = 'Size14';

			Text = txt;

			TextSize = 14;

			TextColor3 = color3(199, 199, 199);

			TextStrokeTransparency = 0.5;

		})

		obj.MouseButton1Down:connect(function()

			func()

		end)

		if ysz > self.drawHeight then

			self.drawHeight = ysz

		end

		self.drawX = self.drawX + sz

		if self.drawX > 0.998 then

			self.drawY = self.drawY + 3 + self.drawHeight

			self.drawX = 0

			self.drawHeight = 0

			self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)

		end

		return obj

	end

	

	function self:GetChildren()

		return self.main:GetChildren()

	end

	

	function self:getDrawY()

		return self.drawY

	end

	

	function self:setDrawY(y)

		self.drawY = y

	end

	

	function self:drawTextBox(sz, txt, ysz, cbgd)

		local xposOffset = 0

		local xposScale = self.drawX

		local xszOffset = 0

		local xszScale = sz

		if not (self.drawX == 0)  then

			xszOffset = -4

			if sz + self.drawX > 0.998 then

				xszOffset = -11

			end

		elseif sz == 1 then

			xszOffset = -(self.sepr) - 5

			xposOffset = self.sepr/2

		else

			xszOffset = -4 + -(self.sepr/2)

			xposOffset = self.sepr/2

		end

		if not ysz then ysz = 20 end

		local obj = topkek.libutil:createObject("TextBox", {

			Parent = self.main;

			BackgroundColor3 = cbgd or color3(5, 8, 11);

			BorderColor3 = color3(27, 42, 53);

			Position = UDim2.new(xposScale, xposOffset, 0, self.drawY);

			Size = UDim2.new(xszScale, xszOffset, 0, ysz);

			Font = 'SourceSans';

			FontSize = 'Size14';

			Text = txt;

			TextSize = 14;

			TextColor3 = color3(199, 199, 199);

		})

		if ysz > self.drawHeight then

			self.drawHeight = ysz

		end

		self.drawX = self.drawX + sz

		if self.drawX > 0.998 then

			self.drawY = self.drawY + 3 + self.drawHeight

			self.drawX = 0

			self.drawHeight = 0

			self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)

		end

		return obj

	end

	

	function self:drawScrollingContainer(ysz)

		local sz = UDim2.new(1, -(self.sepr/2) - 11, 0, ysz)

		local pos = UDim2.new(0, self.sepr/2, 0, self.drawY)

		local obj = topkek.libutil:createObject("ScrollingFrame", {

			Parent = self.main;

			BackgroundColor3 = color3(7, 11, 15);

			BorderColor3 = color3(27, 42, 53);

			Position = pos;

			Size = sz;

			BottomImage = 'rbxassetid://573102620';

			MidImage = 'rbxassetid://573102620';

			TopImage = 'rbxassetid://573102620';

			ScrollBarThickness = 5;

		})

		self.drawY = self.drawY + 5 + ysz

		self.drawX = 0

		self.drawHeight = 0

		self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)

		return topkek.libgui:hookContainer(obj, 12, 5)

	end

	

	function self:drawContainer(xsz, ysz)

		local sz = UDim2.new(xsz, -(self.sepr/2) - 11, 0, ysz)

		local pos = UDim2.new(0, self.sepr/2, 0, self.drawY)

		local obj = topkek.libutil:createObject("ScrollingFrame", {

			Parent = self.main;

			BackgroundTransparency = 1;

			Position = pos;

			Size = sz;

		})

		self.drawY = self.drawY + 5 + ysz

		self.drawX = 0

		self.drawHeight = 0

		self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)

		return topkek.libgui:hookContainer(obj, 12, 5)

	end

	

	function self:addSpacing()

		self.drawY = self.drawY + 3

	end

	

	function self:center()

		local a,c,b=

			self.main.Position.X.Scale,

				self.main.Position.X.Offset,self.main.Size.Y.Offset

		self.main.Position=UDim2.new(a,c+2, 0.5, -(b/2))

	end	

	

	return self

end



--[[ windows ]]--

topkek.libwindows.windows = {}

function topkek.libwindows:registerWindow(w)

	table.insert(topkek.libwindows.windows, w)

end

function topkek.libwindows:switchWindow(w, x)

	for _, k in pairs(topkek.libwindows.windows) do

		if k.Name == w then

			k.Visible = true

		else

			k.Visible = false

		end	

	end

	if w == 'HomeContainer' then

		base.Navigator.Visible = false

	else

		base.Navigator.Visible = true

	end

	base.Top.Location.Text = x

end

function topkek.libwindows:initiateNavigator()

	local nav = base.Navigator

	local template = nav.Item:Clone(); nav.Item:Destroy();

	local wins = topkek.libsettings:getSetting('windows')

	local y = 5

	for _, k in pairs(wins) do

		local o = template:Clone()

		o.Parent = nav

		o.Position = UDim2.new(0, 5, 0, y)

		o.Text = k

		o.MouseButton1Down:connect(function()

			topkek.libwindows:switchWindow(k .. 'Container', k)

		end)

		y = y + 25

	end

	nav.CanvasSize = UDim2.new(0, 0, 0, y)

end

function topkek.libwindows:initiateHome()

	local home = base.HomeContainer

	home.LocalPlayer.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('LocalPlayerContainer', 'LocalPlayer')

	end)

	home.Server.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('ServerContainer', 'Server')

	end)

	home.Scripts.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('ScriptsContainer', 'Scripts')

	end)

	home.Miscellaneous.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('MiscellaneousContainer', 'Miscellaneous')

	end)

	home.Players.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('PlayersContainer', 'Players')

	end)

	home.Settings.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('SettingsContainer', 'Settings')

	end)

end

--[[ defines ]]--

topkek.libsettings:setSetting('version', '1.0.0')

topkek.libsettings:setSetting('bans', {})

topkek.libsettings:setSetting('admins', {})

topkek.libsettings:setSetting('windows', {

	'Home';

	'Server';

	'LocalPlayer';

	'Players';

	'Scripts';

	'Miscellaneous';

	'Settings';

	'Explorer';

	'Gear';

	'Hats';

	'Music';

	'Effects';

	'Filtering';

	'Commands';

})

topkek.libsettings:setSetting('misc', {

	'Explorer';

	'Gear';

	'Hats';

	'Music';

	'Effects';

	'Filtering';

	'Commands';

})

topkek.store.gui = ScreenGui; gui = topkek.store.gui --  change later

topkek.store.base = topkek.store.gui['Base']; base = topkek.store.base

-- [[ server ]] --

--sz, txt, func, ysz, cbgd

local servwin = topkek.libgui:hookContainer(base['ServerContainer'])

local decalList, decalImp = servwin:drawScrollingContainer(100)

local decalAct = servwin:drawButton(2/3,'Spam Decal',function()

	topkek.libutil:recurseDecal(decalImp.Text)end)

decalImp = servwin:drawTextBox(1/3,'573896613')

servwin:drawButton(1,'Rollback Spam',function()

	topkek.libutil:recurseRemove('ParticleEmitter')

	topkek.libutil:recurseRemove('Decal')

end)

local decs = {

	{'Cerberus', '573896613'},

	{'Rain', '574772793'},

	{'Robbie', '574773630'},

	{'Pepe', '244905904'},

	{'Troll Face', '48308661'},

	{'Jeff', '109129888'},

	{'Shrek', '170539018'},

	{'Doge', '133720697'},

	{'Dat Boi', '409578848'},

}

for _, v in pairs(decs) do

	local b = decalList:drawButton(1, v[1], function()decalImp.Text=v[2]end,20,color3(5,8,11))

	topkek.libgui:addLeftIcon(b,'rbxassetid://'..v[2],20)

end

servwin:addSpacing()

-- [[lighting]] --

-- <<time>> --

local timeInp

servwin:drawButton(2/3,'Set Time',function()

	game:GetService('Lighting').TimeOfDay = timeImp.Text .. ":00:00"

end)

timeImp = servwin:drawTextBox(1/3,'14')

-- <<fog> --

local fogInp

servwin:drawButton(2/3,'Set FogEnd',function()

	if not tonumber(fogInp.Text) then return end

	game:GetService('Lighting').FogEnd = tonumber(fogInp.Text)

end)

fogInp = servwin:drawTextBox(1/3,'100000')

-- <<brightness>> --

local brightInp

servwin:drawButton(2/3,'Set Brightness',function()

	if not tonumber(brightInp.Text) then return end

	game:GetService('Lighting').Brightness = tonumber(brightInp.Text)

end)

brightInp = servwin:drawTextBox(1/3,'1')

-- <<reset>> --

servwin:drawButton(1,'Reset Lighting',function()

	local l = game:service'Lighting'

	l.Ambient = Color3.new(0, 0, 0)

	l.Brightness = 1

	l.GlobalShadows = true

	l.Outlines = true

	l.FogEnd = 100000

	l.FogStart = 0

	l:SetMinutesAfterMidnight(12*60)

end)

-- [[ fixing ]] --

servwin:addSpacing()

servwin:drawButton(1/2,'Clear Server',function()

	for i,v in pairs(game:service'Workspace':GetChildren()) do

		if (not v:IsA("Terrain"))and(v.Name~="Camera") then

			v:Destroy()

		end

	end

end)

servwin:drawButton(1/2,'Shutdown',function()

	for i,v in pairs(game:GetService('Players')) do

		v.Parent = nil

	end

end)

servwin:drawButton(1/2,'Remove Sound',function()

	topkek.libutil:recurseRemove('Sound')

end)

servwin:drawButton(1/2,'Baseplate',function()

	for X = -2500, 2500, 512 do

		for Z = -2500, 2500, 512 do

			local P = Instance.new("Part")

		    P.Anchored = true

		    P.Locked = true

		    P.Size = Vector3.new(512,3,512)

		    P.CFrame = CFrame.new(X,0,Z)

		    P.BrickColor = BrickColor.Green()

		    P.Parent = game:service'Workspace'

		end

	end

end)

--[[ destruction ]]--

servwin:addSpacing()

servwin:drawButton(1/2,'Clear Terrain',function()

	game:service'Workspace'.Terrain:Clear()

end)

servwin:drawButton(1/2,'Flood',function()

	game:service'Workspace'.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")

end)

servwin:drawButton(1/2,'Reflectancy',function()

	topkek.libutil:recurseSet('BasePart','Reflectance',1)

end)

servwin:drawButton(1/2,'Transparency',function()

	topkek.libutil:recurseSet('BasePart','Transparency',1)

end)

servwin:drawButton(1/2,'666',function()

	for i,v in next,workspace:children''do

	 	if(v:IsA'BasePart')then

	    me=v;

	    bbg=Instance.new('BillboardGui',me);

	    bbg.Name='stuf';

	    bbg.Adornee=me;

	    bbg.Size=UDim2.new(2.5,0,2.5,0)

	    --bbg.StudsOffset=Vector3.new(0,2,0)

	    tlb=Instance.new'TextLabel';

	    tlb.Text='666 666 666 666 666 666';

	    tlb.Font='SourceSansBold';

	    tlb.FontSize='Size48';

	    tlb.TextColor3=Color3.new(1,0,0);

	    tlb.Size=UDim2.new(1.25,0,1.25,0);

	    tlb.Position=UDim2.new(-0.125,-22,-1.1,0);

	    tlb.BackgroundTransparency=1;

	    tlb.Parent=bbg;

	    end;end;

	    --coroutine.wrap(function()while wait''do

	      s=Instance.new'Sound';

	      s.Parent=workspace;

	      s.SoundId='rbxassetid://152840862';

	      s.Pitch=1;

	      s.Volume=1;

	      s.Looped=true;

	      s:play();

	      --end;end)();

	      function xds(dd)

	        for i,v in next,dd:children''do

	          if(v:IsA'BasePart')then

	            v.BrickColor=BrickColor.new'Really black';

	            v.TopSurface='Smooth';

	            v.BottomSurface='Smooth';

	            s=Instance.new('SelectionBox',v);

	            s.Adornee=v;

	            s.Color=BrickColor.new'Really red';

	            a=Instance.new('PointLight',v);

	            a.Color=Color3.new(1,0,0);

	            a.Range=15;

	            a.Brightness=5;

	            f=Instance.new('Fire',v);

	            f.Size=19;

	            f.Heat=22;

	            end;

	            game.Lighting.TimeOfDay=0;

	            game.Lighting.Brightness=0;

	            game.Lighting.ShadowColor=Color3.new(0,0,0);

	            game.Lighting.Ambient=Color3.new(1,0,0);

	            game.Lighting.FogEnd=200;

	            game.Lighting.FogColor=Color3.new(0,0,0);

	        local dec = 'http://www.roblox.com/asset/?id=19399245';

	            local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}

	            --coroutine.wrap(function()

	            --for _,__ in pairs(fac) do

	            --local ddec = Instance.new("Decal", v)

	            --ddec.Face = __

	            --ddec.Texture = dec

	        --end end)()

	            if #(v:GetChildren())>0 then

	                   xds(v) 

	              end

	         end

	    end

	xds(game.Workspace)

end)

servwin:drawButton(1/2,'Troll',function()

	topkek.libutil:recurseDecal('48308661')

	topkek.libutil:Play(154664102)

end)

servwin:drawButton(1/2,'Colorize',function() -- when u skid off variable XDDDDDpranked

	local materiallist = 

	{Enum.Material.Plastic,Enum.Material.Wood,Enum.Material.Slate,Enum.Material.Concrete,Enum.Material.CorrodedMetal,

		Enum.Material.DiamondPlate,Enum.Material.Foil,Enum.Material.Grass,

		Enum.Material.Ice,Enum.Material.Marble,Enum.Material.Granite,Enum.Material.Brick,

		Enum.Material.Pebble,Enum.Material.Sand,Enum.Material.Sand,

		Enum.Material.Fabric,Enum.Material.SmoothPlastic,Enum.Material.Metal,Enum.Material.WoodPlanks,Enum.Material.Neon,Enum.Material.Cobblestone}

	local function r(where) 

		for _,v in pairs (where:GetChildren()) do 

		if v:IsA("BasePart") then 

		spawn(function() while wait(0.1) do v.Material = materiallist[math.random(#materiallist)] wait()   end end) end r(v) end end r(workspace)

end)

servwin:drawButton(1/2,'Materialize',function()

	local function r(where) 

 	for _,v in pairs (where:GetChildren()) do 

  	if v:IsA("BasePart") then 

   	spawn(function() while wait(0.1) do v.Transparency = math.random(0,1) wait()   end end) end r(v) end end r(workspace)

end)

servwin:drawButton(1/2,'Meshify',function()

	local enums={

		Enum.MeshType.Head;

		Enum.MeshType.Torso;

		Enum.MeshType.Wedge;

		Enum.MeshType.Brick;

		Enum.MeshType.Sphere;

		Enum.MeshType.Cylinder;

	}

	topkek.libutil:recurseFunc('BasePart',function(o)

		local mesh = Instance.new('SpecialMesh', o)

		mesh.MeshType = enums[math.random(1,#enums)]

	end)

end)

servwin:drawButton(1/2,'Loop-Meshify',function()

	coroutine.wrap(function()

		while true do

			local enums={

				Enum.MeshType.Head;

				Enum.MeshType.Torso;

				Enum.MeshType.Wedge;

				Enum.MeshType.Brick;

				Enum.MeshType.Sphere;

				Enum.MeshType.Cylinder;

			}

			topkek.libutil:recurseFunc('BasePart',function(o)

				if o:FindFirstChild("Mesh") then o.Mesh:Destroy() end

				local mesh = Instance.new('SpecialMesh', o)

				mesh.MeshType = enums[math.random(1,#enums)]

			end)

			wait(0.5)

		end

	end)()

end)

--<<<< END OF SERVER MENU >>>>--

plrwin = topkek.libgui:hookContainer(base['PlayersContainer'])

local plrDrop = plrwin:drawButton(1,'test-dropdown',function()end)

plrDrop = dropdown.new(plrDrop,topkek.libutil:GetPlayerList(),'Everybody')

game:GetService('Players').PlayerAdded:connect(function()

	plrDrop.update(topkek.libutil:GetPlayerList())

end)

game:GetService('Players').PlayerRemoving:connect(function()

	plrDrop.update(topkek.libutil:GetPlayerList())

end)

plrwin:addSpacing()

local actions = plrwin --plrwin:drawScrollingContainer(163) [[lole]]

actions:drawButton(1/3, 'Kill', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.Health = 0

		end

	end)

end)

actions:drawButton(1/3, 'Freeze', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			topkek.libutil:getTorso(z).Anchored = true

		end

	end)

end)

actions:drawButton(1/3, 'Thaw', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			topkek.libutil:getTorso(z).Anchored = false

		end

	end)

end)

actions:drawButton(1/3, 'Fire', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("Fire", topkek.libutil:getTorso(z))

		end

	end)

end)

actions:drawButton(1/3, 'Sparkles', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("Sparkles", topkek.libutil:getTorso(z))

		end

	end)

end)

actions:drawButton(1/3, 'Smoke', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("Smoke", topkek.libutil:getTorso(z))

		end

	end)

end)

actions:drawButton(1/3, 'BTools', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		local a = Instance.new("HopperBin")

		a.BinType = "GameTool"

		a.Parent = z.Backpack

		local a = Instance.new("HopperBin")

		a.BinType = "Clone"

		a.Parent = z.Backpack

		local a = Instance.new("HopperBin")

		a.BinType = "Hammer"

		a.Parent = z.Backpack

	end)

end)

actions:drawButton(1/3, 'Kick', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		local function doKick()

            if z.Character and z.Character:FindFirstChild('HumanoidRootPart') and z.Character:FindFirstChild('Torso') then

                z.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(999000, 1001000), 1000000, 1000000)

                local SP = Instance.new('SkateboardPlatform', z.Character) SP.Position = z.Character.HumanoidRootPart.Position SP.Transparency = 1

                spawn(function()

                    repeat wait()

                        if z.Character and z.Character:FindFirstChild('HumanoidRootPart') then

                            SP.Position = z.Character.HumanoidRootPart.Position

                        end

                    until not game:GetService('Players'):FindFirstChild(z.Name)

                end)

                z.Character.Torso.Anchored = true

            end

		end

		repeat

			doKick()

			wait()

		until not z

	end)

end)

actions:drawButton(1/3, 'Nil', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		z.Parent = nil

	end)

end)

actions:drawButton(1/3, 'Bring', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			z.Character.HumanoidRootPart.CFrame =

				game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1,1,1)

		end

	end)

end)

actions:drawButton(1/3, 'Goto', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame =

				z.Character.HumanoidRootPart.CFrame * CFrame.new(1,1,1)

		end

	end)

end)

actions:drawButton(1/3, 'Freefall', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			z.Character.HumanoidRootPart.CFrame = z.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10000, 0)		

		end

	end)

end)

actions:drawButton(1/3, 'Sword', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		insert(125013769).Parent = z.Backpack

	end)

end)

actions:drawButton(1/3, 'Guns', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		insert(130113146).Parent = z.Backpack

		insert(67747912).Parent = z.Backpack

		insert(95354288).Parent = z.Backpack

	end)

end)

actions:drawButton(1/3, 'Knife', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		insert(170897263).Parent = z.Backpack

	end)

end)



actions:drawButton(1/3, 'Stun', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if not z.Character:FindFirstChild('UpperTorso') then

			z.Character.Torso.CFrame = z.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0) 

		end

		z.Character.Humanoid.PlatformStand = true

	end)

end)

actions:drawButton(1/3, 'Invisible', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'Transparency', 1)

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'Transparency', 1)

		end

	end)

end)

actions:drawButton(1/3, 'Visible', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'Transparency', 0)

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'Transparency', 1)

		end

	end)

end)

actions:drawButton(1/3, 'God', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.MaxHealth = math.huge

			z.Character.Humanoid.Health = math.huge

		end

	end)

end)



actions:drawButton(1/3, 'Semigod', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.MaxHealth = 9999999999

			z.Character.Humanoid.Health = 9999999999

		end

	end)

end)

actions:drawButton(1/3, 'Nuke', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		local torso = topkek.libutil:getTorso(z)

		local nuke = Instance.new("Part", game.Workspace)

		local opos = torso.CFrame

		nuke.BrickColor = BrickColor.new("Bright yellow")

		nuke.TopSurface = Enum.SurfaceType.Smooth

		nuke.BottomSurface = Enum.SurfaceType.Smooth

		nuke.Anchored = true

		nuke.CanCollide = false

		nuke.Shape = "Ball"				

		nuke.Transparency = 0.5

		nuke.CFrame = torso.CFrame		

		nuke.Size = Vector3.new(1, 1, 1)

		nuke.Touched:connect(function(p)

			local expl = Instance.new("Explosion", p)

			expl.BlastPressure = 50000

			expl.BlastRadius = 50

			expl.Position = p.Position

			p.Material = Enum.Material.CorrodedMetal

			p:BreakJoints()

		end)

		for i = 1, 150 do

			nuke.Size = Vector3.new(i, i, i)

			nuke.CFrame = opos

			wait(0.08)

		end

		nuke:Destroy()

	end)

end)

actions:drawButton(1/3, 'Confuse', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.WalkSpeed = -16

		end

	end)

end)

actions:drawButton(1/3, 'Goldify', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'Material', 'Marble')

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'Material', 'Marble')

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'BrickColor', BrickColor.new('Bright yellow'))

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'BrickColor', BrickColor.new('Bright yellow'))

		end

	end)

end)

actions:drawButton(1/3, 'Neon', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'Material', 'Neon')

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'Material', 'Neon')

		end

	end)

end)

actions:drawButton(1/3, 'Insane', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			for i,v in pairs(topkek.libutil:getTorso(z):GetChildren()) do

				if v:IsA("Motor6D") then

					coroutine.wrap(function()

					while v do

						v.C0=v.C0*CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

						wait()

					end

					end)()

				end

			end

		end

	end)

end)

actions:drawButton(1/3, 'Quicksand', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			if z.Character:FindFirstChild('Humanoid') then

				local tor = topkek.libutil:getTorso(z)

				local hole = Instance.new("Part", z.Character)

				hole.Anchored = true

				hole.Name = "Hole"

				hole.FormFactor = Enum.FormFactor.Custom

				hole.Size = Vector3.new(7, 1, 7)

				hole.CanCollide = false

				hole.CFrame = tor.CFrame * CFrame.new(0,-3.3,0)

				hole.BrickColor = BrickColor.new("Cool yellow")

				hole.Material = Enum.Material.Sand

				local hm = Instance.new("CylinderMesh", hole)

				tor.Anchored = true

				if z.Character:FindFirstChild("Humanoid") then

					z.Character.Humanoid.Jump = true

				end

				for x,m in pairs(z.Character:GetChildren()) do

					if m:IsA("BasePart") or m:IsA("MeshPart") then

						m.CanCollide = false

					end

				end

				for i=1,75 do

					tor.CFrame=tor.CFrame*CFrame.new(0,-0.1,0)

					wait(0.06)

				end

				tor.CFrame=tor.CFrame*CFrame.new(0,

					-500,0

				)

				z.Character.Humanoid.Health = 0

			end

		end

	end)

end)

actions:drawButton(1/3, 'Duck', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			local pchar = z.Character

--		    for i,v in pairs(pchar.Torso:GetChildren()) do

--			    if v:IsA("Decal") then

--				    v:Destroy()

--			    end

--		    end

		    for i,v in pairs(pchar:GetChildren()) do

			    if v:IsA("Hat") or v:IsA("Accessory") then

				    v:Destroy()

			    end

		    end

		    local duck = Instance.new("SpecialMesh", z.Character.HumanoidRootPart)

		    duck.MeshType = "FileMesh"

		    duck.MeshId = "http://www.roblox.com/asset/?id=9419831"

		    duck.TextureId = "http://www.roblox.com/asset/?id=9419827"

		    duck.Scale = Vector3.new(5, 5, 5)

		    topkek.libutil:recurseSetObj(z.Character, 'Instance', 'Transparency', 1)

			z.Character.HumanoidRootPart.Transparency = 0

		end

	end)

end)

actions:drawButton(1/3, 'Shrek', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			local pchar = z.Character

			for i,v in pairs(pchar:GetChildren()) do

				if v:IsA("Hat") or v:IsA("Accessory") or v:IsA("CharacterMesh") or v:IsA("Shirt") or v:IsA("Pants") then

					v:Destroy()

				end

			end

			for i,v in pairs(pchar.Head:GetChildren()) do

				if v:IsA("Decal") or v:IsA("SpecialMesh") then

					v:Destroy()

				end

			end

			

			local mesh = Instance.new("SpecialMesh", pchar.Head)

			mesh.MeshType = "FileMesh"

			pchar.Head.Mesh.MeshId = "http://www.roblox.com/asset/?id=19999257"

			pchar.Head.Mesh.Offset = Vector3.new(-0.1, 0.1, 0)

			pchar.Head.Mesh.TextureId = "http://www.roblox.com/asset/?id=156397869"

			

			local Shirt = Instance.new("Shirt", z.Character)

			local Pants = Instance.new("Pants", z.Character)

			

			Shirt.ShirtTemplate = "rbxassetid://133078194"

			Pants.PantsTemplate = "rbxassetid://133078204"

		end

	end)

end)

actions:drawButton(1/3, 'Bighead', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			if z.Character:FindFirstChild('Head') then

				z.Character.Head.Mesh.Scale=Vector3.new(5,5,5)

			end

		end

	end)

end)

actions:drawButton(1/3, 'Hotdog', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			if z.Character:FindFirstChild('Head') then

				topkek.libutil:weiner(z)

			end

		end

	end)

end)

actions:drawButton(1/3, 'Dwarf [R6]', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:scalePlayer(z, 0.5)

		end

	end)

end)

actions:drawButton(1/3, 'Giant [R6]', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:scalePlayer(z, 5)

		end

	end)

end)

actions:drawButton(1/3, 'Giraffe [R6]', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			local char=z.Character

			local h=char.Head

			local tor=char:FindFirstChild("Torso")

			if not tor then return end

			tor.Neck.C0=tor.Neck.C0*CFrame.new(0,0,5)

			local fn=Instance.new("Part",char)

			fn.Size=Vector3.new(1,5.5,1)

			fn.Name="FakeNeck"

			fn.Anchored=false

			fn.CanCollide=false

			if char:FindFirstChild("Body Colors") then

				fn.BrickColor=char["Body Colors"].HeadColor

			end

			local cm=Instance.new("CylinderMesh",fn)

			local we=Instance.new("Weld",h)

			we.Part0=h

			we.Part1=fn

			we.C1=we.C1*CFrame.new(0,2.6,0)

		end

	end)

end)

actions:drawButton(1/3, 'Select', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("SelectionBox", z.Character).Adornee = z.Character

		end

	end)

end)

actions:drawButton(1/3, 'Sphere', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("SelectionSphere", z.Character).Adornee = z.Character

		end

	end)

end)

actions:drawButton(1/3, 'Sit', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.Sit = true

		end

	end)

end)

actions:drawButton(1/3, 'Jump', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.Jump = true

		end

	end)

end)

actions:drawButton(1/3, 'No Tools', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		for _, t in pairs(z.Backpack:GetChildren()) do

			t:Destroy()

		end

	end)

end)

actions:drawButton(1/3, 'Take Tools', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		for _, t in pairs(z.Backpack:GetChildren()) do

			t.Parent = game:service'Players'.LocalPlayer.Backpack

		end

	end)

end)

actions:drawButton(1/3, 'Disable', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.Parent = nil

		end

	end)

end)

actions:drawButton(1/3, 'Fast', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.WalkSpeed = 50

		end

	end)

end)

actions:drawButton(1/3, 'Slow', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.WalkSpeed = 8

		end

	end)

end)

actions:drawButton(1/3,'Explode', function()

	topkek.libtil:doPlayers(plrDrop, function(z)

		local explosion = Instance.new("Explosion")

		explosion.Position = topkek.libutil:getTorso(z).Position

		explosion.Parent = game.Workspace

	end)

end)

local Follow

actions:drawButton(1/3,'Annoy', function()

	if Follow == true then

		Follow = false; return

	else Follow = true end

	topkek.libutil:doPlayers(plrDrop, function(z)

		while Follow == true do

			game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame=

				z.Character.HumanoidRootPart.CFrame

			wait()

		end

	end)

end)

actions:drawButton(1/3,'ForceField', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("ForceField", z.Character)

		end

	end)

end)

actions:drawButton(1/3,'Friendlag', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		for i = 1, 10 do

			spawn(function()

				while wait() do

		    		game.Players.LocalPlayer:RequestFriendship(z)

		  	  		game.Players.LocalPlayer:RevokeFriendship(z)

				end

			end)

		end

	end)

end)

actions:drawButton(1/3,'Force Follow', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		game:GetService("RunService"):BindToRenderStep("_", 0, function()

			z.Character.Humanoid:MoveTo(game.Players.LocalPlayer.Character.Head.Position)

		end)

	end)

end)

actions:drawButton(1/3,'Dab', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character and z.Character:FindFirstChild("Torso") then

			local chr = z.Character

			chr.Animate.Disabled = true

	        chr.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.699999988, 0, 0.939692616, 0, -0.342020124, -0.330366075, -0.258819044, -0.907673359, -0.0885213241, 0.965925813, -0.243210346)

	        chr.Torso["Right Shoulder"].C1 = CFrame.new(-0.600000024, 0.5, -0.200000003, 0.664462984, 0.241844743, 0.707106769, -0.664462984, -0.241844788, 0.707106769, 0.342020154, -0.939692616, -3.09086197e-008)

	        chr.Torso["Neck"].C1 = CFrame.new(0, -0.600000024, 0, -0.866025388, 0.5, 0, -0.171010137, -0.29619807, 0.939692616, 0.469846278, 0.813797653, 0.342020124)

		end

	end)

end)

actions:addSpacing()

local chatInp

actions:drawButton(1/2, 'Make Chat', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		game:GetService('Chat'):Chat(z.Character, chatInp.Text)

	end)

end)

chatInp = actions:drawTextBox(1/2, '')

local insertInp

actions:drawButton(1/2, 'Insert Into', function()

	if not tonumber(insertInp.Text) then return end

	local item = insert(insertInp.Text)

	if not item then return end

	topkek.libutil:doPlayers(plrDrop, function(z)

		item:Clone().Parent = z.Backpack

	end)

end)

insertInp = actions:drawTextBox(1/2, '')

local speedInp

actions:drawButton(1/2, 'Set Speed', function()

	if not tonumber(speedInp.Text) then return end

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.WalkSpeed = tonumber(speedInp.Text)

		end

	end)

end)

speedInp = actions:drawTextBox(1/2, '')

local nameInp

actions:drawButton(1/2, 'Set Name', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		local Character = z.Character

		local newName = Instance.new("Model", z.Character)

		newName.Name = nameInp.Text

		local cl = Character:WaitForChild("Head"):Clone()

		cl.Parent = newName

		cl:WaitForChild("face"):Destroy()

		local hum = Instance.new("Humanoid", newName)

		hum.Name = "NameTag"

		hum.MaxHealth = 0

		hum.Health = 0

		local weld = Instance.new("Weld", cl)

		weld.Part0 = cl

		weld.Part1 = Character:WaitForChild("Head")

		Character:WaitForChild("Head").Transparency = 1

		Wait(.5)

		cl.BrickColor = Character:WaitForChild("Head").BrickColo

	end)

end)

nameInp = actions:drawTextBox(1/2, '')

--[[ localplayer ]]--

local lp = game:GetService('Players').LocalPlayer

local localwin = topkek.libgui:hookContainer(base['LocalPlayerContainer'])

local appearInp

localwin:drawButton(1/2, 'Set Appearance', function()

	local id = 0

	if not tonumber(appearInp.Text) then

		id = tonumber(appearInp.Text)

	else

		id = game:GetService('Players'):GetUserIdFromNameAsync(appearInp.Text)

	end

	lp.CharacterAppearance = 'https://assetgame.roblox.com/Asset/CharacterFetch.ashx?userId=' .. tostring(id)

end)

appearInp = localwin:drawTextBox(1/2, '')

localwin:drawButton(1/2, 'Set TeamColor', function()

	if teamInp.Text == 'Neutral' then

		lp.Neutral = true

		return

	end

	local clr = BrickColor.new(teamInp.Text) 

	lp.TeamColor = clr

end)

teamInp = localwin:drawTextBox(1/2, 'Neutral')

localwin:drawButton(1, 'Reset Camera', function()

	game.Workspace.CurrentCamera:remove()

	wait(.1)

	game.Workspace.CurrentCamera.CameraSubject = lp.Character.Humanoid or 

		game.Workspace[lp.Name].Humanoid

	game.Workspace.CurrentCamera.CameraType = "Custom"

end)

localwin:drawButton(1, 'Respawn', function()

	local a1 = Instance.new("Model", game:service'Workspace')

	local a2 = Instance.new("Part", game:service'Workspace')

	a2.CanCollide = true

	a2.Anchored = true

	a2.CFrame = CFrame.new(10000, 10000, 10000)

	a2.Name = "Torso"

	local a3 = Instance.new("Humanoid", a1)

	a3.MaxHealth=100;a3.Health=100

	lp.Character = a1

	a3.Health=0

end)

localwin:addSpacing()

local Lev, Clip, Fly

localwin:drawButton(1/2, 'Levitate', function()

	if Lev == true then

		Lev = false

		return

	end

	Lev = true

	repeat

		lp.Character.Humanoid:ChangeState(10)

		wait(0)

	until Lev == false

end)

localwin:drawButton(1/2, 'Noclip', function()

	if Clip == true then

		Clip = false

		return

	end

	Clip = true

	game:GetService("RunService").Stepped:connect(function()

		topkek.libutil:getTorso(lp).CanCollide = not Clip

		lp.Character.Head.CanCollide = not Clip

		lp.Character.HumanoidRootPart.CanCollide = not Clip

		if lp.Character.UpperTorso then

			lp.Character.LowerTorso.CanCollide = not Clip

		end

	end)

	lp.Character.HumanoidRootPart.Changed:connect(function()

		topkek.libutil:getTorso(lp).CanCollide = not Clip

		lp.Character.Head.CanCollide = not Clip

		lp.Character.HumanoidRootPart.CanCollide = not Clip

		if lp.Character.UpperTorso then

			lp.Character.LowerTorso.CanCollide = not Clip

		end

	end)

end)

localwin:drawButton(1/2, 'Fly', function()

	if Fly == true then

		Fly = false

		return

	end

	Fly = true

  local mouse=game.Players.LocalPlayer:GetMouse''

  localplayer=game.Players.LocalPlayer

  game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

  local torso = game.Players.LocalPlayer.Character.HumanoidRootPart

  local speed=0

  local keys={a=false,d=false,w=false,s=false} 

  local e1

  local e2

  local function start()

   local pos = Instance.new("BodyPosition",torso)

   local gyro = Instance.new("BodyGyro",torso)

   pos.Name="EPIXPOS"

   pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)

   pos.position = torso.Position

   gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 

   gyro.cframe = torso.CFrame

   repeat

    wait()

    localplayer.Character.Humanoid.PlatformStand=true

    local new=gyro.cframe - gyro.cframe.p + pos.position

    if not keys.w and not keys.s and not keys.a and not keys.d then

     speed=1

    end 

    if keys.w then 

     new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed

     speed=speed+0.01

    end

    if keys.s then 

     new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed

     speed=speed+0.01

    end

    if keys.d then 

     new = new * CFrame.new(speed,0,0)

     speed=speed+0.01

    end

    if keys.a then 

     new = new * CFrame.new(-speed,0,0)

     speed=speed+0.01

    end

    if speed>5 then

     speed=5

    end

    pos.position=new.p

    if keys.w then

     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)

    elseif keys.s then

     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)

    else

     gyro.cframe = workspace.CurrentCamera.CoordinateFrame

    end

   until not Fly

   if gyro then gyro:Destroy() end

   if pos then pos:Destroy() end

   flying=false

   localplayer.Character.Humanoid.PlatformStand=false

   speed=0

  end

  e1=mouse.KeyDown:connect(function(key)

   if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end

   if key=="w" then

    keys.w=true

   elseif key=="s" then

    keys.s=true

   elseif key=="a" then

    keys.a=true

   elseif key=="d" then

    keys.d=true

   end

  end)

  e2=mouse.KeyUp:connect(function(key)

   if key=="w" then

    keys.w=false

   elseif key=="s" then

    keys.s=false

   elseif key=="a" then

    keys.a=false

   elseif key=="d" then

    keys.d=false

   end

  end)

  start()

end)

localwin:drawButton(1/2, 'Highjump', function()

	local thrust = Instance.new("BodyVelocity")

	game:GetService('UserInputService').InputBegan:connect(function(i, b)

		if i.KeyCode == Enum.KeyCode.Space then

			print("Got jump")

			coroutine.resume(coroutine.create(function()

				thrust.Parent = game.Players.LocalPlayer.Character.PrimaryPart

				thrust.velocity = Vector3.new(0,50,0)

				thrust.maxForce = Vector3.new(0,4e+050,0)

				wait(0.2)

				thrust.Parent = nil 

			end))

		end

	end)

end)

localwin:addSpacing()

localwin:drawButton(1/2, 'Freecam', function()

	local cam = game.Workspace.CurrentCamera

	cam.CameraType = "Fixed"

	cam.CameraSubject = nil

	lp.Character = nil

end)

localwin:drawButton(1/2, 'Nil Orb', function()

	game.Players.LocalPlayer.Character = nil

	--lp:Destroy()

	local cam = game.Workspace.CurrentCamera

	local m = Instance.new("Model", game.Workspace)

	m.Name = game.Players.LocalPlayer.Name

	local hum = Instance.new("Humanoid", m)

	hum.Health = 0

	hum.MaxHealth = 0

	local orb = Instance.new("Part", m)

	orb.Size = Vector3.new(1, 1, 1)

	orb.Shape = "Ball"

	orb.Name = "Head"

	orb.Anchored = true

	orb.CanCollide = true

	orb.BottomSurface = Enum.SurfaceType.Smooth

	orb.TopSurface = Enum.SurfaceType.Smooth

	orb.Transparency = 0

	cam.CameraSubject = orb

	cam.CameraType = Enum.CameraType.Fixed

	game:GetService("RunService").RenderStepped:connect(function()

		orb.CFrame = cam.CoordinateFrame * CFrame.new(0, -2, -6)

	end)

	game.Players.LocalPlayer.Chatted:connect(function(a)

		game:GetService("Chat"):Chat(orb, a)

	end)

end)

localwin:drawButton(1/2, 'God', function()

	lp.Character.Humanoid.MaxHealth = math.huge

	lp.Character.Humanoid.Health = math.huge

end)

localwin:drawButton(1/2, 'NoGrav', function()

	if lp.Character then

		for x,m in pairs(lp.Character:GetChildren()) do

			if m:IsA("BasePart") then

				local bf = Instance.new("BodyForce", m)

				bf.force = Vector3.new(0, 192.25, 0) * m:GetMass()

			end

			if m:IsA("Hat") or m:IsA("Accessory") then

				if m:findFirstChild("Handle") then

					local bf = Instance.new("BodyForce", m.Handle)

					bf.force = Vector3.new(0, 192.25, 0) * m.Handle:GetMass()

				end

			end

		end

	end

end)

localwin:drawButton(1/2, 'Rainbow Name', function()

	lp.Neutral = false

	repeat

		wait()

		lp.TeamColor = BrickColor.Random()

	until not lp.Character.Humanoid

end)

localwin:drawButton(1/2, 'Random Fedora', function()

	local hats={

		98346834,

		215751161,

		119916949,

		72082328,

		147180077,

		100929604,

		63043890,

		1285307,

		1029025,

		334663683,

		259423244

	}

	game:GetService("InsertService"):LoadAsset(hats[math.random(1,#hats)]):GetChildren()[1].Parent = lp.Character

end)

localwin:drawButton(1/2, 'Clear Appearance', function()

	lp:ClearCharacterAppearance()

end)

localwin:drawButton(1/2, 'Disguise', function()

	local p = lp.Character

	if p:FindFirstChild("topkek") then

		p.topkek:Destroy()

	end

	p.Name = ""

	p.Head.Transparency = 1

	local mo = Instance.new("Model", p)

	mo.Name = ""

	local hu = Instance.new("Humanoid", mo)

	hu.Name = "distag"

	hu.Health = 100

	hu.MaxHealth = 100

	local fh = p.Head:Clone()

	fh.Parent = mo

	fh.Transparency = 0

	local we = Instance.new("Weld", fh)

	we.Part0 = p.Head

	we.Part1 = mo

	lp:ClearCharacterAppearance()

	pcall(function() p["Body Colors"]:Destroy() end)

	Instance.new("BodyColors", p)

end)

localwin:drawButton(1, 'Dick Shooter', function()

	topkek.libutil:dickShooter()

end)

localwin:addSpacing()

local hackerInp

localwin:drawButton(1/2, 'Set Tag', function()

	local len = 10

	local bb = Instance.new("BillboardGui")

	bb.Parent = lp.Character.Head

	bb.Adornee = lp.Character.Head

	bb.AlwaysOnTop = true

	bb.Enabled = true

	bb.Size = UDim2.new(len, 0, 1.5, 0)

	bb.Name = "tag"

	bb.StudsOffset = Vector3.new(0, 3, 0)

	--local fr = Instance.new("Frame")

	--fr.Parent = bb

	--fr.Size = UDim2.new(1, 0, 1, 0)

	--fr.Style = Enum.FrameStyle.RobloxRound

	local tl = Instance.new("TextLabel")

	tl.Parent = bb

	tl.Font = Enum.Font.Code

	tl.BackgroundTransparency = 1

	tl.TextScaled = true

	tl.TextColor3 = Color3.new(15/255, 15/255, 15/255)

	tl.Size = UDim2.new(1, 0, 1, 0)

	tl.Text = hackerInp.Text

	tl.Name = "trutag"

	tl.Visible = true

	tl.ZIndex = 2

end)

hackerInp = localwin:drawTextBox(1/2, 'Hacker')

--[[ scripts ]]--

-- excuse my disgusting code :v

local scriptwin = topkek.libgui:hookContainer(base['ScriptsContainer'])

local search = scriptwin:drawTextBox(1,'')

local origy = scriptwin:getDrawY()

scriptwin:addSpacing()

scriptwin:addSpacing()

local a = Instance.new("LocalScript");a.Name='script 1'

local b = Instance.new("LocalScript");b.Name='script 2'

local c = Instance.new("LocalScript");c.Name='script 3'

local scripts = {a,b,c}

local container = {}

function MakeList(condition)

	for i,v in pairs(scriptwin:GetChildren()) do

		if v.Name == "Script" then

			v:Destroy()

		end

	end

	scriptwin:setDrawY(origy)

	for i, v in pairs(scripts) do

		if string.find(v.Name, condition) or (condition == "") or (condition == " ") then

			local scr = scriptwin:drawButton(1, v.Name, function()

				print('no loadstring lol')

			end, 25)

			scr.Name = 'Script'

		end

	end

end

game:GetService("UserInputService").InputChanged:connect(function(inp)

	if inp.UserInputType == Enum.UserInputType.TextInput then

		if search:IsFocused() then

			MakeList(search.Text)

		end

	end

end)

MakeList('')

--[[ misc main ]]--

local miscwin = topkek.libgui:hookContainer(base['MiscellaneousContainer'])

local scroll = miscwin:drawScrollingContainer(165)

scroll:center()

for i, v in pairs(topkek.libsettings:getSetting("misc")) do

	scroll:drawButton(1, v, function()

		topkek.libwindows:switchWindow(v .. 'Container', v)

	end)

end

scroll.main.CanvasSize = scroll.main.CanvasSize - UDim2.new(0, 0, 0, 3)

--[[ initiation ]]--

topkek.libwindows:registerWindow(base['HomeContainer'])

topkek.libwindows:registerWindow(base['ServerContainer'])

topkek.libwindows:registerWindow(base['PlayersContainer'])

topkek.libwindows:registerWindow(base['LocalPlayerContainer'])

topkek.libwindows:registerWindow(base['ScriptsContainer'])

topkek.libwindows:registerWindow(base['MiscellaneousContainer'])

topkek.libwindows:initiateNavigator()

topkek.libwindows:initiateHome()--boobs lol

local ScreenGui = Instance.new("ScreenGui")

local Base = Instance.new("Frame")

local Top = Instance.new("Frame")

local First = Instance.new("TextLabel")

local Second = Instance.new("TextLabel")

local Location = Instance.new("TextLabel")

local Exit = Instance.new("TextButton")

local HomeContainer = Instance.new("Frame")

local Players = Instance.new("Frame")

local ImageLabel = Instance.new("ImageLabel")

local TextLabel = Instance.new("TextLabel")

local Mask = Instance.new("TextButton")

local Server = Instance.new("Frame")

local ImageLabel_2 = Instance.new("ImageLabel")

local TextLabel_2 = Instance.new("TextLabel")

local Mask_2 = Instance.new("TextButton")

local LocalPlayer = Instance.new("Frame")

local ImageLabel_3 = Instance.new("ImageLabel")

local TextLabel_3 = Instance.new("TextLabel")

local Mask_3 = Instance.new("TextButton")

local Scripts = Instance.new("Frame")

local ImageLabel_4 = Instance.new("ImageLabel")

local TextLabel_4 = Instance.new("TextLabel")

local Mask_4 = Instance.new("TextButton")

local Miscellaneous = Instance.new("Frame")

local ImageLabel_5 = Instance.new("ImageLabel")

local TextLabel_5 = Instance.new("TextLabel")

local Mask_5 = Instance.new("TextButton")

local Settings = Instance.new("Frame")

local ImageLabel_6 = Instance.new("ImageLabel")

local TextLabel_6 = Instance.new("TextLabel")

local Mask_6 = Instance.new("TextButton")

local Navigator = Instance.new("ScrollingFrame")

local Item = Instance.new("TextButton")

local ServerContainer = Instance.new("ScrollingFrame")

local dd = Instance.new("TextButton")

local ImageLabel_7 = Instance.new("ImageLabel")

local LocalPlayerContainer = Instance.new("ScrollingFrame")

local PlayersContainer = Instance.new("ScrollingFrame")



-- Properties

local hist = game:GetService("LogService"):GetLogHistory()

local eiss = false

for i,v in pairs(hist) do

	if string.find(v["message"]:lower(), "eiss") then

		eiss = true

		warn("Detected EISS, Parenting to PlayerGui")

	end

end

if eiss then

	ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

	game.StarterGui.ResetPlayerGuiOnSpawn = false

else

	ScreenGui.Parent = game.CoreGui

end



Base.Name = "Base"

Base.Parent = ScreenGui

Base.Active = true

Base.BackgroundColor3 = Color3.new(0.054902, 0.0901961, 0.113725)

Base.BorderColor3 = Color3.new(0.0156863, 0.027451, 0.0352941)

Base.BorderSizePixel = 2

Base.Draggable = true

Base.Position = UDim2.new(0, 50, 0, 250)

Base.Selectable = true

Base.Size = UDim2.new(0, 450, 0, 250)



Top.Name = "Top"

Top.Parent = Base

Top.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

Top.BackgroundTransparency = 0.5

Top.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)

Top.Position = UDim2.new(0, 10, 0, 7)

Top.Size = UDim2.new(1, -20, 0, 20)



First.Name = "First"

First.Parent = Top

First.BackgroundColor3 = Color3.new(1, 1, 1)

First.BackgroundTransparency = 1

First.BorderColor3 = Color3.new(0.32549, 0.313726, 0.313726)

First.Size = UDim2.new(1, 0, 1, 0)

First.Font = Enum.Font.SourceSans

First.FontSize = Enum.FontSize.Size18

First.Text = "  T0PK3K 3.0"

First.TextColor3 = Color3.new(0.721569, 0.027451, 0.211765)

First.TextStrokeTransparency = 0

First.TextXAlignment = Enum.TextXAlignment.Left



Second.Name = "Second"

Second.Parent = Top

Second.BackgroundColor3 = Color3.new(1, 1, 1)

Second.BackgroundTransparency = 1

Second.BorderColor3 = Color3.new(0.32549, 0.313726, 0.313726)

Second.Position = UDim2.new(1, -125, 0, 0)

Second.Size = UDim2.new(0, 100, 1, 0)

Second.Font = Enum.Font.SourceSans

Second.FontSize = Enum.FontSize.Size18

Second.Text = "Cerberus Edition"

Second.TextColor3 = Color3.new(0.721569, 0.027451, 0.211765)

Second.TextStrokeTransparency = 0

Second.TextXAlignment = Enum.TextXAlignment.Left



Location.Name = "Location"

Location.Parent = Top

Location.BackgroundColor3 = Color3.new(1, 1, 1)

Location.BackgroundTransparency = 1

Location.BorderColor3 = Color3.new(0.32549, 0.313726, 0.313726)

Location.Position = UDim2.new(0, 90, 0, 0)

Location.Size = UDim2.new(1, -200, 1, 0)

Location.Font = Enum.Font.SourceSansBold

Location.FontSize = Enum.FontSize.Size18

Location.Text = "Home"

Location.TextColor3 = Color3.new(0.588235, 0.0196078, 0.172549)

Location.TextStrokeTransparency = 0



Exit.Name = "Exit"

Exit.Parent = Top

Exit.BackgroundColor3 = Color3.new(0.588235, 0.0196078, 0.172549)

Exit.BorderSizePixel = 0

Exit.Position = UDim2.new(1, -18, 0, 2)

Exit.Size = UDim2.new(0, 16, 0, 16)

Exit.Font = Enum.Font.SourceSansBold

Exit.FontSize = Enum.FontSize.Size14

Exit.Text = "X"

Exit.TextColor3 = Color3.new(1, 1, 1)

Exit.MouseButton1Down:connect(function()

	Base.Parent = nil

end)



HomeContainer.Name = "HomeContainer"

HomeContainer.Parent = Base

HomeContainer.BackgroundColor3 = Color3.new(1, 1, 1)

HomeContainer.BackgroundTransparency = 1

HomeContainer.Position = UDim2.new(0, 10, 0, 50)

HomeContainer.Size = UDim2.new(1, -20, 1, -65)



Players.Name = "Players"

Players.Parent = HomeContainer

Players.BackgroundColor3 = Color3.new(1, 1, 1)

Players.BackgroundTransparency = 1

Players.Position = UDim2.new(0.666000009, 10, 0, 0)

Players.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel.Parent = Players

ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel.BackgroundTransparency = 1

ImageLabel.Position = UDim2.new(0.5, -25, 0, 0)

ImageLabel.Size = UDim2.new(0, 50, 0, 50)

ImageLabel.Image = "rbxassetid://573066980"

ImageLabel.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel.Parent = Players

TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel.BackgroundTransparency = 1

TextLabel.Position = UDim2.new(0, 10, 1, -40)

TextLabel.Size = UDim2.new(1, -20, 0, 20)

TextLabel.Font = Enum.Font.SourceSansBold

TextLabel.FontSize = Enum.FontSize.Size24

TextLabel.Text = "Players"

TextLabel.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask.Name = "Mask"

Mask.Parent = Players

Mask.BackgroundColor3 = Color3.new(1, 1, 1)

Mask.BackgroundTransparency = 1

Mask.Position = UDim2.new(0, 27, 0, 0)

Mask.Size = UDim2.new(1, -56, 0, 65)

Mask.Font = Enum.Font.SourceSans

Mask.FontSize = Enum.FontSize.Size14

Mask.Text = ""



Server.Name = "Server"

Server.Parent = HomeContainer

Server.BackgroundColor3 = Color3.new(1, 1, 1)

Server.BackgroundTransparency = 1

Server.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_2.Parent = Server

ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_2.BackgroundTransparency = 1

ImageLabel_2.Position = UDim2.new(0.5, -23, 0, 0)

ImageLabel_2.Size = UDim2.new(0, 46, 0, 46)

ImageLabel_2.Image = "rbxassetid://573084509"

ImageLabel_2.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_2.Parent = Server

TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_2.BackgroundTransparency = 1

TextLabel_2.Position = UDim2.new(0, 10, 1, -40)

TextLabel_2.Size = UDim2.new(1, -20, 0, 20)

TextLabel_2.Font = Enum.Font.SourceSansBold

TextLabel_2.FontSize = Enum.FontSize.Size24

TextLabel_2.Text = "Server"

TextLabel_2.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_2.Name = "Mask"

Mask_2.Parent = Server

Mask_2.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_2.BackgroundTransparency = 1

Mask_2.Position = UDim2.new(0, 27, 0, 0)

Mask_2.Size = UDim2.new(1, -56, 0, 65)

Mask_2.Font = Enum.Font.SourceSans

Mask_2.FontSize = Enum.FontSize.Size14

Mask_2.Text = ""



LocalPlayer.Name = "LocalPlayer"

LocalPlayer.Parent = HomeContainer

LocalPlayer.BackgroundColor3 = Color3.new(1, 1, 1)

LocalPlayer.BackgroundTransparency = 1

LocalPlayer.Position = UDim2.new(0.333000004, 10, 0, 0)

LocalPlayer.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_3.Parent = LocalPlayer

ImageLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_3.BackgroundTransparency = 1

ImageLabel_3.Position = UDim2.new(0.5, -25, 0, 0)

ImageLabel_3.Size = UDim2.new(0, 50, 0, 50)

ImageLabel_3.Image = "rbxassetid://573078228"

ImageLabel_3.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_3.Parent = LocalPlayer

TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_3.BackgroundTransparency = 1

TextLabel_3.Position = UDim2.new(0, 10, 1, -40)

TextLabel_3.Size = UDim2.new(1, -20, 0, 20)

TextLabel_3.Font = Enum.Font.SourceSansBold

TextLabel_3.FontSize = Enum.FontSize.Size24

TextLabel_3.Text = "LocalPlayer"

TextLabel_3.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_3.Name = "Mask"

Mask_3.Parent = LocalPlayer

Mask_3.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_3.BackgroundTransparency = 1

Mask_3.Position = UDim2.new(0, 27, 0, 0)

Mask_3.Size = UDim2.new(1, -56, 0, 65)

Mask_3.Font = Enum.Font.SourceSans

Mask_3.FontSize = Enum.FontSize.Size14

Mask_3.Text = ""



Scripts.Name = "Scripts"

Scripts.Parent = HomeContainer

Scripts.BackgroundColor3 = Color3.new(1, 1, 1)

Scripts.BackgroundTransparency = 1

Scripts.Position = UDim2.new(0, 0, 0.5, 0)

Scripts.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_4.Parent = Scripts

ImageLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_4.BackgroundTransparency = 1

ImageLabel_4.Position = UDim2.new(0.5, -25, 0, 0)

ImageLabel_4.Size = UDim2.new(0, 50, 0, 50)

ImageLabel_4.Image = "rbxassetid://573081437"

ImageLabel_4.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_4.Parent = Scripts

TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_4.BackgroundTransparency = 1

TextLabel_4.Position = UDim2.new(0, 10, 1, -40)

TextLabel_4.Size = UDim2.new(1, -20, 0, 20)

TextLabel_4.Font = Enum.Font.SourceSansBold

TextLabel_4.FontSize = Enum.FontSize.Size24

TextLabel_4.Text = "Scripts"

TextLabel_4.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_4.Name = "Mask"

Mask_4.Parent = Scripts

Mask_4.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_4.BackgroundTransparency = 1

Mask_4.Position = UDim2.new(0, 27, 0, 0)

Mask_4.Size = UDim2.new(1, -56, 0, 65)

Mask_4.Font = Enum.Font.SourceSans

Mask_4.FontSize = Enum.FontSize.Size14

Mask_4.Text = ""



Miscellaneous.Name = "Miscellaneous"

Miscellaneous.Parent = HomeContainer

Miscellaneous.BackgroundColor3 = Color3.new(1, 1, 1)

Miscellaneous.BackgroundTransparency = 1

Miscellaneous.Position = UDim2.new(0.333000004, 10, 0.5, 0)

Miscellaneous.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_5.Parent = Miscellaneous

ImageLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_5.BackgroundTransparency = 1

ImageLabel_5.Position = UDim2.new(0.5, -23, 0, 0)

ImageLabel_5.Size = UDim2.new(0, 46, 0, 46)

ImageLabel_5.Image = "rbxassetid://573087376"

ImageLabel_5.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_5.Parent = Miscellaneous

TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_5.BackgroundTransparency = 1

TextLabel_5.Position = UDim2.new(0, 10, 1, -40)

TextLabel_5.Size = UDim2.new(1, -20, 0, 20)

TextLabel_5.Font = Enum.Font.SourceSansBold

TextLabel_5.FontSize = Enum.FontSize.Size24

TextLabel_5.Text = "Miscellaneous"

TextLabel_5.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_5.Name = "Mask"

Mask_5.Parent = Miscellaneous

Mask_5.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_5.BackgroundTransparency = 1

Mask_5.Position = UDim2.new(0, 27, 0, 0)

Mask_5.Size = UDim2.new(1, -56, 0, 65)

Mask_5.Font = Enum.Font.SourceSans

Mask_5.FontSize = Enum.FontSize.Size14

Mask_5.Text = ""



Settings.Name = "Settings"

Settings.Parent = HomeContainer

Settings.BackgroundColor3 = Color3.new(1, 1, 1)

Settings.BackgroundTransparency = 1

Settings.Position = UDim2.new(0.666000009, 10, 0.5, 0)

Settings.Size = UDim2.new(0.333000004, -10, 0.5, -10)



ImageLabel_6.Parent = Settings

ImageLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_6.BackgroundTransparency = 1

ImageLabel_6.Position = UDim2.new(0.5, -23, 0, 0)

ImageLabel_6.Size = UDim2.new(0, 46, 0, 46)

ImageLabel_6.Image = "rbxassetid://573090294"

ImageLabel_6.ImageColor3 = Color3.new(0.615686, 0.0352941, 0.129412)



TextLabel_6.Parent = Settings

TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)

TextLabel_6.BackgroundTransparency = 1

TextLabel_6.Position = UDim2.new(0, 10, 1, -40)

TextLabel_6.Size = UDim2.new(1, -20, 0, 20)

TextLabel_6.Font = Enum.Font.SourceSansBold

TextLabel_6.FontSize = Enum.FontSize.Size24

TextLabel_6.Text = "Settings"

TextLabel_6.TextColor3 = Color3.new(0.776471, 0.0235294, 0.137255)



Mask_6.Name = "Mask"

Mask_6.Parent = Settings

Mask_6.BackgroundColor3 = Color3.new(1, 1, 1)

Mask_6.BackgroundTransparency = 1

Mask_6.Position = UDim2.new(0, 27, 0, 0)

Mask_6.Size = UDim2.new(1, -56, 0, 65)

Mask_6.Font = Enum.Font.SourceSans

Mask_6.FontSize = Enum.FontSize.Size14

Mask_6.Text = ""



Navigator.Name = "Navigator"

Navigator.Parent = Base

Navigator.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

Navigator.BackgroundTransparency = 0.5

Navigator.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)

Navigator.Position = UDim2.new(0, 10, 0, 35)

Navigator.Size = UDim2.new(0, 125, 1, -45)

Navigator.Visible = false

Navigator.BottomImage = "rbxassetid://573102620"

Navigator.MidImage = "rbxassetid://573102620"

Navigator.ScrollBarThickness = 5

Navigator.TopImage = "rbxassetid://573102620"



Item.Name = "Item"

Item.Parent = Navigator

Item.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

Item.BackgroundTransparency = 0.5

Item.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)

Item.Position = UDim2.new(0, 5, 0, 5)

Item.Size = UDim2.new(1, -15, 0, 20)

Item.Selected = true

Item.Font = Enum.Font.SourceSans

Item.FontSize = Enum.FontSize.Size14

Item.Text = "NavItem"

Item.TextColor3 = Color3.new(0.721569, 0.721569, 0.721569)



ServerContainer.Name = "ServerContainer"

ServerContainer.Parent = Base

ServerContainer.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

ServerContainer.BackgroundTransparency = 0.5

ServerContainer.Position = UDim2.new(0, 140, 0, 35)

ServerContainer.Size = UDim2.new(1, -150, 1, -45)

ServerContainer.Visible = false

ServerContainer.BottomImage = "rbxassetid://573102620"

ServerContainer.MidImage = "rbxassetid://573102620"

ServerContainer.ScrollBarThickness = 5

ServerContainer.TopImage = "rbxassetid://573102620"



dd.Name = "dd"

dd.Parent = ServerContainer

dd.BackgroundColor3 = Color3.new(0.0196078, 0.0313726, 0.0431373)

dd.Position = UDim2.new(0, 6, 0, 6)

dd.Size = UDim2.new(0.5, -10, 0, 20)

dd.Visible = false

dd.Font = Enum.Font.SourceSans

dd.FontSize = Enum.FontSize.Size14

dd.Text = "Troll Spam"

dd.TextColor3 = Color3.new(0.780392, 0.780392, 0.780392)

dd.TextStrokeTransparency = 0.5



ImageLabel_7.Parent = dd

ImageLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)

ImageLabel_7.BackgroundTransparency = 1

ImageLabel_7.Position = UDim2.new(0, 2, 0, 0)

ImageLabel_7.Size = UDim2.new(0, 20, 0, 20)

ImageLabel_7.Image = "rbxassetid://133293265"



LocalPlayerContainer.Name = "LocalPlayerContainer"

LocalPlayerContainer.Parent = Base

LocalPlayerContainer.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

LocalPlayerContainer.BackgroundTransparency = 0.5

LocalPlayerContainer.Position = UDim2.new(0, 140, 0, 35)

LocalPlayerContainer.Size = UDim2.new(1, -150, 1, -45)

LocalPlayerContainer.Visible = false

LocalPlayerContainer.BottomImage = "rbxassetid://573102620"

LocalPlayerContainer.MidImage = "rbxassetid://573102620"

LocalPlayerContainer.ScrollBarThickness = 5

LocalPlayerContainer.TopImage = "rbxassetid://573102620"



PlayersContainer.Name = "PlayersContainer"

PlayersContainer.Parent = Base

PlayersContainer.BackgroundColor3 = Color3.new(0.027451, 0.0431373, 0.0588235)

PlayersContainer.BackgroundTransparency = 0.5

PlayersContainer.Position = UDim2.new(0, 140, 0, 35)

PlayersContainer.Size = UDim2.new(1, -150, 1, -45)

PlayersContainer.Visible = false

PlayersContainer.BottomImage = "rbxassetid://573102620"

PlayersContainer.MidImage = "rbxassetid://573102620"

PlayersContainer.ScrollBarThickness = 5

PlayersContainer.TopImage = "rbxassetid://573102620"



function MakeContainer(n)

	local cont = PlayersContainer:Clone()

	cont.Name = n .. 'Container'

	cont.Parent = Base

	return cont

end



local ScriptsContainer = MakeContainer('Scripts')

local MiscContainer = MakeContainer('Miscellaneous')



local topkek = {}

topkek.store = {}

topkek.cache = {}

topkek.libgui = {}

topkek.libsettings = {}

topkek.libutil = {}

topkek.libwindows = {}

topkek.libcmd = {}

--[[ gay ass dropdown lib i made a while ago ]]--

dropdown = {}

dropdown.new = function(gui, items, placeholder)

	local self = {}

	self.value = placeholder

	self.items = items

	self.gui = gui

	

	if self.gui:FindFirstChild("__DROPDOWN") then

		self.gui["__DROPDOWN"]:Destroy()

	end

	

	self.debug = false

	

	self.gui.Text = placeholder

	self.gui.BorderSizePixel = 0

	self.gui.ZIndex = 1

	

	self.textcolor = self.gui.TextColor3

	function self.make()

		if self.gui:FindFirstChild("__DROPDOWN") then

			self.gui["__DROPDOWN"]:Destroy()

		end

			

		

		self.selectgui = Instance.new("ScrollingFrame")

		self.selectgui.Parent = self.gui

		self.selectgui.Name = "__DROPDOWN"

		self.selectgui.Size = UDim2.new(1, 0, 0, 100)

		self.selectgui.Position = UDim2.new(0, 0, 0, self.gui.AbsoluteSize.Y)

		self.selectgui.BorderSizePixel = 0

		self.selectgui.ZIndex = 2

		self.selectgui.BackgroundTransparency = self.gui.BackgroundTransparency

		self.selectgui.BackgroundColor3 = self.gui.BackgroundColor3

		self.selectgui.Visible = false

		self.selectgui.CanvasSize = UDim2.new(0, 0, 0, (#self.items-1) * 20)

		self.selectgui.ScrollBarThickness = 5

		

		if #self.items < 4 then

			self.selectgui.CanvasSize = UDim2.new(0, 0, 0, 0)

			self.selectgui.Size = UDim2.new(1, 0, 0, (#self.items-1) * 20)

		end

		

		self.item = Instance.new("TextButton")

		self.item.Size = UDim2.new(1, 0, 0, 20)

		self.item.Position = UDim2.new(0, 0, 0, 0)

		self.item.BackgroundTransparency = self.gui.BackgroundTransparency - 0.1

		self.item.BackgroundColor3 = self.gui.BackgroundColor3

		self.item.BorderSizePixel = 0

		self.item.ZIndex = 2

		self.item.TextColor3 = self.gui.TextColor3

		self.item.Font = Enum.Font.SourceSans

		self.item.FontSize = Enum.FontSize.Size14

		

		self.curitem = nil

		

		for i, v in pairs(self.items) do

			if not (v == self.value) then

				local ti = self.item:Clone()

				ti.Parent = self.selectgui

				if i == 1 then i = 2 end

				ti.Position = UDim2.new(0, 0, 0, (i - 2) * 20)

				ti.Text = v

				ti.MouseButton1Down:connect(function()

					self.value = v

					self.open = false

					self.selectgui.Visible = false

					self.gui.Text = v

					self.make()

				end)

			end

		end

	end

	

	self.getvalue = function()

		return self.value

	end

	

	self.update = function(itms)

		self.items = itms

		self.make()

	end



	self.open = false	

	

	self.gui.MouseButton1Down:connect(function()

		if self.open == false then

			self.selectgui.CanvasPosition = Vector2.new(0, 0)

			self.selectgui.Visible = true

			self.open = true

		else

			self.selectgui.Visible = false

			self.open = false

		end

	end)

	

	self.make()

	return self

end

--[[ libsettings lole ]]--

topkek.libsettings.store = {}

function topkek.libsettings:getSetting(k)

	return topkek.libsettings.store[k]

end



function topkek.libsettings:setSetting(k,v)

	topkek.libsettings.store[k]=v

end



-- [[ libutil ]] --

function topkek.libutil:createObject(o, p)

	local a, b = pcall(function()

		Instance.new(o)

	end)

	if not a then

		return

	end

	local obj = Instance.new(o)

	for prop, val in pairs(p) do

		pcall(function()

			obj[prop] = val 

		end)

	end

	return obj

end

function topkek.libutil:Color3(r,g,b)

	return Color3.new(r/255,g/255,b/255)

end; color3 = function(r,g,b) return topkek.libutil:Color3(r,g,b) end

function topkek.libutil:recurseDecal(img)--topkek2.0 code tbh

	img = 'rbxassetid://' .. img

	local function skybox(x)

		local sky = Instance.new("Sky",game.Lighting)

		local fcs={"Bk","Dn","Ft","Lf","Rt","Up"}

		for i,v in pairs(fcs) do

			sky["Skybox"..v]=x

		end

	end

	local function particle(p, b)

		local a = Instance.new("ParticleEmitter", p)

		a.Rate = 500

		a.Lifetime = NumberRange.new(20, 30)

		a.VelocitySpread = 200

		a.Texture = b

	end

			

	local function decal(p, b)

		local sides = {"Back", "Bottom", "Front", "Left", "Right", "Top"}

		for i, v in pairs(sides) do

			local a = Instance.new("Decal", p)

			a.Texture = b

			a.Face = v

		end

	end

			

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function() -- 'error occured, no output from Lua' LOLE

				if v:IsA("BasePart") then

					particle(v, img)

					decal(v, img)

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

			

	recurse(game)

	skybox(img)

end

function topkek.libutil:recurseRemove(type_)

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function()

				if v:IsA(type_) then

					v:Destroy()

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

	recurse(game)

end

function topkek.libutil:recurseSet(type_,prop,val)

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function()

				if v:IsA(type_) then

					v[prop]=val

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

	recurse(game)

end

function topkek.libutil:recurseSetObj(obj,type_,prop,val)

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function()

				if v:IsA(type_) then

					v[prop]=val

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

	recurse(obj)

end

function topkek.libutil:recurseFunc(type_,func)

	local function recurse(x)

		for i, v in pairs(x:GetChildren()) do

			pcall(function()

				if v:IsA(type_) then

					func(v)

				end

				if #(v:GetChildren())>0 then

					recurse(v)

				end

			end)

		end

	end

	recurse(game)

end

function topkek.libutil:Play(id)

	local mu = Instance.new("Sound", game.Workspace)

	mu.Volume = 1

	mu.Looped = true

	mu.Pitch = 1

	mu.SoundId = "rbxassetid://"..tostring(id)

	mu:Play()

end

function topkek.libutil:GetPlayerList()

	local list = {'Everybody'}

	for i, v in pairs(game:service'Players':GetPlayers()) do

		table.insert(list, v.Name)

	end

	return list

end

function topkek.libutil:doPlayers(drop, func)

	local str = drop.getvalue()

	local plrs = {}

	if str == 'Everybody' then

		plrs = game:GetService('Players'):GetPlayers()

	else

		plrs = {game:GetService('Players'):FindFirstChild(str)}

	end

	for i, v in pairs(plrs) do

		func(v)

	end

end

function topkek.libutil:insert(id)

	if topkek.cache[id] then return topkek.cache[id] end -- moist

	local obj = game:service'InsertService':LoadAsset(id):GetChildren()[1]

	topkek.cache[id] = obj:Clone()

	return obj

end; insert = function(id) return topkek.libutil:insert(id) end

function topkek.libutil:getTorso(plr) --r15 compatibility lole

	if plr.Character then

		if plr.Character:FindFirstChild('UpperTorso') then

			return plr.Character.UpperTorso

		else

			return plr.Character.Torso

		end

	end

end

function topkek.libutil:weiner(plr)

	plr=plr.Character

	Shaft=Instance.new("Part", plr)

	Shaft.Name='Shaft'

	Shaft.Size=Vector3.new(1, 2.5, 1)

	Shaft.TopSurface=0

	Shaft.BottomSurface=0

	Shaft.CanCollide=true

	Cyln=Instance.new("CylinderMesh", Shaft)

	Cyln.Scale=Vector3.new(0.5,0.7,0.5)

	Instance.new("Weld", plr)

	plr.Weld.Part0=plr:FindFirstChild("Torso") or plr:FindFirstChild("LowerTorso")

	plr.Weld.Part1=plr.Shaft 

	plr.Weld.C0=CFrame.new(0,-0.35,-0.9)*CFrame.fromEulerAnglesXYZ(2.2,0,0) 

	Shaft.BrickColor=BrickColor.new("Pastel brown")

	Tip=Instance.new("Part", plr)

	Tip.Name='Tip'

	Tip.TopSurface=0

	Tip.BottomSurface=0

	Tip.Size=Vector3.new(1, 1, 1)

	Tip.CanCollide=true

	Tip.Touched:connect(function(prt) if prt.Parent~=player then spawn(function() for i=1, 5 do local pert=Instance.new("Part", player) pert.CFrame=CFrame.new(prt.Position) pert.CanCollide=true local mesh=Instance.new("BlockMesh", pert) mesh.Scale=Vector3.new(0.2,0.2,0.2) pert.BrickColor=BrickColor.new("White") end end) end end)

	Cyln2=Instance.new("SpecialMesh", Tip)

	Cyln2.MeshType='Sphere'

	Cyln2.Scale=Vector3.new(0.6,0.6,0.6)

	Instance.new("Weld", plr).Name='Weld2'

	plr.Weld2.Part0=plr.Shaft

	plr.Weld2.Part1=plr.Tip 

	plr.Weld2.C0=CFrame.new(0,-.9,0)

	Tip.BrickColor=BrickColor.new("Pink")

	-----

	Ball1=Instance.new("Part", plr)

	Ball1.Name='Ball1'

	Ball1.Size=Vector3.new(1, 1, 1)

	Ball1.TopSurface=0

	Ball1.BottomSurface=0

	Cyln3=Instance.new("SpecialMesh", Ball1)

	Cyln3.MeshType='Sphere'

	Cyln3.Scale=Vector3.new(0.4,0.4,0.4)

	Instance.new("Weld", plr).Name='Weld3'

	plr.Weld3.Part0=plr.Shaft

	plr.Weld3.Part1=plr.Ball1 

	plr.Weld3.C0=CFrame.new(0.225,.4,0.2)

	Ball1.BrickColor=BrickColor.new("Pastel brown")

	-----

	Ball2=Instance.new("Part", plr)

	Ball2.Name='Ball2'

	Ball2.Size=Vector3.new(1, 1, 1)

	Ball2.TopSurface=0

	Ball2.BottomSurface=0

	Cyln3=Instance.new("SpecialMesh", Ball2)

	Cyln3.MeshType='Sphere'

	Cyln3.Scale=Vector3.new(0.4,0.4,0.4)

	Instance.new("Weld", plr).Name='Weld4'

	plr.Weld4.Part0=plr.Shaft

	plr.Weld4.Part1=plr.Ball2 

	plr.Weld4.C0=CFrame.new(-0.225,.4,0.2)

	Ball2.BrickColor=BrickColor.new("Pastel brown")

end

function topkek.libutil:scalePlayer(plr, sz)

	local pchar = plr.Character

	if pchar:FindFirstChild("UpperTorso") then

		warn("Player [" ..plr.Name.. "] is R15.")

		return

	end

	local function scale(chr,scl)

	

		for _,v in pairs(pchar:GetChildren()) do

			if v:IsA("Hat") then

				v:Clone()

				v.Parent = game.Lighting

			end

		end

			

	    local Head = chr['Head']

	    local Torso = chr['Torso']

	    local LA = chr['Left Arm']

	    local RA = chr['Right Arm']

	    local LL = chr['Left Leg']

	    local RL = chr['Right Leg']

	    local HRP = chr['HumanoidRootPart']

	

	    wait(0.1)

	   

	    Head.formFactor = 3

	    Torso.formFactor = 3

	    LA.formFactor = 3

	    RA.formFactor = 3

	    LL.formFactor = 3

	    RL.formFactor = 3

	    HRP.formFactor = 3

	    

	    Head.Size = Vector3.new(scl * 2, scl, scl)

	    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)

	    LA.Size = Vector3.new(scl, scl * 2, scl)

	    RA.Size = Vector3.new(scl, scl * 2, scl)

	    LL.Size = Vector3.new(scl, scl * 2, scl)

	    RL.Size = Vector3.new(scl, scl * 2, scl)

	    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)

	    

	    local Motor1 = Instance.new('Motor6D', Torso)

	    Motor1.Part0 = Torso

	    Motor1.Part1 = Head

    	Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)

    	Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)

    	Motor1.Name = "Neck"

			    

    	local Motor2 = Instance.new('Motor6D', Torso)

    	Motor2.Part0 = Torso

    	Motor2.Part1 = LA

    	Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)

    	Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)

    	Motor2.Name = "Left Shoulder"

    	

    	local Motor3 = Instance.new('Motor6D', Torso)

   		Motor3.Part0 = Torso

    	Motor3.Part1 = RA

    	Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)

    	Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)

    	Motor3.Name = "Right Shoulder"

    	

    	local Motor4 = Instance.new('Motor6D', Torso)

    	Motor4.Part0 = Torso

    	Motor4.Part1 = LL

    	Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)

    	Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)

    	Motor4.Name = "Left Hip"

    	

    	local Motor5 = Instance.new('Motor6D', Torso)

    	Motor5.Part0 = Torso

    	Motor5.Part1 = RL

    	Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)

    	Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)

    	Motor5.Name = "Right Hip"

    	

    	local Motor6 = Instance.new('Motor6D', HRP)

    	Motor6.Part0 = HRP

    	Motor6.Part1 = Torso

    	Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)

    	Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)

    	    

	end

	

	scale(pchar, sz)

	

	for _,v in pairs(game.Lighting:GetChildren()) do

		if v:IsA("Hat") then

			v.Parent = pchar

		end

	end

end

function topkek.libutil:dickShooter()

	Player = game:GetService("Players").LocalPlayer

	Character = Player.Character

	PlayerGui = Player.PlayerGui

	Backpack = Player.Backpack

	Torso = Character.Torso

	Head = Character.Head

	LeftArm = Character["Left Arm"]

	LeftLeg = Character["Left Leg"]

	RightArm = Character["Right Arm"]

	RightLeg = Character["Right Leg"]

	LS = Torso["Left Shoulder"]

	LH = Torso["Left Hip"]

	RS = Torso["Right Shoulder"]

	RH = Torso["Right Hip"]

		Tool = Instance.new("HopperBin")

		Tool.Parent = Backpack

		Tool.Name = "Painis"

	Bin = Tool

	so = function(id, par, vol, pit)

		

		coroutine.resume(coroutine.create(function()

			

			local sou = Instance.new("Sound", par or workspace)

			sou.Volume = vol

			sou.Pitch = pit or 1

			sou.SoundId = id

			wait()

			sou:play()

			wait(6)

			sou:Remove()

		end

	))

	end

	

	ob1d = function(mouse)

		

		size = 0.5

		mode = 1

		color = BrickColor.new(Color3.new(math.random(), math.random(), math.random()))

		mo = Instance.new("Model")

		mo.Name = "EEEEUGH HA HA HAAAAA"

		mo.Parent = workspace

		game.Debris:AddItem(mo, 10)

		p = Instance.new("Seat")

		p.Name = "Torso"

		p.Size = Vector3.new(14, 50, 14) * size

		p.BrickColor = color

		m = Instance.new("SpecialMesh")

		m.Parent = p

		p.Name = "Torso"

		p.Parent = mo

		p = Instance.new("Seat")

		p.Shape = "Ball"

		p.Size = Vector3.new(24, 24, 24) * size

		p.BrickColor = color

		p.Name = "Legball"

		for i = 1, 10 do

			lol = Instance.new("Seat")

			lol.BrickColor = BrickColor:Black()

			lol.Name = "SEE?"

			lol.Parent = mo

			lol.Size = Vector3.new(1, math.random(30, 40), 1) * size

			w = Instance.new("Weld")

			w.Part0 = p

			w.Part1 = lol

			w.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))

			w.Parent = w.Part0

		end

		p.Parent = mo

		w = Instance.new("Weld")

		w.Part0 = mo.Torso

		w.Part1 = p

		w.C0 = CFrame.new(16 * (size / 2), -48 * (size / 2), 0)

		w.Parent = w.Part0

		p = Instance.new("Seat")

		p.Shape = "Ball"

		p.Size = Vector3.new(24, 24, 24) * size

		p.BrickColor = color

		p.Name = "Legball"

		for i = 1, 10 do

			lol = Instance.new("Seat")

			lol.BrickColor = BrickColor:Black()

			lol.Name = "SEE?"

			lol.Parent = mo

			lol.Size = Vector3.new(1, math.random(30, 40), 1) * size

			w = Instance.new("Weld")

			w.Part0 = p

			w.Part1 = lol

			w.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))

			w.Parent = w.Part0

		end

		p.Parent = mo

		w = Instance.new("Weld")

		w.Part0 = mo.Torso

		w.Part1 = p

		w.C0 = CFrame.new(-16 * (size / 2), -48 * (size / 2), 0)

		w.Parent = w.Part0

		p = Instance.new("Seat")

		p.Shape = "Ball"

		p.Size = Vector3.new(21, 15, 21) * size

		p.BrickColor = color

		p.Name = "Legball"

		for i = 1, 10 do

			lol = Instance.new("Seat")

			lol.BrickColor = BrickColor:Black()

			lol.Name = "SEE?"

			lol.Parent = mo

			lol.Size = Vector3.new(1, math.random(30, 40), 1) * size

			w = Instance.new("Weld")

			w.Part0 = p

			w.Part1 = lol

			w.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))

			w.Parent = w.Part0

		end

		p.Parent = mo

		w = Instance.new("Weld")

		w.Part0 = mo.Torso

		w.Part1 = p

		w.C0 = CFrame.new(0, 60 * (size / 2), 0)

		m = Instance.new("SpecialMesh")

		m.Parent = p

		p.Name = "Head"

		w.Parent = w.Part0

		s = Instance.new("Sound")

		s.Parent = mo.Torso

		s.Volume = 100

		s.Pitch = 1

		s.SoundId = "http://www.roblox.com/asset/?id=149779810"

		s.Looped = true

		s:play()

		coroutine.resume(coroutine.create(function(Part)

			

			while Part.Parent ~= nil do

				wait(math.random())

				so("http://www.roblox.com/asset/?id=148636758", Part, 100, 1)

			end

		end

	), mo.Torso)

		mo.Torso.CFrame = mo.Torso.CFrame * Torso.CFrame * CFrame.new(0, 0, -50 * size) * CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)

		mo.Torso.Velocity = mouse.Hit.lookVector * 400

		coroutine.resume(coroutine.create(function(Part)

			

			while 1 do

				wait(math.random(0, 1) + math.random())

				Part.RotVelocity = Vector3.new(math.random(-40, 40), math.random(-40, 40), math.random(-40, 40))

			end

		end

	), mo.Torso)

	end

	

	ob1u = function(mouse)

		

	end

	

	buttonhold = false

	key = function(key, mouse)

		

	end

	

	key2 = function(key, mouse)

		

	end

	

	s = function(mouse)

		

		mouse.Button1Down:connect(function()

			

			ob1d(mouse)

		end

	)

		mouse.Button1Up:connect(function()

			

			ob1u(mouse)

		end

	)

		mouse.KeyDown:connect(key)

		mouse.KeyUp:connect(key2)

	end

	

	ds = function(mouse)

		

	end

	

	Bin.Selected:connect(s)

	Bin.Deselected:connect(ds)

end

--[[ libgui xd ]]--

topkek.libgui.seperation = 12

function topkek.libgui:addLeftIcon(parent, img, sz)

	topkek.libutil:createObject('ImageLabel', {

		Parent = parent;

		BackgroundTransparency = 1;

		Position = UDim2.new(0, 2, 0, 0);

		Size = UDim2.new(0, sz, 0, sz);

		Image = img;

	})

end

function topkek.libgui:hookContainer(o, sepr, stt)

	if not o:IsA("ScrollingFrame") then

		return nil

	end	

	

	local self = {}

	self.main = o

	self.drawX = 0

	self.drawY = stt or topkek.libgui.seperation/2

	self.drawHeight = 0

	self.sepr = sepr or topkek.libgui.seperation

	

	function self:drawButton(sz, txt, func, ysz, cbgd)

		local xposOffset = 0

		local xposScale = self.drawX

		local xszOffset = 0

		local xszScale = sz

		if not (self.drawX == 0)  then

			xszOffset = -4

			if sz + self.drawX > 0.998 then

				xszOffset = -11

			end

		elseif sz == 1 then

			xszOffset = -(self.sepr) - 5

			xposOffset = self.sepr/2

		else

			xszOffset = -4 + -(self.sepr/2)

			xposOffset = self.sepr/2

		end

		if not ysz then ysz = 20 end

		local obj = topkek.libutil:createObject("TextButton", {

			Parent = self.main;

			BackgroundColor3 = cbgd or color3(15, 23, 30);

			BorderColor3 = color3(27, 42, 53);

			Position = UDim2.new(xposScale, xposOffset, 0, self.drawY);

			Size = UDim2.new(xszScale, xszOffset, 0, ysz);

			Font = 'SourceSans';

			FontSize = 'Size14';

			Text = txt;

			TextSize = 14;

			TextColor3 = color3(199, 199, 199);

			TextStrokeTransparency = 0.5;

		})

		obj.MouseButton1Down:connect(function()

			func()

		end)

		if ysz > self.drawHeight then

			self.drawHeight = ysz

		end

		self.drawX = self.drawX + sz

		if self.drawX > 0.998 then

			self.drawY = self.drawY + 3 + self.drawHeight

			self.drawX = 0

			self.drawHeight = 0

			self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)

		end

		return obj

	end

	

	function self:GetChildren()

		return self.main:GetChildren()

	end

	

	function self:getDrawY()

		return self.drawY

	end

	

	function self:setDrawY(y)

		self.drawY = y

	end

	

	function self:drawTextBox(sz, txt, ysz, cbgd)

		local xposOffset = 0

		local xposScale = self.drawX

		local xszOffset = 0

		local xszScale = sz

		if not (self.drawX == 0)  then

			xszOffset = -4

			if sz + self.drawX > 0.998 then

				xszOffset = -11

			end

		elseif sz == 1 then

			xszOffset = -(self.sepr) - 5

			xposOffset = self.sepr/2

		else

			xszOffset = -4 + -(self.sepr/2)

			xposOffset = self.sepr/2

		end

		if not ysz then ysz = 20 end

		local obj = topkek.libutil:createObject("TextBox", {

			Parent = self.main;

			BackgroundColor3 = cbgd or color3(5, 8, 11);

			BorderColor3 = color3(27, 42, 53);

			Position = UDim2.new(xposScale, xposOffset, 0, self.drawY);

			Size = UDim2.new(xszScale, xszOffset, 0, ysz);

			Font = 'SourceSans';

			FontSize = 'Size14';

			Text = txt;

			TextSize = 14;

			TextColor3 = color3(199, 199, 199);

		})

		if ysz > self.drawHeight then

			self.drawHeight = ysz

		end

		self.drawX = self.drawX + sz

		if self.drawX > 0.998 then

			self.drawY = self.drawY + 3 + self.drawHeight

			self.drawX = 0

			self.drawHeight = 0

			self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)

		end

		return obj

	end

	

	function self:drawScrollingContainer(ysz)

		local sz = UDim2.new(1, -(self.sepr/2) - 11, 0, ysz)

		local pos = UDim2.new(0, self.sepr/2, 0, self.drawY)

		local obj = topkek.libutil:createObject("ScrollingFrame", {

			Parent = self.main;

			BackgroundColor3 = color3(7, 11, 15);

			BorderColor3 = color3(27, 42, 53);

			Position = pos;

			Size = sz;

			BottomImage = 'rbxassetid://573102620';

			MidImage = 'rbxassetid://573102620';

			TopImage = 'rbxassetid://573102620';

			ScrollBarThickness = 5;

		})

		self.drawY = self.drawY + 5 + ysz

		self.drawX = 0

		self.drawHeight = 0

		self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)

		return topkek.libgui:hookContainer(obj, 12, 5)

	end

	

	function self:drawContainer(xsz, ysz)

		local sz = UDim2.new(xsz, -(self.sepr/2) - 11, 0, ysz)

		local pos = UDim2.new(0, self.sepr/2, 0, self.drawY)

		local obj = topkek.libutil:createObject("ScrollingFrame", {

			Parent = self.main;

			BackgroundTransparency = 1;

			Position = pos;

			Size = sz;

		})

		self.drawY = self.drawY + 5 + ysz

		self.drawX = 0

		self.drawHeight = 0

		self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)

		return topkek.libgui:hookContainer(obj, 12, 5)

	end

	

	function self:addSpacing()

		self.drawY = self.drawY + 3

	end

	

	function self:center()

		local a,c,b=

			self.main.Position.X.Scale,

				self.main.Position.X.Offset,self.main.Size.Y.Offset

		self.main.Position=UDim2.new(a,c+2, 0.5, -(b/2))

	end	

	

	return self

end



--[[ windows ]]--

topkek.libwindows.windows = {}

function topkek.libwindows:registerWindow(w)

	table.insert(topkek.libwindows.windows, w)

end

function topkek.libwindows:switchWindow(w, x)

	for _, k in pairs(topkek.libwindows.windows) do

		if k.Name == w then

			k.Visible = true

		else

			k.Visible = false

		end	

	end

	if w == 'HomeContainer' then

		base.Navigator.Visible = false

	else

		base.Navigator.Visible = true

	end

	base.Top.Location.Text = x

end

function topkek.libwindows:initiateNavigator()

	local nav = base.Navigator

	local template = nav.Item:Clone(); nav.Item:Destroy();

	local wins = topkek.libsettings:getSetting('windows')

	local y = 5

	for _, k in pairs(wins) do

		local o = template:Clone()

		o.Parent = nav

		o.Position = UDim2.new(0, 5, 0, y)

		o.Text = k

		o.MouseButton1Down:connect(function()

			topkek.libwindows:switchWindow(k .. 'Container', k)

		end)

		y = y + 25

	end

	nav.CanvasSize = UDim2.new(0, 0, 0, y)

end

function topkek.libwindows:initiateHome()

	local home = base.HomeContainer

	home.LocalPlayer.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('LocalPlayerContainer', 'LocalPlayer')

	end)

	home.Server.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('ServerContainer', 'Server')

	end)

	home.Scripts.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('ScriptsContainer', 'Scripts')

	end)

	home.Miscellaneous.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('MiscellaneousContainer', 'Miscellaneous')

	end)

	home.Players.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('PlayersContainer', 'Players')

	end)

	home.Settings.Mask.MouseButton1Down:connect(function()

		topkek.libwindows:switchWindow('SettingsContainer', 'Settings')

	end)

end

--[[ defines ]]--

topkek.libsettings:setSetting('version', '1.0.0')

topkek.libsettings:setSetting('bans', {})

topkek.libsettings:setSetting('admins', {})

topkek.libsettings:setSetting('windows', {

	'Home';

	'Server';

	'LocalPlayer';

	'Players';

	'Scripts';

	'Miscellaneous';

	'Settings';

	'Explorer';

	'Gear';

	'Hats';

	'Music';

	'Effects';

	'Filtering';

	'Commands';

})

topkek.libsettings:setSetting('misc', {

	'Explorer';

	'Gear';

	'Hats';

	'Music';

	'Effects';

	'Filtering';

	'Commands';

})

topkek.store.gui = ScreenGui; gui = topkek.store.gui --  change later

topkek.store.base = topkek.store.gui['Base']; base = topkek.store.base

-- [[ server ]] --

--sz, txt, func, ysz, cbgd

local servwin = topkek.libgui:hookContainer(base['ServerContainer'])

local decalList, decalImp = servwin:drawScrollingContainer(100)

local decalAct = servwin:drawButton(2/3,'Spam Decal',function()

	topkek.libutil:recurseDecal(decalImp.Text)end)

decalImp = servwin:drawTextBox(1/3,'573896613')

servwin:drawButton(1,'Rollback Spam',function()

	topkek.libutil:recurseRemove('ParticleEmitter')

	topkek.libutil:recurseRemove('Decal')

end)

local decs = {

	{'Cerberus', '573896613'},

	{'Rain', '574772793'},

	{'Robbie', '574773630'},

	{'Pepe', '244905904'},

	{'Troll Face', '48308661'},

	{'Jeff', '109129888'},

	{'Shrek', '170539018'},

	{'Doge', '133720697'},

	{'Dat Boi', '409578848'},

}

for _, v in pairs(decs) do

	local b = decalList:drawButton(1, v[1], function()decalImp.Text=v[2]end,20,color3(5,8,11))

	topkek.libgui:addLeftIcon(b,'rbxassetid://'..v[2],20)

end

servwin:addSpacing()

-- [[lighting]] --

-- <<time>> --

local timeInp

servwin:drawButton(2/3,'Set Time',function()

	game:GetService('Lighting').TimeOfDay = timeImp.Text .. ":00:00"

end)

timeImp = servwin:drawTextBox(1/3,'14')

-- <<fog> --

local fogInp

servwin:drawButton(2/3,'Set FogEnd',function()

	if not tonumber(fogInp.Text) then return end

	game:GetService('Lighting').FogEnd = tonumber(fogInp.Text)

end)

fogInp = servwin:drawTextBox(1/3,'100000')

-- <<brightness>> --

local brightInp

servwin:drawButton(2/3,'Set Brightness',function()

	if not tonumber(brightInp.Text) then return end

	game:GetService('Lighting').Brightness = tonumber(brightInp.Text)

end)

brightInp = servwin:drawTextBox(1/3,'1')

-- <<reset>> --

servwin:drawButton(1,'Reset Lighting',function()

	local l = game:service'Lighting'

	l.Ambient = Color3.new(0, 0, 0)

	l.Brightness = 1

	l.GlobalShadows = true

	l.Outlines = true

	l.FogEnd = 100000

	l.FogStart = 0

	l:SetMinutesAfterMidnight(12*60)

end)

-- [[ fixing ]] --

servwin:addSpacing()

servwin:drawButton(1/2,'Clear Server',function()

	for i,v in pairs(game:service'Workspace':GetChildren()) do

		if (not v:IsA("Terrain"))and(v.Name~="Camera") then

			v:Destroy()

		end

	end

end)

servwin:drawButton(1/2,'Shutdown',function()

	for i,v in pairs(game:GetService('Players')) do

		v.Parent = nil

	end

end)

servwin:drawButton(1/2,'Remove Sound',function()

	topkek.libutil:recurseRemove('Sound')

end)

servwin:drawButton(1/2,'Baseplate',function()

	for X = -2500, 2500, 512 do

		for Z = -2500, 2500, 512 do

			local P = Instance.new("Part")

		    P.Anchored = true

		    P.Locked = true

		    P.Size = Vector3.new(512,3,512)

		    P.CFrame = CFrame.new(X,0,Z)

		    P.BrickColor = BrickColor.Green()

		    P.Parent = game:service'Workspace'

		end

	end

end)

--[[ destruction ]]--

servwin:addSpacing()

servwin:drawButton(1/2,'Clear Terrain',function()

	game:service'Workspace'.Terrain:Clear()

end)

servwin:drawButton(1/2,'Flood',function()

	game:service'Workspace'.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")

end)

servwin:drawButton(1/2,'Reflectancy',function()

	topkek.libutil:recurseSet('BasePart','Reflectance',1)

end)

servwin:drawButton(1/2,'Transparency',function()

	topkek.libutil:recurseSet('BasePart','Transparency',1)

end)

servwin:drawButton(1/2,'666',function()

	for i,v in next,workspace:children''do

	 	if(v:IsA'BasePart')then

	    me=v;

	    bbg=Instance.new('BillboardGui',me);

	    bbg.Name='stuf';

	    bbg.Adornee=me;

	    bbg.Size=UDim2.new(2.5,0,2.5,0)

	    --bbg.StudsOffset=Vector3.new(0,2,0)

	    tlb=Instance.new'TextLabel';

	    tlb.Text='666 666 666 666 666 666';

	    tlb.Font='SourceSansBold';

	    tlb.FontSize='Size48';

	    tlb.TextColor3=Color3.new(1,0,0);

	    tlb.Size=UDim2.new(1.25,0,1.25,0);

	    tlb.Position=UDim2.new(-0.125,-22,-1.1,0);

	    tlb.BackgroundTransparency=1;

	    tlb.Parent=bbg;

	    end;end;

	    --coroutine.wrap(function()while wait''do

	      s=Instance.new'Sound';

	      s.Parent=workspace;

	      s.SoundId='rbxassetid://152840862';

	      s.Pitch=1;

	      s.Volume=1;

	      s.Looped=true;

	      s:play();

	      --end;end)();

	      function xds(dd)

	        for i,v in next,dd:children''do

	          if(v:IsA'BasePart')then

	            v.BrickColor=BrickColor.new'Really black';

	            v.TopSurface='Smooth';

	            v.BottomSurface='Smooth';

	            s=Instance.new('SelectionBox',v);

	            s.Adornee=v;

	            s.Color=BrickColor.new'Really red';

	            a=Instance.new('PointLight',v);

	            a.Color=Color3.new(1,0,0);

	            a.Range=15;

	            a.Brightness=5;

	            f=Instance.new('Fire',v);

	            f.Size=19;

	            f.Heat=22;

	            end;

	            game.Lighting.TimeOfDay=0;

	            game.Lighting.Brightness=0;

	            game.Lighting.ShadowColor=Color3.new(0,0,0);

	            game.Lighting.Ambient=Color3.new(1,0,0);

	            game.Lighting.FogEnd=200;

	            game.Lighting.FogColor=Color3.new(0,0,0);

	        local dec = 'http://www.roblox.com/asset/?id=19399245';

	            local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}

	            --coroutine.wrap(function()

	            --for _,__ in pairs(fac) do

	            --local ddec = Instance.new("Decal", v)

	            --ddec.Face = __

	            --ddec.Texture = dec

	        --end end)()

	            if #(v:GetChildren())>0 then

	                   xds(v) 

	              end

	         end

	    end

	xds(game.Workspace)

end)

servwin:drawButton(1/2,'Troll',function()

	topkek.libutil:recurseDecal('48308661')

	topkek.libutil:Play(154664102)

end)

servwin:drawButton(1/2,'Colorize',function() -- when u skid off variable XDDDDDpranked

	local materiallist = 

	{Enum.Material.Plastic,Enum.Material.Wood,Enum.Material.Slate,Enum.Material.Concrete,Enum.Material.CorrodedMetal,

		Enum.Material.DiamondPlate,Enum.Material.Foil,Enum.Material.Grass,

		Enum.Material.Ice,Enum.Material.Marble,Enum.Material.Granite,Enum.Material.Brick,

		Enum.Material.Pebble,Enum.Material.Sand,Enum.Material.Sand,

		Enum.Material.Fabric,Enum.Material.SmoothPlastic,Enum.Material.Metal,Enum.Material.WoodPlanks,Enum.Material.Neon,Enum.Material.Cobblestone}

	local function r(where) 

		for _,v in pairs (where:GetChildren()) do 

		if v:IsA("BasePart") then 

		spawn(function() while wait(0.1) do v.Material = materiallist[math.random(#materiallist)] wait()   end end) end r(v) end end r(workspace)

end)

servwin:drawButton(1/2,'Materialize',function()

	local function r(where) 

 	for _,v in pairs (where:GetChildren()) do 

  	if v:IsA("BasePart") then 

   	spawn(function() while wait(0.1) do v.Transparency = math.random(0,1) wait()   end end) end r(v) end end r(workspace)

end)

servwin:drawButton(1/2,'Meshify',function()

	local enums={

		Enum.MeshType.Head;

		Enum.MeshType.Torso;

		Enum.MeshType.Wedge;

		Enum.MeshType.Brick;

		Enum.MeshType.Sphere;

		Enum.MeshType.Cylinder;

	}

	topkek.libutil:recurseFunc('BasePart',function(o)

		local mesh = Instance.new('SpecialMesh', o)

		mesh.MeshType = enums[math.random(1,#enums)]

	end)

end)

servwin:drawButton(1/2,'Loop-Meshify',function()

	coroutine.wrap(function()

		while true do

			local enums={

				Enum.MeshType.Head;

				Enum.MeshType.Torso;

				Enum.MeshType.Wedge;

				Enum.MeshType.Brick;

				Enum.MeshType.Sphere;

				Enum.MeshType.Cylinder;

			}

			topkek.libutil:recurseFunc('BasePart',function(o)

				if o:FindFirstChild("Mesh") then o.Mesh:Destroy() end

				local mesh = Instance.new('SpecialMesh', o)

				mesh.MeshType = enums[math.random(1,#enums)]

			end)

			wait(0.5)

		end

	end)()

end)

--<<<< END OF SERVER MENU >>>>--

plrwin = topkek.libgui:hookContainer(base['PlayersContainer'])

local plrDrop = plrwin:drawButton(1,'test-dropdown',function()end)

plrDrop = dropdown.new(plrDrop,topkek.libutil:GetPlayerList(),'Everybody')

game:GetService('Players').PlayerAdded:connect(function()

	plrDrop.update(topkek.libutil:GetPlayerList())

end)

game:GetService('Players').PlayerRemoving:connect(function()

	plrDrop.update(topkek.libutil:GetPlayerList())

end)

plrwin:addSpacing()

local actions = plrwin --plrwin:drawScrollingContainer(163) [[lole]]

actions:drawButton(1/3, 'Kill', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.Health = 0

		end

	end)

end)

actions:drawButton(1/3, 'Freeze', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			topkek.libutil:getTorso(z).Anchored = true

		end

	end)

end)

actions:drawButton(1/3, 'Thaw', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			topkek.libutil:getTorso(z).Anchored = false

		end

	end)

end)

actions:drawButton(1/3, 'Fire', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("Fire", topkek.libutil:getTorso(z))

		end

	end)

end)

actions:drawButton(1/3, 'Sparkles', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("Sparkles", topkek.libutil:getTorso(z))

		end

	end)

end)

actions:drawButton(1/3, 'Smoke', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("Smoke", topkek.libutil:getTorso(z))

		end

	end)

end)

actions:drawButton(1/3, 'BTools', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		local a = Instance.new("HopperBin")

		a.BinType = "GameTool"

		a.Parent = z.Backpack

		local a = Instance.new("HopperBin")

		a.BinType = "Clone"

		a.Parent = z.Backpack

		local a = Instance.new("HopperBin")

		a.BinType = "Hammer"

		a.Parent = z.Backpack

	end)

end)

actions:drawButton(1/3, 'Kick', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		local function doKick()

            if z.Character and z.Character:FindFirstChild('HumanoidRootPart') and z.Character:FindFirstChild('Torso') then

                z.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(999000, 1001000), 1000000, 1000000)

                local SP = Instance.new('SkateboardPlatform', z.Character) SP.Position = z.Character.HumanoidRootPart.Position SP.Transparency = 1

                spawn(function()

                    repeat wait()

                        if z.Character and z.Character:FindFirstChild('HumanoidRootPart') then

                            SP.Position = z.Character.HumanoidRootPart.Position

                        end

                    until not game:GetService('Players'):FindFirstChild(z.Name)

                end)

                z.Character.Torso.Anchored = true

            end

		end

		repeat

			doKick()

			wait()

		until not z

	end)

end)

actions:drawButton(1/3, 'Nil', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		z.Parent = nil

	end)

end)

actions:drawButton(1/3, 'Bring', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			z.Character.HumanoidRootPart.CFrame =

				game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1,1,1)

		end

	end)

end)

actions:drawButton(1/3, 'Goto', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame =

				z.Character.HumanoidRootPart.CFrame * CFrame.new(1,1,1)

		end

	end)

end)

actions:drawButton(1/3, 'Freefall', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			z.Character.HumanoidRootPart.CFrame = z.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10000, 0)		

		end

	end)

end)

actions:drawButton(1/3, 'Sword', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		insert(125013769).Parent = z.Backpack

	end)

end)

actions:drawButton(1/3, 'Guns', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		insert(130113146).Parent = z.Backpack

		insert(67747912).Parent = z.Backpack

		insert(95354288).Parent = z.Backpack

	end)

end)

actions:drawButton(1/3, 'Knife', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		insert(170897263).Parent = z.Backpack

	end)

end)



actions:drawButton(1/3, 'Stun', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if not z.Character:FindFirstChild('UpperTorso') then

			z.Character.Torso.CFrame = z.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0) 

		end

		z.Character.Humanoid.PlatformStand = true

	end)

end)

actions:drawButton(1/3, 'Invisible', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'Transparency', 1)

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'Transparency', 1)

		end

	end)

end)

actions:drawButton(1/3, 'Visible', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'Transparency', 0)

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'Transparency', 1)

		end

	end)

end)

actions:drawButton(1/3, 'God', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.MaxHealth = math.huge

			z.Character.Humanoid.Health = math.huge

		end

	end)

end)



actions:drawButton(1/3, 'Semigod', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.MaxHealth = 9999999999

			z.Character.Humanoid.Health = 9999999999

		end

	end)

end)

actions:drawButton(1/3, 'Nuke', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		local torso = topkek.libutil:getTorso(z)

		local nuke = Instance.new("Part", game.Workspace)

		local opos = torso.CFrame

		nuke.BrickColor = BrickColor.new("Bright yellow")

		nuke.TopSurface = Enum.SurfaceType.Smooth

		nuke.BottomSurface = Enum.SurfaceType.Smooth

		nuke.Anchored = true

		nuke.CanCollide = false

		nuke.Shape = "Ball"				

		nuke.Transparency = 0.5

		nuke.CFrame = torso.CFrame		

		nuke.Size = Vector3.new(1, 1, 1)

		nuke.Touched:connect(function(p)

			local expl = Instance.new("Explosion", p)

			expl.BlastPressure = 50000

			expl.BlastRadius = 50

			expl.Position = p.Position

			p.Material = Enum.Material.CorrodedMetal

			p:BreakJoints()

		end)

		for i = 1, 150 do

			nuke.Size = Vector3.new(i, i, i)

			nuke.CFrame = opos

			wait(0.08)

		end

		nuke:Destroy()

	end)

end)

actions:drawButton(1/3, 'Confuse', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.WalkSpeed = -16

		end

	end)

end)

actions:drawButton(1/3, 'Goldify', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'Material', 'Marble')

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'Material', 'Marble')

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'BrickColor', BrickColor.new('Bright yellow'))

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'BrickColor', BrickColor.new('Bright yellow'))

		end

	end)

end)

actions:drawButton(1/3, 'Neon', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:recurseSetObj(z.Character, 'BasePart', 'Material', 'Neon')

			topkek.libutil:recurseSetObj(z.Character, 'MeshPart', 'Material', 'Neon')

		end

	end)

end)

actions:drawButton(1/3, 'Insane', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			for i,v in pairs(topkek.libutil:getTorso(z):GetChildren()) do

				if v:IsA("Motor6D") then

					coroutine.wrap(function()

					while v do

						v.C0=v.C0*CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

						wait()

					end

					end)()

				end

			end

		end

	end)

end)

actions:drawButton(1/3, 'Quicksand', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			if z.Character:FindFirstChild('Humanoid') then

				local tor = topkek.libutil:getTorso(z)

				local hole = Instance.new("Part", z.Character)

				hole.Anchored = true

				hole.Name = "Hole"

				hole.FormFactor = Enum.FormFactor.Custom

				hole.Size = Vector3.new(7, 1, 7)

				hole.CanCollide = false

				hole.CFrame = tor.CFrame * CFrame.new(0,-3.3,0)

				hole.BrickColor = BrickColor.new("Cool yellow")

				hole.Material = Enum.Material.Sand

				local hm = Instance.new("CylinderMesh", hole)

				tor.Anchored = true

				if z.Character:FindFirstChild("Humanoid") then

					z.Character.Humanoid.Jump = true

				end

				for x,m in pairs(z.Character:GetChildren()) do

					if m:IsA("BasePart") or m:IsA("MeshPart") then

						m.CanCollide = false

					end

				end

				for i=1,75 do

					tor.CFrame=tor.CFrame*CFrame.new(0,-0.1,0)

					wait(0.06)

				end

				tor.CFrame=tor.CFrame*CFrame.new(0,

					-500,0

				)

				z.Character.Humanoid.Health = 0

			end

		end

	end)

end)

actions:drawButton(1/3, 'Duck', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			local pchar = z.Character

--		    for i,v in pairs(pchar.Torso:GetChildren()) do

--			    if v:IsA("Decal") then

--				    v:Destroy()

--			    end

--		    end

		    for i,v in pairs(pchar:GetChildren()) do

			    if v:IsA("Hat") or v:IsA("Accessory") then

				    v:Destroy()

			    end

		    end

		    local duck = Instance.new("SpecialMesh", z.Character.HumanoidRootPart)

		    duck.MeshType = "FileMesh"

		    duck.MeshId = "http://www.roblox.com/asset/?id=9419831"

		    duck.TextureId = "http://www.roblox.com/asset/?id=9419827"

		    duck.Scale = Vector3.new(5, 5, 5)

		    topkek.libutil:recurseSetObj(z.Character, 'Instance', 'Transparency', 1)

			z.Character.HumanoidRootPart.Transparency = 0

		end

	end)

end)

actions:drawButton(1/3, 'Shrek', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			local pchar = z.Character

			for i,v in pairs(pchar:GetChildren()) do

				if v:IsA("Hat") or v:IsA("Accessory") or v:IsA("CharacterMesh") or v:IsA("Shirt") or v:IsA("Pants") then

					v:Destroy()

				end

			end

			for i,v in pairs(pchar.Head:GetChildren()) do

				if v:IsA("Decal") or v:IsA("SpecialMesh") then

					v:Destroy()

				end

			end

			

			local mesh = Instance.new("SpecialMesh", pchar.Head)

			mesh.MeshType = "FileMesh"

			pchar.Head.Mesh.MeshId = "http://www.roblox.com/asset/?id=19999257"

			pchar.Head.Mesh.Offset = Vector3.new(-0.1, 0.1, 0)

			pchar.Head.Mesh.TextureId = "http://www.roblox.com/asset/?id=156397869"

			

			local Shirt = Instance.new("Shirt", z.Character)

			local Pants = Instance.new("Pants", z.Character)

			

			Shirt.ShirtTemplate = "rbxassetid://133078194"

			Pants.PantsTemplate = "rbxassetid://133078204"

		end

	end)

end)

actions:drawButton(1/3, 'Bighead', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			if z.Character:FindFirstChild('Head') then

				z.Character.Head.Mesh.Scale=Vector3.new(5,5,5)

			end

		end

	end)

end)

actions:drawButton(1/3, 'Hotdog', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			if z.Character:FindFirstChild('Head') then

				topkek.libutil:weiner(z)

			end

		end

	end)

end)

actions:drawButton(1/3, 'Dwarf [R6]', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:scalePlayer(z, 0.5)

		end

	end)

end)

actions:drawButton(1/3, 'Giant [R6]', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			topkek.libutil:scalePlayer(z, 5)

		end

	end)

end)

actions:drawButton(1/3, 'Giraffe [R6]', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			local char=z.Character

			local h=char.Head

			local tor=char:FindFirstChild("Torso")

			if not tor then return end

			tor.Neck.C0=tor.Neck.C0*CFrame.new(0,0,5)

			local fn=Instance.new("Part",char)

			fn.Size=Vector3.new(1,5.5,1)

			fn.Name="FakeNeck"

			fn.Anchored=false

			fn.CanCollide=false

			if char:FindFirstChild("Body Colors") then

				fn.BrickColor=char["Body Colors"].HeadColor

			end

			local cm=Instance.new("CylinderMesh",fn)

			local we=Instance.new("Weld",h)

			we.Part0=h

			we.Part1=fn

			we.C1=we.C1*CFrame.new(0,2.6,0)

		end

	end)

end)

actions:drawButton(1/3, 'Select', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("SelectionBox", z.Character).Adornee = z.Character

		end

	end)

end)

actions:drawButton(1/3, 'Sphere', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("SelectionSphere", z.Character).Adornee = z.Character

		end

	end)

end)

actions:drawButton(1/3, 'Sit', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.Sit = true

		end

	end)

end)

actions:drawButton(1/3, 'Jump', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.Jump = true

		end

	end)

end)

actions:drawButton(1/3, 'No Tools', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		for _, t in pairs(z.Backpack:GetChildren()) do

			t:Destroy()

		end

	end)

end)

actions:drawButton(1/3, 'Take Tools', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		for _, t in pairs(z.Backpack:GetChildren()) do

			t.Parent = game:service'Players'.LocalPlayer.Backpack

		end

	end)

end)

actions:drawButton(1/3, 'Disable', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.Parent = nil

		end

	end)

end)

actions:drawButton(1/3, 'Fast', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.WalkSpeed = 50

		end

	end)

end)

actions:drawButton(1/3, 'Slow', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild("Humanoid") then

			z.Character.Humanoid.WalkSpeed = 8

		end

	end)

end)

actions:drawButton(1/3,'Explode', function()

	topkek.libtil:doPlayers(plrDrop, function(z)

		local explosion = Instance.new("Explosion")

		explosion.Position = topkek.libutil:getTorso(z).Position

		explosion.Parent = game.Workspace

	end)

end)

local Follow

actions:drawButton(1/3,'Annoy', function()

	if Follow == true then

		Follow = false; return

	else Follow = true end

	topkek.libutil:doPlayers(plrDrop, function(z)

		while Follow == true do

			game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame=

				z.Character.HumanoidRootPart.CFrame

			wait()

		end

	end)

end)

actions:drawButton(1/3,'ForceField', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character then

			Instance.new("ForceField", z.Character)

		end

	end)

end)

actions:drawButton(1/3,'Friendlag', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		for i = 1, 10 do

			spawn(function()

				while wait() do

		    		game.Players.LocalPlayer:RequestFriendship(z)

		  	  		game.Players.LocalPlayer:RevokeFriendship(z)

				end

			end)

		end

	end)

end)

actions:drawButton(1/3,'Force Follow', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		game:GetService("RunService"):BindToRenderStep("_", 0, function()

			z.Character.Humanoid:MoveTo(game.Players.LocalPlayer.Character.Head.Position)

		end)

	end)

end)

actions:drawButton(1/3,'Dab', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character and z.Character:FindFirstChild("Torso") then

			local chr = z.Character

			chr.Animate.Disabled = true

	        chr.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.699999988, 0, 0.939692616, 0, -0.342020124, -0.330366075, -0.258819044, -0.907673359, -0.0885213241, 0.965925813, -0.243210346)

	        chr.Torso["Right Shoulder"].C1 = CFrame.new(-0.600000024, 0.5, -0.200000003, 0.664462984, 0.241844743, 0.707106769, -0.664462984, -0.241844788, 0.707106769, 0.342020154, -0.939692616, -3.09086197e-008)

	        chr.Torso["Neck"].C1 = CFrame.new(0, -0.600000024, 0, -0.866025388, 0.5, 0, -0.171010137, -0.29619807, 0.939692616, 0.469846278, 0.813797653, 0.342020124)

		end

	end)

end)

actions:addSpacing()

local chatInp

actions:drawButton(1/2, 'Make Chat', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		game:GetService('Chat'):Chat(z.Character, chatInp.Text)

	end)

end)

chatInp = actions:drawTextBox(1/2, '')

local insertInp

actions:drawButton(1/2, 'Insert Into', function()

	if not tonumber(insertInp.Text) then return end

	local item = insert(insertInp.Text)

	if not item then return end

	topkek.libutil:doPlayers(plrDrop, function(z)

		item:Clone().Parent = z.Backpack

	end)

end)

insertInp = actions:drawTextBox(1/2, '')

local speedInp

actions:drawButton(1/2, 'Set Speed', function()

	if not tonumber(speedInp.Text) then return end

	topkek.libutil:doPlayers(plrDrop, function(z)

		if z.Character:FindFirstChild('Humanoid') then

			z.Character.Humanoid.WalkSpeed = tonumber(speedInp.Text)

		end

	end)

end)

speedInp = actions:drawTextBox(1/2, '')

local nameInp

actions:drawButton(1/2, 'Set Name', function()

	topkek.libutil:doPlayers(plrDrop, function(z)

		local Character = z.Character

		local newName = Instance.new("Model", z.Character)

		newName.Name = nameInp.Text

		local cl = Character:WaitForChild("Head"):Clone()

		cl.Parent = newName

		cl:WaitForChild("face"):Destroy()

		local hum = Instance.new("Humanoid", newName)

		hum.Name = "NameTag"

		hum.MaxHealth = 0

		hum.Health = 0

		local weld = Instance.new("Weld", cl)

		weld.Part0 = cl

		weld.Part1 = Character:WaitForChild("Head")

		Character:WaitForChild("Head").Transparency = 1

		Wait(.5)

		cl.BrickColor = Character:WaitForChild("Head").BrickColo

	end)

end)

nameInp = actions:drawTextBox(1/2, '')

--[[ localplayer ]]--

local lp = game:GetService('Players').LocalPlayer

local localwin = topkek.libgui:hookContainer(base['LocalPlayerContainer'])

local appearInp

localwin:drawButton(1/2, 'Set Appearance', function()

	local id = 0

	if not tonumber(appearInp.Text) then

		id = tonumber(appearInp.Text)

	else

		id = game:GetService('Players'):GetUserIdFromNameAsync(appearInp.Text)

	end

	lp.CharacterAppearance = 'https://assetgame.roblox.com/Asset/CharacterFetch.ashx?userId=' .. tostring(id)

end)

appearInp = localwin:drawTextBox(1/2, '')

localwin:drawButton(1/2, 'Set TeamColor', function()

	if teamInp.Text == 'Neutral' then

		lp.Neutral = true

		return

	end

	local clr = BrickColor.new(teamInp.Text) 

	lp.TeamColor = clr

end)

teamInp = localwin:drawTextBox(1/2, 'Neutral')

localwin:drawButton(1, 'Reset Camera', function()

	game.Workspace.CurrentCamera:remove()

	wait(.1)

	game.Workspace.CurrentCamera.CameraSubject = lp.Character.Humanoid or 

		game.Workspace[lp.Name].Humanoid

	game.Workspace.CurrentCamera.CameraType = "Custom"

end)

localwin:drawButton(1, 'Respawn', function()

	local a1 = Instance.new("Model", game:service'Workspace')

	local a2 = Instance.new("Part", game:service'Workspace')

	a2.CanCollide = true

	a2.Anchored = true

	a2.CFrame = CFrame.new(10000, 10000, 10000)

	a2.Name = "Torso"

	local a3 = Instance.new("Humanoid", a1)

	a3.MaxHealth=100;a3.Health=100

	lp.Character = a1

	a3.Health=0

end)

localwin:addSpacing()

local Lev, Clip, Fly

localwin:drawButton(1/2, 'Levitate', function()

	if Lev == true then

		Lev = false

		return

	end

	Lev = true

	repeat

		lp.Character.Humanoid:ChangeState(10)

		wait(0)

	until Lev == false

end)

localwin:drawButton(1/2, 'Noclip', function()

	if Clip == true then

		Clip = false

		return

	end

	Clip = true

	game:GetService("RunService").Stepped:connect(function()

		topkek.libutil:getTorso(lp).CanCollide = not Clip

		lp.Character.Head.CanCollide = not Clip

		lp.Character.HumanoidRootPart.CanCollide = not Clip

		if lp.Character.UpperTorso then

			lp.Character.LowerTorso.CanCollide = not Clip

		end

	end)

	lp.Character.HumanoidRootPart.Changed:connect(function()

		topkek.libutil:getTorso(lp).CanCollide = not Clip

		lp.Character.Head.CanCollide = not Clip

		lp.Character.HumanoidRootPart.CanCollide = not Clip

		if lp.Character.UpperTorso then

			lp.Character.LowerTorso.CanCollide = not Clip

		end

	end)

end)

localwin:drawButton(1/2, 'Fly', function()

	if Fly == true then

		Fly = false

		return

	end

	Fly = true

  local mouse=game.Players.LocalPlayer:GetMouse''

  localplayer=game.Players.LocalPlayer

  game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

  local torso = game.Players.LocalPlayer.Character.HumanoidRootPart

  local speed=0

  local keys={a=false,d=false,w=false,s=false} 

  local e1

  local e2

  local function start()

   local pos = Instance.new("BodyPosition",torso)

   local gyro = Instance.new("BodyGyro",torso)

   pos.Name="EPIXPOS"

   pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)

   pos.position = torso.Position

   gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 

   gyro.cframe = torso.CFrame

   repeat

    wait()

    localplayer.Character.Humanoid.PlatformStand=true

    local new=gyro.cframe - gyro.cframe.p + pos.position

    if not keys.w and not keys.s and not keys.a and not keys.d then

     speed=1

    end 

    if keys.w then 

     new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed

     speed=speed+0.01

    end

    if keys.s then 

     new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed

     speed=speed+0.01

    end

    if keys.d then 

     new = new * CFrame.new(speed,0,0)

     speed=speed+0.01

    end

    if keys.a then 

     new = new * CFrame.new(-speed,0,0)

     speed=speed+0.01

    end

    if speed>5 then

     speed=5

    end

    pos.position=new.p

    if keys.w then

     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)

    elseif keys.s then

     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)

    else

     gyro.cframe = workspace.CurrentCamera.CoordinateFrame

    end

   until not Fly

   if gyro then gyro:Destroy() end

   if pos then pos:Destroy() end

   flying=false

   localplayer.Character.Humanoid.PlatformStand=false

   speed=0

  end

  e1=mouse.KeyDown:connect(function(key)

   if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end

   if key=="w" then

    keys.w=true

   elseif key=="s" then

    keys.s=true

   elseif key=="a" then

    keys.a=true

   elseif key=="d" then

    keys.d=true

   end

  end)

  e2=mouse.KeyUp:connect(function(key)

   if key=="w" then

    keys.w=false

   elseif key=="s" then

    keys.s=false

   elseif key=="a" then

    keys.a=false

   elseif key=="d" then

    keys.d=false

   end

  end)

  start()

end)

localwin:drawButton(1/2, 'Highjump', function()

	local thrust = Instance.new("BodyVelocity")

	game:GetService('UserInputService').InputBegan:connect(function(i, b)

		if i.KeyCode == Enum.KeyCode.Space then

			print("Got jump")

			coroutine.resume(coroutine.create(function()

				thrust.Parent = game.Players.LocalPlayer.Character.PrimaryPart

				thrust.velocity = Vector3.new(0,50,0)

				thrust.maxForce = Vector3.new(0,4e+050,0)

				wait(0.2)

				thrust.Parent = nil 

			end))

		end

	end)

end)

localwin:addSpacing()

localwin:drawButton(1/2, 'Freecam', function()

	local cam = game.Workspace.CurrentCamera

	cam.CameraType = "Fixed"

	cam.CameraSubject = nil

	lp.Character = nil

end)

localwin:drawButton(1/2, 'Nil Orb', function()

	game.Players.LocalPlayer.Character = nil

	--lp:Destroy()

	local cam = game.Workspace.CurrentCamera

	local m = Instance.new("Model", game.Workspace)

	m.Name = game.Players.LocalPlayer.Name

	local hum = Instance.new("Humanoid", m)

	hum.Health = 0

	hum.MaxHealth = 0

	local orb = Instance.new("Part", m)

	orb.Size = Vector3.new(1, 1, 1)

	orb.Shape = "Ball"

	orb.Name = "Head"

	orb.Anchored = true

	orb.CanCollide = true

	orb.BottomSurface = Enum.SurfaceType.Smooth

	orb.TopSurface = Enum.SurfaceType.Smooth

	orb.Transparency = 0

	cam.CameraSubject = orb

	cam.CameraType = Enum.CameraType.Fixed

	game:GetService("RunService").RenderStepped:connect(function()

		orb.CFrame = cam.CoordinateFrame * CFrame.new(0, -2, -6)

	end)

	game.Players.LocalPlayer.Chatted:connect(function(a)

		game:GetService("Chat"):Chat(orb, a)

	end)

end)

localwin:drawButton(1/2, 'God', function()

	lp.Character.Humanoid.MaxHealth = math.huge

	lp.Character.Humanoid.Health = math.huge

end)

localwin:drawButton(1/2, 'NoGrav', function()

	if lp.Character then

		for x,m in pairs(lp.Character:GetChildren()) do

			if m:IsA("BasePart") then

				local bf = Instance.new("BodyForce", m)

				bf.force = Vector3.new(0, 192.25, 0) * m:GetMass()

			end

			if m:IsA("Hat") or m:IsA("Accessory") then

				if m:findFirstChild("Handle") then

					local bf = Instance.new("BodyForce", m.Handle)

					bf.force = Vector3.new(0, 192.25, 0) * m.Handle:GetMass()

				end

			end

		end

	end

end)

localwin:drawButton(1/2, 'Rainbow Name', function()

	lp.Neutral = false

	repeat

		wait()

		lp.TeamColor = BrickColor.Random()

	until not lp.Character.Humanoid

end)

localwin:drawButton(1/2, 'Random Fedora', function()

	local hats={

		98346834,

		215751161,

		119916949,

		72082328,

		147180077,

		100929604,

		63043890,

		1285307,

		1029025,

		334663683,

		259423244

	}

	game:GetService("InsertService"):LoadAsset(hats[math.random(1,#hats)]):GetChildren()[1].Parent = lp.Character

end)

localwin:drawButton(1/2, 'Clear Appearance', function()

	lp:ClearCharacterAppearance()

end)

localwin:drawButton(1/2, 'Disguise', function()

	local p = lp.Character

	if p:FindFirstChild("topkek") then

		p.topkek:Destroy()

	end

	p.Name = ""

	p.Head.Transparency = 1

	local mo = Instance.new("Model", p)

	mo.Name = ""

	local hu = Instance.new("Humanoid", mo)

	hu.Name = "distag"

	hu.Health = 100

	hu.MaxHealth = 100

	local fh = p.Head:Clone()

	fh.Parent = mo

	fh.Transparency = 0

	local we = Instance.new("Weld", fh)

	we.Part0 = p.Head

	we.Part1 = mo

	lp:ClearCharacterAppearance()

	pcall(function() p["Body Colors"]:Destroy() end)

	Instance.new("BodyColors", p)

end)

localwin:drawButton(1, 'Dick Shooter', function()

	topkek.libutil:dickShooter()

end)

localwin:addSpacing()

local hackerInp

localwin:drawButton(1/2, 'Set Tag', function()

	local len = 10

	local bb = Instance.new("BillboardGui")

	bb.Parent = lp.Character.Head

	bb.Adornee = lp.Character.Head

	bb.AlwaysOnTop = true

	bb.Enabled = true

	bb.Size = UDim2.new(len, 0, 1.5, 0)

	bb.Name = "tag"

	bb.StudsOffset = Vector3.new(0, 3, 0)

	--local fr = Instance.new("Frame")

	--fr.Parent = bb

	--fr.Size = UDim2.new(1, 0, 1, 0)

	--fr.Style = Enum.FrameStyle.RobloxRound

	local tl = Instance.new("TextLabel")

	tl.Parent = bb

	tl.Font = Enum.Font.Code

	tl.BackgroundTransparency = 1

	tl.TextScaled = true

	tl.TextColor3 = Color3.new(15/255, 15/255, 15/255)

	tl.Size = UDim2.new(1, 0, 1, 0)

	tl.Text = hackerInp.Text

	tl.Name = "trutag"

	tl.Visible = true

	tl.ZIndex = 2

end)

hackerInp = localwin:drawTextBox(1/2, 'Hacker')

--[[ scripts ]]--

-- excuse my disgusting code :v

local scriptwin = topkek.libgui:hookContainer(base['ScriptsContainer'])

local search = scriptwin:drawTextBox(1,'')

local origy = scriptwin:getDrawY()

scriptwin:addSpacing()

scriptwin:addSpacing()

local a = Instance.new("LocalScript");a.Name='script 1'

local b = Instance.new("LocalScript");b.Name='script 2'

local c = Instance.new("LocalScript");c.Name='script 3'

local scripts = {a,b,c}

local container = {}

function MakeList(condition)

	for i,v in pairs(scriptwin:GetChildren()) do

		if v.Name == "Script" then

			v:Destroy()

		end

	end

	scriptwin:setDrawY(origy)

	for i, v in pairs(scripts) do

		if string.find(v.Name, condition) or (condition == "") or (condition == " ") then

			local scr = scriptwin:drawButton(1, v.Name, function()

				print('no loadstring lol')

			end, 25)

			scr.Name = 'Script'

		end

	end

end

game:GetService("UserInputService").InputChanged:connect(function(inp)

	if inp.UserInputType == Enum.UserInputType.TextInput then

		if search:IsFocused() then

			MakeList(search.Text)

		end

	end

end)

MakeList('')

--[[ misc main ]]--

local miscwin = topkek.libgui:hookContainer(base['MiscellaneousContainer'])

local scroll = miscwin:drawScrollingContainer(165)

scroll:center()

for i, v in pairs(topkek.libsettings:getSetting("misc")) do

	scroll:drawButton(1, v, function()

		topkek.libwindows:switchWindow(v .. 'Container', v)

	end)

end

scroll.main.CanvasSize = scroll.main.CanvasSize - UDim2.new(0, 0, 0, 3)

--[[ initiation ]]--

topkek.libwindows:registerWindow(base['HomeContainer'])

topkek.libwindows:registerWindow(base['ServerContainer'])

topkek.libwindows:registerWindow(base['PlayersContainer'])

topkek.libwindows:registerWindow(base['LocalPlayerContainer'])

topkek.libwindows:registerWindow(base['ScriptsContainer'])

topkek.libwindows:registerWindow(base['MiscellaneousContainer'])

topkek.libwindows:initiateNavigator()

topkek.libwindows:initiateHome()