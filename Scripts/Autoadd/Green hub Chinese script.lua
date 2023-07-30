local notificationGui = Instance.new("ScreenGui")
notificationGui.Enabled = true  
notificationGui.IgnoreGuiInset = true 

local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0, 200, 0, 50)--大小
notificationFrame.Position = UDim2.new(0.5, -100, 1, -50) --位置
notificationFrame.BackgroundColor3 = Color3.new(1, 1, 1)--背景颜色3
notificationFrame.Parent = notificationGui

local notificationText = Instance.new("TextLabel")
notificationText.Size = UDim2.new(1, 0, 1, 0)--大小
notificationText.Position = UDim2.new(0, 0, 0, 0)--位置
notificationText.BackgroundColor3 = Color3.new(1, 1, 1)--背景颜色3
notificationText.TextColor3 = Color3.new(0, 0, 0)--文本颜色3
notificationText.Text = "执行成功，绿hub"
notificationText.Font = Enum.Font.SourceSansBold
notificationText.FontSize = Enum.FontSize.Size24
notificationText.TextScaled = true
notificationText.Parent = notificationFrame

local function animateNotification()
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
    local tween = game:GetService("TweenService"):Create(notificationFrame, tweenInfo, {Position = UDim2.new(0.5, -100, 0.8, -50)})
    tween:Play()
    wait(3)
    tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
    tween = game:GetService("TweenService"):Create(notificationFrame, tweenInfo, {Position = UDim2.new(0.5, -100, 1, -50)})
    tween:Play()
    wait(1)--停止
    notificationGui:Destroy()
end

notificationGui.Parent = game.Players.LocalPlayer.PlayerGui
animateNotification()

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "绿",
    Text = "绿脚本正在加载",
    Duration = 5, 
})
print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
wait(1)
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("当前时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local playerGui = game.Players.LocalPlayer.PlayerGui

local fpsGui = Instance.new("ScreenGui")
fpsGui.Name = "FpsGui"
fpsGui.Parent = playerGui

local fpsLabel = Instance.new("TextLabel")
fpsLabel.Name = "FpsLabel"
fpsLabel.Size = UDim2.new(0, 100, 0, 20)
fpsLabel.Position = UDim2.new(0, 20, 0, 20)
fpsLabel.BackgroundColor3 = Color3.new(0, 0, 0)
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.Font = Enum.Font.SourceSans
fpsLabel.FontSize = Enum.FontSize.Size14
fpsLabel.Text = "FPS: "
fpsLabel.Parent = fpsGui

local lastUpdate = tick()

local fps = 0

local function updateFpsCounter()
    local deltaTime = tick() - lastUpdate
    lastUpdate = tick()
    
    fps = math.floor(1 / deltaTime)
    
    fpsLabel.Text = "帧数: " .. fps
end

game:GetService("RunService").RenderStepped:Connect(updateFpsCounter)

repeat task.wait() until game:IsLoaded()
local library = {}
local ToggleUI = false
library.currentTab = nil
library.flags = {}

local services = setmetatable({}, {
  __index = function(t, k)
    return game.GetService(game, k)
  end
})

local mouse = services.Players.LocalPlayer:GetMouse()

function Tween(obj, t, data)
	services.TweenService:Create(obj, TweenInfo.new(t[1], Enum.EasingStyle[t[2]], Enum.EasingDirection[t[3]]), data):Play()
	return true
end

function Ripple(obj)
	spawn(function()
		if obj.ClipsDescendants ~= true then
			obj.ClipsDescendants = true
		end
		local Ripple = Instance.new("ImageLabel")
		Ripple.Name = "Ripple"
		Ripple.Parent = obj
		Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Ripple.BackgroundTransparency = 1.000
		Ripple.ZIndex = 8
		Ripple.Image = "rbxassetid://2708891598"
		Ripple.ImageTransparency = 0.800
		Ripple.ScaleType = Enum.ScaleType.Fit
		Ripple.ImageColor3 = Color3.fromRGB(255, 255, 255)
		Ripple.Position = UDim2.new((mouse.X - Ripple.AbsolutePosition.X) / obj.AbsoluteSize.X, 0, (mouse.Y - Ripple.AbsolutePosition.Y) / obj.AbsoluteSize.Y, 0)
		Tween(Ripple, {.3, 'Linear', 'InOut'}, {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)})
		wait(0.15)
		Tween(Ripple, {.3, 'Linear', 'InOut'}, {ImageTransparency = 1})
		wait(.3)
		Ripple:Destroy()
	end)
end

local toggled = false

-- # Switch Tabs # --
local switchingTabs = false
function switchTab(new)
  if switchingTabs then return end
  local old = library.currentTab
  if old == nil then
    new[2].Visible = true
    library.currentTab = new
    services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
    services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()
    return
  end
  
  if old[1] == new[1] then return end
  switchingTabs = true
  library.currentTab = new

  services.TweenService:Create(old[1], TweenInfo.new(0.1), {ImageTransparency = 0.2}):Play()
  services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
  services.TweenService:Create(old[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0.2}):Play()
  services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()

  old[2].Visible = false
  new[2].Visible = true
  
  task.wait(0.1)

  switchingTabs = false
end

-- # Drag, Stolen from Kiriot or Wally # --
function drag(frame, hold)
	if not hold then
		hold = frame
	end
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	hold.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	services.UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

function library.new(library, name,theme)
    for _, v in next, services.CoreGui:GetChildren() do
        if v.Name == "frosty" then
          v:Destroy()
        end
      end
if theme == 'dark' then
    MainColor = Color3.fromRGB(25, 25, 25)
    Background = Color3.fromRGB(25, 25, 25)
    zyColor= Color3.fromRGB(25, 25, 25)
    beijingColor = Color3.fromRGB(25, 25, 25)
    else
    MainColor = Color3.fromRGB(25, 25, 25)
    Background = Color3.fromRGB(25, 25, 25)
    zyColor= Color3.fromRGB(30, 30, 30)
    beijingColor = Color3.fromRGB(255, 255, 255)
end
      local dogent = Instance.new("ScreenGui")
      local Main = Instance.new("Frame")
      local TabMain = Instance.new("Frame")
      local MainC = Instance.new("UICorner")
      local SB = Instance.new("Frame")
      local SBC = Instance.new("UICorner")
      local Side = Instance.new("Frame")
      local SideG = Instance.new("UIGradient")
      local TabBtns = Instance.new("ScrollingFrame")
      local TabBtnsL = Instance.new("UIListLayout")
      local ScriptTitle = Instance.new("TextLabel")
      local SBG = Instance.new("UIGradient") 
      local Open = Instance.new("TextButton")
      local UIG=Instance.new("UIGradient")
      local DropShadowHolder = Instance.new("Frame")
      local DropShadow = Instance.new("ImageLabel")
      local UICornerMain = Instance.new("UICorner")
      local UIGradient=Instance.new("UIGradient")
      local UIGradientTitle=Instance.new("UIGradient")
      
      if syn and syn.protect_gui then syn.protect_gui(dogent) end
    
      dogent.Name = "frosty"
      dogent.Parent = services.CoreGui
      
      function UiDestroy()
          dogent:Destroy()
      end
      
          function ToggleUILib()
            if not ToggleUI then
                dogent.Enabled = false
                ToggleUI = true
                else
                ToggleUI = false
                dogent.Enabled = true
            end
        end
      
      Main.Name = "Main"
      Main.Parent = dogent
      Main.AnchorPoint = Vector2.new(0.5, 0.5)
      Main.BackgroundColor3 = Background
      Main.BorderColor3 = MainColor
      Main.Position = UDim2.new(0.5, 0, 0.5, 0)
      Main.Size = UDim2.new(0, 572, 0, 353)
      Main.ZIndex = 1
      Main.Active = true
      Main.Draggable = true
      services.UserInputService.InputEnded:Connect(function(input)
      if input.KeyCode == Enum.KeyCode.LeftControl then
      if Main.Visible == true then
      Main.Visible = false else
      Main.Visible = true
      end
      end
      end)
      drag(Main)
      
      UICornerMain.Parent = Main
      UICornerMain.CornerRadius = UDim.new(0,3)
      
      DropShadowHolder.Name = "DropShadowHolder"
      DropShadowHolder.Parent = Main
      DropShadowHolder.BackgroundTransparency = 1.000
      DropShadowHolder.BorderSizePixel = 0
      DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
      DropShadowHolder.BorderColor3 = Color3.fromRGB(255,255,255)
      DropShadowHolder.ZIndex = 0

      DropShadow.Name = "DropShadow"
      DropShadow.Parent = DropShadowHolder
      DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
      DropShadow.BackgroundTransparency = 1.000
      DropShadow.BorderSizePixel = 0
      DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
      DropShadow.Size = UDim2.new(1, 43, 1, 43)
      DropShadow.ZIndex = 0
      DropShadow.Image = "rbxassetid://6015897843"
      DropShadow.ImageColor3 = Color3.fromRGB(255,255,255)
      DropShadow.ImageTransparency = 0.500
      DropShadow.ScaleType = Enum.ScaleType.Slice
      DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)


      UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))}
      UIGradient.Parent = DropShadow

      local TweenService = game:GetService("TweenService")
      local tweeninfo = TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
      local tween = TweenService:Create(UIGradient, tweeninfo, {Rotation = 360})
      tween:Play()

          function toggleui()
            toggled = not toggled
            spawn(function()
                if toggled then wait(0.3) end
            end)
            Tween(Main, {0.3, 'Sine', 'InOut'}, {
                Size = UDim2.new(0, 609, 0, (toggled and 505 or 0))
            })
        end
      
      TabMain.Name = "TabMain"
      TabMain.Parent = Main
      TabMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      TabMain.BackgroundTransparency = 1.000
      TabMain.Position = UDim2.new(0.217000037, 0, 0, 3)
      TabMain.Size = UDim2.new(0, 448, 0, 353)
      
      MainC.CornerRadius = UDim.new(0, 5.5)
      MainC.Name = "MainC"
      MainC.Parent = Frame
      
      SB.Name = "SB"
      SB.Parent = Main
      SB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      SB.BorderColor3 = MainColor
      SB.Size = UDim2.new(0, 8, 0, 353)
      
      SBC.CornerRadius = UDim.new(0, 6)
      SBC.Name = "SBC"
      SBC.Parent = SB
      
      Side.Name = "Side"
      Side.Parent = SB
      Side.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Side.BorderColor3 = Color3.fromRGB(255, 255, 255)
      Side.BorderSizePixel = 0
      Side.ClipsDescendants = true
      Side.Position = UDim2.new(1, 0, 0, 0)
      Side.Size = UDim2.new(0, 110, 0, 353)
      
      SideG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
      SideG.Rotation = 90
      SideG.Name = "SideG"
      SideG.Parent = Side
      
      TabBtns.Name = "TabBtns"
      TabBtns.Parent = Side
      TabBtns.Active = true
      TabBtns.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      TabBtns.BackgroundTransparency = 1.000
      TabBtns.BorderSizePixel = 0
      TabBtns.Position = UDim2.new(0, 0, 0.0973535776, 0)
      TabBtns.Size = UDim2.new(0, 110, 0, 318)
      TabBtns.CanvasSize = UDim2.new(0, 0, 1, 0)
      TabBtns.ScrollBarThickness = 0
      
      TabBtnsL.Name = "TabBtnsL"
      TabBtnsL.Parent = TabBtns
      TabBtnsL.SortOrder = Enum.SortOrder.LayoutOrder
      TabBtnsL.Padding = UDim.new(0, 12)
      
      ScriptTitle.Name = "ScriptTitle"
      ScriptTitle.Parent = Side
      ScriptTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ScriptTitle.BackgroundTransparency = 1.000
      ScriptTitle.Position = UDim2.new(0, 0, 0.00953488424, 0)
      ScriptTitle.Size = UDim2.new(0, 102, 0, 20)
      ScriptTitle.Font = Enum.Font.GothamSemibold
      ScriptTitle.Text = name
      ScriptTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
      ScriptTitle.TextSize = 14.000
      ScriptTitle.TextScaled = true
      ScriptTitle.TextXAlignment = Enum.TextXAlignment.Left
      
      UIGradientTitle.Parent = ScriptTitle
     
      local function NPLHKB_fake_script() 
        local script = Instance.new('LocalScript', ScriptTitle)
     
        local button = script.Parent
        local gradient = button.UIGradient
        local ts = game:GetService("TweenService")
        local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local offset = {Offset = Vector2.new(1, 0)}
        local create = ts:Create(gradient, ti, offset)
        local startingPos = Vector2.new(-1, 0)
        local list = {} 
        local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
        local counter = 0
        local status = "down" 
        gradient.Offset = startingPos
        local function rainbowColors()
            local sat, val = 255, 255 
            for i = 1, 10 do 
                local hue = i * 17 
                table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
            end
        end
        rainbowColors()
        gradient.Color = s({
            kpt(0, list[#list]),
            kpt(0.5, list[#list - 1]),
            kpt(1, list[#list - 2])
        })
        counter = #list
        local function animate()
            create:Play()
            create.Completed:Wait() 
            gradient.Offset = startingPos 
            gradient.Rotation = 180
            if counter == #list - 1 and status == "down" then
                gradient.Color = s({
                    kpt(0, gradient.Color.Keypoints[1].Value),
                    kpt(0.5, list[#list]), 
                    kpt(1, list[1]) 
                })
                counter = 1
                status = "up" 
            elseif counter == #list and status == "down" then 
                gradient.Color = s({
                    kpt(0, gradient.Color.Keypoints[1].Value),
                    kpt(0.5, list[1]),
                    kpt(1, list[2])
                })
                counter = 2
                status = "up"
            elseif counter <= #list - 2 and status == "down" then 
                gradient.Color = s({
                    kpt(0, gradient.Color.Keypoints[1].Value),
                    kpt(0.5, list[counter + 1]), 
                    kpt(1, list[counter + 2])
                })
                counter = counter + 2
                status = "up"
            end
            create:Play()
            create.Completed:Wait()
            gradient.Offset = startingPos
            gradient.Rotation = 0 
            if counter == #list - 1 and status == "up" then
                gradient.Color = s({ 
     
                    kpt(0, list[1]), 
                    kpt(0.5, list[#list]), 
                    kpt(1, gradient.Color.Keypoints[3].Value)
                })
                counter = 1
                status = "down"
            elseif counter == #list and status == "up" then
                gradient.Color = s({
                    kpt(0, list[2]),
                    kpt(0.5, list[1]), 
                    kpt(1, gradient.Color.Keypoints[3].Value)
                })
                counter = 2
                status = "down"
            elseif counter <= #list - 2 and status == "up" then
                gradient.Color = s({
                    kpt(0, list[counter + 2]), 
                    kpt(0.5, list[counter + 1]), 
                    kpt(1, gradient.Color.Keypoints[3].Value) 	
                })
                counter = counter + 2
                status = "down"
            end
            animate()
        end
        animate()
     
    end
    coroutine.wrap(NPLHKB_fake_script)()
      
      SBG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
      SBG.Rotation = 90
      SBG.Name = "SBG"
      SBG.Parent = SB
    
      TabBtnsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        TabBtns.CanvasSize = UDim2.new(0, 0, 0, TabBtnsL.AbsoluteContentSize.Y + 18)
      end)
      Open.Name = "Open"
      Open.Parent = dogent
      Open.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
      Open.Position = UDim2.new(0.00829315186, 0, 0.31107837, 0)
      Open.Size = UDim2.new(0, 61, 0, 32)
      Open.Font = Enum.Font.SourceSans
      Open.Text = "隐藏/打开"
      Open.TextColor3 = Color3.fromRGB(255, 255, 255)
      Open.TextSize = 14.000
      Open.Active = true
      Open.Draggable = true
      Open.MouseButton1Click:Connect(function()
      Main.Visible = not Main.Visible
      end)
      UIG.Parent = Open
      local window = {}
      function window.Tab(window, name, icon)
        local Tab = Instance.new("ScrollingFrame")
        local TabIco = Instance.new("ImageLabel")
        local TabText = Instance.new("TextLabel")
        local TabBtn = Instance.new("TextButton")
        local TabL = Instance.new("UIListLayout")
    
        Tab.Name = "Tab"
        Tab.Parent = TabMain
        Tab.Active = true
        Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Tab.BackgroundTransparency = 1.000
        Tab.Size = UDim2.new(1, 0, 1, 0)
        Tab.ScrollBarThickness = 2
        Tab.Visible = false
        
        TabIco.Name = "TabIco"
        TabIco.Parent = TabBtns
        TabIco.BackgroundTransparency = 1.000
        TabIco.BorderSizePixel = 0
        TabIco.Size = UDim2.new(0, 24, 0, 24)
        TabIco.Image = ("rbxassetid://%s"):format((icon or 4370341699))
        TabIco.ImageTransparency = 0.2
        
        TabText.Name = "TabText"
        TabText.Parent = TabIco
        TabText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabText.BackgroundTransparency = 1.000
        TabText.Position = UDim2.new(1.41666663, 0, 0, 0)
        TabText.Size = UDim2.new(0, 76, 0, 24)
        TabText.Font = Enum.Font.GothamSemibold
        TabText.Text = name
        TabText.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabText.TextSize = 14.000
        TabText.TextXAlignment = Enum.TextXAlignment.Left
        TabText.TextTransparency = 0.2
        
        TabBtn.Name = "TabBtn"
        TabBtn.Parent = TabIco
        TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabBtn.BackgroundTransparency = 1.000
        TabBtn.BorderSizePixel = 0
        TabBtn.Size = UDim2.new(0, 110, 0, 24)
        TabBtn.AutoButtonColor = false
        TabBtn.Font = Enum.Font.SourceSans
        TabBtn.Text = ""
        TabBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
        TabBtn.TextSize = 14.000
        
        TabL.Name = "TabL"
        TabL.Parent = Tab
        TabL.SortOrder = Enum.SortOrder.LayoutOrder
        TabL.Padding = UDim.new(0, 4)  
    
        TabBtn.MouseButton1Click:Connect(function()
            spawn(function()
                Ripple(TabBtn)
            end)
          switchTab({TabIco, Tab})
        end)
    
        if library.currentTab == nil then switchTab({TabIco, Tab}) end
    
        TabL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
          Tab.CanvasSize = UDim2.new(0, 0, 0, TabL.AbsoluteContentSize.Y + 8)
        end)
    
        local tab = {}
        function tab.section(tab, name, TabVal)
          local Section = Instance.new("Frame")
          local SectionC = Instance.new("UICorner")
          local SectionText = Instance.new("TextLabel")
          local SectionOpen = Instance.new("ImageLabel")
          local SectionOpened = Instance.new("ImageLabel")
          local SectionToggle = Instance.new("ImageButton")
          local Objs = Instance.new("Frame")
          local ObjsL = Instance.new("UIListLayout")
    
          Section.Name = "Section"
          Section.Parent = Tab
          Section.BackgroundColor3 = zyColor
          Section.BackgroundTransparency = 1.000
          Section.BorderSizePixel = 0
          Section.ClipsDescendants = true
          Section.Size = UDim2.new(0.981000006, 0, 0, 36)
          
          SectionC.CornerRadius = UDim.new(0, 6)
          SectionC.Name = "SectionC"
          SectionC.Parent = Section
          
          SectionText.Name = "SectionText"
          SectionText.Parent = Section
          SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          SectionText.BackgroundTransparency = 1.000
          SectionText.Position = UDim2.new(0.0887396261, 0, 0, 0)
          SectionText.Size = UDim2.new(0, 401, 0, 36)
          SectionText.Font = Enum.Font.GothamSemibold
          SectionText.Text = name
          SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
          SectionText.TextSize = 16.000
          SectionText.TextXAlignment = Enum.TextXAlignment.Left
          
          SectionOpen.Name = "SectionOpen"
          SectionOpen.Parent = SectionText
          SectionOpen.BackgroundTransparency = 1
          SectionOpen.BorderSizePixel = 0
          SectionOpen.Position = UDim2.new(0, -33, 0, 5)
          SectionOpen.Size = UDim2.new(0, 26, 0, 26)
          SectionOpen.Image = "http://www.roblox.com/asset/?id=6031302934"
          
          SectionOpened.Name = "SectionOpened"
          SectionOpened.Parent = SectionOpen
          SectionOpened.BackgroundTransparency = 1.000
          SectionOpened.BorderSizePixel = 0
          SectionOpened.Size = UDim2.new(0, 26, 0, 26)
          SectionOpened.Image = "http://www.roblox.com/asset/?id=6031302932"
          SectionOpened.ImageTransparency = 1.000
    
          SectionToggle.Name = "SectionToggle"
          SectionToggle.Parent = SectionOpen
          SectionToggle.BackgroundTransparency = 1
          SectionToggle.BorderSizePixel = 0
          SectionToggle.Size = UDim2.new(0, 26, 0, 26)
          
          Objs.Name = "Objs"
          Objs.Parent = Section
          Objs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          Objs.BackgroundTransparency = 1
          Objs.BorderSizePixel = 0
          Objs.Position = UDim2.new(0, 6, 0, 36)
          Objs.Size = UDim2.new(0.986347735, 0, 0, 0)
    
          ObjsL.Name = "ObjsL"
          ObjsL.Parent = Objs
          ObjsL.SortOrder = Enum.SortOrder.LayoutOrder
          ObjsL.Padding = UDim.new(0, 8) 
          
          local open = TabVal
          if TabVal ~= false then
            Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
            SectionOpened.ImageTransparency = (open and 0 or 1)
            SectionOpen.ImageTransparency = (open and 1 or 0)
          end
          
          SectionToggle.MouseButton1Click:Connect(function()
            open = not open
            Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
            SectionOpened.ImageTransparency = (open and 0 or 1)
            SectionOpen.ImageTransparency = (open and 1 or 0)
          end)
    
          ObjsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            if not open then return end
            Section.Size = UDim2.new(0.981000006, 0, 0, 36 + ObjsL.AbsoluteContentSize.Y + 8)
          end)
    
          local section = {}
          function section.Button(section, text, callback)
            local callback = callback or function() end
    
            local BtnModule = Instance.new("Frame")
            local Btn = Instance.new("TextButton")
            local BtnC = Instance.new("UICorner")    
            
            BtnModule.Name = "BtnModule"
            BtnModule.Parent = Objs
            BtnModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BtnModule.BackgroundTransparency = 1.000
            BtnModule.BorderSizePixel = 0
            BtnModule.Position = UDim2.new(0, 0, 0, 0)
            BtnModule.Size = UDim2.new(0, 428, 0, 38)
            
            Btn.Name = "Btn"
            Btn.Parent = BtnModule
            Btn.BackgroundColor3 = zyColor
            Btn.BorderSizePixel = 0
            Btn.Size = UDim2.new(0, 428, 0, 38)
            Btn.AutoButtonColor = false
            Btn.Font = Enum.Font.GothamSemibold
            Btn.Text = "   " .. text
            Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            Btn.TextSize = 16.000
            Btn.TextXAlignment = Enum.TextXAlignment.Left
            
            BtnC.CornerRadius = UDim.new(0, 6)
            BtnC.Name = "BtnC"
            BtnC.Parent = Btn
    
            Btn.MouseButton1Click:Connect(function()
                spawn(function()
                    Ripple(Btn)
                end)
                    spawn(callback)
                end)
            end
    
        function section:Label(text)
          local LabelModule = Instance.new("Frame")
          local TextLabel = Instance.new("TextLabel")
          local LabelC = Instance.new("UICorner")
          
          LabelModule.Name = "LabelModule"
          LabelModule.Parent = Objs
          LabelModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          LabelModule.BackgroundTransparency = 1.000
          LabelModule.BorderSizePixel = 0
          LabelModule.Position = UDim2.new(0, 0, NAN, 0)
          LabelModule.Size = UDim2.new(0, 428, 0, 19)
    
          TextLabel.Parent = LabelModule
          TextLabel.BackgroundColor3 = zyColor
          TextLabel.Size = UDim2.new(0, 428, 0, 22)
          TextLabel.Font = Enum.Font.GothamSemibold
          TextLabel.Text = text
          TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
          TextLabel.TextSize = 14.000
    
          LabelC.CornerRadius = UDim.new(0, 6)
          LabelC.Name = "LabelC"
          LabelC.Parent = TextLabel
          return TextLabel
        end
    
          function section.Toggle(section, text, flag, enabled, callback)
            local callback = callback or function() end
            local enabled = enabled or false
            assert(text, "No text provided")
            assert(flag, "No flag provided")
    
            library.flags[flag] = enabled
    
            local ToggleModule = Instance.new("Frame")
            local ToggleBtn = Instance.new("TextButton")
            local ToggleBtnC = Instance.new("UICorner")
            local ToggleDisable = Instance.new("Frame")
            local ToggleSwitch = Instance.new("Frame")
            local ToggleSwitchC = Instance.new("UICorner")
            local ToggleDisableC = Instance.new("UICorner")
            
            ToggleModule.Name = "ToggleModule"
            ToggleModule.Parent = Objs
            ToggleModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleModule.BackgroundTransparency = 1.000
            ToggleModule.BorderSizePixel = 0
            ToggleModule.Position = UDim2.new(0, 0, 0, 0)
            ToggleModule.Size = UDim2.new(0, 428, 0, 38)
            
            ToggleBtn.Name = "ToggleBtn"
            ToggleBtn.Parent = ToggleModule
            ToggleBtn.BackgroundColor3 = zyColor
            ToggleBtn.BorderSizePixel = 0
            ToggleBtn.Size = UDim2.new(0, 428, 0, 38)
            ToggleBtn.AutoButtonColor = false
            ToggleBtn.Font = Enum.Font.GothamSemibold
            ToggleBtn.Text = "   " .. text
            ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleBtn.TextSize = 16.000
            ToggleBtn.TextXAlignment = Enum.TextXAlignment.Left
            
            ToggleBtnC.CornerRadius = UDim.new(0, 6)
            ToggleBtnC.Name = "ToggleBtnC"
            ToggleBtnC.Parent = ToggleBtn
            
            ToggleDisable.Name = "ToggleDisable"
            ToggleDisable.Parent = ToggleBtn
            ToggleDisable.BackgroundColor3 = Background
            ToggleDisable.BorderSizePixel = 0
            ToggleDisable.Position = UDim2.new(0.901869178, 0, 0.208881587, 0)
            ToggleDisable.Size = UDim2.new(0, 36, 0, 22)
            
            ToggleSwitch.Name = "ToggleSwitch"
            ToggleSwitch.Parent = ToggleDisable
            ToggleSwitch.BackgroundColor3 = beijingColor
            ToggleSwitch.Size = UDim2.new(0, 24, 0, 22)
            
            ToggleSwitchC.CornerRadius = UDim.new(0, 6)
            ToggleSwitchC.Name = "ToggleSwitchC"
            ToggleSwitchC.Parent = ToggleSwitch
            
            ToggleDisableC.CornerRadius = UDim.new(0, 6)
            ToggleDisableC.Name = "ToggleDisableC"
            ToggleDisableC.Parent = ToggleDisable        
    
            local funcs = {
              SetState = function(self, state)
                if state == nil then state = not library.flags[flag] end
                if library.flags[flag] == state then return end
                services.TweenService:Create(ToggleSwitch, TweenInfo.new(0.2), {Position = UDim2.new(0, (state and ToggleSwitch.Size.X.Offset / 2 or 0), 0, 0), BackgroundColor3 = (state and Color3.fromRGB(255, 255, 255) or beijingColor)}):Play()
                library.flags[flag] = state
                callback(state)
              end,
              Module = ToggleModule
            }
            
            if enabled ~= false then
                funcs:SetState(flag,true)
            end
    
            ToggleBtn.MouseButton1Click:Connect(function()
              funcs:SetState()
            end)
            return funcs
          end
    
          function section.Keybind(section, text, default, callback)
            local callback = callback or function() end
            assert(text, "No text provided")
            assert(default, "No default key provided")
    
            local default = (typeof(default) == "string" and Enum.KeyCode[default] or default)
            local banned = {
              Return = true;
              Space = true;
              Tab = true;
              Backquote = true;
              CapsLock = true;
              Escape = true;
              Unknown = true;
            }
            local shortNames = {
              RightControl = 'Right Ctrl',
              LeftControl = 'Left Ctrl',
              LeftShift = 'Left Shift',
              RightShift = 'Right Shift',
              Semicolon = ";",
              Quote = '"',
              LeftBracket = '[',
              RightBracket = ']',
              Equals = '=',
              Minus = '-',
              RightAlt = 'Right Alt',
              LeftAlt = 'Left Alt'
            }
    
            local bindKey = default
            local keyTxt = (default and (shortNames[default.Name] or default.Name) or "None")
    
            local KeybindModule = Instance.new("Frame")
            local KeybindBtn = Instance.new("TextButton")
            local KeybindBtnC = Instance.new("UICorner")
            local KeybindValue = Instance.new("TextButton")
            local KeybindValueC = Instance.new("UICorner")
            local KeybindL = Instance.new("UIListLayout")
            local UIPadding = Instance.new("UIPadding")
    
            KeybindModule.Name = "KeybindModule"
            KeybindModule.Parent = Objs
            KeybindModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            KeybindModule.BackgroundTransparency = 1.000
            KeybindModule.BorderSizePixel = 0
            KeybindModule.Position = UDim2.new(0, 0, 0, 0)
            KeybindModule.Size = UDim2.new(0, 428, 0, 38)
            
            KeybindBtn.Name = "KeybindBtn"
            KeybindBtn.Parent = KeybindModule
            KeybindBtn.BackgroundColor3 = zyColor
            KeybindBtn.BorderSizePixel = 0
            KeybindBtn.Size = UDim2.new(0, 428, 0, 38)
            KeybindBtn.AutoButtonColor = false
            KeybindBtn.Font = Enum.Font.GothamSemibold
            KeybindBtn.Text = "   " .. text
            KeybindBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            KeybindBtn.TextSize = 16.000
            KeybindBtn.TextXAlignment = Enum.TextXAlignment.Left
            
            KeybindBtnC.CornerRadius = UDim.new(0, 6)
            KeybindBtnC.Name = "KeybindBtnC"
            KeybindBtnC.Parent = KeybindBtn
            
            KeybindValue.Name = "KeybindValue"
            KeybindValue.Parent = KeybindBtn
            KeybindValue.BackgroundColor3 = Background
            KeybindValue.BorderSizePixel = 0
            KeybindValue.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
            KeybindValue.Size = UDim2.new(0, 100, 0, 28)
            KeybindValue.AutoButtonColor = false
            KeybindValue.Font = Enum.Font.Gotham
            KeybindValue.Text = keyTxt
            KeybindValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            KeybindValue.TextSize = 14.000
            
            KeybindValueC.CornerRadius = UDim.new(0, 6)
            KeybindValueC.Name = "KeybindValueC"
            KeybindValueC.Parent = KeybindValue
            
            KeybindL.Name = "KeybindL"
            KeybindL.Parent = KeybindBtn
            KeybindL.HorizontalAlignment = Enum.HorizontalAlignment.Right
            KeybindL.SortOrder = Enum.SortOrder.LayoutOrder
            KeybindL.VerticalAlignment = Enum.VerticalAlignment.Center
            
            UIPadding.Parent = KeybindBtn
            UIPadding.PaddingRight = UDim.new(0, 6)   
            
            services.UserInputService.InputBegan:Connect(function(inp, gpe)
              if gpe then return end
              if inp.UserInputType ~= Enum.UserInputType.Keyboard then return end
              if inp.KeyCode ~= bindKey then return end
              callback(bindKey.Name)
            end)
            
            KeybindValue.MouseButton1Click:Connect(function()
              KeybindValue.Text = "..."
              wait()
              local key, uwu = services.UserInputService.InputEnded:Wait()
              local keyName = tostring(key.KeyCode.Name)
              if key.UserInputType ~= Enum.UserInputType.Keyboard then
                KeybindValue.Text = keyTxt
                return
              end
              if banned[keyName] then
                KeybindValue.Text = keyTxt
                return
              end
              wait()
              bindKey = Enum.KeyCode[keyName]
              KeybindValue.Text = shortNames[keyName] or keyName
            end)
    
            KeybindValue:GetPropertyChangedSignal("TextBounds"):Connect(function()
              KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
            end)
            KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
          end
    
          function section.Textbox(section, text, flag, default, callback)
            local callback = callback or function() end
            assert(text, "No text provided")
            assert(flag, "No flag provided")
            assert(default, "No default text provided")
    
            library.flags[flag] = default
    
            local TextboxModule = Instance.new("Frame")
            local TextboxBack = Instance.new("TextButton")
            local TextboxBackC = Instance.new("UICorner")
            local BoxBG = Instance.new("TextButton")
            local BoxBGC = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")
            local TextboxBackL = Instance.new("UIListLayout")
            local TextboxBackP = Instance.new("UIPadding")  
    
            TextboxModule.Name = "TextboxModule"
            TextboxModule.Parent = Objs
            TextboxModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextboxModule.BackgroundTransparency = 1.000
            TextboxModule.BorderSizePixel = 0
            TextboxModule.Position = UDim2.new(0, 0, 0, 0)
            TextboxModule.Size = UDim2.new(0, 428, 0, 38)
            
            TextboxBack.Name = "TextboxBack"
            TextboxBack.Parent = TextboxModule
            TextboxBack.BackgroundColor3 = zyColor
            TextboxBack.BorderSizePixel = 0
            TextboxBack.Size = UDim2.new(0, 428, 0, 38)
            TextboxBack.AutoButtonColor = false
            TextboxBack.Font = Enum.Font.GothamSemibold
            TextboxBack.Text = "   " .. text
            TextboxBack.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextboxBack.TextSize = 16.000
            TextboxBack.TextXAlignment = Enum.TextXAlignment.Left
            
            TextboxBackC.CornerRadius = UDim.new(0, 6)
            TextboxBackC.Name = "TextboxBackC"
            TextboxBackC.Parent = TextboxBack
            
            BoxBG.Name = "BoxBG"
            BoxBG.Parent = TextboxBack
            BoxBG.BackgroundColor3 = Background
            BoxBG.BorderSizePixel = 0
            BoxBG.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
            BoxBG.Size = UDim2.new(0, 100, 0, 28)
            BoxBG.AutoButtonColor = false
            BoxBG.Font = Enum.Font.Gotham
            BoxBG.Text = ""
            BoxBG.TextColor3 = Color3.fromRGB(255, 255, 255)
            BoxBG.TextSize = 14.000
            
            BoxBGC.CornerRadius = UDim.new(0, 6)
            BoxBGC.Name = "BoxBGC"
            BoxBGC.Parent = BoxBG
            
            TextBox.Parent = BoxBG
            TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.BackgroundTransparency = 1.000
            TextBox.BorderSizePixel = 0
            TextBox.Size = UDim2.new(1, 0, 1, 0)
            TextBox.Font = Enum.Font.Gotham
            TextBox.Text = default
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextSize = 14.000
            
            TextboxBackL.Name = "TextboxBackL"
            TextboxBackL.Parent = TextboxBack
            TextboxBackL.HorizontalAlignment = Enum.HorizontalAlignment.Right
            TextboxBackL.SortOrder = Enum.SortOrder.LayoutOrder
            TextboxBackL.VerticalAlignment = Enum.VerticalAlignment.Center
            
            TextboxBackP.Name = "TextboxBackP"
            TextboxBackP.Parent = TextboxBack
            TextboxBackP.PaddingRight = UDim.new(0, 6)
    
            TextBox.FocusLost:Connect(function()
              if TextBox.Text == "" then
                TextBox.Text = default
              end
              library.flags[flag] = TextBox.Text
              callback(TextBox.Text)
            end)
    
            TextBox:GetPropertyChangedSignal("TextBounds"):Connect(function()
              BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
            end)
            BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
          end
    
          function section.Slider(section, text, flag, default, min, max, precise, callback)
            local callback = callback or function() end
            local min = min or 1
            local max = max or 10
            local default = default or min
            local precise = precise or false
    
            library.flags[flag] = default
    
            assert(text, "No text provided")
            assert(flag, "No flag provided")
            assert(default, "No default value provided")
            
            local SliderModule = Instance.new("Frame")
            local SliderBack = Instance.new("TextButton")
            local SliderBackC = Instance.new("UICorner")
            local SliderBar = Instance.new("Frame")
            local SliderBarC = Instance.new("UICorner")
            local SliderPart = Instance.new("Frame")
            local SliderPartC = Instance.new("UICorner")
            local SliderValBG = Instance.new("TextButton")
            local SliderValBGC = Instance.new("UICorner")
            local SliderValue = Instance.new("TextBox")
            local MinSlider = Instance.new("TextButton")
            local AddSlider = Instance.new("TextButton")   
            
            SliderModule.Name = "SliderModule"
            SliderModule.Parent = Objs
            SliderModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderModule.BackgroundTransparency = 1.000
            SliderModule.BorderSizePixel = 0
            SliderModule.Position = UDim2.new(0, 0, 0, 0)
            SliderModule.Size = UDim2.new(0, 428, 0, 38)
            
            SliderBack.Name = "SliderBack"
            SliderBack.Parent = SliderModule
            SliderBack.BackgroundColor3 = zyColor
            SliderBack.BorderSizePixel = 0
            SliderBack.Size = UDim2.new(0, 428, 0, 38)
            SliderBack.AutoButtonColor = false
            SliderBack.Font = Enum.Font.GothamSemibold
            SliderBack.Text = "   " .. text
            SliderBack.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderBack.TextSize = 16.000
            SliderBack.TextXAlignment = Enum.TextXAlignment.Left
            
            SliderBackC.CornerRadius = UDim.new(0, 6)
            SliderBackC.Name = "SliderBackC"
            SliderBackC.Parent = SliderBack
            
            SliderBar.Name = "SliderBar"
            SliderBar.Parent = SliderBack
            SliderBar.AnchorPoint = Vector2.new(0, 0.5)
            SliderBar.BackgroundColor3 = Background
            SliderBar.BorderSizePixel = 0
            SliderBar.Position = UDim2.new(0.369000018, 40, 0.5, 0)
            SliderBar.Size = UDim2.new(0, 140, 0, 12)
            
            SliderBarC.CornerRadius = UDim.new(0, 4)
            SliderBarC.Name = "SliderBarC"
            SliderBarC.Parent = SliderBar
            
            SliderPart.Name = "SliderPart"
            SliderPart.Parent = SliderBar
            SliderPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderPart.BorderSizePixel = 0
            SliderPart.Size = UDim2.new(0, 54, 0, 13)
            
            SliderPartC.CornerRadius = UDim.new(0, 4)
            SliderPartC.Name = "SliderPartC"
            SliderPartC.Parent = SliderPart
            
            SliderValBG.Name = "SliderValBG"
            SliderValBG.Parent = SliderBack
            SliderValBG.BackgroundColor3 = Background
            SliderValBG.BorderSizePixel = 0
            SliderValBG.Position = UDim2.new(0.883177578, 0, 0.131578952, 0)
            SliderValBG.Size = UDim2.new(0, 44, 0, 28)
            SliderValBG.AutoButtonColor = false
            SliderValBG.Font = Enum.Font.Gotham
            SliderValBG.Text = ""
            SliderValBG.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderValBG.TextSize = 14.000
            
            SliderValBGC.CornerRadius = UDim.new(0, 6)
            SliderValBGC.Name = "SliderValBGC"
            SliderValBGC.Parent = SliderValBG
            
            SliderValue.Name = "SliderValue"
            SliderValue.Parent = SliderValBG
            SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderValue.BackgroundTransparency = 1.000
            SliderValue.BorderSizePixel = 0
            SliderValue.Size = UDim2.new(1, 0, 1, 0)
            SliderValue.Font = Enum.Font.Gotham
            SliderValue.Text = "1000"
            SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderValue.TextSize = 14.000
            
            MinSlider.Name = "MinSlider"
            MinSlider.Parent = SliderModule
            MinSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MinSlider.BackgroundTransparency = 1.000
            MinSlider.BorderSizePixel = 0
            MinSlider.Position = UDim2.new(0.296728969, 40, 0.236842096, 0)
            MinSlider.Size = UDim2.new(0, 20, 0, 20)
            MinSlider.Font = Enum.Font.Gotham
            MinSlider.Text = "-"
            MinSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
            MinSlider.TextSize = 24.000
            MinSlider.TextWrapped = true
            
            AddSlider.Name = "AddSlider"
            AddSlider.Parent = SliderModule
            AddSlider.AnchorPoint = Vector2.new(0, 0.5)
            AddSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            AddSlider.BackgroundTransparency = 1.000
            AddSlider.BorderSizePixel = 0
            AddSlider.Position = UDim2.new(0.810906529, 0, 0.5, 0)
            AddSlider.Size = UDim2.new(0, 20, 0, 20)
            AddSlider.Font = Enum.Font.Gotham
            AddSlider.Text = "+"
            AddSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
            AddSlider.TextSize = 24.000
            AddSlider.TextWrapped = true
            
            local funcs = {
              SetValue = function(self, value)
                local percent = (mouse.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X
                if value then
                  percent = (value - min) / (max - min)
                end
                percent = math.clamp(percent, 0, 1)
                if precise then
                  value = value or tonumber(string.format("%.1f", tostring(min + (max - min) * percent)))
                else
                  value = value or math.floor(min + (max - min) * percent)
                end
                library.flags[flag] = tonumber(value)
                SliderValue.Text = tostring(value)
                SliderPart.Size = UDim2.new(percent, 0, 1, 0)
                callback(tonumber(value))
              end
            }
    
            MinSlider.MouseButton1Click:Connect(function()
              local currentValue = library.flags[flag]
              currentValue = math.clamp(currentValue - 1, min, max)
              funcs:SetValue(currentValue)
            end)
    
            AddSlider.MouseButton1Click:Connect(function()
              local currentValue = library.flags[flag]
              currentValue = math.clamp(currentValue + 1, min, max)
              funcs:SetValue(currentValue)
            end)
            
            funcs:SetValue(default)
    
            local dragging, boxFocused, allowed = false, false, {
              [""] = true,
              ["-"] = true
            }
    
            SliderBar.InputBegan:Connect(function(input)
              if input.UserInputType == Enum.UserInputType.MouseButton1 then
                funcs:SetValue()
                dragging = true
              end
            end)
    
            services.UserInputService.InputEnded:Connect(function(input)
              if dragging and input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = false
              end
            end)
    
            services.UserInputService.InputChanged:Connect(function(input)
              if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                funcs:SetValue()
              end
            end)

            SliderBar.InputBegan:Connect(function(input)
              if input.UserInputType == Enum.UserInputType.Touch then
                funcs:SetValue()
                dragging = true
              end
            end)
    
            services.UserInputService.InputEnded:Connect(function(input)
              if dragging and input.UserInputType == Enum.UserInputType.Touch then
                dragging = false
              end
            end)
    
            services.UserInputService.InputChanged:Connect(function(input)
              if dragging and input.UserInputType == Enum.UserInputType.Touch then
                funcs:SetValue()
              end
            end)
    
            SliderValue.Focused:Connect(function()
              boxFocused = true
            end)
    
            SliderValue.FocusLost:Connect(function()
              boxFocused = false
              if SliderValue.Text == "" then
                funcs:SetValue(default)
              end
            end)
    
            SliderValue:GetPropertyChangedSignal("Text"):Connect(function()
              if not boxFocused then return end
              SliderValue.Text = SliderValue.Text:gsub("%D+", "")
              
              local text = SliderValue.Text
              
              if not tonumber(text) then
                SliderValue.Text = SliderValue.Text:gsub('%D+', '')
              elseif not allowed[text] then
                if tonumber(text) > max then
                  text = max
                  SliderValue.Text = tostring(max)
                end
                funcs:SetValue(tonumber(text))
              end
            end)
    
            return funcs
          end
          function section.Dropdown(section, text, flag, options, callback)
            local callback = callback or function() end
            local options = options or {}
            assert(text, "No text provided")
            assert(flag, "No flag provided")
    
            library.flags[flag] = nil
            
            local DropdownModule = Instance.new("Frame")
            local DropdownTop = Instance.new("TextButton")
            local DropdownTopC = Instance.new("UICorner")
            local DropdownOpen = Instance.new("TextButton")
            local DropdownText = Instance.new("TextBox")
            local DropdownModuleL = Instance.new("UIListLayout")
            local Option = Instance.new("TextButton")
            local OptionC = Instance.new("UICorner")        
    
            DropdownModule.Name = "DropdownModule"
            DropdownModule.Parent = Objs
            DropdownModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownModule.BackgroundTransparency = 1.000
            DropdownModule.BorderSizePixel = 0
            DropdownModule.ClipsDescendants = true
            DropdownModule.Position = UDim2.new(0, 0, 0, 0)
            DropdownModule.Size = UDim2.new(0, 428, 0, 38)
            
            DropdownTop.Name = "DropdownTop"
            DropdownTop.Parent = DropdownModule
            DropdownTop.BackgroundColor3 = zyColor
            DropdownTop.BorderSizePixel = 0
            DropdownTop.Size = UDim2.new(0, 428, 0, 38)
            DropdownTop.AutoButtonColor = false
            DropdownTop.Font = Enum.Font.GothamSemibold
            DropdownTop.Text = ""
            DropdownTop.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTop.TextSize = 16.000
            DropdownTop.TextXAlignment = Enum.TextXAlignment.Left
            
            DropdownTopC.CornerRadius = UDim.new(0, 6)
            DropdownTopC.Name = "DropdownTopC"
            DropdownTopC.Parent = DropdownTop
            
            DropdownOpen.Name = "DropdownOpen"
            DropdownOpen.Parent = DropdownTop
            DropdownOpen.AnchorPoint = Vector2.new(0, 0.5)
            DropdownOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownOpen.BackgroundTransparency = 1.000
            DropdownOpen.BorderSizePixel = 0
            DropdownOpen.Position = UDim2.new(0.918383181, 0, 0.5, 0)
            DropdownOpen.Size = UDim2.new(0, 20, 0, 20)
            DropdownOpen.Font = Enum.Font.Gotham
            DropdownOpen.Text = "+"
            DropdownOpen.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownOpen.TextSize = 24.000
            DropdownOpen.TextWrapped = true
            
            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropdownTop
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.BorderSizePixel = 0
            DropdownText.Position = UDim2.new(0.0373831764, 0, 0, 0)
            DropdownText.Size = UDim2.new(0, 184, 0, 38)
            DropdownText.Font = Enum.Font.GothamSemibold
            DropdownText.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.PlaceholderText = text
            DropdownText.Text = ""
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextSize = 16.000
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left
            
            DropdownModuleL.Name = "DropdownModuleL"
            DropdownModuleL.Parent = DropdownModule
            DropdownModuleL.SortOrder = Enum.SortOrder.LayoutOrder
            DropdownModuleL.Padding = UDim.new(0, 4)
    
            local setAllVisible = function()
              local options = DropdownModule:GetChildren() 
              for i=1, #options do
                local option = options[i]
                if option:IsA("TextButton") and option.Name:match("Option_") then
                  option.Visible = true
                end
              end
            end
    
            local searchDropdown = function(text)
              local options = DropdownModule:GetChildren()
              for i=1, #options do
                local option = options[i]
                if text == "" then
                  setAllVisible()
                else
                  if option:IsA("TextButton") and option.Name:match("Option_") then
                    if option.Text:lower():match(text:lower()) then
                      option.Visible = true
                    else
                      option.Visible = false
                    end
                  end
                end
              end
            end
    
            local open = false
            local ToggleDropVis = function()
              open = not open
              if open then setAllVisible() end
              DropdownOpen.Text = (open and "-" or "+")
              DropdownModule.Size = UDim2.new(0, 428, 0, (open and DropdownModuleL.AbsoluteContentSize.Y + 4 or 38))
            end
    
            DropdownOpen.MouseButton1Click:Connect(ToggleDropVis)
            DropdownText.Focused:Connect(function()
              if open then return end
              ToggleDropVis()
            end)
    
            DropdownText:GetPropertyChangedSignal("Text"):Connect(function()
              if not open then return end
              searchDropdown(DropdownText.Text)
            end)
    
            DropdownModuleL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
              if not open then return end
              DropdownModule.Size = UDim2.new(0, 428, 0, (DropdownModuleL.AbsoluteContentSize.Y + 4))
            end)
            
            local funcs = {}
            funcs.AddOption = function(self, option)
              local Option = Instance.new("TextButton")
              local OptionC = Instance.new("UICorner")     
    
              Option.Name = "Option_" .. option
              Option.Parent = DropdownModule
              Option.BackgroundColor3 = zyColor
              Option.BorderSizePixel = 0
              Option.Position = UDim2.new(0, 0, 0.328125, 0)
              Option.Size = UDim2.new(0, 428, 0, 26)
              Option.AutoButtonColor = false
              Option.Font = Enum.Font.Gotham
              Option.Text = option
              Option.TextColor3 = Color3.fromRGB(255, 255, 255)
              Option.TextSize = 14.000
              
              OptionC.CornerRadius = UDim.new(0, 6)
              OptionC.Name = "OptionC"
              OptionC.Parent = Option
    
              Option.MouseButton1Click:Connect(function()
                ToggleDropVis()
                callback(Option.Text)
                DropdownText.Text = Option.Text
                library.flags[flag] = Option.Text
              end)
            end
    
            funcs.RemoveOption = function(self, option)
              local option = DropdownModule:FindFirstChild("Option_" .. option)
              if option then option:Destroy() end
            end
    
            funcs.SetOptions = function(self, options)
              for _, v in next, DropdownModule:GetChildren() do
                if v.Name:match("Option_") then
                  v:Destroy()
                end
              end
              for _,v in next, options do
                funcs:AddOption(v)
              end
            end
    
            funcs:SetOptions(options)
    
            return funcs
          end
          return section
        end
        return tab
      end
      return window
    end
    
    
local window = library:new("绿Hub")

local creds = window:Tab("信息",'6035145364')

local bin = creds:section("信息",true)

    bin:Label("你的用户名："..game.Players.LocalPlayer.Character.Name)
    bin:Label("你的注入器:"..identifyexecutor())

local credits = creds:section("UI设置",true)

    credits:Button("摧毁UI",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)

    credits:Toggle("彩虹UI", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    
local creds = window:Tab("通用",'6035145364')

local tool = creds:section("通用",true)

tool:Button("工具",function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)

tool:Button("人物无敌",function()
        loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
end)

tool:Button("最强透视",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY"))()
end)
    
tool:Button("位置获取",function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/NortherScripts/8d954211b286d051c416cc5f88b3dc5f/raw/"))()
end)

tool:Button("控制",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)

tool:Button("按键（任意选择按键",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/KeyBinds/main/KeyBinds-Source.lua"))()
end)

local creds = window:Tab("有话说",'6035145364')

local tool = creds:section("倒卖死木琴",true)

tool:Button("被开源也会更，绿脚本免费",function()
       loadstring(game:HttpGet("https://pastebin.com/raw/JEdkPtA1"))()
end)

tool:Button("此脚本是免费的",function()
       loadstring(game:HttpGet("https://pastebin.com/raw/JEdkPtA1"))()
end)

local creds = window:Tab("伐木脚本",'6035145364')

local tool = creds:section("自己翻译",true)

tool:Button("LuaWare",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
end)

tool:Button("青脚本",function()
        loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
end)

tool:Button("Dark伐木",function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/darkxwin/darkxsourcethinkyoutousedarkx/main/darkx")()
end)

tool:Button("伐木大亨白脚本",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A822.lua", true))()
end)

tool:Button("bark电脑用",function()
        loadstring(game:HttpGetAsync("https://cdn.applebee1558.com/bark/bark.lua"))("2022 more like twenty-twenty-too")
end)

tool:Button("绿脚本伐木",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hjjjjjjjiiugghhhhhhggyi/Green-script-YYDS-nq/main/%E7%BB%BF%E8%84%9A%E6%9C%AC%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A82.lua"))()
end)

local creds = window:Tab("灭霸模拟器",'6035145364')

local tool = creds:section("功能",true)

tool:Button("出生/复活的地方",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,153,-20)
end)

tool:Button("刷碎片/铸造的地方",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,115,-695)
end)

tool:Button("商店/升级的地方",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28,1061,1590)
end)

tool:Button("时间宝石的位置",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(444.5,117,443.5)
end)

tool:Button("空间宝石的位置",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-412,73,-444)
end)

tool:Button("现实宝石位置",function()
       loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
end)

tool:Button("能量宝石怪位置",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(433,55,-326)
end)

tool:Button("快速自杀",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999,-4985,99999)
end)

local creds = window:Tab("通用",'6035145364')

local tool = creds:section("功能",true)

tool:Button("飞行",function()
       loadstring(game:HttpGet("https://pastebin.com/raw/JEdkPtA1"))()
end)

tool:Button("飞车",function()
       loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
end)

tool:Button("doors",function()
       loadstring(game:HttpGet('https://pastebin.com/raw/R8QMbhzv'))()
end)

tool:Button("自然灾害",function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/hussain1323232234/My-Scripts/main/Natural Disaster'))()
end)

tool:Button("LuaWare",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
end)

local creds = window:Tab("监狱人生",'6035145364')

local tool = creds:section("功能",true)

tool:Button("变车模型",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/bianche"))()
end)

tool:Button("坤坤剑",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/jianyu1"))()
end)

tool:Toggle("杀死全部",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/jianyu2"))()
end)

tool:Button("无敌模式",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/jianyu4"))()
end)

tool:Button("手拿电锯",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/jianyu3", true))()
end)

local tool = creds:section("传送",true)

tool:Button("传送到警卫室",function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
end)

tool:Button("传送到监狱室内",function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
end)

tool:Button("传送罪犯复活点",function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
end)

tool:Button("传送到监狱室外",function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
end)

local creds = window:Tab("速度传奇",'6035145364')

local tool = creds:section("功能",true)

tool:Button("开启卡宠",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/jisu1"))()		
end)

tool:Button("自动重生和刷等级",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/jusu2"))()
end)

local tool = creds:section("传送",true)

tool:Button("出生岛",function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)
end)

tool:Button("白雪城",function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)
end)

tool:Button("熔岩城",function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)
end)

tool:Button("传奇公路",function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)
end)

local creds = window:Tab("造船寻宝",'6035145364')

local tool = creds:section("功能",true)

tool:Toggle("自动刷金条",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/zaochuan1"))()	
end)

local creds = window:Tab("服务器脚本",'6035145364')

local tool = creds:section("功能",true)

tool:Button("bf",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Mobile-Loader"))()
end)

tool:Button("巴掌",function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
end)

tool:Button("彩虹朋友",function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
end)

tool:Button("极速传奇",function()
       loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
end)
local creds = window:Tab("力量传奇",'6035145364')

local tool = creds:section("功能",true)

tool:Toggle("自动举哑铃开关",'Toggleflag',false, function(state)
    if tool.Text=="关"
    then tool.Text="开"
    else tool.Text="关"
    end
    if state then
        local part = Instance.new('Part', workspace)
        part.Size = Vector3.new(500, 20, 530.1)
        part.Position = Vector3.new(0, 100000, 133.15)
        part.CanCollide = true
        part.Anchored = true
        local rs = game:GetService("RunService").RenderStepped
        while wait() do 
        if Section.Text=="关" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Weight" then
        v.Parent = game.Players.LocalPlayer.Character
        end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
        end
        end
        end
end)
tool:Toggle("自动俯卧撑开关",'Toggleflag',false, function(state)
    if Section.Text=="关"
    then tool.Text="开"
    else tool.Text="关"
    end
    if state then
        local part = Instance.new('Part', workspace)
        part.Size = Vector3.new(500, 20, 530.1)
        part.Position = Vector3.new(0, 100000, 133.15)
        part.CanCollide = true
        part.Anchored = true
        local rs = game:GetService("RunService").RenderStepped
        while wait() do 
        if tool.Text=="关" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Pushups" then
                v.Parent = game.Players.LocalPlayer.Character
                end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
        end
        end
        end 
end)
tool:Toggle("自动仰卧起坐开关",'Toggleflag',false, function(state)
    if tool.Text=="关"
    then tool.Text="开"
    else tool.Text="关"
    end
    if state then
        local part = Instance.new('Part', workspace)
        part.Size = Vector3.new(500, 20, 530.1)
        part.Position = Vector3.new(0, 100000, 133.15)
        part.CanCollide = true
        part.Anchored = true
        local rs = game:GetService("RunService").RenderStepped
        while wait() do 
        if tool.Text=="关" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v.Name == "Situps" then
                v.Parent = game.Players.LocalPlayer.Character
                end
                end
        end
        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
         end
    end
end)
tool:Toggle("自动倒立身体",'Toggleflag',false, function(state)
    if Section.Text=="关"
    then Section.Text="开"
    else Section.Text="关"
    end
    if state then
        local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true
    local rs = game:GetService("RunService").RenderStepped
    while wait() do 
    if tool.Text=="关" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
    
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Handstands" then
            v.Parent = game.Players.LocalPlayer.Character
            
            end
            end
    end
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
    end
    end
    end)
    tool:Toggle("自动锻炼开关",'Toggleflag',false, function(state)
        if tool.Text=="关"
    then tool.Text="开"
    else tool.Text="关"
    end
        if state then
            local part = Instance.new('Part', workspace)
    part.Size = Vector3.new(500, 20, 530.1)
    part.Position = Vector3.new(0, 100000, 133.15)
    part.CanCollide = true
    part.Anchored = true

    while wait() do 
    if tool.Text=="关" then

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0, 50, 0)
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if
				v.ClassName == "Tool" and v.Name == "Handstands" or v.Name == "Situps" or v.Name == "Pushups" or
					v.Name == "Weight"
			 then
				v:FindFirstChildOfClass("NumberValue").Value = 0
				repeat
					wait()
				until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
				game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
				game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")

end
end
end
end
          end
    end)
    tool:Toggle("自动重生开关",'Toggleflag',false, function(state)
        if tool.Text=="关"
then tool.Text="开"
else tool.Text="关"
end
        if state then
            while wait() do 
                if Section.Text=="关" then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                
                end
                end                
        end
    end)
    tool:Button("收集宝石",function()
        jk = {}
for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do
    if v.Name ~= "Light Karma Chest" or v.Name ~= "Evil Karma Chest" then
        table.insert(jk, v.Name)
    end
end
for i = 1, #jk do
    wait(2)
    game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i])
end
    end)
    tool:Toggle("自动比赛开关",'Toggleflag',false, function(state)
        if tool.Text=="关"
then tool.Text="开"
else tool.Text="关"
    end
        if state then
            while wait() do 
                if tool.Text=="自动加入战斗（开）" then
            wait(2)
            game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
                end
                end
        end
    end)

local creds = window:Tab("鲨口求生2",'6035145364')

local tool = creds:section("功能",true)

tool:Button("自动杀鲨鱼",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
end)

local creds = window:Tab("FE脚本",'6035145364')

local tool = creds:section("脚本",true)

tool:Button("C00lgui",function()
        loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)

tool:Button("1x1x1x1",function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
end)

tool:Button("玩家（R6）",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)

tool:Button("动画中心",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)

local creds = window:Tab("DOORS",'6035145364')

local tool = creds:section("功能",true)

tool:Button("拯救上帝",function()
        --[[

        
    ░░█ █▀▀ █▀ █░█ █▀   █▀▀ █▀█ █░█ █▀▀ █ █▀▀ █ █▀▀ █▀▄   █▀ █▀▀ █▀█ █ █▀█ ▀█▀   █▀█ █▀█   █▀ █▀▄▀█ ▀█▀ █░█ █▄░█
    █▄█ ██▄ ▄█ █▄█ ▄█   █▄▄ █▀▄ █▄█ █▄▄ █ █▀░ █ ██▄ █▄▀   ▄█ █▄▄ █▀▄ █ █▀▀ ░█░   █▄█ █▀▄   ▄█ █░▀░█ ░█░ █▀█ █░▀█
    why is loading custom models so hard | made by upio#7408 for penguin c:
    npcs and egg toy made by Luke3#5175, ui for the dialogue made by upio#7408
]]

-- initializing variables and stuff
local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyaini/lon/main/eodk"))()
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyaini/lon/main/eosk"))()
local tweenService = game:GetService("TweenService")
local jesusModel = game:GetObjects("rbxassetid://13048955592")[1] or LoadCustomInstance("rbxassetid://13048955592") 
local caveModel = game:GetObjects("rbxassetid://13049026203")[1] or LoadCustomInstance("rbxassetid://13049026203")
local CameraShaker = require(game:GetService("ReplicatedStorage").CameraShaker)
local ranBoulderProximityPrompt = false

-- Npcs
local civilian1 = game:GetObjects("rbxassetid://13051551926")[1]
local civilian2 = game:GetObjects("rbxassetid://13051633935")[1]
local civilian3 = game:GetObjects("rbxassetid://13052090579")[1]
local tablewithuno = game:GetObjects("rbxassetid://13053069721")[1]
local luk3 = game:GetObjects("rbxassetid://13053085601")[1]
local upio = game:GetObjects("rbxassetid://13053089753")[1]

--Toy and Model For The Egg
local easternegg = game:GetObjects("rbxassetid://13053213567")[1]

-- misc functions
function deleteStuff()
    if workspace.CurrentRooms["0"]:FindFirstChild("RiftSpawn") then
        workspace.CurrentRooms["0"].RiftSpawn:Destroy()
    end
    
    for _,i in ipairs(workspace.CurrentRooms["0"].Assets:GetChildren()) do
        if i.Name == "Luggage" or i.Name == "Luggage_Cart" or i.Name == "Luggage_Cart_Crouch" then
            i:Destroy()
        end
    end
end

function fadeOutThing(object,seconds)
    for _,instance in ipairs(object:GetDescendants()) do
        if instance:IsA("MeshPart") or instance:IsA("UnionOperation") or instance:IsA("Part") or instance:IsA("Decal") then
            print()
            tweenService:Create(instance, TweenInfo.new(seconds,Enum.EasingStyle.Quad), {
                ["Transparency"] = 1
            }):Play()
        end
    end
end

function fadeInThing(object,seconds)
    local function fadeIn(part,seconds)
        local initialTransparency = part.Transparency
        part.Transparency = 1
        local tween = tweenService:Create(part, TweenInfo.new(seconds, Enum.EasingStyle.Quad), {Transparency = initialTransparency}):Play()
    end

    for _, instance in pairs(object:GetDescendants()) do
        if instance:IsA("MeshPart") or instance:IsA("UnionOperation") or instance:IsA("Part") or instance:IsA("Decal") then
            fadeIn(instance,seconds)
        end
    end
end

-- parenting stuff
jesusModel.Parent = workspace
caveModel.PrimaryPart = caveModel.Boulder

-- i forgot to set it's primary part ._.
jesusModel.PrimaryPart = jesusModel["Plank Vertical"]

-- tp in front of the elevator
jesusModel:PivotTo(CFrame.new(Vector3.new(0.237418652, 2.02649975, 3241.82837, -1.62920685e-07, -1, 1.40790661e-07, 1, -1.62920685e-07, -3.58895669e-08, 3.58895882e-08, 1.40790661e-07, 1)) * CFrame.Angles(0, math.rad(180), math.rad(90)))

-- delete misc things that might interfere
deleteStuff()

-- main code
jesusModel.jesus.ProximityPrompt.Triggered:Connect(function()
    
    Achievements.Get({
        Title = "成功解锁彩蛋",
        Desc = "你拯救了十字架上的耶稣",
        Reason = "绿魔改",
        Image = "https://raw.githubusercontent.com/persopoiu/scripts/main/66963_easter_egg_green_icon.png",
    })
    -- fade out
    fadeOutThing(jesusModel,0.5)
    wait(0.5)
    jesusModel:Destroy()

    -- fade in
    caveModel.Parent = workspace
    wait()
    fadeInThing(caveModel,1.5)

    -- move the cave model
    caveModel:PivotTo(CFrame.new(Vector3.new(0, -1.3, 3250, 1, 0, 0, 0, 1, 0, 0, 0, 1)) * CFrame.Angles(math.rad(-90), 0, 0))
    -- Npc 1
	civilian1.Parent = game.workspace
	    wait()
    fadeInThing(civilian1,1.5)
   -- Npc 2
	civilian2.Parent = game.workspace
	    wait()
    fadeInThing(civilian2,1.5)
	--npc 3
	civilian3.Parent = game.workspace
	    wait()
    fadeInThing(civilian3,1.5)
	--Easteregg
	easternegg.Parent = game.workspace
	    wait()
    fadeInThing(easternegg,1.5)
    --tablewithuno
	tablewithuno.Parent = game.workspace
	    wait()
    fadeInThing(tablewithuno,1.5)
    --Luk3
	luk3.Parent = game.workspace
	    wait()
    fadeInThing(luk3,1.5)
    --Upio
	upio.Parent = game.workspace
	    wait()
    fadeInThing(upio,1.5)
end)

caveModel.Boulder.ProximityPrompt.Triggered:Connect(function()

    spawn(function()
        if not ranBoulderProximityPrompt then
            -- caption
            firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, '你挪动了石头放出了上帝',true,2.5)

            -- camera shake
            local camShake = CameraShaker.new(200, function(shakeCFrame)
                game.Workspace.CurrentCamera.CFrame = game.Workspace.CurrentCamera.CFrame * shakeCFrame
            end)
            camShake:Start()
            camShake:Shake(CameraShaker.Presets.Explosion)
            wait(1)
            camShake:Stop()

            ranBoulderProximityPrompt = true
        end
    end)

    local boulder = caveModel.Boulder

    spawn(function()
        for _,i in ipairs(workspace.cave:GetChildren()) do
            if i.Name == " " then
                fadeOutThing(i,.5)
            end
        end

        wait(.5)
        for _,i in ipairs(workspace.cave:GetChildren()) do
            if i.Name == " " then
                i:Destroy()
            end
        end
    end)
    
    tweenService:Create(boulder, TweenInfo.new(1.2, Enum.EasingStyle.Quad),{
        ["Rotation"] = Vector3.new(80,0,0),
        ["Position"] = Vector3.new(boulder.Position.X,boulder.Position.Y,3258)
    }):Play()

    while wait(0.1) do
        local primaryPart = caveModel.Jesus.Torso
        local camera = workspace.CurrentCamera
        local player = game.Players.LocalPlayer
        local distanceThreshold = 10 -- the maximum distance between the player and the Jesus model for the achievement to be earned
    
        -- check if the player is within the distance threshold of the Jesus model's primary part
        local distance = (primaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
        
        if distance <= distanceThreshold then
            -- check if the player's camera is looking at the Jesus model's primary part
            local direction = primaryPart.Position - camera.CFrame.Position
            local dotProduct = direction.Unit:Dot(camera.CFrame.LookVector.Unit)
            
            if dotProduct > 0.9 then -- the player is looking at the Jesus model
                break
            end
        end
    end

    Achievements.Get({
        Title = "救出耶稣已解锁",
        Desc = "谢谢你救了我",
        Reason = "我将赐予你力量",
        Image = "https://github.com/persopoiu/scripts/raw/main/Untitled.png",
    })
    loadstring(game:HttpGet('https://pastebin.com/raw/M3X9iuE1'))()
end)

local npcdialogue = Instance.new("ScreenGui")
local dialogueFrame = Instance.new("ImageLabel")
local dialogueLabel = Instance.new("TextLabel")

npcdialogue.Name = "npcdialogue"
npcdialogue.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
npcdialogue.Enabled = false
npcdialogue.ResetOnSpawn = false

dialogueFrame.Name = "dialogueFrame"
dialogueFrame.Parent = npcdialogue
dialogueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
dialogueFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dialogueFrame.BackgroundTransparency = 1.000
dialogueFrame.Position = UDim2.new(0.5, 0, 0.850000024, 0)
dialogueFrame.Size = UDim2.new(0.5, 0, 0.200000003, 0)
dialogueFrame.Image = "rbxassetid://3570695787"
dialogueFrame.ImageColor3 = Color3.fromRGB(45, 45, 45)
dialogueFrame.ScaleType = Enum.ScaleType.Slice
dialogueFrame.SliceCenter = Rect.new(100, 100, 100, 100)
dialogueFrame.SliceScale = 0.120

dialogueLabel.Name = "dialogueLabel"
dialogueLabel.Parent = dialogueFrame
dialogueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dialogueLabel.BackgroundTransparency = 1.000
dialogueLabel.Size = UDim2.new(1, 0, 1, 0)
dialogueLabel.Font = Enum.Font.Oswald
dialogueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
dialogueLabel.TextScaled = true
dialogueLabel.TextSize = 14.000
dialogueLabel.TextWrapped = true

local function npc1dialogue()
    dialogueLabel.Text = "小伙子，你也玩原神吗，那两个在玩原神，原神是国产之光"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

local function npc2dialogue()
    dialogueLabel.Text = "向上帝祈祷，祝你通关好孩子"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

local function npc3dialogue()
    dialogueLabel.Text = "艹你马，挡着我看电视了让开!"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

local function luk3dialogue()
    dialogueLabel.Text = "原神真好玩，我是神里绫华的dog"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

local function upiodialogue()
    dialogueLabel.Text = "嘿，我是四角星原石转生，你应该向我下跪！"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

civilian1.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
     npc1dialogue()
	 wait(2)
	 npcdialogue.Enabled = false
end)

civilian2.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
	npc2dialogue()
	 wait(2)
	npcdialogue.Enabled = false
end)

civilian3.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
	npc3dialogue()
	 wait(2)
	npcdialogue.Enabled = false
end)

luk3.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
	luk3dialogue()
	 wait(2)
	npcdialogue.Enabled = false
end)

upio.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
	upiodialogue()
	 wait(2)
	npcdialogue.Enabled = false
end)

easternegg.ModulePrompt.Triggered:Connect(function()
local Equipped = false
local Plr = game.Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local eegg = game:GetObjects("rbxassetid://13053427070")[1]

eegg.Parent = game.Players.LocalPlayer.Backpack

	eegg.Equipped:Connect(function()
		Equipped = true
    local Idle = eegg.Animations.idle
    local IdleTrack = Hum:LoadAnimation(Idle)

    IdleTrack:Play()
	end)

	eegg.Unequipped:Connect(function()
		Equipped = false
        IdleTrack:Stop()
	end)
	easternegg:Destroy()
end)
    print("hi")
end)

tool:Button("十字架",function()
        loadstring(game:HttpGet('https://pastebin.com/raw/M3X9iuE1'))()
end)

tool:Button("无敌脚本",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/GodModeByNerd.lua"))()
end)

tool:Button("nerd hub v5",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/NeRDV5.lua"))()
end)

tool:Button("香蕉枪",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end)

tool:Button("召唤黑洞",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua"))()
end)

tool:Button("臭猫",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
end)

tool:Button("拿小鸡",function()
       loadstring(game:HttpGet("https://pastebin.com/raw/PFERptU5", true))()
end)

tool:Button("支离破碎mod",function()
       loadstring(game:HttpGet('https://pastebin.com/raw/qD2MkEu3'))()
end)

tool:Button("把seek变成只因",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Chicken%20Mod.lua", true))()
end)

tool:Button("让大厅成为快餐店",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/MCDonalds"))()
end)

tool:Button("幸运方块每门都会出现",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Lucky%20Block"))()
end)

tool:Button("doors吸尘器枪脚本e吸物品点击发射 r清理",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/EverythingGunByNeRD.lua"))()
end)

tool:Button("躲柜子是用r把飞哥撅飞",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/SpectateFigure.lua"))()
end)

tool:Button("到100门时用挂机可以刷金币",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Doors%20Death%20Farmer.lua"))()
end)

tool:Button("喷火枪",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Flamethrower"))()
end)

tool:Button("圣光手雷",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
end)

tool:Button("把ambush变成马桶人 飞哥变成鸡 把rush变成nerd",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/gffddhfdf/doorstoilet./main/doors%E6%A8%A1%E5%9E%8B%E5%A4%A7%E6%95%B4%E6%94%B9%EF%BC%81.txt"))()
end)

tool:Button("火箭筒",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/RocketLauncher/script.lua"))()
end)

tool:Button("一个企鹅",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/PenguinManiack%20Plushie"))()
end)

tool:Button("SCreech十字架",function()
       loadstring(game:HttpGet("https://pastebin.com/raw/W1AzELhb"))()
end)

tool:Button("手电筒",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
end)

tool:Button("神圣炸弹",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
end)

tool:Button("十字架封印一切按q使用",function()
        _G.Uses = 10000
_G.Range = 999
_G.OnAnything = true
_G.Fail = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
end)

tool:Button("魔法书",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book"))()
end)

tool:Button("闪电",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Zeus%20Lightning"))()
end)

tool:Button("A-3000",function()
        	      		      		
_G.OnShop = true

loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)

tool:Button("A-3000备用",function()
        _G.UpdateStars = false -- stars disappear after picking up a book/breaker pole | false: a little lag

    loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)

tool:Button("微山2.3.2",function()
        --微山doors 2.3.2(愚人节快乐)
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
end)

tool:Button("飞行",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/gqv7PXAa"))()
end)

tool:Button("键盘",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

tool:Button("吸铁石",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
end)

tool:Button("剪刀",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
end)

tool:Button("激光枪",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
end)

tool:Button("紫色手电筒买东西时使用",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()
end)

tool:Button("夜视仪",function()
        _G.UpdateStars = false -- stars disappear after picking up a book/breaker pole | false: a little lag

    loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)

tool:Button("变身脚本",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
end)

tool:Button("骷髅钥匙",function()
       local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack
end)

local creds = window:Tab("游戏脚本",'6035145364')

local tool = creds:section("功能",true)

tool:Button("BF",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/STRAW%20HUB%20RELEASE", true))()
end)

tool:Button("门而且有点便宜且更短",function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing/main/BlackKingMb"))()
end)

tool:Button("法宝自动刷任何地方",function()
       	loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/fabao"))()
end)

local fps = fps:section("fps ping",true)

fps:Button("ping",function()
            repeat wait() until game:IsLoaded() wait(2)
local ScreenGui = Instance.new("ScreenGui")
local Ping = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Ping.Name = "Ping"
Ping.Parent = ScreenGui
Ping.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Ping.BackgroundTransparency = 1.000
Ping.BorderColor3 = Color3.fromRGB(0, 0, 128)
Ping.Position = UDim2.new(0.700000048, 0, 0, 0)
Ping.Size = UDim2.new(0, 125, 0, 25)
Ping.Font = Enum.Font.SourceSans
Ping.TextColor3 = Color3.fromRGB(0, 0, 255)
Ping.TextScaled = true
Ping.TextSize = 14.000
Ping.TextWrapped = true

local script = Instance.new('LocalScript', Ping)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(ping) 
script.Parent.Text = ("Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping))) -- your ping
end)
end)

bin:Button("fps",function()
        repeat wait() until game:IsLoaded() wait(2)
local ScreenGui = Instance.new("ScreenGui")
local Fps = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Fps.Name = "Fps"
Fps.Parent = ScreenGui
Fps.BackgroundColor3 = Color3.fromRGB(0, 0, 128)
Fps.BackgroundTransparency = 1.000
Fps.Position = UDim2.new(0.786138654, 0, 0, 0)
Fps.Size = UDim2.new(0, 125, 0, 25)
Fps.Font = Enum.Font.SourceSans
Fps.TextColor3 = Color3.fromRGB(0, 0, 255)
Fps.TextScaled = true
Fps.TextSize = 14.000
Fps.TextWrapped = true

local script = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(frame)
script.Parent.Text = ("FPS: "..math.round(1/frame)) 
end)
end)

local creds = window:Tab("afk",'6035145364')

local tool = creds:section("afk",true)

credits:Toggle("afk", "", false, function(state)
        print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
end)
