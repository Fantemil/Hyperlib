-- SUBSCRIBE TO EX3 BACON
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local username = Instance.new("TextBox")
local snatch = Instance.new("TextButton")
local TextButton_Roundify_12px = Instance.new("ImageLabel")
local miscbut = Instance.new("TextButton")
local MISC = Instance.new("ImageLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local snatchall = Instance.new("TextButton")
local TextButton_Roundify_12px_2 = Instance.new("ImageLabel")
local TextLabel_7 = Instance.new("TextLabel")
Frame.Draggable = true
Frame.Active = true
Frame.Selectable = true
local sound = Instance.new("Sound")
sound.Parent = workspace
sound.SoundId = "rbxassetid://12221967"
sound:Play()

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.152727276, 0, 0.277641267, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
Frame.ZIndex = 3
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(20, 20, 20)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120
Frame.ClipsDescendants = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.026143793, 0, 0.0232558139, 0)
TextLabel.Size = UDim2.new(0, 22, 0, 24)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "IP"
TextLabel.TextColor3 = Color3.fromRGB(255, 85, 0)
TextLabel.TextSize = 25.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0980392173, 0, 0.0232558139, 0)
TextLabel_2.Size = UDim2.new(0, 102, 0, 24)
TextLabel_2.ZIndex = 3
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "LOGGER"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 25.000

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.010
close.Position = UDim2.new(0.934640527, 0, 0.0232558139, 0)
close.Size = UDim2.new(0, 20, 0, 20)
close.ZIndex = 3
close.Font = Enum.Font.SourceSansBold
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(7.4505806e-09, 0, 0.860465109, 0)
TextLabel_3.Size = UDim2.new(0, 214, 0, 24)
TextLabel_3.ZIndex = 3
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "FOR A COOKIE"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 15.000

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0, 0, 0.767441869, 0)
TextLabel_4.Size = UDim2.new(0, 240, 0, 24)
TextLabel_4.ZIndex = 3
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "SUB TO EX3 BACON"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 15.000

username.Name = "username"
username.Parent = Frame
username.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
username.BackgroundTransparency = 1.000
username.BorderSizePixel = 0
username.Position = UDim2.new(0.173202619, 0, 0.313953489, 0)
username.Size = UDim2.new(0, 200, 0, 24)
username.ZIndex = 3
username.Font = Enum.Font.GothamBold
username.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
username.PlaceholderText = "Input User"
username.Text = ""
username.TextColor3 = Color3.fromRGB(255, 255, 255)
username.TextSize = 14.000

snatch.Name = "LogFakeIp"
snatch.Parent = Frame
snatch.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
snatch.BackgroundTransparency = 1.000
snatch.BorderSizePixel = 0
snatch.Position = UDim2.new(0.205882356, 0, 0.511627913, 0)
snatch.Size = UDim2.new(0, 180, 0, 28)
snatch.ZIndex = 4
snatch.Font = Enum.Font.SourceSansBold
snatch.Text = "Take Ip"
snatch.TextColor3 = Color3.fromRGB(255, 255, 255)
snatch.TextScaled = true
snatch.TextSize = 14.000
snatch.TextWrapped = true
snatch.MouseButton1Down:connect(function()
local v = game.Players[username.Text]
ass = gethiddenproperty or get_hidden_prop
    local Thing = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://country.io/names.json"))
    local ParsedCountry = Thing[ass(v, "CountryRegionCodeReplicate")]
    local SayMessageRequest1 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest1:FireServer(
v.Name.." - Cracking IP Address...",
"All"
)
wait(2)
   local SayMessageRequest = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest:FireServer(
v.Name.." is from "..tostring(ParsedCountry).." OS: "..v.OsPlatform.." IP: "..math.random(20).."."..math.random(9).."."..math.random(10)..".".."##".." ".."(IP: Successfully Logged)",
"All"
)
wait(0.55)
 local SayMessageRequest2 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest2:FireServer(
v.Name.."'s Data Has Been Successfully Stolen.",
"All"
)

end)

TextButton_Roundify_12px.Name = "TextButton_Roundify_12px"
TextButton_Roundify_12px.Parent = snatch
TextButton_Roundify_12px.Active = true
TextButton_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Roundify_12px.BackgroundTransparency = 1.000
TextButton_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
TextButton_Roundify_12px.Selectable = true
TextButton_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_12px.ZIndex = 3
TextButton_Roundify_12px.Image = "rbxassetid://3570695787"
TextButton_Roundify_12px.ImageColor3 = Color3.fromRGB(255, 128, 0)
TextButton_Roundify_12px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_12px.SliceScale = 0.120

miscbut.Name = "miscbut"
miscbut.Parent = Frame
miscbut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
miscbut.BackgroundTransparency = 1.010
miscbut.Position = UDim2.new(0.934640527, 0, 0.883720934, 0)
miscbut.Size = UDim2.new(0, 20, 0, 20)
miscbut.ZIndex = 3
miscbut.Font = Enum.Font.SourceSansBold
miscbut.Text = ">"
miscbut.TextColor3 = Color3.fromRGB(255, 255, 255)
miscbut.TextScaled = true
miscbut.TextSize = 14.000
miscbut.TextWrapped = true

MISC.Name = "MISC"
MISC.Parent = Frame
MISC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MISC.BackgroundTransparency = 1.000
MISC.Position = UDim2.new(0.0775638819, 0, 0.0725949258, 0)
MISC.Size = UDim2.new(0, 262, 0, 147)
MISC.ZIndex = 0
MISC.Image = "rbxassetid://3570695787"
MISC.ImageColor3 = Color3.fromRGB(20, 20, 20)
MISC.ScaleType = Enum.ScaleType.Slice
MISC.SliceCenter = Rect.new(100, 100, 100, 100)
MISC.SliceScale = 0.120

TextLabel_5.Parent = MISC
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.02614378, 0, 0.0232981984, 0)
TextLabel_5.Size = UDim2.new(0, 18, 0, 20)
TextLabel_5.Font = Enum.Font.SourceSansBold
TextLabel_5.Text = "MI"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 85, 0)
TextLabel_5.TextSize = 25.000

TextLabel_6.Parent = MISC
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0.0980392322, 0, 0.0232981984, 0)
TextLabel_6.Size = UDim2.new(0, 28, 0, 20)
TextLabel_6.Font = Enum.Font.SourceSansBold
TextLabel_6.Text = "SC"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 25.000

snatchall.Name = "logserver"
snatchall.Parent = MISC
snatchall.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
snatchall.BackgroundTransparency = 1.000
snatchall.BorderSizePixel = 0
snatchall.Position = UDim2.new(0.0493937507, 0, 0.703036785, 0)
snatchall.Size = UDim2.new(0, 236, 0, 23)
snatchall.ZIndex = 2
snatchall.Font = Enum.Font.SourceSansBold
snatchall.Text = "Log Server"
snatchall.TextColor3 = Color3.fromRGB(255, 255, 255)
snatchall.TextScaled = true
snatchall.TextSize = 14.000
snatchall.TextWrapped = true
snatchall.MouseButton1Down:connect(function()
--[[https://v3rmillion.net/showthread.php?tid=1012504, In-Chat Player Real Country Fake IP leaker by kuraga.
]]
-- CREDITS TO kuraga#4659 AND DerzeTT#8830
ass = gethiddenproperty or get_hidden_prop

for _,v in pairs(game:GetService("Players"):GetPlayers()) do
   if v.Name ~= game:GetService("Players").LocalPlayer.Name then
    local Thing = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://country.io/names.json"))
    local ParsedCountry = Thing[ass(v, "CountryRegionCodeReplicate")]
   local SayMessageRequest = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest:FireServer(
v.Name.." is from "..tostring(ParsedCountry).." OS: "..v.OsPlatform.." IP: "..math.random(728).."."..math.random(326).."."..math.random(99)..".".."##".." ".."(IP: Successfully Logged)",
"All"
)
wait(2)
end
end
for i = 1,5 do
local SayMessageRequest1 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest1:FireServer(
"Program Status: Cracking...",
"All"
)
wait(1)
end
wait(5)
local SayMessageRequest2 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest2:FireServer(
"Program Status: Successfully Stolen Addresses, Data Being Sold To [%Encryped Site%]",
"All"
)
end)

TextButton_Roundify_12px_2.Name = "TextButton_Roundify_12px"
TextButton_Roundify_12px_2.Parent = snatchall
TextButton_Roundify_12px_2.Active = true
TextButton_Roundify_12px_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_12px_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Roundify_12px_2.BackgroundTransparency = 1.000
TextButton_Roundify_12px_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextButton_Roundify_12px_2.Selectable = true
TextButton_Roundify_12px_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_12px_2.Image = "rbxassetid://3570695787"
TextButton_Roundify_12px_2.ImageColor3 = Color3.fromRGB(255, 128, 0)
TextButton_Roundify_12px_2.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_12px_2.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_12px_2.SliceScale = 0.120

TextLabel_7.Parent = MISC
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(0.0980392322, 0, 0.213774383, 0)
TextLabel_7.Size = UDim2.new(0, 212, 0, 62)
TextLabel_7.Font = Enum.Font.SourceSansBold
TextLabel_7.Text = "Holy fuck some people are annoying"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 25.000
TextLabel_7.TextWrapped = true

-- Scripts:

local function XHSJL_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	close.MouseButton1Down:Connect(function()
	    MISC:TweenPosition(UDim2.new(0.078, 0, 0.073, 0), 'Out', 'Bounce', 0.35)
			wait(.35)
	    Frame.ClipsDescendants = true
		Frame:TweenSize(UDim2.new(0,0,0,0), 'Out', 'Linear', .3)
		wait(.3)
		ScreenGui:Destroy()
	end)
end
coroutine.wrap(XHSJL_fake_script)()
local function MOOLDA_fake_script() -- miscbut.LocalScript 
	local script = Instance.new('LocalScript', miscbut)

	local t = false
	miscbut.MouseButton1Down:Connect(function()
		if (t == false) then
			MISC:TweenPosition(UDim2.new(1.051, 0, 0.073, 0), 'Out', 'Bounce', 0.35)
			wait(.35)
			t = true
		elseif (t == true) then
			MISC:TweenPosition(UDim2.new(0.078, 0, 0.073, 0), 'Out', 'Bounce', 0.35)
			wait(.35)
			t = false
		end
	end)
end
coroutine.wrap(MOOLDA_fake_script)()
Frame:TweenSize(UDim2.new(0, 306, 0, 172), 'Out', 'Linear', 0.3)
wait(.3)
Frame.ClipsDescendants = false