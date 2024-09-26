local points=workspace:FindFirstChild("Checkpoints")
local players=game:GetService("Players")
local player=players.LocalPlayer
local buttons=player.PlayerGui.Buttons
local center=buttons.TopContainer.Center
local selector=center.Selector
local currentstage=selector.TypeStage
local rebirthbutton=buttons.LeftContainer.Frame.Rebirth

local function waitForGuis()
    repeat task.wait(); buttons=player.PlayerGui.Buttons until buttons
    repeat task.wait(); center=player.PlayerGui.Buttons.TopContainer.Center until center
    repeat task.wait(); selector=player.PlayerGui.Buttons.TopContainer.Center.Selector until selector
    repeat task.wait(); currentstage=selector.TypeStage until currentstage
    repeat task.wait(); rebirthbutton=buttons.LeftContainer.Frame.Rebirth until rebirthbutton
end
waitForGuis()

--[[
	Roblox2Lua
	----------
	
	This code was generated using
	Deluct's Roblox2Lua plugin.
]]--

--// Instances

local auto_grinder = Instance.new("ScreenGui")
auto_grinder.IgnoreGuiInset = false
auto_grinder.ResetOnSpawn = true
auto_grinder.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
auto_grinder.Name = "Auto Grinder"
auto_grinder.Parent = game:GetService("CoreGui")

local main_frame = Instance.new("Frame")
main_frame.BackgroundColor3 = Color3.new(0.509804, 0.509804, 0.509804)
main_frame.BorderColor3 = Color3.new(0, 0, 0)
main_frame.BorderSizePixel = 0
main_frame.Position = UDim2.new(0.0809792876, 0, 0.397781312, 0)
main_frame.Size = UDim2.new(0.274952918, 0, 0.342313796, 0)
main_frame.Visible = true
main_frame.Name = "MainFrame"
main_frame.Parent = auto_grinder

local win_button = Instance.new("TextButton")
win_button.Font = Enum.Font.SourceSans
win_button.RichText = true
win_button.Text = "Win"
win_button.TextColor3 = Color3.new(0, 0, 0)
win_button.TextSize = 14
win_button.BackgroundColor3 = Color3.new(0.207843, 0.658824, 0)
win_button.BorderColor3 = Color3.new(0, 0, 0)
win_button.BorderSizePixel = 0
win_button.Position = UDim2.new(0.498051316, 0, 0.375, 0)
win_button.Size = UDim2.new(0.320019841, 0, 0.25, 0)
win_button.Visible = true
win_button.Name = "WinButton"
win_button.Parent = main_frame

local auto_button = Instance.new("TextButton")
auto_button.Font = Enum.Font.SourceSans
auto_button.RichText = true
auto_button.Text = "Auto"
auto_button.TextColor3 = Color3.new(0, 0, 0)
auto_button.TextSize = 14
auto_button.BackgroundColor3 = Color3.new(0.658824, 0, 0)
auto_button.BorderColor3 = Color3.new(0, 0, 0)
auto_button.BorderSizePixel = 0
auto_button.Position = UDim2.new(0.179179266, 0, 0.375, 0)
auto_button.Size = UDim2.new(0.320019782, 0, 0.25, 0)
auto_button.Visible = true
auto_button.Name = "AutoButton"
auto_button.Parent = main_frame

local stop_button = Instance.new("TextButton")
stop_button.Font = Enum.Font.SourceSans
stop_button.RichText = true
stop_button.Text = "Stop"
stop_button.TextColor3 = Color3.new(0, 0, 0)
stop_button.TextSize = 14
stop_button.BackgroundColor3 = Color3.new(0.658824, 0, 0)
stop_button.BorderColor3 = Color3.new(0, 0, 0)
stop_button.BorderSizePixel = 0
stop_button.Position = UDim2.new(0.818071127, 0, 0.901819587, 0)
stop_button.Size = UDim2.new(0.181928903, 0, 0.0981804207, 0)
stop_button.Visible = false
stop_button.Name = "StopButton"
stop_button.Parent = main_frame

local title_frame = Instance.new("Frame")
title_frame.BackgroundColor3 = Color3.new(0.407843, 0.407843, 0.407843)
title_frame.BorderColor3 = Color3.new(0, 0, 0)
title_frame.BorderSizePixel = 0
title_frame.Position = UDim2.new(1.1395484e-07, 0, -0.00462962966, 0)
title_frame.Size = UDim2.new(0.999999881, 0, 0.134259254, 0)
title_frame.Visible = true
title_frame.Name = "TitleFrame"
title_frame.Parent = main_frame

local close_button = Instance.new("TextButton")
close_button.Font = Enum.Font.SourceSansBold
close_button.RichText = true
close_button.Text = "X"
close_button.TextColor3 = Color3.new(0, 0, 0)
close_button.TextSize = 17
close_button.TextWrapped = true
close_button.BackgroundColor3 = Color3.new(0.631373, 0, 0)
close_button.BorderColor3 = Color3.new(0, 0, 0)
close_button.BorderSizePixel = 0
close_button.Position = UDim2.new(0.89311862, 0, 0, 0)
close_button.Size = UDim2.new(0.106881432, 0, 1.00000012, 0)
close_button.Visible = true
close_button.Name = "CloseButton"
close_button.Parent = title_frame

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.SourceSans
text_label.Text = "Impossible Obby Auto-Grind"
text_label.TextColor3 = Color3.new(0, 0, 0)
text_label.TextSize = 14
text_label.TextXAlignment = Enum.TextXAlignment.Left
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.BorderColor3 = Color3.new(0, 0, 0)
text_label.BorderSizePixel = 0
text_label.Position = UDim2.new(0.0334918946, 0, 0, 0)
text_label.Size = UDim2.new(0.85962671, 0, 1.00000012, 0)
text_label.Visible = true
text_label.Parent = title_frame

local counter = Instance.new("TextLabel")
counter.Font = Enum.Font.SourceSans
counter.RichText = true
counter.Text = "Current Level: 1"
counter.TextColor3 = Color3.new(0, 0, 0)
counter.TextSize = 24
counter.BackgroundColor3 = Color3.new(1, 1, 1)
counter.BackgroundTransparency = 1
counter.BorderColor3 = Color3.new(0, 0, 0)
counter.BorderSizePixel = 0
counter.Position = UDim2.new(0.250182778, 0, 0.694444418, 0)
counter.Size = UDim2.new(0.493206739, 0, 0.203703701, 0)
counter.Visible = true
counter.Name = "Counter"
counter.Parent = main_frame

local function updateCounter()
    counter.Text = "Current Level: "..currentstage.PlaceholderText
end

updateCounter()

local function draggable(dragframe,mainframe)
    local dragging=false
    local ogpos=Vector2.new(0,0)
    local ogguipos=UDim2.new(0,0,0,0)
    local dinput

    dragframe.InputBegan:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
            dragging=true
            ogpos=input.Position
            ogguipos=mainframe.Position
        end
    end)

    dragframe.InputEnded:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
            dragging=false
        end
    end)

    dragframe.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then
            dinput=input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input==dinput and dragging then
            local minus = input.Position - ogpos
            mainframe.Position=UDim2.new(ogguipos.X.Scale,ogguipos.X.Offset + minus.X ,ogguipos.Y.Scale,ogguipos.Y.Offset + minus.Y)
        end
    end)
end

local stop=false

draggable(title_frame, main_frame)

local won=false

local function win(Rebirth:boolean)
    won=false
    local char=player.Character or player.CharacterAdded:Wait()
    local root=char.PrimaryPart
    waitForGuis()
    center.Visible=false
    rebirthbutton.Visible=false
    local index=tonumber(currentstage.PlaceholderText)
    repeat task.wait(); root=char.PrimaryPart until root
    local ogcframe=char:GetPivot()
    while index < #points:GetChildren() and not stop do
        for i,v in ipairs(points:GetChildren()) do
            if tonumber(v.Name)==index and v:IsA("BasePart") then
                if stop then
                    break
                end
                char:PivotTo(v.CFrame+Vector3.new(0,3,0))
                task.wait(.01)
                repeat task.wait(); char=player.Character or player.CharacterAdded:Wait(); char:PivotTo(v.CFrame+Vector3.new(0,3,0)) until currentstage.PlaceholderText==v.Name
                updateCounter()
                index+=1
            end
        end
    end
    root.Anchored=true
    char:PivotTo(ogcframe)
    task.wait(.05)
    root.Anchored=false
    if Rebirth then
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.6.0").knit.Services.RebirthService.RF.Rebirth:InvokeServer(player)
    end
    updateCounter()
    center.Visible=true
    rebirthbutton.Visible=true
    won=true
end

local disabledcolor=Color3.new(0.658824, 0, 0)
local enabledcolor=Color3.new(0.207843, 0.658824, 0)

win_button.Activated:Connect(function()
    win_button.Interactable=false
    win_button.BackgroundColor3=disabledcolor
    auto_button.Interactable=false
    stop_button.Visible=true
    win(true)
    stop_button.Visible=false
    auto_button.Interactable=true
    win_button.Interactable=true
    win_button.BackgroundColor3=enabledcolor
end)
local auto=false
local ended=false

local function autofunc()
    ended=false
    while auto do
        win(true)
    end
    ended=true
    repeat task.wait() until auto
    task.spawn(autofunc)
end

auto_button.Activated:Connect(function()
    if auto then
        task.spawn(function()
            stop_button.Visible=false
            auto_button.Interactable=false
            stop=true
            repeat task.wait() until ended
            stop=false
            auto_button.Interactable=true
            auto_button.BackgroundColor3=disabledcolor
            win_button.Interactable=true
            win_button.BackgroundColor3=enabledcolor
        end)
        auto=false
    else
        task.spawn(autofunc)
        auto_button.BackgroundColor3=enabledcolor
        win_button.Interactable=false
        win_button.BackgroundColor3=disabledcolor
        auto=true
    end
end)

stop_button.Activated:Connect(function()
    win_button.Interactable=false
    stop=true
    repeat task.wait() until won
    won=false
    stop=false
    win_button.Interactable=true
end)

close_button.Activated:Connect(function()
    win_button.Interactable=false
    stop=true
    if auto then
        auto=false
        repeat task.wait() until ended
    end
    repeat task.wait() until won
    auto_grinder:Destroy()
    script:Destroy()
end)