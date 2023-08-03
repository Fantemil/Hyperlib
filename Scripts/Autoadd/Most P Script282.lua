repeat wait() until game:IsLoaded()

makefolder("deadware.crack")
makefolder("deadware.crack/cfgs")
makefolder("deadware.crack/luas")

for _, vm in pairs(game.ReplicatedStorage.Viewmodels:GetChildren()) do
	if vm:FindFirstChild("HumanoidRootPart") and vm.HumanoidRootPart.Transparency ~= 1 then
		vm.HumanoidRootPart.Transparency = 1
	end
end

local library = {
	pointers = {};
	flags = {};
	keybinds = {};
	tabs = {};
	mainlib = {};
	window = {};
	draggingPicker = false;
}

local objects = {}

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local client = getsenv(Player.PlayerGui.Client)

local Fly = nil
local Noclip = nil

local aa_target = nil

local isUnlocked = nil
local skins = {}

local weaponsBackup = game.ReplicatedStorage.Weapons:Clone()

local oldcreatebullethole = client.createbullethole

client.splatterBlood = function() end

local Camera = workspace.CurrentCamera
local Ping = game.Stats.PerformanceStats.Ping:GetValue() 

local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local VirtualUser = game:GetService("VirtualUser")

local RageHitpart = nil

local skyboxes = {
	["galaxy"] = {
		SkyboxBk = "http://www.roblox.com/asset/?id=159454299",
		SkyboxDn = "http://www.roblox.com/asset/?id=159454296",
		SkyboxFt = "http://www.roblox.com/asset/?id=159454293",
		SkyboxLf = "http://www.roblox.com/asset/?id=159454286",
		SkyboxRt = "http://www.roblox.com/asset/?id=159454300",
		SkyboxUp = "http://www.roblox.com/asset/?id=159454288",
	},
	["purple"] = {
		SkyboxBk = "http://www.roblox.com/asset/?id=570557514",
		SkyboxDn = "http://www.roblox.com/asset/?id=570557775",
		SkyboxFt = "http://www.roblox.com/asset/?id=570557559",
		SkyboxLf = "http://www.roblox.com/asset/?id=570557620",
		SkyboxRt = "http://www.roblox.com/asset/?id=570557672",
		SkyboxUp = "http://www.roblox.com/asset/?id=570557727",
	},
	["purple night"] = {
		SkyboxBk = "http://www.roblox.com/asset/?id=296908715",
		SkyboxDn = "http://www.roblox.com/asset/?id=296908724",
		SkyboxFt = "http://www.roblox.com/asset/?id=296908740",
		SkyboxLf = "http://www.roblox.com/asset/?id=296908755",
		SkyboxRt = "http://www.roblox.com/asset/?id=296908764",
		SkyboxUp = "http://www.roblox.com/asset/?id=296908769",
	},
	["deadware"] = {
		SkyboxBk = "http://www.roblox.com/asset/?id=8639914968",
		SkyboxDn = "http://www.roblox.com/asset/?id=8639914968",
		SkyboxFt = "http://www.roblox.com/asset/?id=8639914968",
		SkyboxLf = "http://www.roblox.com/asset/?id=8639914968",
		SkyboxRt = "http://www.roblox.com/asset/?id=8639914968",
		SkyboxUp = "http://www.roblox.com/asset/?id=8639914968",
	},
}

local multies = { 
	["Head"] = 4, 
	["FakeHead"] = 4, 
	["HeadHB"] = 4, 
	["UpperTorso"] = 1, 
	["LowerTorso"] = 1.25, 
	["LeftUpperArm"] = 1, 
	["LeftLowerArm"] = 1, 
	["LeftHand"] = 1, 
	["RightUpperArm"] = 1, 
	["RightLowerArm"] = 1, 
	["RightHand"] = 1, 
	["LeftUpperLeg"] = 0.75, 
	["LeftLowerLeg"] = 0.75, 
	["LeftFoot"] = 0.75, 
	["RightUpperLeg"] = 0.75, 
	["RightLowerLeg"] = 0.75, 
	["RightFoot"] = 0.75, 
}

local emojis = {
	[":clown:"] = utf8.char(129313);
	[":cold_face:"] = utf8.char(129398);
	[":neutral:"] = utf8.char(128528);
}

local text_random = {
	[":niggers:"] = {"kill all niggers", "fuck niggers", "niggers are retards"}
}

local fakelagFolder = Instance.new("Folder", workspace["Ray_Ignore"])
fakelagFolder.Name = "FakelagFolder"

local fowardtrackFolder = Instance.new("Folder", workspace)
fowardtrackFolder.Name = "FowardtrackFolder"

function library:GetParent()
	return (gethui ~= nil and gethui() or game:GetService("CoreGui"))
end

function isAlive(player)
    local alive = false
    if player ~= nil and player.Parent == game.Players and player.Character ~= nil and player.Team.Name ~= "TTT" then
		if player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid") ~= nil and player.Character.Humanoid.Health > 0 and player.Character:FindFirstChild("Head") then
			alive = true
		end
    end

    return alive
end

library.isAlive = isAlive

function fakeChar()
	fakelagFolder:ClearAllChildren()
	if isAlive(Player) then
		Player.Character.Archivable = true
		local cln = Player.Character:Clone()
		cln:BreakJoints()
		cln.Humanoid:Destroy()
		cln.Parent = fakelagFolder
		if cln:FindFirstChild("Gun") then
			cln.Gun:Destroy()
		end
		Player.Character.Archivable = false
		for _,v in pairs(cln:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Material = Enum.Material.ForceField
				v.Color = library.flags["fakes_color"]
				v.Anchored = true
				v.CanCollide = false
				v.Massless = true
				if v:IsA("MeshPart") then
					v.TextureID = "rbxassetid://0"
				end
				if v.Name == "Head" then
					v.Transparency = 0
				elseif v.Name == "FakeHead" then
					v.Transparency = 1
				end
			end
		end
	end
end

function createBeam(v1, v2)
		local b1 = Instance.new("Part", workspace["Ray_Ignore"])
		b1.Size = Vector3.new(0.0001,0.0001,0.0001)
		b1.Transparency = 1
		b1.CanCollide = false
		b1.CFrame = CFrame.new(v1)
		b1.Anchored = true
		local a1 = Instance.new("Attachment", b1)
		local b2 = Instance.new("Part", workspace["Ray_Ignore"])
		b2.Size = Vector3.new(0.0001,0.0001,0.0001)
		b2.Transparency = 1
		b2.CanCollide = false
		b2.CFrame = CFrame.new(v2)
		b2.Anchored = true
		local a2 = Instance.new("Attachment", b2)
		local b = Instance.new("Beam", b1)
		local color = library.flags["c_btracers_color"]
		b.FaceCamera = true
		b.Attachment0 = a1
		b.Attachment1 = a2
		b.LightEmission = 1
		b.LightInfluence = 0
		b.Color = ColorSequence.new(color, color)
		b.Width0 = 1
		b.Width1 = 1
		b.Texture = "rbxassetid://446111271"
		b.TextureSpeed = 2.4
		b.Transparency = NumberSequence.new(0,0)
		return b
end

function yrotate(cframe) 
	local x, y, z = cframe:ToOrientation() 
	return CFrame.new(cframe.Position) * CFrame.Angles(0,y,0) 
end

local function tableToString(tbl)
	local str = "{"

	for i,v in pairs(tbl) do
		str = str .. "\"" .. tostring(v) .. "\";"
	end

	str = str .. "}"
	return str
end

function tableRemove(tbl, value)

	local count = 0

	for i,v in pairs(tbl) do
		count += 1
		if v == value then
			table.remove(tbl, count)
			break
		end
	end
end

function getTime()
	local dataTable = os.date("*t")
	local hour = dataTable["hour"]
	local min = dataTable["min"]
	local sec = dataTable["sec"]

	if tonumber(sec)<= 9 then sec = "0" .. sec;end
	if tonumber(min)<= 9 then min = "0" .. min;end
	if tonumber(hour)<= 9 then hour = "0" .. hour;end

	return hour .. ":" .. min .. ":" .. sec
end

function getWatermarkArgument(arg,Fps)
	local tbl = {
		Nick = library.flags["wm_nick"] or "default";
		DisplayNick = "Tokyo >-<";
		FPS = tostring(Fps) .. " FPS";
		Time = getTime();
		Name = "deadware.crack | cracked";
		Ping = tostring(math.floor(Ping)) .. " ms";
	}

	return tbl[arg]
end

local Watermark = Instance.new("ScreenGui")
local WaterFrame = Instance.new("Frame")
local UIGradient__2 = Instance.new("UIGradient")
local SuperLine = Instance.new("ImageLabel")
local _Text = Instance.new("TextLabel")

Watermark.Name = "Watermark"
Watermark.Parent = library:GetParent()
Watermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

WaterFrame.Name = "WaterFrame"
WaterFrame.Parent = Watermark
WaterFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WaterFrame.Position = UDim2.new(0.77, 0, 0, -20)
WaterFrame.Size = UDim2.new(0, 383, 0, 20)

UIGradient__2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(61, 61, 61)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))}
UIGradient__2.Rotation = 90
UIGradient__2.Parent = WaterFrame

SuperLine.Name = "SuperLine"
SuperLine.Parent = WaterFrame
SuperLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SuperLine.BackgroundTransparency = 1.000
SuperLine.BorderSizePixel = 0
SuperLine.Size = UDim2.new(1, 0, 0.0799999982, 0)
SuperLine.ZIndex = 0
SuperLine.Image = "rbxassetid://8655146742"

_Text.Name = "_Text"
_Text.Parent = WaterFrame
_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_Text.BackgroundTransparency = 1.000
_Text.Position = UDim2.new(0.0170829911, 0, 0.0299987756, 0)
_Text.Size = UDim2.new(0.96, 0, 0.919999719, 0)
_Text.ZIndex = 0
_Text.Font = Enum.Font.RobotoMono
_Text.Text = "deadware.crack | crack | 16 October 2022"
_Text.TextColor3 = Color3.fromRGB(255, 255, 255)
_Text.TextSize = 16.000

local dragToggle2 = nil
local dragInput2 = nil
local dragStart2 = nil
local dragPos2 = nil
local startPos2 = nil
local function updateInput(input)
	local Delta = input.Position - dragStart2
	local Position = UDim2.new(startPos2.X.Scale, startPos2.X.Offset + Delta.X, 0, -20)
	WaterFrame.Position = Position
end
WaterFrame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
		dragToggle2 = true
		dragStart2 = input.Position
		startPos2 = WaterFrame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle2 = false
			end
		end)
	end
end)
WaterFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput2 = input
	end
end)
UIS.InputChanged:Connect(function(input)
	if input == dragInput2 and dragToggle2 then
		updateInput(input)
	end
end)

function library:CreateWindow(title)
	local UILib = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Buttons = Instance.new("Frame")
	local Add1 = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local Add2 = Instance.new("Frame")
	local UIGradient_2 = Instance.new("UIGradient")
	local Add3 = Instance.new("Frame")
	local UIGradient_3 = Instance.new("UIGradient")
	local Add4 = Instance.new("Frame")
	local UIGradient_4 = Instance.new("UIGradient")
	local Tabs = Instance.new("Frame")
	local Add1_2 = Instance.new("Frame")
	local UIGradient_5 = Instance.new("UIGradient")
	local Add2_2 = Instance.new("Frame")
	local UIGradient_6 = Instance.new("UIGradient")
	local Add3_2 = Instance.new("Frame")
	local UIGradient_7 = Instance.new("UIGradient")
	local Add4_2 = Instance.new("Frame")
	local UIGradient_8 = Instance.new("UIGradient")
	local UIStoke = Instance.new("UIStroke")
	local KeybindsFrame = Instance.new("Frame")
	local UIGradient__ = Instance.new("UIGradient")
	local Line = Instance.new("ImageLabel")
	local Bd1 = Instance.new("Frame")
	local Bd2 = Instance.new("Frame")
	local Keybinds = Instance.new("Frame")
	local Bd3 = Instance.new("Frame")
	local Keybinds_text = Instance.new("TextLabel")
	local Hitlogs = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	UILib.Name = "UILib"
	UILib.Parent = library:GetParent()
	UILib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = UILib
	MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.217845663, 0, 0.25333333, 0)
	MainFrame.Size = UDim2.new(0, 701, 0, 406)

	Title.Name = "Title"
	Title.Parent = MainFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 0, -0.0688705221, 0)
	Title.Size = UDim2.new(0.235759497, 0, 0.121212125, 0)
	Title.ZIndex = 3
	Title.Font = Enum.Font.TitilliumWeb
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	UIStoke.Parent = Title
	UIStoke.Thickness = 3
	UIStoke.Color = Color3.fromRGB(170, 0, 255)

	Buttons.Name = "Buttons"
	Buttons.Parent = MainFrame
	Buttons.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Buttons.BorderColor3 = Color3.fromRGB(170, 0, 255)
	Buttons.BorderSizePixel = 3
	Buttons.Size = UDim2.new(0.235759497, 0, 1.00000036, 0)

	Add1.Name = "Add1"
	Add1.Parent = Buttons
	Add1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Add1.BorderSizePixel = 0
	Add1.Size = UDim2.new(0.328859061, 0, 1, 0)
	Add1.ZIndex = 2

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(145, 0, 218)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(145, 0, 218))}
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.38), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient.Parent = Add1

	Add2.Name = "Add2"
	Add2.Parent = Buttons
	Add2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Add2.BorderSizePixel = 0
	Add2.Position = UDim2.new(0.671140969, 0, 0, 0)
	Add2.Size = UDim2.new(0.328859061, 0, 0.999999642, 0)
	Add2.ZIndex = 2

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(145, 0, 218)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(145, 0, 218))}
	UIGradient_2.Rotation = 180
	UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.38), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_2.Parent = Add2

	Add3.Name = "Add3"
	Add3.Parent = Buttons
	Add3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Add3.BorderSizePixel = 0
	Add3.Position = UDim2.new(0, 0, 0.878787577, 0)
	Add3.Size = UDim2.new(1, 0, 0.12121208, 0)
	Add3.ZIndex = 2

	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(145, 0, 218)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(145, 0, 218))}
	UIGradient_3.Rotation = 270
	UIGradient_3.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.38), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_3.Parent = Add3

	Add4.Name = "Add4"
	Add4.Parent = Buttons
	Add4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Add4.BorderSizePixel = 0
	Add4.Size = UDim2.new(1, 0, 0.12121208, 0)
	Add4.ZIndex = 2

	UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(145, 0, 218)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(145, 0, 218))}
	UIGradient_4.Rotation = 90
	UIGradient_4.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.38), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_4.Parent = Add4

	Tabs.Name = "Tabs"
	Tabs.Parent = MainFrame
	Tabs.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Tabs.BorderColor3 = Color3.fromRGB(170, 0, 255)
	Tabs.BorderSizePixel = 3
	Tabs.Position = UDim2.new(0.278636754, 0, -0.00246305414, 0)
	Tabs.Size = UDim2.new(0.719936728, 0, 1.00000036, 0)

	Add1_2.Name = "Add1"
	Add1_2.Parent = Tabs
	Add1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Add1_2.BorderSizePixel = 0
	Add1_2.Size = UDim2.new(0.108999997, 0, 1, 0)
	Add1_2.ZIndex = 2

	UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(145, 0, 218)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(145, 0, 218))}
	UIGradient_5.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.38), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_5.Parent = Add1_2

	Add2_2.Name = "Add2"
	Add2_2.Parent = Tabs
	Add2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Add2_2.BorderSizePixel = 0
	Add2_2.Position = UDim2.new(0.890921175, 0, 0, 0)
	Add2_2.Size = UDim2.new(0.109078832, 0, 0.999999642, 0)
	Add2_2.ZIndex = 2

	UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(145, 0, 218)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(145, 0, 218))}
	UIGradient_6.Rotation = 180
	UIGradient_6.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.38), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_6.Parent = Add2_2

	Add3_2.Name = "Add3"
	Add3_2.Parent = Tabs
	Add3_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Add3_2.BorderSizePixel = 0
	Add3_2.Position = UDim2.new(0, 0, 0.878787577, 0)
	Add3_2.Size = UDim2.new(1, 0, 0.12121208, 0)
	Add3_2.ZIndex = 2

	UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(145, 0, 218)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(145, 0, 218))}
	UIGradient_7.Rotation = 270
	UIGradient_7.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.38), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_7.Parent = Add3_2

	Add4_2.Name = "Add4"
	Add4_2.Parent = Tabs
	Add4_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Add4_2.BorderSizePixel = 0
	Add4_2.Size = UDim2.new(1, 0, 0.12121208, 0)
	Add4_2.ZIndex = 2

	UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(145, 0, 218)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(145, 0, 218))}
	UIGradient_8.Rotation = 90
	UIGradient_8.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.38), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient_8.Parent = Add4_2

	KeybindsFrame.Name = "KeybindsFrame"
	KeybindsFrame.Parent = UILib
	KeybindsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeybindsFrame.BorderSizePixel = 0
	KeybindsFrame.Position = UDim2.new(0, 0, 0.396363646, 0)
	KeybindsFrame.Size = UDim2.new(0, 210, 0, 38)
	KeybindsFrame.Visible = false

	UIGradient__.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(61, 61, 61)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))}
	UIGradient__.Rotation = 90
	UIGradient__.Parent = KeybindsFrame

	Line.Name = "Line"
	Line.Parent = KeybindsFrame
	Line.BackgroundTransparency = 1
	Line.Image = "rbxassetid://8655146742"
	Line.BorderSizePixel = 0
	Line.Size = UDim2.new(1, 0, 0.0700000003, 0)

	Bd1.Name = "Bd1"
	Bd1.Parent = KeybindsFrame
	Bd1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Bd1.BorderSizePixel = 0
	Bd1.Size = UDim2.new(1, 1, 0.0299999993, 0)

	Bd2.Name = "Bd2"
	Bd2.Parent = KeybindsFrame
	Bd2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Bd2.BorderSizePixel = 0
	Bd2.Position = UDim2.new(1, 0, 0, 0)
	Bd2.Size = UDim2.new(0.00499999989, 0, 1, 90)

	Keybinds.Name = "Keybinds"
	Keybinds.Parent = KeybindsFrame
	Keybinds.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Keybinds.BorderSizePixel = 0
	Keybinds.Position = UDim2.new(0, 0, 1, 0)
	Keybinds.Size = UDim2.new(1, 0, 0, 0)

	Bd3.Name = "Bd3"
	Bd3.Parent = KeybindsFrame
	Bd3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Bd3.BorderSizePixel = 0
	Bd3.Position = UDim2.new(0, 0, 1, 0)
	Bd3.Size = UDim2.new(1, 1, 0.0299999993, 0)

	Keybinds_text.Name = "Keybinds_text"
	Keybinds_text.Parent = KeybindsFrame
	Keybinds_text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Keybinds_text.BackgroundTransparency = 1.000
	Keybinds_text.Size = UDim2.new(1, 0, 1, 0)
	Keybinds_text.Font = Enum.Font.TitilliumWeb
	Keybinds_text.Text = "keybinds"
	Keybinds_text.TextColor3 = Color3.fromRGB(255, 255, 255)
	Keybinds_text.TextScaled = true
	Keybinds_text.TextSize = 14.000
	Keybinds_text.TextWrapped = true

	Hitlogs.Name = "Hitlogs"
	Hitlogs.Parent = UILib
	Hitlogs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hitlogs.BackgroundTransparency = 1.000
	Hitlogs.Position = UDim2.new(0.75803858, 0, 0.0121212117, 0)
	Hitlogs.Size = UDim2.new(0, 301, 0.970909119, 0)
	Hitlogs.Visible = false

	UIListLayout.Parent = Hitlogs
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)

	RunService.RenderStepped:Connect(function()
		for _, key in pairs(library.keybinds) do
			if key[3] == true and Keybinds:FindFirstChild(key[1]) == nil and key[1] ~= "Visibility" then
				local keybind_real = Instance.new("TextLabel")
				keybind_real.Name = key[1]
				keybind_real.Parent = Keybinds
				keybind_real.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				keybind_real.BackgroundTransparency = 1.000
				keybind_real.BorderSizePixel = 0
				keybind_real.Position = UDim2.new(0.0317460299, 0, 0, (#Keybinds:GetChildren() - 1) * 30)
				keybind_real.Size = UDim2.new(0.970000029, 0, 0, 30)
				keybind_real.Font = Enum.Font.TitilliumWeb
				keybind_real.Text = "[" .. key[2] .. "] " .. key[1]:lower() .. " (" .. key[4]:lower() .. ")"
				keybind_real.TextColor3 = Color3.fromRGB(255, 255, 255)
				keybind_real.TextScaled = true
				keybind_real.TextSize = 14.000
				keybind_real.TextWrapped = true
				keybind_real.TextXAlignment = Enum.TextXAlignment.Left
			elseif key[3] == false and Keybinds:FindFirstChild(key[1]) ~= nil then
				Keybinds:FindFirstChild(key[1]):Destroy()
			end
		end
		Bd2.Size = UDim2.new(0.005, 0, 1, #Keybinds:GetChildren() * 30)
		Keybinds.Size = UDim2.new(1, 0, 0, #Keybinds:GetChildren() * 30)
		Bd3.Position = UDim2.new(0, 0, 1, #Keybinds:GetChildren() * 30)
	end)

	local dragToggle = nil
	local dragInput = nil
	local dragStart = nil
	local dragPos = nil
	local startPos = nil
	local function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		if not library.draggingPicker then
			MainFrame.Position = Position
		end
	end
	MainFrame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	MainFrame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)

	local windowLib = {}

	function windowLib:CreateTab(title)
		local tabtabtab = Instance.new("TextButton")
		local UIStoke_2 = Instance.new("UIStroke")
		local tabtabtab_2 = Instance.new("Frame")
		local Left = Instance.new("ScrollingFrame")
		local Right = Instance.new("ScrollingFrame")
		local UIPadding = Instance.new("UIPadding")
		local UIPadding_2 = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		local UIListLayout_2 = Instance.new("UIListLayout")

		tabtabtab.Name = title .. "_btn"
		tabtabtab.Parent = Buttons
		tabtabtab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tabtabtab.BackgroundTransparency = 1.000
		tabtabtab.Position = UDim2.new(0, 3, 0, 20)
		tabtabtab.Size = UDim2.new(0.949999988, 0, 0, 35)
		tabtabtab.Font = Enum.Font.TitilliumWeb
		tabtabtab.Text = title
		tabtabtab.TextColor3 = Color3.fromRGB(166, 166, 166)
		tabtabtab.TextScaled = true
		tabtabtab.TextSize = 14.000
		tabtabtab.TextWrapped = true
		
		local pos = 20
		
		local c = Buttons:GetChildren()[#Buttons:GetChildren()-1]
		
		pos = (c ~= Add4 and c ~= tabtabtab and c.Position.Y.Offset or 20)
		
		pos = pos + (c ~= Add4 and c ~= tabtabtab and 35 or 0)

		tabtabtab.Position = UDim2.new(0, 3, 0, pos)

		UIStoke_2.Parent = tabtabtab
		UIStoke_2.LineJoinMode = Enum.LineJoinMode.Bevel
		UIStoke_2.Color = Color3.fromRGB(170, 0, 255)
		UIStoke_2.Thickness = 3

		tabtabtab_2.Name = title
		tabtabtab_2.Parent = Tabs
		tabtabtab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tabtabtab_2.BackgroundTransparency = 1.000
		tabtabtab_2.BorderSizePixel = 0
		tabtabtab_2.Size = UDim2.new(1, 0, 1, 0)
		tabtabtab_2.Visible = false

		Left.Name = "Left"
		Left.Parent = tabtabtab_2
		Left.Active = true
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Left.BackgroundTransparency = 1.000
		Left.BorderSizePixel = 0
		Left.Size = UDim2.new(0.5, 0, 1, 0)
		Left.CanvasSize = UDim2.new(0, 0, 0, 0)
		Left.ScrollBarThickness = 0

		Right.Name = "Right"
		Right.Parent = tabtabtab_2
		Right.Active = true
		Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Right.BackgroundTransparency = 1.000
		Right.BorderSizePixel = 0
		Right.Position = UDim2.new(0.5, 0, 0, 0)
		Right.Size = UDim2.new(0.5, 0, 1, 0)
		Right.CanvasSize = UDim2.new(0, 0, 0, 0)
		Right.ScrollBarThickness = 0

		UIListLayout.Parent = Left
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 15)

		UIListLayout_2.Parent = Right
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 15)

		UIPadding.Parent = Left
		UIPadding.PaddingLeft = UDim.new(0, 10)
		UIPadding.PaddingTop = UDim.new(0, 15)

		UIPadding_2.Parent = Right
		UIPadding_2.PaddingLeft = UDim.new(0, 10)
		UIPadding_2.PaddingTop = UDim.new(0, 15)

		tabtabtab.MouseButton1Click:Connect(function()
			windowLib:SetTab(title)
		end)

		local tabLib = {}

		function tabLib:CreateSection(title, side)

			side = side or "Left"

			local Section = Instance.new("Frame")
			local Title_2 = Instance.new("TextLabel")
			local UIStoke_3 = Instance.new("UIStroke")

			Section.Name = title
			Section.Parent = tabtabtab_2[side]
			Section.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Section.BorderColor3 = Color3.fromRGB(170, 0, 255)
			Section.BorderSizePixel = 2
			Section.Position = UDim2.new(0, 0, 0, 15)
			Section.Size = UDim2.new(0.899999976, 0, 0, 240)

			Title_2.Name = "Title"
			Title_2.Parent = Section
			Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_2.BackgroundTransparency = 1.000
			Title_2.Position = UDim2.new(0.185999975, 0, 0, -15)
			Title_2.Size = UDim2.new(0.686999917, 0, 0, 30)
			Title_2.Font = Enum.Font.TitilliumWeb
			Title_2.Text = title
			Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_2.TextScaled = true
			Title_2.TextSize = 14.000
			Title_2.TextWrapped = true
			Title_2.TextXAlignment = Enum.TextXAlignment.Right
			Title_2.ZIndex = 2

			UIStoke_3.Parent = Title_2
			UIStoke_3.Thickness = 3
			UIStoke_3.Color = Color3.fromRGB(0,0,0)

			tabLib:updateCanvas()

			local sectionLib = {}

			function sectionLib:CreateButton(title, callback)
				callback = callback or function() end

				local Button = Instance.new("TextButton")
				local _TEXT = Instance.new("TextLabel")
				local UIStoke_4 = Instance.new("UIStroke")

				Button.Name = "Button"
				Button.Parent = Section
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.Size = UDim2.new(1, 0, 0, 30)
				Button.Font = Enum.Font.TitilliumWeb
				Button.Text = ""
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.TextScaled = true
				Button.TextSize = 14.000
				Button.Position = UDim2.new(0, 0, 0, sectionLib:getPos())
				Button.TextWrapped = true

				Section.Size = UDim2.new(0.899999976, 0, 0, sectionLib:getSize())
				tabLib:updateCanvas()

				_TEXT.Name = "_TEXT"
				_TEXT.Parent = Button
				_TEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT.BackgroundTransparency = 1.000
				_TEXT.Position = UDim2.new(0.0341880359, 0, 0, 0)
				_TEXT.Size = UDim2.new(0.965811968, 0, 1, 0)
				_TEXT.Font = Enum.Font.TitilliumWeb
				_TEXT.Text = title
				_TEXT.TextColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT.TextScaled = true
				_TEXT.TextSize = 14.000
				_TEXT.TextWrapped = true
				_TEXT.TextXAlignment = Enum.TextXAlignment.Left

				UIStoke_4.Parent = _TEXT
				UIStoke_4.Color = Color3.fromRGB(170, 0, 255)
				UIStoke_4.Thickness = 2

				Button.MouseButton1Click:Connect(function()
					spawn(callback)
				end)
			end

			function sectionLib:CreateToggle(title, flag, callback, default)
				callback = callback or function() end
				default = default or false

				local Toggle = Instance.new("TextButton")
				local _TEXT_2 = Instance.new("TextLabel")
				local _CHECKBOX = Instance.new("Frame")
				local UIStoke_4 = Instance.new("UIStroke")

				Toggle.Name = "Toggle"
				Toggle.Parent = Section
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1.000
				Toggle.Size = UDim2.new(1, 0, 0, 30)
				Toggle.Position = UDim2.new(0, 0, 0, sectionLib:getPos())
				Toggle.Font = Enum.Font.TitilliumWeb
				Toggle.Text = ""
				Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.TextScaled = true
				Toggle.TextSize = 14.000
				Toggle.TextWrapped = true

				Section.Size = UDim2.new(0.899999976, 0, 0, sectionLib:getSize())
				tabLib:updateCanvas()

				_TEXT_2.Name = "_TEXT"
				_TEXT_2.Parent = Toggle
				_TEXT_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT_2.BackgroundTransparency = 1.000
				_TEXT_2.Position = UDim2.new(0.156463981, 0, 0, 0)
				_TEXT_2.Size = UDim2.new(0.839999974, 0, 1, 0)
				_TEXT_2.Font = Enum.Font.TitilliumWeb
				_TEXT_2.Text = title
				_TEXT_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT_2.TextScaled = true
				_TEXT_2.TextSize = 14.000
				_TEXT_2.TextWrapped = true
				_TEXT_2.TextXAlignment = Enum.TextXAlignment.Left

				_CHECKBOX.Name = "_CHECKBOX"
				_CHECKBOX.Parent = Toggle
				_CHECKBOX.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				_CHECKBOX.BorderColor3 = Color3.fromRGB(170, 0, 255)
				_CHECKBOX.Position = UDim2.new(0.0341880359, 0, 0.200000018, 0)
				_CHECKBOX.Size = UDim2.new(0, 18, 0, 18)

				UIStoke_4.Parent = _TEXT_2
				UIStoke_4.Color = Color3.fromRGB(170, 0, 255)
				UIStoke_4.Thickness = 2

				local toggle = default

				library.flags[flag] = toggle

				_CHECKBOX.BackgroundColor3 = (toggle == false and Color3.fromRGB(0,0,0) or Color3.fromRGB(170, 0, 255))

				Toggle.MouseButton1Click:Connect(function()
					toggle = not toggle
					_CHECKBOX.BackgroundColor3 = (toggle == false and Color3.fromRGB(0,0,0) or Color3.fromRGB(170, 0, 255))

					library.flags[flag] = toggle
					spawn(function()
						callback(toggle)
					end)
				end)

				local toggleLib = {}

				function toggleLib:Set(val)
					toggle = val
					_CHECKBOX.BackgroundColor3 = (toggle == false and Color3.fromRGB(0,0,0) or Color3.fromRGB(170, 0, 255))
					library.flags[flag] = toggle

					if library.keybinds[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"] ~= nil then
						local key = library.keybinds[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"][2]
						local t = library.keybinds[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"][4]
						library.keybinds[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"] = {title, key, toggle, t}
					end

					spawn(function()
						callback(toggle)
					end)
				end

				function toggleLib:Get()
					return toggle
				end

				function toggleLib:AddKeybind(key, inList)
					inList = inList or true
					key = key or "..."
					local KEY = Instance.new("TextButton")

					_TEXT_2.Size = UDim2.new(.606, 0, 1, 0)

					KEY.Name = "KEY"
					KEY.Parent = Toggle
					KEY.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					KEY.BackgroundTransparency = 1.000
					KEY.Position = UDim2.new(0.762031734, 0, 0, 0)
					KEY.Size = UDim2.new(0.23443222, 0, 1, 0)
					KEY.Font = Enum.Font.TitilliumWeb
					KEY.Text = "[" .. key .. "]"
					KEY.TextColor3 = Color3.fromRGB(255, 255, 255)
					KEY.TextScaled = true
					KEY.TextSize = 14.000
					KEY.TextWrapped = true

					local KeyType = Instance.new("Frame")
					local Always = Instance.new("TextButton")
					local Hold = Instance.new("TextButton")
					local Toggle_2 = Instance.new("TextButton")

					KeyType.Name = "KeyType"
					KeyType.Parent = Toggle
					KeyType.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					KeyType.BorderColor3 = Color3.fromRGB(170, 0, 255)
					KeyType.BorderSizePixel = 2
					KeyType.Position = UDim2.new(0.655650437, 0, -0.766666651, 0)
					KeyType.Size = UDim2.new(0.339339882, 0, 0, 75)
					KeyType.Visible = false

					Always.Name = "Always"
					Always.Parent = KeyType
					Always.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Always.BackgroundTransparency = 1.000
					Always.Size = UDim2.new(1, 0, 0, 25)
					Always.Font = Enum.Font.TitilliumWeb
					Always.Text = "Always"
					Always.TextColor3 = Color3.fromRGB(85, 0, 127)
					Always.TextScaled = true
					Always.TextSize = 14.000
					Always.TextWrapped = true

					Hold.Name = "Hold"
					Hold.Parent = KeyType
					Hold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Hold.BackgroundTransparency = 1.000
					Hold.Position = UDim2.new(0, 0, 0, 25)
					Hold.Size = UDim2.new(1, 0, 0, 25)
					Hold.Font = Enum.Font.TitilliumWeb
					Hold.Text = "Hold"
					Hold.TextColor3 = Color3.fromRGB(85, 0, 127)
					Hold.TextScaled = true
					Hold.TextSize = 14.000
					Hold.TextWrapped = true

					Toggle_2.Name = "Toggle"
					Toggle_2.Parent = KeyType
					Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle_2.BackgroundTransparency = 1.000
					Toggle_2.Position = UDim2.new(0, 0, 0, 50)
					Toggle_2.Size = UDim2.new(1, 0, 0, 25)
					Toggle_2.Font = Enum.Font.TitilliumWeb
					Toggle_2.Text = "Toggle"
					Toggle_2.TextColor3 = Color3.fromRGB(170, 0, 255)
					Toggle_2.TextScaled = true
					Toggle_2.TextSize = 14.000
					Toggle_2.TextWrapped = true


					UIStoke_4:Clone().Parent = KEY

					local binding = false
					local key_t = "Toggle"

					local short = {
						{"find", "lower", "minus", "-"};
						{"find", "lower", "leftcontrol", "LCTRL"};
						{"find", "lower", "rightcontrol", "RCTRL"};
						{"find", "lower", "leftshift", "LSHIFT"};
						{"find", "lower", "rightshift", "RSHIFT"};
					}

					local keyName = key

					for _, keyc in pairs(short) do
						if keyc[1] == "find" and (keyc[2] == "lower" and key:lower() or key):find(keyc[3]) ~= nil then
							keyName = keyc[4]:upper()
						end
					end

					KEY.Text = "[" .. keyName .. "]"

					if inList == true then
						library.keybinds[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"] = {title, key, toggle, key_t}
					end

					KEY.MouseButton1Click:Connect(function()
						binding = true
						KEY.Text = "[...]"
					end)

					KEY.MouseButton2Click:Connect(function()
						KeyType.Visible = true
						Toggle.ZIndex = 3
					end)

					Always.MouseButton1Click:Connect(function()
						KeyType.Visible = false
						Hold.TextColor3 = Color3.fromRGB(85, 0, 127)
						Toggle_2.TextColor3 = Color3.fromRGB(85, 0, 127)
						Always.TextColor3 = Color3.fromRGB(170, 0, 255)
						key_t = "Always"
						Toggle.ZIndex = 1
					end)

					Hold.MouseButton1Click:Connect(function()
						KeyType.Visible = false
						Always.TextColor3 = Color3.fromRGB(85, 0, 127)
						Toggle_2.TextColor3 = Color3.fromRGB(85, 0, 127)
						Hold.TextColor3 = Color3.fromRGB(170, 0, 255)
						key_t = "Hold"
						Toggle.ZIndex = 1
					end)

					Toggle_2.MouseButton1Click:Connect(function()
						KeyType.Visible = false
						Always.TextColor3 = Color3.fromRGB(85, 0, 127)
						Hold.TextColor3 = Color3.fromRGB(85, 0, 127)
						Toggle_2.TextColor3 = Color3.fromRGB(170, 0, 255)
						key_t = "Toggle"
						Toggle.ZIndex = 1
					end)

					UIS.InputBegan:Connect(function(input, typing)
						if not typing and binding then
							if input.KeyCode ~= Enum.KeyCode.Backspace and input.KeyCode ~= Enum.KeyCode.Escape and input.KeyCode ~= Enum.KeyCode.Unknown then
								binding = false
								key = input.KeyCode.Name
								local keyName = input.KeyCode.Name
								for _, keyc in pairs(short) do
									if keyc[1] == "find" and (keyc[2] == "lower" and key:lower() or key):find(keyc[3]) ~= nil then
										keyName = keyc[4]:upper()
									end
								end
								KEY.Text = "[" .. keyName .. "]"
								if inList == true then
									library.keybinds[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"] = {title, key, toggle, key_t}
								end
							else
								binding = false
								local keyName = key
								for _, keyc in pairs(short) do
									if keyc[1] == "find" and (keyc[2] == "lower" and key:lower() or key):find(keyc[3]) ~= nil then
										keyName = keyc[4]:upper()
									end
								end
								if inList == true then
									library.keybinds[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"] = {title, key, toggle, key_t}
								end
								KEY.Text = "[" .. keyName .. "]"
							end
						elseif not typing and not binding then
							if input.KeyCode.Name == key then
								if key_t == "Toggle" then
									toggleLib:Set(not toggle)
								elseif key_t == "Always" then
									toggleLib:Set(true)
								elseif key_t == "Hold" then
									toggleLib:Set(true)
								end
								if inList == true then
									library.keybinds[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"] = {title, key, toggle, key_t}
								end
							end
						end
					end)

					UIS.InputEnded:Connect(function(input, isTyping)
						if not isTyping then
							if input.KeyCode.Name == key then
								if key_t == "Hold" then
									toggleLib:Set(false)
								end
							end
						end
					end)

					local keyLib = {}

					function keyLib:Set(k)
						key = k[1]
						key_t = k[2]
						KEY.Text = "[" .. key .. "]"
						Hold.TextColor3 = (key_t == "Hold" and Color3.fromRGB(170, 0, 255) or Color3.fromRGB(85, 0, 127))
						Always.TextColor3 = (key_t == "Always" and Color3.fromRGB(170, 0, 255) or Color3.fromRGB(85, 0, 127))
						Toggle_2.TextColor3 = (key_t == "Toggle" and Color3.fromRGB(170, 0, 255) or Color3.fromRGB(85, 0, 127))
						if inList == true then
							library.keybinds[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"] = {title, k, toggle, key_t}
						end
					end

					function keyLib:Get()
						return {key, key_t}
					end

					library.pointers[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5) .. "_keybind"] = keyLib

					return keyLib
				end

				library.pointers[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5)] = toggleLib

				return toggleLib
			end

			function sectionLib:CreateDropdown(title, flag, options, callback, multi)
				callback = callback or function() end
				multi = multi or false

				local Dropdown = Instance.new("TextButton")
				local _TEXT_5 = Instance.new("TextLabel")
				local _ICON = Instance.new("TextLabel")
				local _OPTIONS = Instance.new("Frame")
				local UIListLayout_3 = Instance.new("UIListLayout")
				local UIStoke_4 = Instance.new("UIStroke")

				Dropdown.Name = "Dropdown"
				Dropdown.Parent = Section
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 1.000
				Dropdown.Size = UDim2.new(1, 0, 0, 30)
				Dropdown.Position = UDim2.new(0, 0, 0, sectionLib:getPos())
				Dropdown.Font = Enum.Font.TitilliumWeb
				Dropdown.Text = ""
				Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.TextScaled = true
				Dropdown.TextSize = 14.000
				Dropdown.TextWrapped = true

				Section.Size = UDim2.new(0.899999976, 0, 0, sectionLib:getSize())
				tabLib:updateCanvas()

				_TEXT_5.Name = "_TEXT"
				_TEXT_5.Parent = Dropdown
				_TEXT_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT_5.BackgroundTransparency = 1.000
				_TEXT_5.Position = UDim2.new(0.156463981, 0, 0, 0)
				_TEXT_5.Size = UDim2.new(0.839999974, 0, 1, 0)
				_TEXT_5.Font = Enum.Font.TitilliumWeb
				_TEXT_5.Text = title
				_TEXT_5.TextColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT_5.TextScaled = true
				_TEXT_5.TextSize = 14.000
				_TEXT_5.TextWrapped = true
				_TEXT_5.TextXAlignment = Enum.TextXAlignment.Left

				_ICON.Name = "_ICON"
				_ICON.Parent = Dropdown
				_ICON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_ICON.BackgroundTransparency = 1.000
				_ICON.Position = UDim2.new(0.0340000018, 0, 0.200000003, 0)
				_ICON.Size = UDim2.new(0, 18, 0, 18)
				_ICON.Font = Enum.Font.TitilliumWeb
				_ICON.Text = utf8.char(8744)
				_ICON.TextColor3 = Color3.fromRGB(0, 0, 0)
				_ICON.TextSize = 23.000
				_ICON.TextWrapped = true

				_OPTIONS.Name = "_OPTIONS"
				_OPTIONS.Parent = Dropdown
				_OPTIONS.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				_OPTIONS.BorderColor3 = Color3.fromRGB(170, 0, 255)
				_OPTIONS.BorderSizePixel = 2
				_OPTIONS.Position = UDim2.new(0.101275176, 0, 1, 0)
				_OPTIONS.Size = UDim2.new(0.788999975, 0, 0, #options * 30)
				_OPTIONS.Visible = false

				UIStoke_4.Parent = _ICON
				UIStoke_4.Color = Color3.fromRGB(170, 0, 255)
				UIStoke_4.Thickness = 2

				UIListLayout_3.Parent = _OPTIONS
				UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

				local selected = {options[1]}

				library.flags[flag] = selected

				local function updateColors()
					for _, btn in pairs(_OPTIONS:GetChildren()) do
						if btn:IsA("TextButton") and table.find(selected, btn.Name) then
							btn.TextColor3 = Color3.fromRGB(170, 0, 255)
						elseif btn:IsA("TextButton") and not table.find(selected, btn.Name) then
							btn.TextColor3 = Color3.fromRGB(85, 0, 127)
						end
					end
				end

				for _, op in pairs(options) do
					local _OPTION = Instance.new("TextButton")
					_OPTION.Name = op
					_OPTION.Parent = _OPTIONS
					_OPTION.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					_OPTION.BackgroundTransparency = 1.000
					_OPTION.Size = UDim2.new(1, 0, 0, 30)
					_OPTION.Font = Enum.Font.TitilliumWeb
					_OPTION.Text = op
					_OPTION.TextColor3 = Color3.fromRGB(85, 0, 127)
					_OPTION.TextScaled = true
					_OPTION.TextSize = 14.000
					_OPTION.TextWrapped = true

					_OPTION.MouseButton1Click:Connect(function()
						if not multi then
							selected = {op}
							library.flags[flag] = selected
							callback(selected)
						else
							if table.find(selected, op) == nil then
								table.insert(selected, op)
							else
								tableRemove(selected, op)
							end
							library.flags[flag] = selected
							spawn(function()
								callback(selected)
							end)
						end
						updateColors()
					end)
				end

				updateColors()

				Dropdown.MouseButton1Click:Connect(function()
					_OPTIONS.Visible = not _OPTIONS.Visible
					_ICON.Text = (_OPTIONS.Visible == true and utf8.char(8743) or utf8.char(8744))
					Dropdown.ZIndex = (_OPTIONS.Visible == true and 3 or 1)
					Section.ZIndex = (_OPTIONS.Visible == true and 5 or 1)
				end)

				local dropdownLib = {}

				function dropdownLib:Set(val)
					selected = val
					library.flags[flag] = selected
					spawn(function()
						callback(selected)
					end)
					updateColors()
				end

				function dropdownLib:Get()
					return selected
				end

				function dropdownLib:Refresh(opt)

					for _, btn in pairs(_OPTIONS:GetChildren()) do
						if btn:IsA("TextButton") then
							btn:Destroy()
						end
					end

					options = opt
					selected = {opt[1]}

					for _, op in pairs(options) do
						local _OPTION = Instance.new("TextButton")
						_OPTION.Name = op
						_OPTION.Parent = _OPTIONS
						_OPTION.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						_OPTION.BackgroundTransparency = 1.000
						_OPTION.Size = UDim2.new(1, 0, 0, 30)
						_OPTION.Font = Enum.Font.TitilliumWeb
						_OPTION.Text = op
						_OPTION.TextColor3 = Color3.fromRGB(85, 0, 127)
						_OPTION.TextScaled = true
						_OPTION.TextSize = 14.000
						_OPTION.TextWrapped = true

						_OPTION.MouseButton1Click:Connect(function()
							if not multi then
								selected = {op}
								library.flags[flag] = selected
								callback(selected)
							else
								if table.find(selected, op) == nil then
									table.insert(selected, op)
								else
									tableRemove(selected, op)
								end
								library.flags[flag] = selected
								callback(selected)
							end
							updateColors()
						end)
					end

					updateColors()
					_OPTIONS.Size = UDim2.new(0.788999975, 0, 0, #options * 30)
					library.flags[flag] = selected
				end

				library.pointers[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5)] = dropdownLib

				return dropdownLib
			end

			function sectionLib:CreateTextbox(title, flag, callback)
				callback = callback or function() end

				local Textbox = Instance.new("TextLabel")
				local _TEXT = Instance.new("TextBox")
				local UIStoke_4 = Instance.new("UIStroke")

				Textbox.Name = "Textbox"
				Textbox.Parent = Section
				Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Textbox.BackgroundTransparency = 1.000
				Textbox.Size = UDim2.new(1, 0, 0, 30)
				Textbox.Position = UDim2.new(0, 0, 0, sectionLib:getPos())
				Textbox.Font = Enum.Font.TitilliumWeb
				Textbox.Text = ""
				Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
				Textbox.TextScaled = true
				Textbox.TextSize = 14.000
				Textbox.TextWrapped = true

				Section.Size = UDim2.new(0.899999976, 0, 0, sectionLib:getSize())
				tabLib:updateCanvas()

				_TEXT.Name = "_TEXT"
				_TEXT.Parent = Textbox
				_TEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT.BackgroundTransparency = 1.000
				_TEXT.Size = UDim2.new(1, 0, 1, 0)
				_TEXT.Font = Enum.Font.SourceSans
				_TEXT.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
				_TEXT.PlaceholderText = title
				_TEXT.Text = ""
				_TEXT.TextColor3 = Color3.fromRGB(0, 0, 0)
				_TEXT.TextScaled = true
				_TEXT.TextSize = 14.000
				_TEXT.TextWrapped = true
				_TEXT.ClearTextOnFocus = false

				UIStoke_4.Parent = _TEXT
				UIStoke_4.Color = Color3.fromRGB(170, 0, 255)
				UIStoke_4.Thickness = 2

				library.flags[flag] = _TEXT.Text

				_TEXT.FocusLost:Connect(function()
					library.flags[flag] = _TEXT.Text
					callback(_TEXT.Text)
				end)

				local textboxLib = {}

				function textboxLib:Set(val)
					_TEXT.Text = val
					library.flags[flag] = _TEXT.Text
					callback(_TEXT.Text)
				end

				function textboxLib:Get()
					return _TEXT.Text
				end

				library.pointers[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5)] = textboxLib

				return textboxLib
			end

			function sectionLib:CreateSlider(title, flag, props, callback)
				callback = callback or function() end

				local Slider = Instance.new("TextButton")
				local _TEXT_6 = Instance.new("TextLabel")
				local _SLIDER = Instance.new("Frame")
				local _BAR = Instance.new("Frame")
				local _VAL = Instance.new("TextLabel")
				local UIStoke_4 = Instance.new("UIStroke")
				local UIStoke_5 = Instance.new("UIStroke")

				Slider.Name = "Slider"
				Slider.Parent = Section
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slider.BackgroundTransparency = 1.000
				Slider.Size = UDim2.new(1, 0, 0, 60)
				Slider.Position = UDim2.new(0, 0, 0, sectionLib:getPos())
				Slider.Font = Enum.Font.TitilliumWeb
				Slider.Text = ""
				Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
				Slider.TextScaled = true
				Slider.TextSize = 14.000
				Slider.TextWrapped = true

				Section.Size = UDim2.new(0.899999976, 0, 0, sectionLib:getSize())
				tabLib:updateCanvas()

				_TEXT_6.Name = "_TEXT"
				_TEXT_6.Parent = Slider
				_TEXT_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT_6.BackgroundTransparency = 1.000
				_TEXT_6.Position = UDim2.new(0.0339999571, 0, 0, 0)
				_TEXT_6.Size = UDim2.new(0.966000021, 0, 0, 30)
				_TEXT_6.Font = Enum.Font.TitilliumWeb
				_TEXT_6.Text = title
				_TEXT_6.TextColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT_6.TextScaled = true
				_TEXT_6.TextSize = 14.000
				_TEXT_6.TextWrapped = true
				_TEXT_6.TextXAlignment = Enum.TextXAlignment.Left

				_SLIDER.Name = "_SLIDER"
				_SLIDER.Parent = Slider
				_SLIDER.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				_SLIDER.BorderColor3 = Color3.fromRGB(170, 0, 255)
				_SLIDER.BorderSizePixel = 2
				_SLIDER.Position = UDim2.new(0.100000001, 0, 0.550000012, 0)
				_SLIDER.Size = UDim2.new(0.800000012, 0, 0, 19)

				_BAR.Name = "_BAR"
				_BAR.Parent = _SLIDER
				_BAR.BackgroundColor3 = Color3.fromRGB(99, 0, 152)
				_BAR.BorderColor3 = Color3.fromRGB(170, 0, 255)
				_BAR.BorderSizePixel = 2
				_BAR.Size = UDim2.new((props.min > 0 and ((props.default - props.min)) / (props.max - props.min) or (props.default - props.min) / (props.max - props.min)), 0, 1, 0)

				_VAL.Name = "_VAL"
				_VAL.Parent = _SLIDER
				_VAL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_VAL.BackgroundTransparency = 1.000
				_VAL.Size = UDim2.new(1, 0, 1, 0)
				_VAL.Font = Enum.Font.TitilliumWeb
				_VAL.Text = props.default .. "/" .. props.max
				_VAL.TextColor3 = Color3.fromRGB(255, 255, 255)
				_VAL.TextScaled = true
				_VAL.TextSize = 14.000
				_VAL.TextWrapped = true

				UIStoke_4.Parent = _TEXT_6
				UIStoke_4.Color = Color3.fromRGB(170, 0, 255)
				UIStoke_4.Thickness = 2

				UIStoke_5.Parent = _VAL
				UIStoke_5.Color = Color3.fromRGB(170, 0, 255)
				UIStoke_5.Thickness = 2

				local value = props.default
				local dragging = false

				library.flags[flag] = value

				local function Slide(input)
					local pos = UDim2.new(math.clamp((input.Position.X - _SLIDER.AbsolutePosition.X) / _SLIDER.AbsoluteSize.X, 0, 1), 0, 1, 0)
					local s = math.floor(((pos.X.Scale * props.max) / props.max) * (props.max - props.min) + props.min)
					_BAR.Size = UDim2.new((s > 0 and ((s - props.min)) / (props.max - props.min) or (s - props.min) / (props.max - props.min)), 0, 1, 0)
					value = s
					_VAL.Text = tostring(s) .. "/" .. props.max
					library.flags[flag] = value
					spawn(function()
						callback(value)
					end)
				end

				_SLIDER.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						dragging = true
						Slide(input)
					end
				end)

				_SLIDER.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						dragging = false
					end
				end)

				UIS.InputChanged:Connect(function(input)
					if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
						Slide(input)
					end
				end)

				local sliderLib = {}

				function sliderLib:Set(val)
					value = val
					_BAR.Size = UDim2.new((value > 0 and ((value - props.min)) / (props.max - props.min) or (value - props.min) / (props.max - props.min)), 0, 1, 0)
					_VAL.Text = val .. "/" .. props.max
					library.flags[flag] = value
					spawn(function()
						callback(value)
					end)
				end

				function sliderLib:Get()
					return value
				end

				library.pointers[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5)] = sliderLib

				return sliderLib

			end

			function sectionLib:CreateColorPicker(title, flag, default, callback)
				callback = callback or function() end

				local ColorPicker = Instance.new("TextButton")
				local _TEXT_7 = Instance.new("TextLabel")
				local _COLOR = Instance.new("Frame")
				local _PICKER = Instance.new("Frame")
				local _COLORP = Instance.new("ImageLabel")
				local _PICKER_2 = Instance.new("ImageLabel")
				local _HUE = Instance.new("Frame")
				local Rainbow = Instance.new("UIGradient")
				local _PICKER_3 = Instance.new("Frame")
				local _BORDER = Instance.new("Frame")
				local UIStoke_4 = Instance.new("UIStroke")

				ColorPicker.Name = "ColorPicker"
				ColorPicker.Parent = Section
				ColorPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ColorPicker.BackgroundTransparency = 1.000
				ColorPicker.Size = UDim2.new(1, 0, 0, 30)
				ColorPicker.Position = UDim2.new(0, 0, 0, sectionLib:getPos())
				ColorPicker.Font = Enum.Font.TitilliumWeb
				ColorPicker.Text = ""
				ColorPicker.TextColor3 = Color3.fromRGB(255, 255, 255)
				ColorPicker.TextScaled = true
				ColorPicker.TextSize = 14.000
				ColorPicker.TextWrapped = true

				Section.Size = UDim2.new(0.899999976, 0, 0, sectionLib:getSize())
				tabLib:updateCanvas()

				_TEXT_7.Name = "_TEXT"
				_TEXT_7.Parent = ColorPicker
				_TEXT_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT_7.BackgroundTransparency = 1.000
				_TEXT_7.Position = UDim2.new(0.156463981, 0, 0, 0)
				_TEXT_7.Size = UDim2.new(0.839999974, 0, 1, 0)
				_TEXT_7.Font = Enum.Font.TitilliumWeb
				_TEXT_7.Text = title
				_TEXT_7.TextColor3 = Color3.fromRGB(255, 255, 255)
				_TEXT_7.TextScaled = true
				_TEXT_7.TextSize = 14.000
				_TEXT_7.TextWrapped = true
				_TEXT_7.TextXAlignment = Enum.TextXAlignment.Left

				_COLOR.Name = "_COLOR"
				_COLOR.Parent = ColorPicker
				_COLOR.BackgroundColor3 = default
				_COLOR.Position = UDim2.new(0.0340000018, 0, 0.200000003, 0)
				_COLOR.Size = UDim2.new(0, 18, 0, 18)
				_COLOR.BorderColor3 = Color3.fromRGB(170, 0, 255)

				_PICKER.Name = "_PICKER"
				_PICKER.Parent = ColorPicker
				_PICKER.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				_PICKER.BorderColor3 = Color3.fromRGB(170, 0, 255)
				_PICKER.BorderSizePixel = 2
				_PICKER.Position = UDim2.new(0.0484359562, 0, 1.23333335, 0)
				_PICKER.Size = UDim2.new(0.899592102, 0, 4.4333334, 0)
				_PICKER.Visible = false

				_COLORP.Name = "_COLORP"
				_COLORP.Parent = _PICKER
				_COLORP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
				_COLORP.BorderColor3 = Color3.fromRGB(170, 0, 255)
				_COLORP.BorderSizePixel = 2
				_COLORP.Position = UDim2.new(0.107684106, 0, 0.112781726, 0)
				_COLORP.Size = UDim2.new(0.78345418, 0, 0.554796219, 0)
				_COLORP.Image = "rbxassetid://4155801252"

				_PICKER_2.Name = "_PICKER"
				_PICKER_2.Parent = _COLORP
				_PICKER_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_PICKER_2.BackgroundTransparency = 1.000
				_PICKER_2.Position = UDim2.new(0.925000012, 0, 0, 0)
				_PICKER_2.Size = UDim2.new(0, 12, 0, 12)
				_PICKER_2.Image = "rbxassetid://4953646208"

				_HUE.Name = "_HUE"
				_HUE.Parent = _PICKER
				_HUE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_HUE.BorderSizePixel = 0
				_HUE.Position = UDim2.new(0.108000003, 0, 0.730000019, 0)
				_HUE.Size = UDim2.new(0.783454359, 0, 0.225563914, 0)

				Rainbow.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 17, 255)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(21, 255, 0)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(234, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
				Rainbow.Name = "Rainbow"
				Rainbow.Parent = _HUE

				_PICKER_3.Name = "_PICKER"
				_PICKER_3.Parent = _HUE
				_PICKER_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				_PICKER_3.BorderColor3 = Color3.fromRGB(170, 0, 255)
				_PICKER_3.BorderSizePixel = 2
				_PICKER_3.Size = UDim2.new(0.0332889594, 0, 1, 0)

				_BORDER.Name = "_BORDER"
				_BORDER.Parent = _PICKER
				_BORDER.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				_BORDER.BorderColor3 = Color3.fromRGB(170, 0, 255)
				_BORDER.BorderSizePixel = 2
				_BORDER.Position = UDim2.new(0.108000003, 0, 0.730000019, 0)
				_BORDER.Size = UDim2.new(0.783454359, 0, 0.225563914, 0)
				_BORDER.ZIndex = 0

				UIStoke_4.Parent = _TEXT_7
				UIStoke_4.Color = Color3.fromRGB(170, 0, 255)
				UIStoke_4.Thickness = 2

				local color = default
				local colorH = 5
				local colorS = 1
				local colorV = 1
				local colorInput = nil
				local hueInput = nil
				local dragging = false

				library.flags[flag] = color

				local function updateColor()
					_COLOR.BackgroundColor3 = Color3.fromHSV(colorH, colorS, colorV)
					_COLORP.BackgroundColor3 = Color3.fromHSV(colorH, 1, 1)
					color = _COLOR.BackgroundColor3
					library.flags[flag] = color
					callback(color)
				end

				ColorPicker.MouseButton1Click:Connect(function()
					_PICKER.Visible = not _PICKER.Visible
					ColorPicker.ZIndex = (_PICKER.Visible == true and 6 or 1)
					Section.ZIndex = (_PICKER.Visible == true and 6 or 1)
				end)

				_COLORP.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then

						if (colorInput) then
							colorInput:Disconnect()
						end

						colorInput = RunService.RenderStepped:Connect(function()
							local ColorX = (math.clamp(Mouse.X - _HUE.AbsolutePosition.X, 0, _HUE.AbsoluteSize.X) / _HUE.AbsoluteSize.X)
							local ColorY = (math.clamp(Mouse.Y - _COLORP.AbsolutePosition.Y, 0, _COLORP.AbsoluteSize.Y) / _COLORP.AbsoluteSize.Y)

							colorS = ColorX
							colorV = 1 - ColorY

							_PICKER_2.Position = UDim2.new(ColorX, 0, ColorY, 0)

							updateColor()
						end)

						library.draggingPicker = true
						dragging = true
					end
				end)

				_COLORP.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if (colorInput) then
							colorInput:Disconnect()
						end
						library.draggingPicker = false
						dragging = false
					end
				end)

				_HUE.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if (hueInput) then
							hueInput:Disconnect()
						end

						hueInput = RunService.RenderStepped:Connect(function()
							local HueY = (math.clamp(Mouse.X - _HUE.AbsolutePosition.X, 0, _HUE.AbsoluteSize.X) / _HUE.AbsoluteSize.X)
							local pos = UDim2.new(math.clamp((Mouse.X - _HUE.AbsolutePosition.X) / _HUE.AbsoluteSize.X, 0, 1), 0, 0, 0)
							pos = (pos.X.Scale < 0.965 and pos or UDim2.new(0.965, 0, 0, 0))
							_PICKER_3.Position = pos

							colorH = 1 - HueY

							updateColor()
						end)
						library.draggingPicker = true
						dragging = true
					end
				end)

				_HUE.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if (hueInput) then
							hueInput:Disconnect()
						end

						library.draggingPicker = false
						dragging = false
					end
				end)

				local colorLib = {}

				function colorLib:Get()
					return color
				end

				function colorLib:Set(c)
					color = c
					_COLOR.BackgroundColor3 = color
					library.flags[flag] = color
					callback(color)
				end

				library.pointers[title .. Section.Name .. string.sub(tabtabtab.Name, 1, -5)] = colorLib

				return colorLib
			end

			function sectionLib:getPos()
				local pos = 0

				for i,v in pairs(Section:GetChildren()) do
					if i == #Section:GetChildren() - 1 and v ~= (Title_2 or #Section:GetChildren()[2]) then
						pos = v.Position.Y.Offset + v.Size.Y.Offset
					end
				end

				return pos
			end

			function sectionLib:getSize()
				local pos = 0

				for i,v in pairs(Section:GetChildren()) do
					if i == #Section:GetChildren() and v ~= Title_2 then
						pos = v.Position.Y.Offset + v.Size.Y.Offset
					end
				end

				return pos
			end

			function sectionLib:getYSizes()
				local tbl = {}
				for i,v in pairs(Section:GetChildren()) do
					if i > 1 then
						table.insert(tbl, v.Size.Y.Offset)
					end
				end
				return tbl
			end

			library.tabs[tabtabtab_2.Name][title] = sectionLib

			return sectionLib
		end

		function tabLib:getCanvas(ySizes, offset, count, padding)
			local num = offset * (count - 1) + padding
			for _, v in pairs(ySizes) do
				num += v
			end

			if num > 500 then
				num += 15
			end

			return num
		end

		function tabLib:updateCanvas()
			local tbl = {}
			local tbl2 = {}

			for i,v in pairs(Left:GetChildren()) do
				if v:IsA("Frame") then
					table.insert(tbl, v.Size.Y.Offset)
				end
			end

			for i,v in pairs(Right:GetChildren()) do
				if v:IsA("Frame") then
					table.insert(tbl2, v.Size.Y.Offset)
				end
			end

			Left.CanvasSize = UDim2.new(0,0,0,tabLib:getCanvas(tbl, 15, #Left:GetChildren() - 1, 15))
			Right.CanvasSize = UDim2.new(0,0,0,tabLib:getCanvas(tbl2, 15, #Right:GetChildren() - 1, 15))
		end

		library.tabs[tabtabtab_2.Name] = tabLib

		return tabLib
	end

	function windowLib:setVisible(val)
		val = val or not MainFrame.Visible

		MainFrame.Visible = val
	end

	function windowLib:setKeys(val)
		val = val or not KeybindsFrame.Visible

		KeybindsFrame.Visible = val
	end

	function windowLib:setLogs(val)
		val = val or not Hitlogs.Visible

		Hitlogs.Visible = val
	end

	function windowLib:SetTab(tab)
		if Tabs:FindFirstChild(tab) then
			for _, v in pairs(Tabs:GetChildren()) do
				if v ~= Tabs:FindFirstChild(tab) and not v.Name:lower():find("add") then
					v.Visible = false
				else
					v.Visible = true
				end
			end
			for _, v in pairs(Buttons:GetChildren()) do
				if v ~= Buttons:FindFirstChild(tab .. "_btn") and v:IsA("TextButton") then
					v.TextColor3 = Color3.fromRGB(166, 166, 166)
				elseif v == Buttons:FindFirstChild(tab .. "_btn") and v:IsA("TextButton") then
					v.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
			end
		end
	end

	function windowLib:GetConfig()
		local cfg = "{"

		for i,v in pairs(library.pointers) do
			if typeof(v:Get()) == "boolean" then
				cfg = cfg .. "[\"" .. i .. "\"] = " .. tostring(v:Get()) .. ";"
			elseif typeof(v:Get()) == "Color3" then
				cfg = cfg .. "[\"" .. i .. "\"] = Color3.new(" .. tostring(v:Get()) .. ");"
			elseif typeof(v:Get()) == "number" then
				cfg = cfg .. "[\"" .. i .. "\"] = " .. tostring(v:Get()) .. ";"
			elseif typeof(v:Get()) == "string" then
				cfg = cfg .. "[\"" .. i .. "\"] = \"" .. tostring(v:Get()) .. "\";"
			elseif typeof(v:Get()) == "table" then
				cfg = cfg .. "[\"" .. i .. "\"] = " .. tableToString(v:Get()) .. ";"
			end
		end

		return cfg .. "}"
	end

	function windowLib:LoadConfig(cfg)
		for i,v in pairs(cfg) do
			if library.pointers[i] ~= nil then
				spawn(function() 
					if typeof(v) == "table" then
						if #v == 2 and v[2] == ("Toggle" or "Always" or "Hold") then
							library.pointers[i]:Set(v)
						else
							library.pointers[i]:Set(v)
						end
					else
						library.pointers[i]:Set(v)
					end
				end)
			end
		end
	end

	library.mainlib = UILib
	library.widnow = windowLib

	return windowLib
end

local Window = library:CreateWindow("deadware.crack")
local UILib = library.mainlib
local RageTab = Window:CreateTab("rage")
local LegitTab = Window:CreateTab("legit")
local VisualsTab = Window:CreateTab("visuals")
local MiscTab = Window:CreateTab("misc")
local ExploitsTab = Window:CreateTab("exploits")
local SettingsTab = Window:CreateTab("settings")
local BadTab = Window:CreateTab("bad is nigger")

local RageTabRagebot = RageTab:CreateSection("Ragebot")
local RageTabAntiAim = RageTab:CreateSection("Anti-Aim")
local RageTabFakelags = RageTab:CreateSection("Fakelag", "Right")

local LegitTabAimbot = LegitTab:CreateSection("Aimbot")

local VisualsTabYourself = VisualsTab:CreateSection("Yourself")
local VisualsTabWorld = VisualsTab:CreateSection("World")
local VisualsTabOthers = VisualsTab:CreateSection("Others", "Right")
local VisualsTabClient = VisualsTab:CreateSection("Client")
local VisualsTabWatermark = VisualsTab:CreateSection("Watermark", "Right")
local VisualsTabViewmodel = VisualsTab:CreateSection("Viewmodel", "Right")
local VisualsTabSpectators = VisualsTab:CreateSection("Spectators", "Right")

local MiscTabMovement = MiscTab:CreateSection("Movement")
local MiscTabClient = MiscTab:CreateSection("Client")
local MiscTabGuns = MiscTab:CreateSection("Guns", "Right")
local MiscTabServer = MiscTab:CreateSection("Server", "Right")

local ExploitsTabPosition = ExploitsTab:CreateSection("Position")

local SettingsTabUI = SettingsTab:CreateSection("UI")
local SettingsTabConfig = SettingsTab:CreateSection("Config")
local SettingsTabLuas = SettingsTab:CreateSection("Luas", "Right")

local BadTabDamage = BadTab:CreateSection("Damage")

RageTabRagebot:CreateToggle("Enabled", "rage_enabled")
RageTabRagebot:CreateToggle("Auto shoot", "rage_autoshoot")
RageTabRagebot:CreateToggle("Hitpart method", "rage_hitpart")
RageTabRagebot:CreateToggle("Auto wall", "rage_autowall")
RageTabRagebot:CreateToggle("Russian knifebot", "rage_kbot")
RageTabRagebot:CreateToggle("Foward track", "rage_fowardtrack")
RageTabRagebot:CreateDropdown("Prediction", "rage_prediction", {"off", "cframe", "old", "new", "gyro"})
RageTabRagebot:CreateDropdown("Resolver", "rage_resolver", {"off", "aa1", "aa2", "random", "bruh"}, nil, true)
RageTabRagebot:CreateDropdown("Hitboxes", "rage_hitboxes", {"head", "torso", "arms", "legs"}, nil, true)
RageTabRagebot:CreateDropdown("Origin", "rage_origin", {"character", "camera"})
RageTabRagebot:CreateToggle("Teammates", "rage_teammates")
RageTabRagebot:CreateSlider("Minimum damage", "rage_min_dmg", {min = -30, max = 100, default = -30})
RageTabRagebot:CreateSlider("Hitbox expander", "rage_expander", {min = 1, max = 10, default = 1})
RageTabRagebot:CreateSlider("Custom tap times", "rage_customtap_times", {min = 2, max = 500, default = 2})
RageTabRagebot:CreateSlider("Foward track distance", "rage_fowardtrack_distance", {min = 2, max = 10, default = 5})
RageTabRagebot:CreateToggle("Kill all", "rage_killall")

RageTabAntiAim:CreateToggle("Enabled", "aa_enabled")
RageTabAntiAim:CreateToggle("Fakeangles", "aa_fakeangles")
RageTabAntiAim:CreateToggle("Fakeduck", "aa_fakeduck")
RageTabAntiAim:CreateToggle("Headless", "aa_headless")
RageTabAntiAim:CreateToggle("Head aa", "aa_head")
RageTabAntiAim:CreateToggle("Tp aa", "aa_tp")
RageTabAntiAim:CreateToggle("Random teleport", "aa_rtp")
RageTabAntiAim:CreateDropdown("Yaw", "aa_yaw", {"none" ,"spin", "targets", "best", "under"})
RageTabAntiAim:CreateSlider("Yaw offset", "aa_yaw_offset", {min = -180, max = 180, default = 0})
RageTabAntiAim:CreateToggle("Jitter", "aa_jitter")
RageTabAntiAim:CreateSlider("Jitter offset", "aa_jitter_offset", {min = -180, max = 180, default = 0})
RageTabAntiAim:CreateDropdown("Pitch", "aa_pitch", {"none", "up", "down", "boneless"})
RageTabAntiAim:CreateDropdown("Roll", "aa_roll", {"none", "180"})
RageTabAntiAim:CreateSlider("Spin speed", "aa_spin_speed", {min = 1, max = 48, default = 1})
RageTabAntiAim:CreateSlider("Hipheight", "aa_hipheight", {min = 5, max = 30, default = 20})

MiscTabMovement:CreateToggle("Bhop", "bhop_enabled")
MiscTabMovement:CreateDropdown("Bhop type", "bhop_type", {"cframe", "gyro", "velocity"})
MiscTabMovement:CreateDropdown("Bhop style", "bhop_style", {"space", "autohop"})
MiscTabMovement:CreateSlider("Bhop speed", "bhop_speed", {min = 15, max = 600, default = 15})
MiscTabMovement:CreateSlider("Bhop modifier", "bhop_mod", {min = 0, max = 30, default = 0})
MiscTabMovement:CreateToggle("Edge bug", "move_edge_bug")
MiscTabMovement:CreateToggle("Slidewalk", "move_slidewalk")

VisualsTabYourself:CreateToggle("Third person", "third_person"):AddKeybind()
VisualsTabYourself:CreateSlider("Third person distance", "third_person_dis", {min = 10, max = 30, default = 15})
VisualsTabYourself:CreateToggle("Self chams", "self_chams")
VisualsTabYourself:CreateColorPicker("Self chams color", "self_chams_color", Color3.fromRGB(170, 0, 255))

ExploitsTabPosition:CreateToggle("Vertical clip", "vclip"):AddKeybind()
ExploitsTabPosition:CreateToggle("Invisible", "invis"):AddKeybind()

LegitTabAimbot:CreateToggle("Enabled", "aimbot_enabled")
LegitTabAimbot:CreateToggle("Silent", "aimbot_silent")
LegitTabAimbot:CreateSlider("Smoothness", "aimbot_smooth", {min = 0, max = 10, default = 0})
LegitTabAimbot:CreateToggle("Draw FOV", "aimbot_fov")
LegitTabAimbot:CreateSlider("FOV", "aimbot_fov", {min = 10, max = 420, default = 80})

MiscTabServer:CreateToggle("Kill say", "kill_say")
MiscTabServer:CreateToggle("Server smoker", "server_smoker")

VisualsTabWorld:CreateColorPicker("World color", "world_color", Color3.new(1, 1, 1), function()
	Camera.ColorCorrection.TintColor = library.flags["world_color"]
end)

VisualsTabWorld:CreateSlider("Asus walls", "asus_walls", {min = 0, max = 100, default = 0}, function()
	for _, v in pairs(workspace.Map.Geometry:GetDescendants()) do
		if v:IsA("BasePart") or v:IsA("Decal") or v:IsA("Texture") then
			v.Transparency = library.flags["asus_walls"] / 100
		end
	end
	for _, v in pairs(workspace.Map.Regen:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Transparency = library.flags["asus_walls"] / 100
		end
	end
end)

VisualsTabWorld:CreateToggle("Light booster", "world_light")

VisualsTabWorld:CreateToggle("Fog", "world_fog", function()
	game.Lighting.FogEnd = (library.flags["world_fog"] == true and library.flags["world_fog_distance"] * 10 or 10000)
	game.Lighting.FogColor = library.flags["world_fog_color"]
end)
VisualsTabWorld:CreateColorPicker("Fog color", "world_fog_color", Color3.fromRGB(192, 192, 192), function()
	game.Lighting.FogEnd = library.flags["world_fog_distance"]
end)
VisualsTabWorld:CreateSlider("Fog distance", "world_fog_distance", {min = 10, max = 100, default = 50}, function()
	game.Lighting.FogEnd = (library.flags["world_fog"] == true and library.flags["world_fog_distance"] * 10 or 10000)
end)
VisualsTabWorld:CreateSlider("Time of day", "world_time", {min = 8, max = 20, default = 12}, function()
	game.Lighting.ClockTime = library.flags["world_time"]	
end)

VisualsTabWatermark:CreateToggle("Enabled", "wm_enabled")

VisualsTabSpectators:CreateToggle("Anti-spectate", "sp_anti")
VisualsTabSpectators:CreateSlider("Spectate angle", "sp_angle", {min = -180, max = 180, default = 0})

BadTabDamage:CreateSlider("Damage modifier", "dmg_mod", {min = 1, max = 1000, default = 1})

VisualsTabClient:CreateSlider("FOV", "c_fov", {min = 1, max = 120, default = 80})
VisualsTabClient:CreateToggle("On scope", "c_fov_scope")
VisualsTabClient:CreateToggle("Bullet tracers", "c_btracers")
VisualsTabClient:CreateColorPicker("Bullet tracers color", "c_btracers_color", Color3.new(0, 1, 0))
VisualsTabClient:CreateSlider("Bullet tracers lifetime", "c_btracers_lifetime", {min = 1, max = 20, default = 3})
VisualsTabClient:CreateDropdown("Skybox", "c_skybox", {"none", "galaxy", "purple", "purple night", "deadware"})
VisualsTabClient:CreateDropdown("Removals", "c_removals", {"none", "scope", "decals", "shadows", "smokes", "flash"}, function(val)
	if table.find(val, "decals") then
		client.createbullethole = function() end
		for i,v in pairs(workspace.Debris:GetChildren()) do 
			if v.Name == "Bullet" or v.Name == "SurfaceGui" then
				v:Destroy()
			end
		end
	else
		client.createbullethole = oldcreatebullethole
	end
end, true)
VisualsTabClient:CreateToggle("Namehider", "c_namehider")
VisualsTabClient:CreateSlider("Fake ping", "c_fping", {min = -10000, max = 10000, default = 0})
VisualsTabClient:CreateToggle("Full change", "c_fchange")
VisualsTabClient:CreateTextbox("Custom FPS", "c_fffps")
VisualsTabClient:CreateTextbox("Custom ping", "c_ffping")
VisualsTabClient:CreateTextbox("Custom location", "c_fflocation")
VisualsTabClient:CreateToggle("Better fps", "c_fffps_add")
VisualsTabClient:CreateToggle("Better ping", "c_ffping_add")

VisualsTabViewmodel:CreateToggle("Arms", "v_arms")
VisualsTabViewmodel:CreateColorPicker("Arms color", "v_arms_color", Color3.new(1, 1, 1))
VisualsTabViewmodel:CreateSlider("Arms transparency", "v_arms_transparency", {min = 0, max = 100, default = 0})
VisualsTabViewmodel:CreateToggle("Hide gloves", "v_hide_gloves")
VisualsTabViewmodel:CreateToggle("Hide sleeves", "v_hide_sleeves")
VisualsTabViewmodel:CreateToggle("Weapon", "v_weapon")
VisualsTabViewmodel:CreateColorPicker("Weapon color", "v_weapon_color", Color3.new(1, 1, 1))
VisualsTabViewmodel:CreateSlider("Weapon transparency", "v_weapon_transparency", {min = 0, max = 100, default = 0})
VisualsTabViewmodel:CreateDropdown("Weapon material", "v_weapon_material", {"Neon", "ForceField"})
VisualsTabViewmodel:CreateSlider("X", "v_x", {min = 0, max = 360, default = 180})
VisualsTabViewmodel:CreateSlider("Y", "v_y", {min = 0, max = 360, default = 180})
VisualsTabViewmodel:CreateSlider("Z", "v_z", {min = 0, max = 360, default = 180})
VisualsTabViewmodel:CreateSlider("Roll", "v_roll", {min = 0, max = 360, default = 180})

VisualsTabOthers:CreateToggle("Box", "o_box")
VisualsTabOthers:CreateToggle("Name", "o_name")
VisualsTabOthers:CreateToggle("Health", "o_health")
VisualsTabOthers:CreateToggle("Chams", "o_chams", function()
	while wait() do
		if not library.flags["o_chams"] then break end

		for _,plr in pairs(game.Players:GetPlayers()) do
			if (library.flags["o_teammates"] == true and Player ~= plr or plr.Team ~= Player.Team) then
				if plr ~= nil and isAlive(plr) then
					for _,part in pairs(plr.Character:GetChildren()) do
						if part:IsA("BasePart") and part.Name ~= ("HumanoidRootPart") and not part.Name:lower():find("head") and part:FindFirstChild("jeez") == nil then
							local handle = Instance.new("BoxHandleAdornment", part)
							handle.Name = "jeez"
							handle.AlwaysOnTop = true
							handle.ZIndex = 5
							handle.Adornee = part
							handle.Size = part.Size
							handle.Color3 = library.flags["o_chams_color"]
							handle.Transparency = library.flags["o_chams_transparency"] / 100
							spawn(function()
								while wait() do
									if not library.flags["o_chams"] or not isAlive(plr) or not (library.flags["o_teammates"] == true and Player ~= plr or plr.Team ~= Player.Team) then
										break
									end
									handle.Color3 = library.flags["o_chams_color"]
									handle.Transparency = library.flags["o_chams_transparency"] / 100
								end
								handle:Destroy()
							end)
						elseif part:IsA("BasePart") and part.Name == "Head" and part:FindFirstChild("jeez") == nil then
							local round = Instance.new("CylinderHandleAdornment", part)
							round.Name = "jeez"
							round.AlwaysOnTop = true
							round.ZIndex = 5
							round.Adornee = part
							round.Height = 1.1
							round.Radius = 0.61
							round.SizeRelativeOffset = Vector3.new(0, 0.05, 0)
							round.Angle = 360
							round.CFrame = round.CFrame * CFrame.Angles(math.rad(90), 0, 0)
							round.Color3 = library.flags["o_chams_color"]
							round.Transparency = library.flags["o_chams_transparency"] / 100
							spawn(function()
								while wait() do
									if not library.flags["o_chams"] or not isAlive(plr) or not (library.flags["o_teammates"] == true and Player ~= plr or plr.Team ~= Player.Team) then
										break
									end
									round.Color3 = library.flags["o_chams_color"]
									round.Transparency = library.flags["o_chams_transparency"] / 100
								end
								round:Destroy()
							end)
						end
					end
				end
			end
		end
	end
end)
VisualsTabOthers:CreateToggle("Targets", "o_targets", function()
	while wait() do
		if not library.flags["o_targets"] then break end
		if library.flags["aa_enabled"] and library.flags["aa_yaw"][1] == "targets" and isAlive(Player) then
			local hrp = nil
			local plr = nil
			if aa_target ~= nil then
				hrp = aa_target.Character.HumanoidRootPart
				plr = aa_target
			end
			if hrp ~= nil and hrp:FindFirstChild("tarez") == nil then
				local cyl = Instance.new("CylinderHandleAdornment", hrp)
				cyl.CFrame = cyl.CFrame * CFrame.Angles(math.rad(90), 0, 0)
				cyl.Adornee = hrp
				cyl.AlwaysOnTop = true
				cyl.ZIndex = 10
				cyl.Height = .75
				cyl.Radius = 2.1
				cyl.SizeRelativeOffset = Vector3.new(0, 2, 0)
				cyl.Name = "tarez"

				spawn(function()
					while true do
						if not library.flags["aa_enabled"] or not library.flags["aa_yaw"][1] == "targets" or not isAlive(Player) or not library.flags["o_targets"] or not isAlive(plr) or plr ~= aa_target then break end
						if cyl.SizeRelativeOffset == Vector3.new(0, 2, 0) then
							TweenService:Create(cyl, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {SizeRelativeOffset = Vector3.new(0, -3, 0)}):Play()
							wait(1.1)
						else
							TweenService:Create(cyl, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {SizeRelativeOffset = Vector3.new(0, 2, 0)}):Play()
							wait(1.1)
						end
					end
				end)

				spawn(function()
					while wait() do
						if not library.flags["aa_enabled"] or not library.flags["aa_yaw"][1] == "targets" or not isAlive(Player) or not library.flags["o_targets"] or not isAlive(plr) or plr ~= aa_target then break end
						cyl.Color3 = library.flags["o_targets_color"]
						cyl.Transparency = library.flags["o_targets_transparency"] / 100
					end
					cyl:Destroy()
				end)
			end
		end
	end
end)
VisualsTabOthers:CreateColorPicker("Targets color", "o_targets_color", Color3.fromRGB(85, 0, 127))
VisualsTabOthers:CreateSlider("Targets transparency", "o_targets_transparency", {min = 0, max = 100, default = 0})
VisualsTabOthers:CreateColorPicker("Chams color", "o_chams_color", Color3.fromRGB(170, 0, 255))
VisualsTabOthers:CreateSlider("Chams transparency", "o_chams_transparency", {min = 0, max = 100, default = 90})
VisualsTabOthers:CreateColorPicker("Box color", "o_box_color", Color3.new(1, 1, 1))
VisualsTabOthers:CreateColorPicker("Health color", "o_health_color", Color3.new(0, 1, 0))
VisualsTabOthers:CreateToggle("Teammates", "o_teammates")

MiscTabClient:CreateDropdown("Shop", "shop", {"none", "inf time", "anywhere"}, nil, true)
MiscTabClient:CreateDropdown("Hitsound", "mc_hitsound", {"none", "skeet", "window ding"})
MiscTabClient:CreateToggle("Infinite money", "mc_inf")
MiscTabClient:CreateToggle("Remove barriers", "mc_barriers")

MiscTabGuns:CreateDropdown("Modifiers", "gun_mods", {"off", "ammo", "firerate", "recoil", "spread", "automatic", "reload", "equip", "penetration", "penetration2", "range"}, nil, true)
MiscTabGuns:CreateSlider("Penetration modifier", "pen_mod", {min = 1, max = 250, default = 10})

MiscTabServer:CreateDropdown("Bypasses", "s_bypasses", {"none", "fire", "fall"}, nil, true)
MiscTabServer:CreateToggle("Flyclip", "s_flyclip", function(val)
	if val then
		Fly = RunService.Stepped:Connect(function()
			spawn(function()
				pcall(function()
					local speed = library.flags["s_flyclip_speed"] * 8
					local velocity = Vector3.new(0, 1, 0)
					if UIS:IsKeyDown(Enum.KeyCode.W) then
						velocity = velocity + (Camera.CFrame.LookVector * speed)
					end
					if UIS:IsKeyDown(Enum.KeyCode.A) then
						velocity = velocity + (Camera.CFrame.RightVector * -speed)
					end
					if UIS:IsKeyDown(Enum.KeyCode.S) then
						velocity = velocity + (Camera.CFrame.LookVector * -speed)
					end
					if UIS:IsKeyDown(Enum.KeyCode.D) then
						velocity = velocity + (Camera.CFrame.RightVector * speed)
					end
						
					Player.Character.HumanoidRootPart.Velocity = velocity
					Player.Character.Humanoid.PlatformStand = true
				end)
			end)
		end)

		Noclip = game:GetService("RunService").Stepped:Connect(function()
			if isAlive(Player) then
				for i,v in pairs(Player.Character:GetChildren()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
			end
		end)
	else
		pcall(function()
			Fly:Disconnect()
			Noclip:Disconnect()
			Player.Character.Humanoid.PlatformStand = false
			for i,v in pairs(Player.Character:GetChildren()) do
				if v:IsA("BasePart") and v.CanCollide == false then
					v.CanCollide = true
				end
			end
		end)
	end
end):AddKeybind()
MiscTabServer:CreateSlider("Flyclip speed", "s_flyclip_speed", {min = 1, max = 100, default = 1})

RageTabFakelags:CreateToggle("Fakelags", "fakes_enabled", function()
	if library.flags["fakes_type"][1] == "ping" then
		local tick = 0

		while true do
			if not library.flags["fakes_enabled"] then break end
			if tick < library.flags["fakes_limit"] then
				tick += 1
				game:GetService("NetworkClient"):SetOutgoingKBPSLimit(1)
			else
				tick = 0
				game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
				if library.flags["fakes_display"] == true then
					fakeChar()
				end
			end
			wait(1 / library.flags["fakes_tick"])
		end

		game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
		fakelagFolder:ClearAllChildren()
	else
		if isAlive(Player) then
			repeat
				if not library.flags["fakes_enabled"] then if isAlive(Player) then Player.Character.HumanoidRootPart.Anchored = false end break end
				if isAlive(Player) and library.flags["fakes_type"][1] == "adaptive" then
					Player.Character.HumanoidRootPart.Anchored = true
					if library.flags["fakes_display"] then
						fakeChar()
					end
					for tk = 1, library.flags["fakes_limit"] do
						wait(1 / library.flags["fakes_tick"])
					end
					Player.Character.HumanoidRootPart.Anchored = false
					for tk = 1, library.flags["fakes_limit"] do
						wait(1 / library.flags["fakes_tick"])
					end
					Player.Character.HumanoidRootPart.Anchored = true
					if library.flags["fakes_display"] then
						fakeChar()
					end
				elseif isAlive(Player) and library.flags["fakes_type"][1] ~= "adaptive" then
					break
				end
			until Player.Character.HumanoidRootPart.Anchored == false
		end
		
	end
end):AddKeybind()
RageTabFakelags:CreateDropdown("Type", "fakes_type", {"ping", "adaptive"})
RageTabFakelags:CreateSlider("Limit", "fakes_limit", {min = 1, max = 32, default = 16})
RageTabFakelags:CreateSlider("Tick time", "fakes_tick", {min = 1, max = 32, default = 16})
RageTabFakelags:CreateToggle("Display", "fakes_display")
RageTabFakelags:CreateColorPicker("Display color", "fakes_color", Color3.new(1, 0, 0))

SettingsTabUI:CreateToggle("Visibility", "set_ui_vis", function()
	Window:setVisible(library.flags["set_ui_vis"])
end, true):AddKeybind("Insert", false)

SettingsTabUI:CreateToggle("Keybinds", "set_key_vis", function()
	Window:setKeys(library.flags["set_key_vis"])
end)

SettingsTabUI:CreateToggle("Hitlogs", "set_hit_vis", function()
	Window:setLogs(library.flags["set_hit_vis"])
end)

SettingsTabConfig:CreateTextbox("Config name", "cfg_name")

SettingsTabConfig:CreateButton("Load config", function()
	local path = "deadware.crack/cfgs/" .. library.flags["cfg_name"] .. ".dead"
	if isfile(path) then
		local base64_decode = (syn ~= nil and syn.crypt.base64.decode or Krnl.Base64.Decode)
		Window:LoadConfig(loadstring("return " .. base64_decode(readfile(path)))())
	end
end)

SettingsTabConfig:CreateButton("Save config", function()
	local path = "deadware.crack/cfgs/" .. library.flags["cfg_name"] .. ".dead"
	local base64_encode = (syn ~= nil and syn.crypt.base64.encode or Krnl.Base64.Encode)
	writefile(path, base64_encode(Window:GetConfig()))
end)

local luas = {}

for _, v in pairs(listfiles("deadware.crack/luas")) do
	table.insert(luas, string.sub(v, 19, -1))
end

local luas_obj = SettingsTabLuas:CreateDropdown("Luas", "lua_select", luas)
SettingsTabLuas:CreateButton("Load", function()
	loadstring(readfile("deadware.crack/luas/" .. library.flags["lua_select"][1]))()
end)
SettingsTabLuas:CreateButton("Refresh", function()
	local luas = {}

	for _, v in pairs(listfiles("deadware.crack/luas")) do
		table.insert(luas, string.sub(v, 19, -1))
	end

	luas_obj:Refresh(luas)
end)

local bhopGyro = nil
local currentTick = 0
local jitterToggle = false

RunService.RenderStepped:Connect(function(fps)
	aa_target = nil
	Camera = workspace.CurrentCamera
	Ping = game.Stats.PerformanceStats.Ping:GetValue()
	fps = math.round(1 / fps)
	currentTick += 1
	jitterToggle = not jitterToggle
	if currentTick > 600 then
		for _,v in pairs(objects) do
			for i2, obj in pairs(v) do
				obj:Remove()
				v[i2] = nil
			end
		end
		objects = {}
		currentTick = 0
	end
	if library.flags["aa_enabled"] and isAlive(Player) then
		local Root = Player.Character.HumanoidRootPart
		Player.Character.Humanoid.AutoRotate = false
		local Angle = -math.atan2(Camera.CFrame.LookVector.Z, Camera.CFrame.LookVector.X) + math.rad(-90)
		local Offset = math.rad(-library.flags["aa_yaw_offset"])
		if library.flags["aa_jitter"] then
			if jitterToggle then
				Offset = math.rad(library.flags["aa_jitter_offset"])
			else
				Offset += math.rad(library.flags["aa_jitter_offset"])
			end
		end
		if library.flags["aa_fakeangles"] then
			local tbl = {math.rad(90), math.rad(-90)}
			Offset = tbl[math.random(1, 2)]
		end
		local CFPos = CFrame.new(Root.Position) * CFrame.Angles(0, Angle + Offset, 0)
		if library.flags["aa_yaw"][1] == "targets" then
			local max = math.huge
			local hrp = nil
			for _, player in pairs(game.Players:GetPlayers()) do
				if isAlive(player) and player.Team ~= Player.Team then
					local dist = (Root.Position - player.Character.HumanoidRootPart.Position).magnitude
					if dist < max then
						max = dist
						hrp = player.Character.HumanoidRootPart
						aa_target = player
					end
				end
			end
			if hrp ~= nil then
				CFPos = CFrame.new(Root.Position, hrp.Position) * CFrame.Angles(0, Offset, 0)
			end
		elseif library.flags["aa_yaw"][1] == "spin" then
			CFPos = Root.CFrame * CFrame.Angles(0, math.rad(library.flags["aa_spin_speed"]), 0)
		elseif library.flags["aa_yaw"][1] == "best" then
			function replace(part, weldName)	
				local weld = part:FindFirstChild(weldName)
				if weld then
					local clone = weld:Clone()
					clone.Part1 = nil
					part[weldName]:Destroy()
					clone.Parent = part
				end
			end
			replace(Player.Character.UpperTorso, "Waist")
			replace(Player.Character.LowerTorso, "Root")
			for _, v in pairs(Player.Character:GetChildren()) do
				if v:IsA("BasePart") then
					if v.Name ~= "HumanoidRootPart" and not v.Name:find("Left") and not v.Name:find("Right") and not v.Name == "Head" then
						v.CanCollide = false
						v.Velocity = Vector3.new(0, 0, 0)
						v.Anchored = not v.Anchored
					else
						v.CanCollide = false
					end
				end
			end
			Player.Character.UpperTorso.CFrame = Root.CFrame * CFrame.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
			Player.Character.LowerTorso.CFrame = Root.CFrame * CFrame.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
		elseif library.flags["aa_yaw"][1] == "under" then
			function replace(part, weldName)
				local weld = part:FindFirstChild(weldName)
				if weld then
					local clone = weld:Clone()
					clone.Part1 = nil
					part[weldName]:Destroy()
					clone.Parent = part
				end
			end
			replace(Player.Character.UpperTorso, "Waist")
			replace(Player.Character.LowerTorso, "Root")
			for _, v in pairs(Player.Character:GetChildren()) do
				if v:IsA("BasePart") then
					if v.Name ~= "HumanoidRootPart" and not v.Name:find("Left") and not v.Name:find("Right") and not v.Name == "Head" then
						v.CanCollide = false
						v.Velocity = Vector3.new(0, 0, 0)
						v.Anchored = not v.Anchored
					elseif v.Name ~= "HumanoidRootPart" then
						v.CanCollide = false
					end
				end
			end
			Player.Character.UpperTorso.CFrame = Root.CFrame * CFrame.new(0, -7, 0)
			Player.Character.LowerTorso.CFrame = Root.CFrame * CFrame.new(0, -7, 0)
		end
		Root.CFrame = yrotate(CFPos)
		if library.flags["aa_roll"][1] == "180" then
			Root.CFrame *= CFrame.Angles(0, 0, math.rad(180))
			if Player.Character.Humanoid.HipHeight ~= 4 then
				Player.Character.Humanoid.HipHeight = 4
				Root.CFrame += Vector3.new(0, 5, 0)
			end
		else
			Player.Character.Humanoid.HipHeight = library.flags["aa_hipheight"] / 10
		end
		if library.flags["aa_fakeduck"] then
			local crouch = nil
			for _, v in pairs(debug.getupvalues(client.setcharacter)) do
				if type(v) == "userdata" and v.ClassName == "AnimationTrack" and v.Name == "Idle" then
					crouch = v
				end
			end
			if crouch ~= nil then
				crouch:Play()
			end
		end
		if library.flags["aa_headless"] then
			if Player.Character:FindFirstChild("FakeHead") then
				Player.Character.FakeHead:Destroy()
			end
			if Player.Character:FindFirstChild("HeadHB") then
				Player.Character.HeadHB:Destroy()
			end
			Player.Character.Head.Transparency = 1
		end
		if library.flags["aa_rtp"] then
			Root.CFrame = CFrame.new(Vector3.new(math.random(1, 250), -50, math.random(1, 250)))
		end
	elseif library.flags["aa_enabled"] == false and isAlive(Player) then
		Player.Character.Humanoid.AutoRotate = true
	end
	if library.flags["third_person"] then
		if isAlive(Player) then
			workspace.ThirdPerson.Value = true
			if Player.CameraMinZoomDistance ~= library.flags["third_person_dis"] then
				Player.CameraMinZoomDistance = library.flags["third_person_dis"]
				Player.CameraMaxZoomDistance = library.flags["third_person_dis"]
			end
		end
	else
		if isAlive(Player) then
			workspace.ThirdPerson.Value = false
			if Player.CameraMinZoomDistance ~= 0 then
				Player.CameraMinZoomDistance = 0
				Player.CameraMaxZoomDistance = 0
			end
		end
	end
	if library.flags["vclip"] == true then
		library.pointers["Vertical clipPositionexploits"]:Set(false)
		if isAlive(Player) then
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(Player.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0))
		end
	end
	if library.flags["invis"] == true then
		library.pointers["InvisiblePositionexploits"]:Set(false)
		if isAlive(Player) then
			spawn(function()
				local StoredCF = Player.Character.PrimaryPart.CFrame
				Player.Character.PrimaryPart.CFrame = CFrame.new(Vector3.new(9999, 9999, 9999))
				local Part = Instance.new("Part",workspace)
				Part.Size = Vector3.new(5,0,5)
				Part.Anchored = true
				Part.CFrame = CFrame.new(Vector3.new(99999,99999,99999))
				Player.Character.PrimaryPart.CFrame = Part.CFrame*CFrame.new(0,10,0)
				spawn(function()
					wait(2)
					Part:Destroy()
				end)
				local Clone = Player.Character.LowerTorso.Root:Clone()
				Player.Character.LowerTorso.Root:Destroy()
				Clone.Parent = Player.Character.LowerTorso
				wait(0.1)
				Player.Character.PrimaryPart.CFrame = StoredCF
			end)
		end
	end
	if library.flags["bhop_enabled"] and isAlive(Player) and (library.flags["bhop_style"][1] == "space" and UIS:IsKeyDown("Space") or library.flags["bhop_style"][1] == "autohop") then
		local angle = 0
			
		if UIS:IsKeyDown("A") then angle = 90 end 
		if UIS:IsKeyDown("S") then angle = 180 end 
		if UIS:IsKeyDown("D") then angle = 270 end 
		if UIS:IsKeyDown("A") and UIS:IsKeyDown("W") then angle = 45 end 
		if UIS:IsKeyDown("D") and UIS:IsKeyDown("W") then angle = 315 end 
		if UIS:IsKeyDown("D") and UIS:IsKeyDown("S") then angle = 225 end 
		if UIS:IsKeyDown("A") and UIS:IsKeyDown("S") then angle = 145 end
		Player.Character.Humanoid.Jump = true

		local speed = library.flags["bhop_speed"] * (5 + ((30 / (30 / library.flags["bhop_mod"])) / 4))
		local velocity = Vector3.new(0, 0, 0)
		if UIS:IsKeyDown(Enum.KeyCode.W) then
			velocity = velocity + (Camera.CFrame.LookVector * speed)
		end
		if UIS:IsKeyDown(Enum.KeyCode.A) then
			velocity = velocity + (Camera.CFrame.RightVector * -speed)
		end
		if UIS:IsKeyDown(Enum.KeyCode.S) then
			velocity = velocity + (Camera.CFrame.LookVector * -speed)
		end
		if UIS:IsKeyDown(Enum.KeyCode.D) then
			velocity = velocity + (Camera.CFrame.RightVector * speed)
		end
		velocity = Vector3.new(velocity.X, 0, velocity.Z)
		
		local rot = (yrotate(Camera.CFrame) * CFrame.Angles(0, math.rad(angle), 0)).LookVector
		local Root = Player.Character.HumanoidRootPart
		if library.flags["bhop_type"][1] == "cframe" then
			if bhopGyro ~= nil then
				bhopGyro:Destroy()
			end
			if (angle == 0 and UIS:IsKeyDown("W") or angle > 0) then
				Root.CFrame = Root.CFrame + Vector3.new(rot.X, 0, rot.Z) * (library.flags["bhop_speed"] / (50 - library.flags["bhop_mod"]))
			end
		elseif library.flags["bhop_type"][1] == "velocity" then
			if bhopGyro ~= nil then
				bhopGyro:Destroy()
			end
			if (angle == 0 and UIS:IsKeyDown("W") or angle > 0) then
				Root.Velocity = velocity
			end
		elseif library.flags["bhop_type"][1] == "gyro" then
			if bhopGyro ~= nil then
				bhopGyro:Destroy()
			end
			bhopGyro = Instance.new("BodyVelocity", Root)
			bhopGyro.Name = "realgyro"
			bhopGyro.MaxForce = Vector3.new(9e9, 0, 9e9)
			if (angle == 0 and UIS:IsKeyDown("W") or angle > 0) then
				bhopGyro.Velocity = Vector3.new(rot.X, 0, rot.Z) * (library.flags["bhop_speed"] * 2)
			end
		end
	else
		if bhopGyro then
			bhopGyro:Destroy()
		end
	end
	if isAlive(Player) and workspace:FindFirstChild("Map") and client.gun ~= nil and client.gun ~= "none" and client.gun.Name ~= "C4" then      
		if library.flags["rage_enabled"] then      
			local Origin = library.flags["rage_origin"][1] == "character" and Player.Character.HumanoidRootPart.Position or Camera.CFrame.p
			for _,plr in pairs(game.Players:GetPlayers()) do      
				if isAlive(plr) and plr.Character:FindFirstChildOfClass("ForceField") == nil then 
					if (library.flags["rage_teammates"] == false and plr.Team ~= Player.Team or library.flags["rage_teammates"] == true and plr ~= Player) and client.DISABLED == false then
						if table.find(library.flags["rage_resolver"], "aa1") then      
							plr.Character.UpperTorso.Waist.C0 = CFrame.Angles(0, 0, 0)
						end
						if table.find(library.flags["rage_resolver"], "aa2") then      
							plr.Character.Humanoid.MaxSlopeAngle = 0
						end
						if table.find(library.flags["rage_resolver"], "random") then      
							plr.Character.UpperTorso.Waist.C0 = CFrame.Angles(math.random(-5, 5), 4, math.random(-5, 5)) 
						end
						if table.find(library.flags["rage_resolver"], "bruh") then      
							plr.Character.UpperTorso.Waist.C0 = CFrame.Angles(0, 0, 0)
							plr.Character.LowerTorso.Root.C0 = CFrame.Angles(0, 0, 0)
							plr.Character.Head.Neck.C0 = CFrame.new(0, 3, 0) * CFrame.Angles(0, 0, 0)
							plr.Character.LeftUpperArm.LeftShoulder.C0 = CFrame.new(5, 0, 0) * CFrame.Angles(0, 0, 0)
							plr.Character.RightUpperArm.RightShoulder.C0 = CFrame.new(-5, 0, 0) * CFrame.Angles(0, 0, 0)
							plr.Character.LeftUpperLeg.LeftHip.C0 = CFrame.new(0, 0, 3) * CFrame.Angles(0, 0, 0)
							plr.Character.RightUpperLeg.RightHip.C0 = CFrame.new(0, 0, -3) * CFrame.Angles(0, 0, 0)
						end

						if true then
							local Ignore = {workspace.Ray_Ignore, Player.Character, workspace.Debris, Camera} 
							if table.find(library.flags["gun_mods"], "penetration") then
								table.insert(Ignore, workspace.Map)
							end
							if client.gun:FindFirstChild("Melee") and library.flags["rage_kbot"] then
								client.DISABLED = false
								table.insert(Ignore, workspace.Map)
							end
							if library.flags["rage_fowardtrack"] then
								local clone = fowardtrackFolder:FindFirstChild(plr.Name)
								if clone == nil then
									plr.Character.Archivable = true
									local clone = plr.Character:Clone()
									plr.Character.Archivable = false
									clone.Parent = fowardtrackFolder
								end
								for _, v in pairs(clone:GetChildren()) do
									if v:IsA("BasePart") then
										v.Anchored = true
										v.CanCollide = false
										v.Color3 = Color3.new(1, 1, 1)
									else
										v:Destroy()
									end
								end
								clone.HumanoidRootPart.CFrame = yrotate(plr.Character.HumanoidRootPart.CFrame) * CFrame.new(0, 0, library.flags["rage_fowardtrack_distance"])
							else
								fowardtrackFolder:ClearAllChildren()
							end
							local Hitboxes = {} 
							for _, hb in ipairs(library.flags["rage_hitboxes"]) do 
								if hb == "head" then
									table.insert(Hitboxes, plr.Character.Head)
									if library.flags["rage_fowardtrack"] then
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].Head)
									end
								elseif hb == "torso" then
									table.insert(Hitboxes, plr.Character.HumanoidRootPart)
									table.insert(Hitboxes, plr.Character.LowerTorso)
									table.insert(Hitboxes, plr.Character.UpperTorso)
									if library.flags["rage_fowardtrack"] then
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].HumanoidRootPart)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].LowerTorso)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].UpperTorso)
									end
								elseif hb == "arms" then
									table.insert(Hitboxes, plr.Character.LeftUpperArm)
									table.insert(Hitboxes, plr.Character.LeftLowerArm)
									table.insert(Hitboxes, plr.Character.LeftHand)
									table.insert(Hitboxes, plr.Character.RightUpperArm)
									table.insert(Hitboxes, plr.Character.RightLowerArm)
									table.insert(Hitboxes, plr.Character.RightHand)
									if library.flags["rage_fowardtrack"] then
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].LeftUpperArm)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].LeftLowerArm)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].LeftHand)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].RightUpperArm)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].RightLowerArm)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].RightHand)
									end
								elseif hb == "legs" then
									table.insert(Hitboxes, plr.Character.LeftUpperLeg)
									table.insert(Hitboxes, plr.Character.LeftLowerLeg)
									table.insert(Hitboxes, plr.Character.LeftHand)
									table.insert(Hitboxes, plr.Character.RightUpperLeg)
									table.insert(Hitboxes, plr.Character.RightLowerLeg)
									table.insert(Hitboxes, plr.Character.RightHand)
									if library.flags["rage_fowardtrack"] then
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].LeftUpperLeg)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].LeftLowerLeg)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].LeftHand)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].RightUpperLeg)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].RightLowerLeg)
										table.insert(Hitboxes, fowardtrackFolder[plr.Name].RightHand)
									end
								end
							end
							if plr.Character:FindFirstChild("FakeHead") == nil then
								tableRemove(Hitboxes, plr.Character.Head)
							end
							if library.flags["rage_expander"] > 1 then
								if table.find(Hitboxes, plr.Character.HumanoidRootPart) then
									plr.Character.HumanoidRootPart.CanCollide = false
									plr.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1) * library.flags["rage_expander"]
								end
							else
								plr.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
							end
							for _,Hitbox in ipairs(Hitboxes) do 
								local Ignore2 = {workspace.Ray_Ignore, Player.Character, workspace.Debris} 
								if table.find(library.flags["gun_mods"], "penetration") then
									table.insert(Ignore2, workspace.Map)
								end
								if library.flags["rage_autowall"] then 
									local Hits = {} 
									local EndHit, Hit, Pos 
									local Penetration = client.gun.Penetration.Value * 0.01
									local Ray1 = Ray.new(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude) 
									repeat 
										Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore2, false, true) 
										if Hit ~= nil and Hit.Parent ~= nil then 
											if Hit and multies[Hit.Name] ~= nil then 
												EndHit = Hit 
											else 
												table.insert(Ignore2, Hit) 
												table.insert(Hits, {["Position"] = Pos,["Hit"] = Hit}) 
											end 
										end 
									until EndHit ~= nil or #Hits >= 4 or Hit == nil 
									if EndHit ~= nil and multies[EndHit.Name] ~= nil and #Hits <= 4 then 
										if #Hits == 0 then 
											local Damage = client.gun.DMG.Value * multies[EndHit.Name] 
											if plr:FindFirstChild("Kevlar") then 
												if string.find(EndHit.Name, "Head") then 
													if plr:FindFirstChild("Helmet") then 
														Damage = (Damage / 100) * client.gun.ArmorPenetration.Value 
													end 
												else 
													Damage = (Damage / 100) * client.gun.ArmorPenetration.Value 
												end 
											end 
											Damage = Damage * (client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100 
											if Damage >= library.flags["rage_min_dmg"] then 
												RageHitpart = EndHit  
												if library.flags["rage_autoshoot"] then
													if client.gun:FindFirstChild("Melee") and library.flags["rage_kbot"] then
														local oh1 = RageHitpart
														local oh2 = RageHitpart.Position
														local oh3 = client.gun.Name
														local oh4 = 4096
														local oh5 = Player.Character.Gun
														local oh8 = math.random(1, 360)
														local oh9 = true
														local oh10 = true
														local oh11 = Vector3.new()
														local oh12 = 1
														local oh13 = Vector3.new()
														game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
													else
														client.firebullet()
													end
													for i = 1, library.flags["rage_customtap_times"] do
														if client.gun:FindFirstChild("Melee") and library.flags["rage_kbot"] then
															local oh1 = RageHitpart
															local oh2 = RageHitpart.Position
															local oh3 = client.gun.Name
															local oh4 = 1
															local oh5 = Player.Character.Gun
															local oh8 = math.random(1, 360)
															local oh9 = true
															local oh10 = true
															local oh11 = Vector3.new()
															local oh12 = 1
															local oh13 = Vector3.new()
															game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
														else
															client.firebullet()
														end
													end
												end
												break 
											end 
										else 
											local penetration = client.gun.Penetration.Value * 0.01
											local limit = 0 
											local dmgmodifier = 1 
											for i = 1, #Hits do 
												local data = Hits[i] 
												local part = data["Hit"] 
												local pos = data["Position"] 
												local modifier = 1 
												if part.Material == Enum.Material.DiamondPlate then 
													modifier = 3
												end 
												if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Concrete or part.Material == Enum.Material.Brick then 
													modifier = 2 
												end 
												if part.Name == "Grate" or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then 
													modifier = 0.5
												end 
												if part.Name == "nowallbang" then 
													modifier = 100 
												end 
												if part:FindFirstChild("PartModifier") then 
													modifier = part.PartModifier.Value 
												end 
												if part.Transparency == 1 or part.CanCollide == false or part.Name == "Glass" or part.Name == "Cardboard" then 
													modifier = 0 
												end 
												local direction = (Hitbox.Position - pos).unit * math.clamp(client.gun.Range.Value, 1, 100) 
												local ray = Ray.new(pos + direction * 1, direction * -2) 
												local _,endpos = workspace:FindPartOnRayWithWhitelist(ray, {part}, true) 
												local thickness = (endpos - pos).Magnitude 
												thickness = thickness * modifier 
												limit = math.min(penetration, limit + thickness) 
												dmgmodifier = 1 - limit / penetration 
											end 
											local Damage = client.gun.DMG.Value * multies[EndHit.Name] * dmgmodifier 
											if plr:FindFirstChild("Kevlar") then 
												if string.find(EndHit.Name, "Head") then 
													if plr:FindFirstChild("Helmet") then 
														Damage = (Damage / 100) * client.gun.ArmorPenetration.Value 
													end 
												else 
													Damage = (Damage / 100) * client.gun.ArmorPenetration.Value 
												end 
											end 
											Damage = Damage * (client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100 
											if Damage >= library.flags["rage_min_dmg"] then 
												RageHitpart = EndHit 
												if library.flags["rage_autoshoot"] then
													if client.gun:FindFirstChild("Melee") and library.flags["rage_kbot"] then
														local oh1 = RageHitpart
														local oh2 = RageHitpart.Position
														local oh3 = client.gun.Name
														local oh4 = 1
														local oh5 = Player.Character.Gun
														local oh8 = math.random(1, 360)
														local oh9 = true
														local oh10 = true
														local oh11 = Vector3.new()
														local oh12 = 1
														local oh13 = Vector3.new()
														game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
													else
														client.firebullet()
													end
													for i = 1, library.flags["rage_customtap_times"] do
														if client.gun:FindFirstChild("Melee") and library.flags["rage_kbot"] then
															local oh1 = RageHitpart
															local oh2 = RageHitpart.Position
															local oh3 = client.gun.Name
															local oh4 = 1
															local oh5 = Player.Character.Gun
															local oh8 = math.random(1, 360)
															local oh9 = true
															local oh10 = true
															local oh11 = Vector3.new()
															local oh12 = 1
															local oh13 = Vector3.new()
															game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
														else
															client.firebullet()
														end
													end
												end
												break 
											end 
										end 
									end 
								else 
									local Ray = Ray.new(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude) 
									local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore2, false, true) 
									if Hit and multies[Hit.Name] ~= nil then 
										local Damage = client.gun.DMG.Value * multies[Hit.Name] 
										if plr:FindFirstChild("Kevlar") then 
											if string.find(Hit.Name, "Head") then 
												if plr:FindFirstChild("Helmet") then 
													Damage = (Damage / 100) * client.gun.ArmorPenetration.Value 
												end 
											else 
												Damage = (Damage / 100) * client.gun.ArmorPenetration.Value 
											end 
										end 
										Damage = Damage * (client.gun.RangeModifier.Value/100 ^ ((Origin - Hit.Position).Magnitude/500))/100 
										if Damage >= library.flags["rage_min_dmg"] then 
											RageHitpart = Hit
											if library.flags["rage_autoshoot"] then
												if client.gun:FindFirstChild("Melee") and library.flags["rage_kbot"] then
													local oh1 = RageHitpart
													local oh2 = RageHitpart.Position
													local oh3 = client.gun.Name
													local oh4 = 1
													local oh5 = Player.Character.Gun
													local oh8 = math.random(1, 360)
													local oh9 = true
													local oh10 = true
													local oh11 = Vector3.new()
													local oh12 = 1
													local oh13 = Vector3.new()
													game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
												else
													client.firebullet()
												end
												for i = 1, library.flags["rage_customtap_times"] do
													if client.gun:FindFirstChild("Melee") and library.flags["rage_kbot"] then
														local oh1 = RageHitpart
														local oh2 = RageHitpart.Position
														local oh3 = client.gun.Name
														local oh4 = 1
														local oh5 = Player.Character.Gun
														local oh8 = math.random(1, 360)
														local oh9 = true
														local oh10 = true
														local oh11 = Vector3.new()
														local oh12 = 1
														local oh13 = Vector3.new()
														game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
													else
														client.firebullet()
													end
												end
											end
											break 
										end 
									end 
								end 
							end 
						end 
					end
				else
					if fowardtrackFolder:FindFirstChild(plr.Name) then
						fowardtrackFolder[plr.Name]:Destroy()
					end
				end 
			end 
		end
	end
	if table.find(library.flags["gun_mods"], "firerate") then
		client.DISABLED = false
	end
	if table.find(library.flags["gun_mods"], "ammo") then
		client.ammocount = 99e9 
		client.primarystored = 99e9 
		client.ammocount2 = 99e9 
		client.secondarystored = 99e9 
	end
	if table.find(library.flags["gun_mods"], "recoil") then
		client.resetaccuracy() 
		client.RecoilX = 0 
		client.RecoilY = 0 
	end
	if library.flags["wm_enabled"] then
		Watermark.Enabled = true
		function getMonthName(month)
			local names = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}

			return names[month]
		end

		local gtime = os.date("*t")

		if date:find("0") or date:find("1") then
			_Text.Text = " deadware.crack | [until " .. date .. ", uid:" .. uid .. "] | " .. tostring(gtime["day"]) .. " " .. getMonthName(gtime["month"]) .. " " .. tostring(gtime["year"]) .. " "
		else
			_Text.Text = " deadware.crack | [" .. date .. ", uid:" .. uid .. "] | " .. tostring(gtime["day"]) .. " " .. getMonthName(gtime["month"]) .. " " .. tostring(gtime["year"]) .. " "
		end

		WaterFrame.Size = UDim2.new(0, _Text.TextBounds.X, 0, 20)
	else
		Watermark.Enabled = false
	end
	for _,player in pairs(game.Players:GetPlayers()) do 
		if isAlive(player) and (library.flags["o_teammates"] == true and Player ~= player or player.Team ~= Player.Team) then 
			if library.flags["o_box"] then
				local HumanoidRootPart = player.Character.HumanoidRootPart 
				local RootPosition = HumanoidRootPart.Position 
				local Pos, onScreen = Camera:WorldToViewportPoint(RootPosition) 
				local Size = (Camera:WorldToViewportPoint(RootPosition - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vector3.new(0, 2.6, 0)).Y) / 2 
				local tbl = objects[player.Name] or {}
				objects[player.Name] = tbl
				local BoxOutline = tbl["BoxOutline"] or Drawing.new("Square")
				local Box = tbl["Box"] or Drawing.new("Square")
				BoxOutline.Thickness = 3
				BoxOutline.Filled = false
				BoxOutline.Color = Color3.new(0, 0, 0)
				BoxOutline.Visible = false
				Box.Filled = false
				tbl["BoxOutline"] = BoxOutline
				tbl["Box"] = Box
				objects[player.Name] = tbl
				if onScreen then 
					tbl.Box.Color = library.flags["o_box_color"]
					tbl.Box.Size = Vector2.new(Size * 1.5, Size * 1.9) 
					tbl.Box.Position = Vector2.new(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2)) 
					tbl.Box.Visible = true 
					tbl.BoxOutline.Size = tbl.Box.Size 
					tbl.BoxOutline.Position = tbl.Box.Position 
					tbl.BoxOutline.Visible = true 
				else 
					tbl.Box.Visible = false 
					tbl.BoxOutline.Visible = false 
				end
			else
				if objects[player.Name] ~= nil then
					for i, v in pairs(objects[player.Name]) do
						if i:lower():find("box") and v ~= nil then
							pcall(function()
								v:Remove()
							end)
							objects[player.Name][i] = nil
						end
					end
				end
			end
			if library.flags["o_health"] then
				local HumanoidRootPart = player.Character.HumanoidRootPart 
				local RootPosition = HumanoidRootPart.Position 
				local Pos, onScreen = Camera:WorldToViewportPoint(RootPosition) 
				local Size = (Camera:WorldToViewportPoint(RootPosition - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vector3.new(0, 2.6, 0)).Y) / 2
				objects[player.Name] = objects[player.Name] or {}
				local HealthOutline = objects[player.Name]["HealthOutline"] or Drawing.new("Line")
				local HealthBar = objects[player.Name]["HealthBar"] or Drawing.new("Line")
				HealthOutline.Color = Color3.new(0, 0, 0)
				HealthOutline.Thickness = 3
				HealthOutline.Visible = false
				HealthBar.Color = library.flags["o_health_color"]
				HealthBar.Visible = false
				objects[player.Name]["HealthOutline"] = HealthOutline
				objects[player.Name]["HealthBar"] = HealthBar
				if onScreen then
					local bPos = Vector2.new(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2))
					local bSize = Vector2.new(Size * 1.5, Size * 1.9)
					HealthBar.From = Vector2.new((bPos.X - 5), bPos.Y + bSize.Y) 
					HealthBar.To = Vector2.new(HealthBar.From.X, HealthBar.From.Y - math.clamp(player.Character.Humanoid.Health / player.Character.Humanoid.MaxHealth, 0, 1) * bSize.Y) 
					HealthBar.Visible = true 
					HealthOutline.From = Vector2.new(HealthBar.From.X, bPos.Y + bSize.Y + 1) 
					HealthOutline.To = Vector2.new(HealthBar.From.X, (HealthBar.From.Y - 1 * bSize.Y) -1) 
					HealthOutline.Visible = true
				else
					HealthOutline.Visible = false
					HealthBar.Visible = false
				end
			else
				if objects[player.Name] ~= nil then
					for i, v in pairs(objects[player.Name]) do
						if i:lower():find("health") and v ~= nil then
							pcall(function()
								v:Remove()
							end)
							objects[player.Name][i] = nil
						end
					end
				end
			end
			if library.flags["o_name"] then
				local HumanoidRootPart = player.Character.HumanoidRootPart 
				local RootPosition = HumanoidRootPart.Position 
				local Pos, onScreen = Camera:WorldToViewportPoint(RootPosition) 
				local Size = (Camera:WorldToViewportPoint(RootPosition - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vector3.new(0, 2.6, 0)).Y) / 2
				objects[player.Name] = objects[player.Name] or {}
				local Name = objects[player.Name]["Name"] or Drawing.new("Text")
				objects[player.Name]["Name"] = Name
				if onScreen then
					local bPos = Vector2.new(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2))
					local bSize = Vector2.new(Size * 1.5, Size * 1.9)
					Name.Color = Color3.new(1,1,1)
					Name.Text = player.Name      
					Name.Position = Vector2.new(bPos.X,  bPos.Y - 16)      
					Name.Font = Drawing.Fonts.Plex    
					Name.Outline = true      
					Name.Size = 13
					Name.Visible = true
				else
					Name.Visible = false
				end
			else
				if objects[player.Name] ~= nil then
					if objects[player.Name].Name ~= nil then
						objects[player.Name].Name:Remove()
						objects[player.Name].Name = nil
					end
				end
			end
		else
			if objects[player.Name] ~= nil then
				for i, obj in pairs(objects[player.Name]) do
					if obj ~= nil then
						pcall(function()
							obj:Remove()
						end)
						objects[player.Name][i] = nil
					end
				end
				table.clear(objects[player.Name])
			end
		end
		if library.flags["o_box"] == false and library.flags["o_health"] == false and library.flags["o_name"] == false then
			if objects[player.Name] ~= nil then
				for i, obj in pairs(objects[player.Name]) do
					if obj ~= nil then
						pcall(function()
							obj:Remove()
						end)
						objects[player.Name][i] = nil
					end
				end
			end
			objects[player.Name] = nil
		end
	end
	if (library.flags["c_fov_scope"] == false and not Player.PlayerGui.GUI.Crosshairs.Scope.Visible or library.flags["c_fov_scope"] == true) then
	Camera.FieldOfView = library.flags["c_fov"]
	end
	if library.flags["mc_inf"] then
		Player.Cash.Value = 1234567890
	end
	if library.flags["c_skybox"][1] ~= "none" then
		local skybox = game.Lighting:FindFirstChild("__skybox") or Instance.new("Sky")
		skybox.Parent = game.Lighting
		skybox.Name = "__skybox"
		
		skybox.SkyboxBk = skyboxes[library.flags["c_skybox"][1]].SkyboxBk
		skybox.SkyboxDn = skyboxes[library.flags["c_skybox"][1]].SkyboxDn
		skybox.SkyboxFt = skyboxes[library.flags["c_skybox"][1]].SkyboxFt
		skybox.SkyboxLf = skyboxes[library.flags["c_skybox"][1]].SkyboxLf
		skybox.SkyboxRt = skyboxes[library.flags["c_skybox"][1]].SkyboxRt
		skybox.SkyboxUp = skyboxes[library.flags["c_skybox"][1]].SkyboxUp
	else
		if game.Lighting:FindFirstChild("__skybox") then
			game.Lighting:FindFirstChild("__skybox"):Destroy()
		end
	end
	if Camera:FindFirstChild("Arms") ~= nil then
		if library.flags["v_arms"] or library.flags["v_weapon"] then
			for i, v in pairs(Camera.Arms:GetChildren()) do
				if v:IsA("Model") and v:FindFirstChild("Left Arm") and v:FindFirstChild("Right Arm") and library.flags["v_arms"] then
				
					local RightArm = v["Right Arm"]
					local LeftArm = v["Left Arm"]
					local RightGlove = RightArm:FindFirstChild("Glove") or RightArm:FindFirstChild("RGlove")
					local LeftGlove = LeftArm:FindFirstChild("Glove") or LeftArm:FindFirstChild("LGlove")
					local RightSleeve = RightArm:FindFirstChild("Sleeve") or nil
					local LeftSleeve = LeftArm:FindFirstChild("Sleeve") or nil
					RightArm.Transparency = library.flags["v_arms_transparency"] / 100
					RightArm.Reflectance = 0
					RightArm.Mesh.TextureId = ""
					RightArm.Color = library.flags["v_arms_color"]
					LeftArm.Transparency = library.flags["v_arms_transparency"] / 100
					LeftArm.Reflectance = 0
					LeftArm.Mesh.TextureId = ""
					LeftArm.Color = library.flags["v_arms_color"]
					RightGlove.Transparency = library.flags["v_arms_transparency"] / 100
					RightGlove.Reflectance = 0
					RightGlove.Mesh.TextureId = ""
					RightGlove.Color = library.flags["v_arms_color"]
					LeftGlove.Transparency = library.flags["v_arms_transparency"] / 100
					LeftGlove.Reflectance = 0
					LeftGlove.Mesh.TextureId = ""
					LeftGlove.Color = library.flags["v_arms_color"]
					if library.flags["v_hide_gloves"] then
						RightGlove.Transparency = 1
						LeftGlove.Transparency = 1
					end
					if RightSleeve and LeftSleeve then
						RightSleeve.Transparency = library.flags["v_arms_transparency"] / 100
						RightSleeve.Reflectance = 0
						RightSleeve.Mesh.TextureId = ""
						RightSleeve.Color = library.flags["v_arms_color"]
						LeftSleeve.Transparency = library.flags["v_arms_transparency"] / 100
						LeftSleeve.Reflectance = 0
						LeftSleeve.Mesh.TextureId = ""
						LeftSleeve.Color = library.flags["v_arms_color"]
						if library.flags["v_hide_sleeves"] then
							RightSleeve.Transparency = 1
							LeftSleeve.Transparency = 1
						end
					end
				end
				if v:IsA("BasePart") and v.Name ~= ("Right Arm" or "Left Arm" or "Flash") and v.Transparency ~= 1 and library.flags["v_weapon"] then
					local Weapons = v
					if Weapons:IsA("MeshPart") then
						Weapons.TextureID = ""
					end
					if Weapons:FindFirstChildOfClass("SpecialMesh") then
						Weapons:FindFirstChildOfClass("SpecialMesh").TextureId = ""
					end
					Weapons.Transparency = library.flags["v_weapon_transparency"] / 100
					Weapons.Reflectance = 0
					Weapons.Color = library.flags["v_weapon_color"]
					Weapons.Material = library.flags["v_weapon_material"][1]
				end
			end
		end
	end
	for _,plr in pairs(game.Players:GetPlayers()) do
		if plr ~= Player and isAlive(plr) and plr.Character.HumanoidRootPart:FindFirstChild("oldPos") then
			coroutine.wrap(function()
				local pos = plr.Character.HumanoidRootPart.Position
				RunService.RenderStepped:Wait()
				if isAlive(plr) and plr ~= Player then
					if plr.Character.HumanoidRootPart:FindFirstChild("oldPos") then
						plr.Character.HumanoidRootPart.oldPos.Value = pos
					else
						local oldPos = Instance.new("Vector3Value", plr.Character.HumanoidRootPart)
						oldPos.Name = "oldPos"
						oldPos.Value = pos
					end
				end
			end)()
		end
	end
	if library.flags["mc_barriers"] then
		if workspace.Map:FindFirstChild("Clips") and workspace.Map:FindFirstChild("Killers") then
			for _,v in pairs(workspace.Map.Clips:GetChildren()) do
				v:Destroy()
			end
			for _,v in pairs(workspace.Map.Killers:GetChildren()) do
				v:Destroy()
			end
		end
	end
	if table.find(library.flags["c_removals"], "scope") then
		Player.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 1
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.ImageTransparency = 1
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.Size = UDim2.new(2,0,2,0)
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.Position = UDim2.new(-0.5,0,-0.5,0)
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.ImageTransparency = 1
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.Blur.ImageTransparency = 1
		Player.PlayerGui.GUI.Crosshairs.Frame1.Transparency = 1
		Player.PlayerGui.GUI.Crosshairs.Frame2.Transparency = 1
		Player.PlayerGui.GUI.Crosshairs.Frame3.Transparency = 1
		Player.PlayerGui.GUI.Crosshairs.Frame4.Transparency = 1
	else
		Player.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 0
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.ImageTransparency = 0
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.Size = UDim2.new(1,0,1,0)
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.Position = UDim2.new(0,0,0,0)
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.ImageTransparency = 0
		Player.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.Blur.ImageTransparency = 0
		Player.PlayerGui.GUI.Crosshairs.Frame1.Transparency = 0
		Player.PlayerGui.GUI.Crosshairs.Frame2.Transparency = 0
		Player.PlayerGui.GUI.Crosshairs.Frame3.Transparency = 0
		Player.PlayerGui.GUI.Crosshairs.Frame4.Transparency = 0
	end
	game:GetService("Lighting").GlobalShadows = not table.find(library.flags["c_removals"], "shadows") and true or false
	Player.PlayerGui.Blnd.Enabled = not table.find(library.flags["c_removals"], "flash") and true or false
	if workspace.Ray_Ignore:FindFirstChild("Smokes") and table.find(library.flags["c_removals"], "smokes") then      
		for i,smoke in pairs(workspace.Ray_Ignore.Smokes:GetChildren()) do      
			smoke.ParticleEmitter.Rate = 0      
		end
	elseif workspace.Ray_Ignore:FindFirstChild("Smokes") and table.find(library.flags["c_removals"], "smokes") then
		for i,smoke in pairs(workspace.Ray_Ignore.Smokes:GetChildren()) do      
			smoke.ParticleEmitter.Rate = smoke.OriginalRate.Value      
		end
	end
	if library.flags["self_chams"] and isAlive(Player) then
		for _, v in pairs(Player.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Material = Enum.Material.ForceField
				v.Color = library.flags["self_chams_color"]
				if v:IsA("MeshPart") then
					v.TextureID = "rbxassetid://0"
				end
				if v.Name == "FakeHead" then
					v.Transparency = 1
				elseif v.Name == "Head" then
					v.Transparency = 0
				end
			end
		end
	end
	if library.flags["rage_killall"] then
		if isAlive(Player) and Player.Character:FindFirstChild("Gun") then
			for _,v in pairs(game.Players:GetPlayers()) do
				if isAlive(v) and v.Team ~= Player.Team then
					for i = 1, 3 do
						local oh1 = v.Character.Head
						local oh2 = v.Character.Head.Position
						local oh3 = "Flip Knife"
						local oh4 = 1
						local oh5 = Player.Character.Gun
						local oh8 = math.random(1, 360)
						local oh9 = true
						local oh10 = true
						local oh11 = Vector3.new()
						local oh12 = 1
						local oh13 = Vector3.new()
						game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
					end
				end
			end
		end
	end
	if library.flags["c_namehider"] then
		local chat = Player.PlayerGui.GUI.Main.Chats
		for _,line in pairs(chat:GetChildren()) do
			if string.sub(line.Name,1,-2) == "Line" then
				if line.Text:find("has voted to kick") and line.Text:find(Player.Name) then
					local text = string.split(line.Text, " ")
					if #text > 7 then
						if text[1] ~= Player.Name then
							local votes = text[7]
							local kicker = text[1]
							line.Text = "NIGGERS! " .. kicker .. " has voted to kick you (" .. votes .. ")"
						end
					else
						line.Text = "deadware.crack"
					end
				end
			end
		end
		function hookAntiWin(ins)
			for _,label in pairs(ins:GetChildren()) do
				if label:IsA("TextLabel") then
					if label.Text:lower():find(Player.Name:lower()) then
						label.Text = "deadware.crack$$$"
					end
				elseif label:IsA("ImageLabel") and string.sub(label.Name:lower(),1,3) == "mvp" then
					label.Image = "rbxassetid://8639914968"
				elseif label:FindFirstChildOfClass("TextLabel") ~= nil then
					label:FindFirstChildOfClass("TextLabel").Text = "deadware namehider"
				end
			end
		end
		hookAntiWin(Player.PlayerGui.GUI.CTWin)
		hookAntiWin(Player.PlayerGui.GUI.TWin)
	end
end)

Player.Changed:Connect(function(prop)
	if prop == "Team" then
		for i,v in pairs(objects) do
			for i2, obj in pairs(v) do
				obj:Remove()
				v[i2] = nil
			end
			objects[i] = nil
		end
		objects = {}
	end
end)

if isAlive(Player) then
	Player.Character.Humanoid.Changed:Connect(function(prop)
		if prop == "Health" then
			game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
			if library.flags["fakes_display"] then
				fakeChar()
			end
		end	
	end)
end

Player.CharacterAdded:Connect(function()
	repeat wait() until isAlive(Player)

	Player.Character.Humanoid.Changed:Connect(function(prop)
		if prop == "Health" then
			game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
			if library.flags["fakes_display"] then
				fakeChar()
			end
		end	
	end)
end)

Player.Additionals.TotalDamage:GetPropertyChangedSignal("Value"):Connect(function(val)
	if Player.Additionals.TotalDamage.Value == 0 then return end
	if library.flags["mc_hitsound"][1] ~= "none" then
		local hitsounds = {
			["skeet"] = "rbxassetid://5447626464";
			["window ding"] = "rbxassetid://6861693913"
		}
		local sound = Instance.new("Sound", game:GetService("SoundService"))
		sound.SoundId = hitsounds[library.flags["mc_hitsound"][1]]
		sound.Volume = 1
		sound.Looped = false
		sound.PlayOnRemove = true
		sound:Destroy()
	end
end)

Player.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function()      
	if Player.Status.Kills.Value == 0 then return end
	if library.flags["kill_say"] then
		local tbl = {"Super Idol的笑容都沒你的甜八月正午的陽光都沒你耀眼熱愛 105 °C的你滴滴清純的蒸餾水你不知道你有多可愛跌倒後會傻笑著再站起來你從來都不輕言失敗對夢想的執著一直不曾更改很安心 當你對我說不怕有我在放著讓我來勇敢追自己的夢想那堅定的模樣";"1 sit nn dog";"bloxsense.hui ";"bloxsense.lol";"deadware\'d ";"invaded tap";"femboy\' d";"sorry pls";"1 by deadware.crack";"1 ez win";"r u femboy?"}
		game.ReplicatedStorage.Events.PlayerChatted:FireServer(tbl[math.random(1, #tbl)], false, "Innocent", false, true)
	end    
end)

for _, plr in pairs(game.Players:GetPlayers()) do
	if plr ~= Player then
		plr.CharacterAdded:Connect(function(char)
			repeat wait() until isAlive(plr)
			local oldPos = Instance.new("Vector3Value", char.HumanoidRootPart)
			oldPos.Name = "oldPos"
			oldPos.Value = char.HumanoidRootPart.Position
		end)
		if isAlive(plr) then
			local oldPos = Instance.new("Vector3Value", plr.Character.HumanoidRootPart)
			oldPos.Name = "oldPos"
			oldPos.Value = plr.Character.HumanoidRootPart.Position
		end
	end
	if library.flags["server_smoker"] then
		if isAlive(Player) then
			game.ReplicatedStorage.Events.Drop:FireServer(
				game.ReplicatedStorage.Weapons.C4,
				Player.Character.HumanoidRootPart.CFrame,
				0,
				0,
				false,
				Player,
				false,
				false
			)
		end
	end
end

game:GetService("Lighting").ChildAdded:Connect(function(obj)
	if obj:IsA("Sky") and obj.Name ~= "__skybox" then
		obj:Destroy()
	end
end)

local FakeAnimation = Instance.new("Animation")
FakeAnimation.AnimationId = "rbxassetid://0"

local meta = getrawmetatable(game)

setreadonly(meta, false)

local oldNamecall = meta.__namecall
local oldIndex = meta.__index
local oldNewIndex = meta.__newindex

meta.__namecall = newcclosure(function(self, ...)
	local args = {...}
	local method = getnamecallmethod()
	local callingscript = getcallingscript()

	if method == "FindPartOnRayWithIgnoreList" and args[2][1] == workspace.Debris then
		if table.find(library.flags["gun_mods"], "penetration") then
			table.insert(args[2], workspace.Map)
		end
		if table.find(library.flags["gun_mods"], "penetration2") then
			table.insert(args[2], workspace.Map)
		end
		if table.find(library.flags["gun_mods"], "spread") then
			args[1] = Ray.new(Camera.CFrame.p, Camera.CFrame.LookVector * client.gun.Range.Value)
		end
		if library.flags["rage_enabled"] and RageHitpart ~= nil and Player.Character then
			local Origin = library.flags["rage_origin"][1] == "character" and Player.Character.HumanoidRootPart.Position or Camera.CFrame.p
			if library.flags["rage_expander"] > 1 and RageHitpart.Name == "HumanoidRootPart" then
				RageHitpart = RageHitpart.Parent.Head
			end
			if library.flags["rage_fowardtrack"] and RageHitpart:IsDescendantOf(fowardtrackFolder) then
				RageHitpart = game.Players[RageHitpart.Parent.Name].Character[RageHitpart.Name]
			end
			args[1] = Ray.new(Origin, (RageHitpart.Position - Origin).unit * (RageHitpart.Position - Origin).magnitude) 
		end
	elseif method == "FireServer" then
		if self.Name == "HitPart" then
			if library.flags["rage_enabled"] or library.flags["rage_killall"] then
				coroutine.wrap(function()
					if game.Players:GetPlayerFromCharacter(args[1].Parent) then RageHitpart = args[1] end
					if library.flags["rage_prediction"][1] == "off" or RageHitpart == nil then return end
					if game.Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageHitpart then
						if library.flags["rage_prediction"][1] == "cframe" then
							local Velocity = (RageHitpart.Parent.HumanoidRootPart.Position - RageHitpart.Parent.HumanoidRootPart.oldPos.Value)/LastStep
							local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
							if Velocity.magnitude >= 9 then
								args[2] = args[2] + Direction * (Ping / (math.pow(Ping, 1.5)) * (Direction / (Direction / 2))) 
								args[4] = 0 
								args[12] = args[12] - 500
							end
						else
							local Velocity = RageHitpart.Parent.HumanoidRootPart.Velocity
							local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
							if Velocity.magnitude >= 9 then
								args[2] = args[2] + Direction * (Ping / (math.pow(Ping, 1.5)) * (Direction / (Direction / 2))) 
								args[4] = 0 
								args[12] = args[12] - 500
							end

							if library.flags["rage_prediction"][1] == "adaptive" then
								local Velocity = (RageHitpart.Parent.HumanoidRootPart.Position - RageHitpart.Parent.HumanoidRootPart.oldPos.Value)/LastStep
								local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
								if Velocity.magnitude >= 9 then
									args[2] = args[2] + Direction * (Ping / (math.pow(Ping, 1.5)) * (Direction / (Direction / 3.1))) 
									args[4] = 0 
									args[12] = args[12] - 500
								end
								if library.flags["rage_prediction"][1] == "old" then
									local Velocity = (RageHitpart.Parent.HumanoidRootPart.Position - RageHitpart.Parent.HumanoidRootPart.oldPos.Value)/LastStep
									local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
									if Velocity.magnitude >= 8 then
										args[2] = args[2] + Direction * ((Velocity.magnitude*(Ping/1000) * (Ping > 200 and 1.5 or 2)))
										args[4] = 0
										args[12] = args[12] - 500
									end
								else
									local Velocity = RageHitpart.Parent.HumanoidRootPart.Velocity
									local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
									if Velocity.magnitude >= 8 then
										args[2] = args[2] + Direction * (Velocity.magnitude*(Ping/1000) * (Ping > 200 and 1.5 or 2))
										args[4] = 0
										args[12] = args[12] - 500
									end
									if library.flags["rage_prediction"][1] == "new" then
										local Velocity = (RageHitpart.Parent.HumanoidRootPart.Position - RageHitpart.Parent.HumanoidRootPart.oldPos.Value)/LastStep
										local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
										if Velocity.magnitude >= 9 then
											args[2] = args[2] + Direction * (Ping / (math.pow(Ping, 1.5)) * (Direction / (Direction / 3.1))) 
											args[4] = 0 
											args[12] = args[12] - 500
										end
									end
								end
							end
						end
					end
				end)()
			end
			if table.find(library.flags["gun_mods"], "penetration") then
				args[10] = true
			end
			if library.flags["rage_hitpart"] then
				args[10] = true
			end
			if library.flags["c_btracers"] then
				spawn(function()
					local beam = createBeam(Player.Character.Head.Position, args[2])
					for i = 1, 60 * (library.flags["c_btracers_lifetime"]) do
						RunService.RenderStepped:Wait()
						beam.Transparency = NumberSequence.new(i / (60 * library.flags["c_btracers_lifetime"]), i / (60 * library.flags["c_btracers_lifetime"]))
					end
					beam:Destroy()
				end)
			end
			if library.flags["aa_tp"] then
				Player.Character.HumanoidRootPart.CFrame *= CFrame.new(0, 0, -2)
			end
			if library.flags["aa_head"] then

			end
			if library.flags["set_hit_vis"] and game.Players:GetPlayerFromCharacter(args[1].Parent) then
				local log = Instance.new("Frame")
				local _LOG = Instance.new("TextLabel")

				log.Name = "log"
				log.Parent = UILib.Hitlogs
				log.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				log.BorderColor3 = Color3.fromRGB(170, 0, 255)
				log.BorderSizePixel = 2
				log.Position = UDim2.new(-0.0465116277, 0, 0, 0)
				log.Size = UDim2.new(1, 0, 0, 40)

				_LOG.Name = "_LOG"
				_LOG.Parent = log
				_LOG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				_LOG.BackgroundTransparency = 1.000
				_LOG.Position = UDim2.new(0.0199335553, 0, 0, 0)
				_LOG.Size = UDim2.new(0.946843863, 0, 1, 0)
				_LOG.Font = Enum.Font.TitilliumWeb
				_LOG.TextColor3 = Color3.fromRGB(255, 255, 255)
				_LOG.TextSize = 25
				_LOG.TextXAlignment = Enum.TextXAlignment.Left
				_LOG.Text = "hit " .. name .. " in " .. args[1].Name:lower()

				spawn(function()
					wait(2)
					log:Destroy()
				end)
			end
			if library.flags["rage_fowardtrack"] and args[1]:IsDescendantOf(fowardtrackFolder) then
				args[1] = game.Players[args[1].Parent.Name].Character[args[1].Name]
				args[2] = args[1].Position
			end
			args[8] *= library.flags["dmg_mod"]
		end
	elseif method == "FindPartOnRayWithWhitelist" and client.gun ~= "none" and client.gun.Name ~= "C4" then
		if #args[2] == 1 and args[2][1].Name == "SpawnPoints" then
			local Team = Player.Status.Team.Value

			if table.find(library.flags["shop"], "anywhere") then
				return Team == "T" and args[2][1].BuyArea or args[2][1].BuyArea2
			end
		end
	elseif method == "GetService" and self == game then
		if args[1] == "deadware" then
			return library
		end
	end

	if not checkcaller() then
		if method == "Kick" then
			return wait(9e9)
		elseif method == "SetPrimaryPartCFrame" and self.Name == "Arms" then
			args[1] = args[1] * CFrame.new(Vector3.new(math.rad(library.flags["v_x"]-180),math.rad(library.flags["v_y"]-180),math.rad(library.flags["v_z"]-180))) * CFrame.Angles(0, 0, math.rad(library.flags["v_roll"]-180))
			if Player.CameraMinZoomDistance == library.flags["third_person_dis"] then
				args[1] = CFrame.new(Vector3.new(9e9, 9e9, 9e9))
			end
		elseif method == "FireServer" then
			if self.Name == "ControlTurn" and library.flags["aa_enabled"] == true and library.flags["aa_pitch"][1] ~= "none" then
				local angle = (library.flags["aa_pitch"][1] == "up" and 1 or library.flags["aa_pitch"][1] == "down" and -1 or library.flags["aa_pitch"][1] == "boneless" and -5)
				args[1] = angle
			elseif self.Name == "FallDamage" and table.find(library.flags["s_bypasses"], "fall") then
				return
			elseif self.Name == "BURNME" and table.find(library.flags["s_bypasses"], "fire") then
				return
			elseif self.Name == "ReplicateCamera" then
				if library.flags["sp_anti"] then
					args[1] = CFrame.new(Vector3.new(9e9, 9e9, 9e9))
				end
				args[1] = args[1] * CFrame.Angles(math.rad(library.flags["sp_angle"]), 0, 0)
			elseif self.Name:len() == 38 then
				if not isUnlocked then
					isUnlocked = true
					for i,v in pairs(allSkins) do
						local doSkip
						for i2,v2 in pairs(args[1]) do
							if v[1] == v2[1] then
								doSkip = true
							end
						end
						if not doSkip then
							table.insert(args[1], v)
						end
					end
				end
           		return
			elseif self.Name == "DataEvent" and args[1][4] then
				local currentSkin = string.split(args[1][4][1], "_")[2]
				if args[1][2] == "Both" then
					Player["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin
					Player["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin
				else
					Player["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin
				end
			elseif self.Name == "UpdatePing" then
				if library.flags["c_fping"] ~= 0 then
					args[1] = library.flags["c_fping"] / 1000
				end
			elseif self.Name == "PlayerChatted" then
				for i,v in pairs(emojis) do
					if args[1]:find(i) then
						args[1] = string.gsub(args[1], i, v)
					end
				end
			end
		elseif method == "LoadAnimation" and self.Name == "Humanoid"  then
			if library.flags["move_slidewalk"] then
				if string.find(args[1].Name, "Jump") or string.find(args[1].Name, "Run") then
					args[1] = FakeAnimation
				end
			end
		elseif method == "InvokeServer" then
			if self.Name == "Filter" and callingscript == Player.PlayerGui.GUI.Main.Chats.DisplayChat then
				return args[1]
			end
		end
	end	

	return oldNamecall(self, unpack(args))
end)

meta.__newindex = newcclosure(function(self, idx, val)
	if self:IsA("Humanoid") then
		if idx == "CameraOffset" and library.flags["aa_enabled"] and library.flags["aa_roll"][1] == "180" then
			val = Vector3.new(0, -3.5, 0)
		elseif idx == "JumpPower" then
			if library.flags["move_edge_bug"] then
				val = 0
			end
		end
	elseif idx == "Text" and val == Player.Name and library.flags["c_namehider"] then
		val = "deadware.crack"
 	elseif idx == "Text" and val == "$1234567890" or val == "1234567890" then
		val = "90000000000"
	elseif idx == "Brightness" and self.ClassName:FindFirstChild("Light") and library.flags["world_light"] then
		val = 20
	end
	if not checkcaller() then
		if idx == "Text" and typeof(val) == "string" and val:find("Ping:") then
			if library.flags["c_fchange"] then
				local fps = library.flags["c_fffps"]
				if library.flags["c_fffps_add"] then
					local isN, _ = pcall(function()
						tonumber(fps)
					end)
					if isN then
						local negative = false
						if tonumber(fps) < 0 then
							negative = true
							fps = string.sub(fps, 2, -1)
						end
						local function gen(len, sep)
							local str = ""
							for i = 1, len do
								str = str .. sep
							end
							return tonumber(str)
						end
						fps = tostring(tonumber(fps) + math.random(gen(#fps - 1, "1"), gen(#fps - 1, "9")))
						if negative then
							fps = "-" .. fps
						end
					end
				end
				local ping = library.flags["c_ffping"]
				if library.flags["c_ffping_add"] then
					local isN, _ = pcall(function()
						tonumber(ping)
					end)
					if isN then
						local negative = false
						if tonumber(ping) < 0 then
							negative = true
							ping = string.sub(ping, 2, -1)
						end
						local function gen(len, sep)
							local str = ""
							for i = 1, len do
								str = str .. sep
							end
							return tonumber(str)
						end
						ping = tostring(tonumber(ping) + math.random(1, gen(#ping - 1, "9")))
						if negative then
							ping = "-" .. ping
						end
					end
				end
				val = "FPS: " .. fps .. ", Ping: " .. ping .. ", Server Location: " .. library.flags["c_fflocation"]
			end
		elseif library.flags["aa_yaw"][1] == "best" and self.Parent == Player.Character then
			if idx == "CanCollide" then
				val = false
			end
		elseif library.flags["aa_yaw"][1] == "under" and self.Parent == Player.Character and self.Name ~= "HumanoidRootPart" then
			if idx == "CanCollide" then
				val = false
			end
		end
	end

	return oldNewIndex(self, idx, val)
end)

meta.__index = newcclosure(function(self, idx)
	
	if idx == "Value" then
		if self.Name == "Auto" and table.find(library.flags["gun_mods"], "automatic") then      
			return true      
		elseif self.Name == "ReloadTime" and table.find(library.flags["gun_mods"], "reload") then      
			return 0.001      
		elseif self.Name == "EquipTime" and table.find(library.flags["gun_mods"], "equip") then      
			return 0.001
		elseif self.Name == "Penetration" and library.flags["pen_mod"] ~= 10 then
			return 300 * (library.flags["pen_mod"] / 10)
		elseif self.Name == "Range" and table.find(library.flags["gun_mods"], "range") then
			return 9e9
		elseif self.Name == "BuyTime" and table.find(library.flags["shop"], "inf time") then      
			return 5      
		end
	end

	return oldIndex(self, idx)
end)