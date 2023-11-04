-- Gui to Lua
-- Version: 3.2

-- Instances:

local HttpSpy = Instance.new("ScreenGui")
local Backgroud = Instance.new("Frame")
local TitleText = Instance.new("TextLabel")
local MainContainer = Instance.new("ScrollingFrame")
local TemplateText = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")

--Properties:

HttpSpy.Name = "HttpSpy"
HttpSpy.Parent = game.CoreGui
HttpSpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Backgroud.Name = "Backgroud"
Backgroud.Parent = HttpSpy
Backgroud.Active = true
Backgroud.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Backgroud.BorderColor3 = Color3.fromRGB(255, 0, 4)
Backgroud.BorderSizePixel = 2
Backgroud.Position = UDim2.new(0.0586419739, 0, 0.24924925, 0)
Backgroud.Size = UDim2.new(0, 406, 0, 222)

TitleText.Name = "TitleText"
TitleText.Parent = Backgroud
TitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleText.BackgroundTransparency = 1.000
TitleText.BorderSizePixel = 0
TitleText.Size = UDim2.new(0, 406, 0, 25)
TitleText.Font = Enum.Font.RobotoMono
TitleText.Text = "HTTP Spy v. 1"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextScaled = true
TitleText.TextSize = 14.000
TitleText.TextWrapped = true

MainContainer.Name = "MainContainer"
MainContainer.Parent = Backgroud
MainContainer.Active = true
MainContainer.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
MainContainer.BorderSizePixel = 0
MainContainer.Position = UDim2.new(0, 0, 0.112612613, 0)
MainContainer.Size = UDim2.new(0, 406, 0, 197)
MainContainer.ScrollBarThickness = 6

UIListLayout.Parent = MainContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder


function drag (s)
script.Parent = s;
script.Parent.Position = UDim2.new (0, script.Parent.Parent.AbsoluteSize.X * script.Parent.Position.X.Scale + script.Parent.Position.X.Offset, 0, script.Parent.Parent. AbsoluteSize.Y * script.Parent.Position.Y.Scale + script.Parent.Position.Y.Offset)
local i = false
script.Parent.MouseEnter:Connect(function ()
i = true
end);
script.Parent.MouseLeave:Connect(function ()
i = false;
end)
local uis = game:GetService("UserInputService")
local up = false;
local m = game:GetService("Players")['LocalPlayer']:GetMouse()
uis.InputBegan:Connect(function(key)
if key.UserInputType == Enum.UserInputType.MouseButton1 then
up = false 
local offsetX = m.X-script.Parent.Position.X.Offset
local offsetY = m.Y-script.Parent.Position.Y.Offset 
if i then
repeat
warn("BRRRRR")
s:TweenPosition (UDim2.new (0, m.X-offsetX, 0, m.Y-offsetY), 'Out', 'Sine', 0.4, true)
wait ();
until up
offsetX = 0
offsetY = 0
end;
end
end)
uis.InputEnded:Connect(function(key)
if key.UserInputType == Enum.UserInputType.MouseButton1 then
up = true 
end
end)


end;
drag(Backgroud)


local script = Instance.new('LocalScript', MainContainer)

TemplateText.Name = "TemplateText"
TemplateText.Parent = HttpSpy.Backgroud.MainContainer.LocalScript
TemplateText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TemplateText.BackgroundTransparency = 0.950
TemplateText.BorderSizePixel = 0
TemplateText.Position = UDim2.new(3.75832236e-08, 0, 0, 0)
TemplateText.Size = UDim2.new(1.00000012, 0, 0, 20)
TemplateText.Font = Enum.Font.SourceSansSemibold
TemplateText.Text = "ur mom"
TemplateText.TextColor3 = Color3.fromRGB(255, 255, 255)
TemplateText.TextScaled = true
TemplateText.TextSize = 14.000
TemplateText.TextWrapped = true
TemplateText.TextXAlignment = Enum.TextXAlignment.Left

local Template = script.TemplateText

local function registerDynamicScrollingFrame(frame)
local layout = frame:FindFirstChildWhichIsA("UIListLayout")
local absoluteContentSize = layout.AbsoluteContentSize
frame.CanvasSize = UDim2.new(0, 0, 0, absoluteContentSize.Y)
layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
local absoluteContentSize = layout.AbsoluteContentSize
frame.CanvasSize = UDim2.new(0, 0, 0, absoluteContentSize.Y)
end)
end

local function Log(text,headers)
local Label = Template:Clone()
if headers and type(headers) == "table" then 
text = text .. " (HEADERS:"
for Index, Value in next, headers do 
text = text.. tostring(Index).. ": "..tostring(Value)

end
text = text .. ")"
end
Label.Text = text 
Label.Parent = script.Parent

end
registerDynamicScrollingFrame(MainContainer)
local HttpGet

HttpGet = hookfunction(game.HttpGet, function(self, url, ...)
Log("Http Get Request from: "..url)

return HttpGet(self, url, ...)
end)

local HttpPost

HttpPost = hookfunction(game.HttpPost, function(self, url, ...)
Log("Http Post Request from: "..url)

return HttpPost(self, url, ...)
end)


local RequestLog

if syn.request then 

RequestLog = hookfunction(syn.request, function(dat)
Log("syn.request from: "..dat.Url.." ("..dat.Method..")",dat.Headers)

return RequestLog(dat)
end)

elseif request then

RequestLog = hookfunction(request, function(dat)
Log("syn.request from: "..dat.Url.." ("..dat.Method..")",dat.Headers)

return RequestLog(dat)
end)

else
error("YOUR EXPLOIT IS NOT SUPPORTED!")
end