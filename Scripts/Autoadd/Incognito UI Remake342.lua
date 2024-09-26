-- join https://discord.gg/gYhqMRBeZV
if not getgenv().MoreUNC then
 oldprint = print
 oldwarn = warn
 olderror = error
 getgenv().print = function() end
 loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-MoreUNC-13110"))()
end

local SelectedTab = nil
local tabsamount = 0
local Tabs = {}
if game:GetService("CoreGui"):FindFirstChild("incognito") then
 game:GetService("CoreGui"):FindFirstChild("incognito"):Destroy()
end

local Converted = {
	["_incognito"] = Instance.new("ScreenGui");
	["_main"] = Instance.new("Frame");
	["_mainround"] = Instance.new("UICorner");
	["_sidebar"] = Instance.new("Frame");
	["_logo"] = Instance.new("ImageLabel");
	["_logoround"] = Instance.new("UICorner");
	["_executiontab"] = Instance.new("ImageButton");
	["_scripthubtab"] = Instance.new("ImageButton");
	["_settingstab"] = Instance.new("ImageButton");
	["_executortabselected"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_scriptstabselected"] = Instance.new("Frame");
	["_UICorner1"] = Instance.new("UICorner");
	["_optionstabselected"] = Instance.new("Frame");
	["_UICorner2"] = Instance.new("UICorner");
	["_executorpage"] = Instance.new("Frame");
	["_executorstroke"] = Instance.new("UIStroke");
	["_executorround"] = Instance.new("UICorner");
	["_console"] = Instance.new("Frame");
	["_consoleseperator"] = Instance.new("Frame");
	["_consoletext"] = Instance.new("TextLabel");
	["_welcomtext"] = Instance.new("TextLabel");
	["_welcomtext1"] = Instance.new("TextLabel");
	["_execute"] = Instance.new("ImageButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_UIStroke"] = Instance.new("UIStroke");
	["_clear"] = Instance.new("ImageButton");
	["_UICorner4"] = Instance.new("UICorner");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_tabseperator"] = Instance.new("Frame");
	["_tabs"] = Instance.new("ScrollingFrame");
	["_scriptonetab"] = Instance.new("TextButton");
	["_UICorner5"] = Instance.new("UICorner");
	["_scripttwotab"] = Instance.new("TextButton");
	["_UICorner6"] = Instance.new("UICorner");
	["_scriptthreetab"] = Instance.new("TextButton");
	["_UICorner7"] = Instance.new("UICorner");
    ["_textboxscrolling"] = Instance.new("ScrollingFrame");
	["_tab1box"] = Instance.new("TextBox");
	["_tab1maineditor"] = Instance.new("TextLabel");
	["_tab2box"] = Instance.new("TextBox");
	["_tab2maineditor"] = Instance.new("TextLabel");
	["_tab3box"] = Instance.new("TextBox");
	["_tab3maineditor"] = Instance.new("TextLabel");
    ["_tab1lines"] = Instance.new("TextLabel");
	["_tab2lines"] = Instance.new("TextLabel");
	["_tab3lines"] = Instance.new("TextLabel");
	["_scriptpage"] = Instance.new("Frame");
	["_executorstroke1"] = Instance.new("UIStroke");
	["_executorround1"] = Instance.new("UICorner");
	["_infiniteyieldholder"] = Instance.new("Frame");
	["_executeiystroke"] = Instance.new("UIStroke");
	["_executeiyround"] = Instance.new("UICorner");
	["_iylogo"] = Instance.new("ImageLabel");
	["_executorround2"] = Instance.new("UICorner");
	["_iylabel"] = Instance.new("TextLabel");
	["_executeiy"] = Instance.new("TextButton");
	["_executeiybtnround"] = Instance.new("UICorner");
	["_executeiyicon"] = Instance.new("ImageLabel");
	["_executeiylabel"] = Instance.new("TextLabel");
	["_dexexplorerholder"] = Instance.new("Frame");
	["_executedexstroke"] = Instance.new("UIStroke");
	["_executedexround"] = Instance.new("UICorner");
	["_dexicon"] = Instance.new("ImageLabel");
	["_executorround3"] = Instance.new("UICorner");
	["_dexlabel"] = Instance.new("TextLabel");
	["_executedex"] = Instance.new("TextButton");
	["_executedexbtnround"] = Instance.new("UICorner");
	["_executedexicon"] = Instance.new("ImageLabel");
	["_executedexlabel"] = Instance.new("TextLabel");
	["_remotespyholder"] = Instance.new("Frame");
	["_executeremotespystroke"] = Instance.new("UIStroke");
	["_executeremotespyround"] = Instance.new("UICorner");
	["_remotespyicon"] = Instance.new("ImageLabel");
	["_executorround4"] = Instance.new("UICorner");
	["_remotespylabel"] = Instance.new("TextLabel");
	["_executeremotespy"] = Instance.new("TextButton");
	["_executeremotespybtnround"] = Instance.new("UICorner");
	["_executeremotespyicon"] = Instance.new("ImageLabel");
	["_executeremotespylabel"] = Instance.new("TextLabel");
	["_settingspage"] = Instance.new("Frame");
	["_executorstroke2"] = Instance.new("UIStroke");
	["_executorround5"] = Instance.new("UICorner");
	["_emptynotice"] = Instance.new("TextLabel");
}

Converted["_incognito"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_incognito"].Name = "incognito"
Converted["_incognito"].Parent = game:GetService("CoreGui")

Converted["_main"].BackgroundColor3 = Color3.fromRGB(25.000000409781933, 28.000000230968, 35.00000171363354)
Converted["_main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_main"].BorderSizePixel = 0
Converted["_main"].Position = UDim2.new(0.5, 0, .5, 0)
Converted['_main'].AnchorPoint = Vector2.new(.5, .5)
Converted["_main"].Size = UDim2.new(0, 681, 0, 394)
Converted["_main"].Name = "main"
Converted["_main"].Parent = Converted["_incognito"]

Converted["_mainround"].CornerRadius = UDim.new(0, 18)
Converted["_mainround"].Name = "mainround"
Converted["_mainround"].Parent = Converted["_main"]

Converted["_sidebar"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_sidebar"].BackgroundTransparency = 1
Converted["_sidebar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_sidebar"].BorderSizePixel = 0
Converted["_sidebar"].Size = UDim2.new(0, 131, 0, 394)
Converted["_sidebar"].Name = "sidebar"
Converted["_sidebar"].Parent = Converted["_main"]

Converted["_logo"].Image = "rbxassetid://17463669567"
Converted["_logo"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_logo"].BackgroundTransparency = 1
Converted["_logo"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_logo"].BorderSizePixel = 0
Converted["_logo"].Position = UDim2.new(0.0534351133, 0, 0, 0)
Converted["_logo"].Size = UDim2.new(0, 71, 0, 71)
Converted["_logo"].Name = "logo"
Converted["_logo"].Parent = Converted["_sidebar"]

Converted["_logoround"].CornerRadius = UDim.new(0, 20)
Converted["_logoround"].Name = "logoround"
Converted["_logoround"].Parent = Converted["_logo"]

Converted["_executiontab"].Image = "rbxassetid://17567674604"
Converted["_executiontab"].ImageColor3 = Color3.fromRGB(255, 255, 255)
Converted["_executiontab"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_executiontab"].BackgroundTransparency = 1
Converted["_executiontab"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_executiontab"].BorderSizePixel = 0
Converted["_executiontab"].Position = UDim2.new(0.238435119, 0, 0.322335035, 0)
Converted["_executiontab"].Size = UDim2.new(0, 28, 0, 28)
Converted["_executiontab"].Name = "executiontab"
Converted["_executiontab"].Parent = Converted["_sidebar"]

Converted["_scripthubtab"].Image = "rbxassetid://17567627306"
Converted["_scripthubtab"].ImageColor3 = Color3.fromRGB(101.00000157952309, 101.00000157952309, 104.00000140070915)
Converted["_scripthubtab"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_scripthubtab"].BackgroundTransparency = 1
Converted["_scripthubtab"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_scripthubtab"].BorderSizePixel = 0
Converted["_scripthubtab"].Position = UDim2.new(0.238435119, 0, 0.46952796, 0)
Converted["_scripthubtab"].Size = UDim2.new(0, 28, 0, 28)
Converted["_scripthubtab"].Name = "scripthubtab"
Converted["_scripthubtab"].Parent = Converted["_sidebar"]

Converted['_consoletab'] = Converted["_scripthubtab"]:Clone()
Converted["_consoletab"].Image = "rbxassetid://17567215116"
Converted["_consoletab"].ImageColor3 = Color3.fromRGB(101.00000157952309, 101.00000157952309, 104.00000140070915)
Converted["_consoletab"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_consoletab"].BackgroundTransparency = 1
Converted["_consoletab"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_consoletab"].BorderSizePixel = 0
Converted["_consoletab"].Position = UDim2.new(0.238435119, 0, 0.604045749, 0)
Converted["_consoletab"].Size = UDim2.new(0, 28, 0, 28)
Converted["_consoletab"].Name = "consoletab"
Converted["_consoletab"].Parent = Converted["_sidebar"]

Converted["_settingstab"].Image = "rbxassetid://17567689119"
Converted["_settingstab"].ImageColor3 = Color3.fromRGB(101.00000157952309, 101.00000157952309, 104.00000140070915)
Converted["_settingstab"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_settingstab"].BackgroundTransparency = 1
Converted["_settingstab"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_settingstab"].BorderSizePixel = 0
Converted["_settingstab"].Position = UDim2.new(0.238435119, 0, 0.604045749+(0.604045749-0.46952796), 0)
Converted["_settingstab"].Size = UDim2.new(0, 28, 0, 28)
Converted["_settingstab"].Name = "settingstab"
Converted["_settingstab"].Parent = Converted["_sidebar"]

Converted['_apitab'] = Converted["_settingstab"]:Clone()
Converted['_apitab'].Image = 'rbxassetid://17568378230'
Converted['_apitab'].Parent = Converted['_sidebar']
Converted['_apitab'].Position = Converted["_settingstab"].Position + UDim2.new(0, 0, (0.604045749-0.46952796), 0)

Converted["_executortabselected"].BackgroundColor3 = Color3.fromRGB(74.0000031888485, 77.00000301003456, 105.00000134110451)
Converted["_executortabselected"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_executortabselected"].BorderSizePixel = 0
Converted["_executortabselected"].Position = UDim2.new(0.0599999987, 0, 0.333999995, 0)
Converted["_executortabselected"].Size = UDim2.new(0, 2, 0, 20)
Converted["_executortabselected"].Name = "executortabselected"
Converted["_executortabselected"].Parent = Converted["_sidebar"]

function selectMainTab(tab)
 for i, v in pairs(Converted['_sidebar']:GetChildren()) do
  if v:IsA("ImageButton") then
   if v == tab then v.ImageColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973) else
   v.ImageColor3 = Color3.fromRGB(101.00000157952309, 101.00000157952309, 104.00000140070915)
  end
  end
 end
end
function selectPage(tab)
 for i, v in pairs(Converted['_main']:GetChildren()) do
  if v.Name:sub(#v.Name-#"page"+1, #v.Name) == 'page' then
   if v == tab then v.Visible = true else v.Visible = false end
  end
 end
end

Converted['_executiontab'].MouseButton1Click:Connect(function()
 selectPage(Converted['_executorpage'])
 local Tween = game:GetService("TweenService"):Create(Converted['_executortabselected'], TweenInfo.new(.25), {Position=UDim2.new(0.0599999987, 0, 0.333999995, 0)})
 Tween:Play()
 selectMainTab(Converted['_executiontab'])
 Tween.Completed:Wait()
end)
Converted['_scripthubtab'].MouseButton1Click:Connect(function()
 selectPage(Converted["_scriptpage"])
 local Tween = game:GetService("TweenService"):Create(Converted['_executortabselected'], TweenInfo.new(.25), {Position=UDim2.new(0.0599999987, 0, 0.477999995, 0)})
 Tween:Play()
 selectMainTab(Converted["_scripthubtab"])
 Tween.Completed:Wait()
end)
Converted['_consoletab'].MouseButton1Click:Connect(function()
 selectPage(Converted['_consolepage'])
 local Tween = game:GetService("TweenService"):Create(Converted['_executortabselected'], TweenInfo.new(.25), {Position=UDim2.new(0.0599999987, 0, 0.613999995, 0)})
 Tween:Play()
 selectMainTab(Converted["_consoletab"])
 Tween.Completed:Wait()
end)
Converted['_settingstab'].MouseButton1Click:Connect(function()
 selectPage(Converted['_settingspage'])
 local Tween = game:GetService("TweenService"):Create(Converted['_executortabselected'], TweenInfo.new(.25), {Position=UDim2.new(0.0599999987, 0, 0.747999995, 0)})
 Tween:Play()
 selectMainTab(Converted['_settingstab'])
 Tween.Completed:Wait()
end)
Converted['_apitab'].MouseButton1Click:Connect(function()
 selectPage(Converted['_apipage'])
 local Tween = game:GetService("TweenService"):Create(Converted['_executortabselected'], TweenInfo.new(.25), {Position=UDim2.new(0.0599999987, 0, 0.887999995, 0)})
 Tween:Play()
 selectMainTab(Converted['_apitab'])
 Tween.Completed:Wait()
end)

Converted["_UICorner"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner"].Parent = Converted["_executortabselected"]

Converted["_scriptstabselected"].BackgroundColor3 = Color3.fromRGB(74.0000031888485, 77.00000301003456, 105.00000134110451)
Converted["_scriptstabselected"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_scriptstabselected"].BorderSizePixel = 0
Converted["_scriptstabselected"].Position = UDim2.new(0.0599999987, 0, 0.479900002, 0)
Converted["_scriptstabselected"].Size = UDim2.new(0, 2, 0, 20)
Converted["_scriptstabselected"].Visible = true
Converted["_scriptstabselected"].BackgroundTransparency = 1
Converted["_scriptstabselected"].Name = "scriptstabselected"
Converted["_scriptstabselected"].Parent = Converted["_sidebar"]

Converted["_UICorner1"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner1"].Parent = Converted["_scriptstabselected"]

Converted["_optionstabselected"].BackgroundColor3 = Color3.fromRGB(74.0000031888485, 77.00000301003456, 105.00000134110451)
Converted["_optionstabselected"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_optionstabselected"].BorderSizePixel = 0
Converted["_optionstabselected"].Position = UDim2.new(0.0599999987, 0, 0.612999976, 0)
Converted["_optionstabselected"].Size = UDim2.new(0, 2, 0, 20)
Converted["_optionstabselected"].Visible = true
Converted["_optionstabselected"].BackgroundTransparency = 1
Converted["_optionstabselected"].Name = "optionstabselected"
Converted["_optionstabselected"].Parent = Converted["_sidebar"]

Converted["_UICorner2"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner2"].Parent = Converted["_optionstabselected"]

Converted["_executorpage"].BackgroundColor3 = Color3.fromRGB(24.000000469386578, 24.000000469386578, 30.00000011175871)
Converted["_executorpage"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_executorpage"].BorderSizePixel = 0
Converted["_executorpage"].Position = UDim2.new(0.133627012, 0, 0.0456852801, 0)
Converted["_executorpage"].Size = UDim2.new(0, 570, 0, 361)
Converted["_executorpage"].Visible = true
Converted["_executorpage"].Name = "executorpage"
Converted["_executorpage"].Parent = Converted["_main"]

Converted["_executorstroke"].Color = Color3.fromRGB(38.0000015348196, 38.0000015348196, 48.000000938773155)
Converted["_executorstroke"].Thickness = 1.5
Converted["_executorstroke"].Name = "executorstroke"
Converted["_executorstroke"].Parent = Converted["_executorpage"]

Converted["_executorround"].CornerRadius = UDim.new(0, 18)
Converted["_executorround"].Name = "executorround"
Converted["_executorround"].Parent = Converted["_executorpage"]

Converted['_consolepage'] = Converted['_executorpage']:Clone()
Converted['_consolepage'].Parent = Converted['_main']
Converted["_consolepage"].Visible = false

Converted['_apipage'] = Converted['_executorpage']:Clone()
Converted['_apipage'].Parent = Converted['_main']
Converted['_apipage'].Visible = false
Converted['_apipage'].Name = 'apipage'

Converted["_execute"].Image = "http://www.roblox.com/asset/?id=6026663699"
Converted["_execute"].ImageColor3 = Color3.fromRGB(142.00000673532486, 143.00000667572021, 151.00000619888306)
Converted["_execute"].BackgroundColor3 = Color3.fromRGB(32.00000189244747, 32.00000189244747, 42.000001296401024)
Converted["_execute"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_execute"].BorderSizePixel = 0
Converted["_execute"].Position = UDim2.new(0.857894719, 0, 0.889196694, 0)
Converted["_execute"].Size = UDim2.new(0, 31, 0, 31)
Converted["_execute"].Name = "execute"
Converted["_execute"].Parent = Converted["_executorpage"]
Converted["_execute"].AutoButtonColor = false

Converted["_UICorner3"].CornerRadius = UDim.new(0, 7)
Converted["_UICorner3"].Parent = Converted["_execute"]

Converted["_UIStroke"].Color = Color3.fromRGB(36.00000165402889, 37.00000159442425, 45.00000111758709)
Converted["_UIStroke"].Thickness = 2
Converted["_UIStroke"].Parent = Converted["_execute"]

local NewTab = Converted['_execute']:Clone()
NewTab.Parent = Converted['_executorpage']
NewTab.Image = 'rbxassetid://7072716017'
NewTab.Position = UDim2.new(0.857894719-(0.926315784-0.857894719), 0, 0.889196694, 0)

Converted["_clear"].Image = "http://www.roblox.com/asset/?id=6035047409"
Converted["_clear"].ImageColor3 = Color3.fromRGB(142.00000673532486, 143.00000667572021, 151.00000619888306)
Converted["_clear"].BackgroundColor3 = Color3.fromRGB(32.00000189244747, 32.00000189244747, 42.000001296401024)
Converted["_clear"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_clear"].BorderSizePixel = 0
Converted["_clear"].Position = UDim2.new(0.926315784, 0, 0.889196694, 0)
Converted["_clear"].Size = UDim2.new(0, 31, 0, 31)
Converted["_clear"].Name = "clear"
Converted["_clear"].Parent = Converted["_executorpage"]
Converted["_clear"].AutoButtonColor = false

Converted["_UICorner4"].CornerRadius = UDim.new(0, 7)
Converted["_UICorner4"].Parent = Converted["_clear"]

Converted["_UIStroke1"].Color = Color3.fromRGB(36.00000165402889, 37.00000159442425, 45.00000111758709)
Converted["_UIStroke1"].Thickness = 2
Converted["_UIStroke1"].Parent = Converted["_clear"]

Converted["_tabseperator"].BackgroundColor3 = Color3.fromRGB(38.0000015348196, 38.0000015348196, 48.000000938773155)
Converted["_tabseperator"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_tabseperator"].BorderSizePixel = 0
Converted["_tabseperator"].Position = UDim2.new(0, 0, 0.0905361846, 0)
Converted["_tabseperator"].Size = UDim2.new(0, 570, 0, 2)
Converted["_tabseperator"].Name = "tabseperator"
Converted["_tabseperator"].Parent = Converted["_executorpage"]

Converted["_tabs"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_tabs"].BackgroundTransparency = 1
Converted["_tabs"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_tabs"].BorderSizePixel = 0
Converted["_tabs"].Size = UDim2.new(0, 570, 0, 34)
Converted["_tabs"].Name = "tabs"
Converted["_tabs"].Parent = Converted["_executorpage"]
Converted["_tabs"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted['_tabs'].AutomaticCanvasSize = Enum.AutomaticSize.X
Converted['_tabs'].ScrollBarThickness = 0

local layout = Instance.new("UIListLayout", Converted["_tabs"])
layout.VerticalAlignment = Enum.VerticalAlignment.Center
layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
layout.FillDirection = Enum.FillDirection.Horizontal
layout.Padding = UDim.new(0, 4)
layout.SortOrder = Enum.SortOrder.LayoutOrder
Instance.new("UIPadding", Converted["_tabs"]).PaddingLeft = UDim.new(0, 4)

Converted["_scriptonetab"].Font = Enum.Font.Gotham
Converted["_scriptonetab"].Text = "Tab"
Converted["_scriptonetab"].TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
Converted["_scriptonetab"].TextScaled = true
Converted["_scriptonetab"].BackgroundColor3 = Color3.fromRGB(38.0000015348196, 38.0000015348196, 48.000000938773155)
Converted["_scriptonetab"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_scriptonetab"].BorderSizePixel = 0
Converted["_scriptonetab"].Position = UDim2.new(0.0192982461, 0, 0.176470593, 0)
Converted["_scriptonetab"].Size = UDim2.new(0, 68, 0, 23)
Converted["_scriptonetab"].Name = "tab"
Converted["_scriptonetab"].Parent = Converted["_tabs"]
Converted["_scriptonetab"].AutoButtonColor = false
Converted['_scriptonetab'].Visible = false

local a = Instance.new("UITextSizeConstraint", Converted['_scriptonetab'])
a.MaxTextSize = 14
a.MinTextSize = 12

Converted["_UICorner5"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner5"].Parent = Converted["_scriptonetab"]

Converted["_textboxscrolling"].CanvasSize = UDim2.new(0, 0, 50, 0)
Converted['_textboxscrolling'].AutomaticCanvasSize = Enum.AutomaticSize.XY
Converted["_textboxscrolling"].ScrollBarImageColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
Converted["_textboxscrolling"].ScrollBarThickness = 5
Converted["_textboxscrolling"].Active = true
Converted["_textboxscrolling"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_textboxscrolling"].BackgroundTransparency = 1
Converted["_textboxscrolling"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_textboxscrolling"].BorderSizePixel = 0
Converted["_textboxscrolling"].Position = UDim2.new(0, 0, 0.102493078, 0)
Converted["_textboxscrolling"].Size = UDim2.new(0, 570, 0, 244)
Converted["_textboxscrolling"].Name = "textboxscrolling"
Converted["_textboxscrolling"].Parent = Converted["_executorpage"]

Converted["_tab1box"].ClearTextOnFocus = false
Converted["_tab1box"].Font = Enum.Font.Gotham
Converted["_tab1box"].MultiLine = true
Converted["_tab1box"].PlaceholderColor3 = Color3.fromRGB(84.00000259280205, 85.0000025331974, 91.00000217556953)
Converted["_tab1box"].PlaceholderText = "-- Welcome to Incognito. Be careful executing unknown scripts there are vulns!"
Converted["_tab1box"].RichText = true
Converted["_tab1box"].Text = ""
Converted["_tab1box"].ZIndex = 99999
Converted["_tab1box"].TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
Converted["_tab1box"].TextSize = 14
Converted["_tab1box"].TextTransparency = 0
Converted["_tab1box"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_tab1box"].TextYAlignment = Enum.TextYAlignment.Top
Converted["_tab1box"].BackgroundColor3 = Color3.fromRGB(24.000000469386578, 24.000000469386578, 30.00000011175871)
Converted["_tab1box"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_tab1box"].BorderSizePixel = 0
Converted["_tab1box"].Position = UDim2.new(0.0689999983, 0, 0, 0)
Converted["_tab1box"].Size = UDim2.new(0, 525, 0, 18040)
Converted["_tab1box"].Name = "tab1box"
Converted["_tab1box"].Parent = Converted["_textboxscrolling"]

Converted["_tab1maineditor"].Font = Enum.Font.Gotham
Converted["_tab1maineditor"].Text = ""
Converted["_tab1maineditor"].TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
Converted["_tab1maineditor"].TextSize = 14
Converted["_tab1maineditor"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_tab1maineditor"].TextYAlignment = Enum.TextYAlignment.Top
Converted["_tab1maineditor"].BackgroundColor3 = Color3.fromRGB(24.000000469386578, 24.000000469386578, 30.00000011175871)
Converted["_tab1maineditor"].BackgroundTransparency = 0.9900000095367432
Converted["_tab1maineditor"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_tab1maineditor"].BorderSizePixel = 0
Converted["_tab1maineditor"].Size = UDim2.new(0, 525, 0, 18040)
Converted["_tab1maineditor"].Name = "tab1maineditor"
Converted["_tab1maineditor"].Parent = Converted["_tab1box"]
Converted["_tab1maineditor"].Text = ''
Converted["_tab1maineditor"].ZIndex = -9999

Converted["_tab1lines"].Font = Enum.Font.Gotham
Converted["_tab1lines"].Text = "1"
Converted["_tab1lines"].TextColor3 = Color3.fromRGB(156.00000590085983, 156.00000590085983, 156.00000590085983)
Converted["_tab1lines"].TextSize = 14
Converted["_tab1lines"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_tab1lines"].TextYAlignment = Enum.TextYAlignment.Top
Converted["_tab1lines"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_tab1lines"].BackgroundTransparency = 1
Converted["_tab1lines"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_tab1lines"].BorderSizePixel = 0
Converted["_tab1lines"].Position = UDim2.new(0.0192982461, 0, 0, 0)
Converted["_tab1lines"].Size = UDim2.new(0, 28, 0, 18040)
Converted["_tab1lines"].Name = "tab1lines"
Converted["_tab1lines"].Parent = Converted["_textboxscrolling"]

Converted["_scriptpage"].BackgroundColor3 = Color3.fromRGB(24.000000469386578, 24.000000469386578, 30.00000011175871)
Converted["_scriptpage"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_scriptpage"].BorderSizePixel = 0
Converted["_scriptpage"].Position = UDim2.new(0.133627012, 0, 0.0456852801, 0)
Converted["_scriptpage"].Size = UDim2.new(0, 570, 0, 361)
Converted["_scriptpage"].Visible = false
Converted["_scriptpage"].Name = "scriptpage"
Converted["_scriptpage"].Parent = Converted["_main"]

Converted["_executorstroke1"].Color = Color3.fromRGB(38.0000015348196, 38.0000015348196, 48.000000938773155)
Converted["_executorstroke1"].Thickness = 1.5
Converted["_executorstroke1"].Name = "executorstroke"
Converted["_executorstroke1"].Parent = Converted["_scriptpage"]

Converted["_executorround1"].CornerRadius = UDim.new(0, 18)
Converted["_executorround1"].Name = "executorround"
Converted["_executorround1"].Parent = Converted["_scriptpage"]

Converted['_settingspage'] = Converted['_scriptpage']:Clone()
Converted['_settingspage'].Parent = Converted['_main']

local ScriptNames = {
 'MoreUNC', -- hehe self promo
 'Blox Fruits',
 'Pet Simulator 99',
 'Adopt Me',
 'Blade Ball',
 'UNC Test' -- hehe self promo 2
}

local Scripts = Instance.new("ScrollingFrame", Converted['_scriptpage'])
Scripts.Size = UDim2.new(1, 0, .85, 0)
Scripts.Position = UDim2.new(0, 0, .15, 0)
Scripts.ScrollBarThickness = 0
Scripts.CanvasSize = UDim2.new(0,0,0,0)
Scripts.AutomaticCanvasSize = Enum.AutomaticSize.XY
Scripts.Name = 'Scripts'
Scripts.BackgroundTransparency = 1
local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.Parent = Scripts
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0.49, 0, 0.49, 0)
UIGridLayout.CellPadding = UDim2.new(0,5,0,5)
UIGridLayout.Name = 'Layout'
local SearchBar = Instance.new("TextBox", Converted['_scriptpage'])
SearchBar.Font = Enum.Font.Gotham
SearchBar.PlaceholderText = 'Try \'' .. ScriptNames[math.random(1, #ScriptNames)] .. '\''
SearchBar.TextSize = 14
SearchBar.Size = UDim2.new(1, 0, .15, 0)
SearchBar.TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
SearchBar.TextXAlignment = Enum.TextXAlignment.Left
SearchBar.TextYAlignment = Enum.TextYAlignment.Center
SearchBar.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
SearchBar.BackgroundTransparency = 1
SearchBar.Text = ''
Instance.new('UIPadding', SearchBar).PaddingLeft = UDim.new(.025, 0)
Instance.new('UIPadding', Scripts).PaddingLeft = UDim.new(0, 5)
local Glass = Instance.new("ImageLabel", SearchBar)
Glass.Image = 'rbxassetid://17558788274'
Glass.BackgroundTransparency = 1
Glass.Size = UDim2.new(0, 31, 0, 31)
Glass.Position = UDim2.new(.95, 0, .5, 0)
Glass.AnchorPoint = Vector2.new(.95, .5)
local Template = Instance.new("Frame")
Template.Parent = nil
Template.Size = UDim2.new(.3, 0, .3, 0)
Template.BackgroundColor3 = Color3.fromRGB(30.000000469386578, 30.000000469386578, 36.00000011175871)
Template.BorderSizePixel = 0
Instance.new("UICorner", Template).CornerRadius = UDim.new(0, 8)
local Title = Instance.new("TextLabel", Template)
Title.Text = ''
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.Size = UDim2.new(1, 0, .2, 0)
Title.TextScaled = true
Title.Position = UDim2.new(0, 0, .15, 0)
Title.Name = 'Title'
Title.TextColor3 = Color3.fromRGB(240, 112, 48)
local T = Instance.new("UITextSizeConstraint", Title)
T.MaxTextSize = 18
T.MinTextSize = 14
local GameName = Instance.new("TextLabel", Template)
GameName.Text = ''
GameName.BackgroundTransparency = 1
GameName.Font = Enum.Font.GothamBold
GameName.Size = UDim2.new(1, 0, .15, 0)
GameName.TextScaled = true
GameName.Position = UDim2.new(0, 0, 0, 0)
GameName.Name = 'GameName'
GameName.TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
local T2 = Instance.new("UITextSizeConstraint", GameName)
T2.MaxTextSize = 18
T2.MinTextSize = 14
local Execute = Instance.new("TextButton", Template)
Execute.Text = 'Execute'
Execute.Font = Enum.Font.GothamBold
Execute.Size = UDim2.new(.5, 0, .2, 0)
Execute.TextScaled = true
Execute.Position = UDim2.new(0, 0, .8, 0)
Execute.Name = 'Execute'
Execute.TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
Execute.BackgroundColor3 = Color3.fromRGB(66, 66, 227)
Instance.new("UICorner", Execute).CornerRadius = UDim.new(0, 4)
local Add = Instance.new("TextButton", Template)
Add.Text = 'Save'
Add.Font = Enum.Font.GothamBold
Add.Size = UDim2.new(.5, 0, .2, 0)
Add.TextScaled = true
Add.Position = UDim2.new(.5, 0, .8, 0)
Add.Name = 'Add'
Add.TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
Add.BackgroundColor3 = Color3.fromRGB(66, 66, 227)
Instance.new("UICorner", Add).CornerRadius = UDim.new(0, 4)
local Owner = Instance.new("TextLabel", Template)
Owner.Text = ''
Owner.Font = Enum.Font.GothamBold
Owner.Size = UDim2.new(1, 0, .1, 0)
Owner.Position = UDim2.new(0, 0, .41, 0)
Owner.TextScaled = true
Owner.Name = 'Owner'
Owner.TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
Owner.BackgroundTransparency = 1
local T3 = Instance.new("UITextSizeConstraint", Owner)
T3.MaxTextSize = 18
T3.MinTextSize = 14
local Views = Instance.new("TextLabel", Template)
Views.Text = ''
Views.Font = Enum.Font.GothamBold
Views.Size = UDim2.new(1, 0, .1, 0)
Views.Position = UDim2.new(0, 0, .51, 0)
Views.TextScaled = true
Views.Name = 'Views'
Views.TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
Views.BackgroundTransparency = 1
local Likes = Instance.new("ImageLabel", Template)
Likes.Name = 'Likes'
Likes.Image = 'rbxassetid://17560366102'
Likes.Size = UDim2.new(.1, 0, .15, 0)
Likes.Position = UDim2.new(.025, 0, .35, 0)
Likes.BackgroundTransparency = 1
local LikeCount = Instance.new("TextLabel", Template)
LikeCount.Name = 'LikeCount'
LikeCount.Font = Enum.Font.GothamBold
LikeCount.TextSize = 13
LikeCount.Size = UDim2.new(.1, 0, .15, 0)
LikeCount.Position = UDim2.new(.025, 0, .5, 0)
LikeCount.BackgroundTransparency = 1
LikeCount.Text = ''
LikeCount.TextColor3 = Color3.fromRGB(212, 211, 212)
local Dislikes = Instance.new("ImageLabel", Template)
Dislikes.Name = 'Dislikes'
Dislikes.Image = Likes.Image
Dislikes.Rotation = 180 -- yes i did that instead of creating a dislike image, shut up.
Dislikes.Size = UDim2.new(.1, 0, .15, 0)
Dislikes.Position = UDim2.new(.9, 0, .35, 0)
Dislikes.BackgroundTransparency = 1
local DislikeCount = Instance.new("TextLabel", Template)
DislikeCount.Name = 'DislikeCount'
DislikeCount.Font = Enum.Font.GothamBold
DislikeCount.TextSize = 13
DislikeCount.Size = UDim2.new(.1, 0, .15, 0)
DislikeCount.Position = UDim2.new(.9, 0, .5, 0)
DislikeCount.BackgroundTransparency = 1
DislikeCount.Text = ''
DislikeCount.TextColor3 = Color3.fromRGB(212, 211, 212)
local IsVerified = Instance.new("ImageLabel", Template)
IsVerified.Name = 'IsVerified'
IsVerified.Image = 'rbxassetid://17560487520'
IsVerified.Size = UDim2.new(.085, 0, .15, 0)
IsVerified.Position = UDim2.new(.5, 0, .735, 0)
IsVerified.AnchorPoint = Vector2.new(.5, .735)
IsVerified.BackgroundTransparency = 1
Converted['_consolepage'].Name = 'consolepage'
local ConsoleFrame = Instance.new("ScrollingFrame", Converted['_consolepage'])
ConsoleFrame.Size = UDim2.new(1, 0, .9, 0)
ConsoleFrame.Position = UDim2.new(0, 0, .1, 0)
ConsoleFrame.ScrollBarThickness = 0
ConsoleFrame.CanvasSize = UDim2.new(0,0,0,0)
ConsoleFrame.AutomaticCanvasSize = Enum.AutomaticSize.XY
ConsoleFrame.Name = 'ConsoleFrame'
ConsoleFrame.BackgroundTransparency = 1
Instance.new("UIListLayout", ConsoleFrame)
Instance.new("UIPadding", ConsoleFrame).PaddingLeft = UDim.new(0, 4)
local Clear = Instance.new("ImageButton", Converted['_consolepage'])
Clear.Image = 'rbxassetid://17568108556'
Clear.Size = UDim2.new(0, 28, 0, 28)
Clear.Position = UDim2.new(0, 4, .05, 0)
Clear.AnchorPoint = Vector2.new(0, .05)
Clear.BackgroundTransparency = 1
Clear.BorderSizePixel = 0
Clear.MouseButton1Click:Connect(function()
 for _, v in pairs(ConsoleFrame:GetChildren()) do if v:IsA("TextLabel") then v:Destroy() end end
end)

local ConsoleSearch = Instance.new("TextBox", Converted['_consolepage'])
ConsoleSearch.Font = Enum.Font.Gotham
ConsoleSearch.PlaceholderText = 'Search'
ConsoleSearch.TextSize = 14
ConsoleSearch.Size = UDim2.new(.2, 0, .15, 0)
ConsoleSearch.TextColor3 = Color3.fromRGB(212.00000256299973, 211.00000262260437, 212.00000256299973)
ConsoleSearch.TextXAlignment = Enum.TextXAlignment.Left
ConsoleSearch.TextYAlignment = Enum.TextYAlignment.Center
ConsoleSearch.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
ConsoleSearch.BackgroundTransparency = 1
ConsoleSearch.Text = ''
ConsoleSearch.Position = UDim2.new(1, 0, 0, 0)
ConsoleSearch.AnchorPoint = Vector2.new(1, 0)

ConsoleSearch.FocusLost:Connect(function(aaaaa)
 if not aaaaa then return end
 local words = ConsoleSearch.Text
 if words:sub(1,1) == '!' then -- the NOT operator
  words = words:sub(2, #words)
  for _, v in pairs(ConsoleFrame:GetChildren()) do
    if v:IsA("TextLabel") then
     local text = v.Text:gsub('[INFO] ', ''):gsub('[WARN] ', ''):gsub("[ERROR] ", ''):lower()
     if text:find(words:lower()) then v.Visible = false else v.Visible = true end
    end
  end
 else
  for _, v in pairs(ConsoleFrame:GetChildren()) do
   if v:IsA("TextLabel") then
    local text = v.Text:gsub('[INFO] ', ''):gsub('[WARN] ', ''):gsub("[ERROR] ", ''):lower()
    if not text:find(words:lower()) then v.Visible = false else v.Visible = true end
   end
  end
 end
end)

local ConsoleGlass = Instance.new("ImageLabel", ConsoleSearch)
ConsoleGlass.Image = 'rbxassetid://17558788274'
ConsoleGlass.BackgroundTransparency = 1
ConsoleGlass.Size = UDim2.new(0, 31, 0, 31)
ConsoleGlass.Position = UDim2.new(.95, 0, .5, 0)
ConsoleGlass.AnchorPoint = Vector2.new(.95, .5)

Instance.new("UICorner", Clear).CornerRadius = UDim.new(0, 8)
local MSGTemplate = Instance.new("TextLabel", nil)
MSGTemplate.BackgroundTransparency = 1
MSGTemplate.Font = Enum.Font.GothamMedium
MSGTemplate.Text = ''
MSGTemplate.TextColor3 = Color3.fromRGB(30, 117, 199)
MSGTemplate.BorderSizePixel = 0
MSGTemplate.TextXAlignment = Enum.TextXAlignment.Left
MSGTemplate.TextScaled = true
MSGTemplate.Size = UDim2.new(1, 0, .15, 0)
local TextThingajkw = Instance.new("UITextSizeConstraint", MSGTemplate)
TextThingajkw.MinTextSize = 12
TextThingajkw.MaxTextSize = 14
local UrlBox = Instance.new("TextBox", Converted['_apipage'])
UrlBox.PlaceholderText = 'URL'
UrlBox.Font = Enum.Font.GothamBold
UrlBox.Text = ''
UrlBox.Size = UDim2.new(1, 0, .1, 0)
UrlBox.Position = UDim2.new(0, 4, 0, 0)
UrlBox.TextColor3 = Color3.fromRGB(212, 211, 212)
UrlBox.BackgroundTransparency = 1
UrlBox.TextXAlignment = Enum.TextXAlignment.Left
UrlBox.TextScaled = true
local __ = Instance.new("UITextSizeConstraint", UrlBox)
__.MinTextSize = 12
__.MaxTextSize = 16
local UrlBox2 = UrlBox:Clone()
UrlBox2.Parent = Converted['_apipage']
UrlBox2.Position = UDim2.new(0, 4, .1, 0)
UrlBox2.PlaceholderText = 'Method'
local Send = Instance.new('ImageButton', Converted['_apipage'])
Send.BackgroundTransparency = 1
Send.Size = UDim2.fromOffset(35, 35)
Send.Image = 'rbxassetid://17568889033'
Send.Position = UDim2.new(.5, 0, .6, 0)
local Url = ''
local Method = "GET"
local Methods = {
 'HEAD',
 'POST',
 'PUT',
 'OPTIONS',
 'GET',
 'PING',
 'DELETE'
}

UrlBox.FocusLost:Connect(function(___)
 if not ___ then return end
 Url = UrlBox.Text
end)
UrlBox2.FocusLost:Connect(function(___)
 if not ___ then return end
 Method = UrlBox2.Text
end)
Send.MouseButton1Click:Connect(function()
 for i, v in pairs(request({
  Url = Url,
  Method = table.find(Methods, Method:upper()) and Method:upper() or 'GET'
 })) do print(i, v) end
end)

getgenv().print = function(...)
 local args = {...}
 local str = ''
 for i, v in pairs(args) do
  str = str .. tostring(v)
  if i ~= #args then
   str = str .. ' '
  end
 end
 local abb = MSGTemplate:Clone()
 abb.Parent = ConsoleFrame
 abb.Text = '[INFO] ' .. str
 return oldprint(...)
end
getgenv().warn = function(...)
 local args = {...}
 local str = ''
 for i, v in pairs(args) do
  str = str .. tostring(v)
  if i ~= #args then
   str = str .. ' '
  end
 end
 local abb = MSGTemplate:Clone()
 abb.Parent = ConsoleFrame
 abb.Text = '[WARN] ' .. str
 abb.TextColor3 = Color3.fromRGB(241,128,45)
 return oldwarn(...)
end
getgenv().error = function(str, level)
 local abb = MSGTemplate:Clone()
 abb.Parent = ConsoleFrame
 abb.Text = '[ERROR] ' .. str
 abb.TextColor3 = Color3.fromHex('#FF003F')
 return olderror(str, level)
end

function num2thing(num)
 if num < 1000 then return tostring(num) end
 if num > 1000 and num < 1000 * 1000 then
  return tostring(math.round(num / 1000)) .. 'K'
 elseif num > 1000 and num > 1000 * 1000 then
  return tostring(math.round(num / 1000 / 1000)) .. 'M'
 end
end

function main(searchFor)
    local Url = 'https://scriptblox.com/api/script/fetch'
    local query = 'page=1&q=' .. crypt.url.encode(searchFor)
    Url = Url .. (query and '?' .. query or '')
    local result = game:HttpGet(Url)
    for _, v in pairs(game:GetService("HttpService"):JSONDecode(result).result.scripts) do
     task.spawn(function()
     local info = game:GetService("HttpService"):JSONDecode(game:HttpGet('https://scriptblox.com/api/script/'..v.slug)).script
     local title = v.title
     local views = v.views
     local self = {
      verified = v.verified,
      free = v.scriptType == 'free',
      gameid = v.game and v.game.name ~= 'Universal Script ð' and v.game.gameId or 'Universal',
      likes = info.likeCount,
      dislikes = info.dislikeCount,
      patched = v.isPatched,
      views = views,
      title = title,
      keyless = not v.key,
      code = info.script
     }
     local note = ("--[[\n SCRIPT DESCRIPTION: %s\n SCRIPT URL: %s\n]]\n"):format(info.features:gsub('\n', '\n '), 'https://scriptblox.com/script/' .. v.slug)
     local b = Template:Clone()
     b.Title.Text = self.title
     b.GameName.Text = v.game.name
     b.Add.MouseButton1Click:Connect(function()
      newTab(self.title, note .. self.code)
     end)
     b.Execute.MouseButton1Click:Connect(function()
      local s, e = loadstring('local s, e = pcall(function()\n' .. self.code .. '\nend) return s, e')()
      if not s then error(e) end
     end)
     b.Owner.Text = '@' .. v.owner.username
     b.Views.Text = num2thing(self.views) .. ' Views'
     b.DislikeCount.Text = tostring(self.dislikes)
     b.LikeCount.Text = tostring(self.likes)
     b.IsVerified.Visible = self.verified
     b.Parent = Scripts
     b.Visible = true
    end)
    end
end
SearchBar.FocusLost:Connect(function(a)
 if not a then return end
 for _, v in pairs(Scripts:GetChildren()) do if v:IsA("Frame") then v:Destroy() end end
 main(SearchBar.Text)
end)

local ripple = Instance.new("Frame")
ripple.BackgroundColor3 = Color3.fromRGB(194, 194, 194)
ripple.BackgroundTransparency = 1
ripple.Size = UDim2.new(0, 0, 0, 0)
ripple.Position = UDim2.new(0.5, 0, 0.5, 0)
ripple.AnchorPoint = Vector2.new(0.5, 0.5)
ripple.ZIndex = 10
ripple.BorderSizePixel = 0
ripple.Parent = Converted["_execute"]

local rippleRound = Instance.new("UICorner")
rippleRound.CornerRadius = UDim.new(0, 7)
rippleRound.Parent = ripple

local ripple2 = ripple:Clone()
ripple2.Parent = Converted["_clear"]

local ripple3 = ripple:Clone()
ripple3.Parent = NewTab

local UserInputService = game:GetService('UserInputService');

local frame = Converted["_main"]

local isDragging = false
local dragStartPos = nil
local frameStartPos = nil

local function handleInput(input)
    if isDragging then
        local delta = input.Position - dragStartPos
        frame.Position = UDim2.new(
            frameStartPos.X.Scale, 
            frameStartPos.X.Offset + delta.X, 
            frameStartPos.Y.Scale, 
            frameStartPos.Y.Offset + delta.Y
        )
    end
end

local function startDrag(input)
    isDragging = true
    dragStartPos = input.Position
    frameStartPos = frame.Position
    input.UserInputState = Enum.UserInputState.Begin
end

local function stopDrag(input)
    isDragging = false
    input.UserInputState = Enum.UserInputState.End
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        startDrag(input)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        handleInput(input)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        stopDrag(input)
    end
end)

function getTab(index)
 local clone = {}
 for i, v in pairs(Tabs) do table.insert(clone, v) end
 return clone[index]
end
function selectTab(tab)
 for i, v in pairs(Tabs) do v.Instance.BackgroundColor3 = Color3.fromRGB(38.0000015348196, 38.0000015348196, 48.000000938773155) end
 tab.Instance.BackgroundColor3 = Color3.fromRGB(54.0000015348196, 54.0000015348196, 58.000000938773155)
 Converted["_tab1box"].Text = tab.Code
end
function newTab(name, code, custom)
 tabsamount = tabsamount + 1
 name = name or ('Tab #' .. tostring(tabsamount))
 local c = Converted["_scriptonetab"]:Clone()
 c.Name = name
 c.Text = name
 c.Parent = Converted['_scriptonetab'].Parent
 Tabs[c] = {Code=code or '', Instance=c}
 c.Visible = true
 c.MouseButton1Click:Connect(function()
  if SelectedTab then
   Tabs[SelectedTab].Code = Converted['_tab1box'].Text
  end
  SelectedTab = c
  selectTab(Tabs[SelectedTab])
 end)
 return c
end
Converted['_clear'].MouseButton1Click:Connect(function()
 if tabsamount <= 1 then Tabs[SelectedTab].Code = '' Converted['_tab1box'].Text = '' return end
 if SelectedTab then Tabs[SelectedTab] = nil SelectedTab:Destroy() end
 local tbl2 = {}
 for a, b in pairs(Tabs) do table.insert(tbl2, b) end
 tabsamount = tabsamount -1
 Converted['_tab1box'].Text = tbl2[#Tabs+1].Code
 SelectedTab = tbl2[#Tabs+1].Instance
 selectTab(tbl2[#Tabs+1])
end)
Converted['_execute'].MouseButton1Click:Connect(function()
 if SelectedTab then
  Tabs[SelectedTab].Code = Converted['_tab1box'].Text
 end
 local s,e = loadstring('local s, e = pcall(function()\n' .. Tabs[SelectedTab].Code .. '\nend) return s, e')()
 if not s then error('Error while executing script: ' .. e) end
end)
NewTab.MouseButton1Click:Connect(function()
 local newtab1 = newTab()
 Tabs[SelectedTab].Code = Converted['_tab1box'].Text
 SelectedTab = newtab1
 Converted['_tab1box'].Text = Tabs[SelectedTab].Code
 selectTab(Tabs[SelectedTab])
end)
SelectedTab = newTab()
SelectedTab.BackgroundColor3 = Color3.fromRGB(54.0000015348196, 54.0000015348196, 58.000000938773155)
local function updateLineNumbers()
    local textBoxText = Converted['_tab1box'].Text
    local lines = textBoxText:split('\n')
    local lineCount = #lines

    local newLineNumbers = ''
    for i = 1, lineCount do
        newLineNumbers = newLineNumbers .. tostring(i) .. '\n'
    end
    Converted['_tab1lines'].Text = newLineNumbers

    Tabs[SelectedTab].Code = textBoxText
end

Converted['_tab1box'].Changed:Connect(function(property)
    if property == "Text" then
        updateLineNumbers()
    end
end)
main('')