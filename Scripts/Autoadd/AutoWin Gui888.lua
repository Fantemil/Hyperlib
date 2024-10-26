local players=game:GetService("Players")
local plr = players.LocalPlayer
local char=plr.Character or plr.CharacterAdded:Wait()
local checkpoints=workspace:FindFirstChild("Checkpoints")
local timer=plr.PlayerGui:FindFirstChild("MainGUI"):FindFirstChild("Timer")

--[[
	This code was generated using
	Deluct's Roblox2Lua plugin.
]]

local gui = Instance.new("ScreenGui")
gui.IgnoreGuiInset = false
gui.ResetOnSpawn = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Name = "Gui"
gui.Parent = game:GetService("CoreGui")

local main_frame = Instance.new("Frame")
main_frame.BackgroundColor3 = Color3.new(0.34902, 0.34902, 0.34902)
main_frame.BorderColor3 = Color3.new(0, 0, 0)
main_frame.BorderSizePixel = 0
main_frame.Position = UDim2.new(0.144136086, 0, 0.18700476, 0)
main_frame.Size = UDim2.new(0.186213061, 0, 0.218700469, 0)
main_frame.Visible = true
main_frame.Name = "MainFrame"
main_frame.Parent = gui

local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.new(0.552941, 0.552941, 0.552941)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0, 0, -0.00197159615, 0)
frame.Size = UDim2.new(1.00038159, 0, 0.136842102, 0)
frame.Visible = true
frame.Parent = main_frame

local close = Instance.new("TextButton")
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.new(0, 0, 0)
close.TextSize = 14
close.BackgroundColor3 = Color3.new(0.760784, 0, 0)
close.BorderColor3 = Color3.new(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.869442701, 0, 0.0144077754, 0)
close.Size = UDim2.new(0.130443692, 0, 0.985592246, 0)
close.Visible = true
close.Name = "Close"
close.Parent = frame

local title = Instance.new("TextLabel")
title.Font = Enum.Font.Unknown
title.Text = "High Jump Race Gui"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.BorderColor3 = Color3.new(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.0355584994, 0, 0, 0)
title.Size = UDim2.new(0.539717019, 0, 0.999999881, 0)
title.Visible = true
title.Name = "Title"
title.Parent = frame

local uistroke = Instance.new("UIStroke")
uistroke.Color = Color3.new(1, 1, 1)
uistroke.Thickness = 2.299999952316284
uistroke.Transparency=.75
uistroke.Parent = title

local win_round = Instance.new("TextButton")
win_round.Font = Enum.Font.SourceSans
win_round.Text = "Attempt to win round"
win_round.TextColor3 = Color3.new(0, 0, 0)
win_round.TextSize = 14
win_round.TextWrapped = true
win_round.BackgroundColor3 = Color3.new(0.529412, 0.529412, 0.529412)
win_round.BorderColor3 = Color3.new(0, 0, 0)
win_round.BorderSizePixel = 0
win_round.Position = UDim2.new(0.029081108, 0, 0.235316619, 0)
win_round.Size = UDim2.new(0.437391251, 0, 0.304347813, 0)
win_round.Visible = true
win_round.Name = "Win Round"
win_round.Parent = main_frame
win_round.RichText=true

local uicorner = Instance.new("UICorner")
uicorner.Parent = win_round

local win_round_instant = Instance.new("TextButton")
win_round_instant.Font = Enum.Font.SourceSansBold
win_round_instant.Text = "Attempt to win round instantly"
win_round_instant.TextColor3 = Color3.new(0, 0, 0)
win_round_instant.TextSize = 14
win_round_instant.TextWrapped = true
win_round_instant.BackgroundColor3 = Color3.new(0.529412, 0.529412, 0.529412)
win_round_instant.BorderColor3 = Color3.new(0, 0, 0)
win_round_instant.BorderSizePixel = 0
win_round_instant.Position = UDim2.new(0.0258521978, 0, 0.633867323, 0)
win_round_instant.Size = UDim2.new(0.943321228, 0, 0.289855063, 0)
win_round_instant.Visible = true
win_round_instant.Name = "Win Round Instant"
win_round_instant.Parent = main_frame
win_round_instant.RichText=true

local uicorner_2 = Instance.new("UICorner")
uicorner_2.Parent = win_round_instant

local automatic_win = Instance.new("TextButton")
automatic_win.Font = Enum.Font.SourceSans
automatic_win.Text = "Automatically win every round"
automatic_win.TextColor3 = Color3.new(0, 0, 0)
automatic_win.TextSize = 14
automatic_win.TextWrapped = true
automatic_win.BackgroundColor3 = Color3.new(0.392157, 0.196078, 0.196078)
automatic_win.BorderColor3 = Color3.new(0, 0, 0)
automatic_win.BorderSizePixel = 0
automatic_win.Position = UDim2.new(0.532173455, 0, 0.235316619, 0)
automatic_win.Size = UDim2.new(0.437000006, 0, 0.30399999, 0)
automatic_win.Visible = true
automatic_win.Name = "AutomaticWin"
automatic_win.Parent = main_frame
automatic_win.RichText=true

local uicorner_3 = Instance.new("UICorner")
uicorner_3.Parent = automatic_win

local cooldown=false

local ogcolor=win_round.BackgroundColor3

local function attemptRound(instant:boolean)
    if cooldown then
        return
    end
    win_round.Interactable=false
    win_round_instant.Interactable=false
    cooldown=true
    char=plr.Character or plr.CharacterAdded:Wait()
    local ogcf=char:GetPivot()
    if not instant then
        for i,v in ipairs(checkpoints:GetChildren()) do
            if v:IsA("BasePart") then
                if i==#checkpoints:GetChildren()/2 then
                    win_round.BackgroundColor3=Color3.new(0.635294, 0.643137, 0.196078)
                end
                char:PivotTo(v.CFrame)
                task.wait(.05)
            end
        end
    else
        local high=0
        local point
        for i,v in ipairs(checkpoints:GetChildren()) do
            if v:IsA("BasePart") then
                if v.Position.Y>high then
                    high=v.Position.Y
                    point=v
                end
            end
        end
        if point then
            char:PivotTo(point.CFrame)
            task.wait(.01)
        else
            win_round_instant.BackgroundColor3=Color3.fromRGB(200,0,0)
            task.wait(1)
        end
    end
    
    if char.PrimaryPart then
        char.PrimaryPart.Anchored=true
    end
    char:PivotTo(ogcf)
    task.wait()
    if char.PrimaryPart then
        char.PrimaryPart.Anchored=false
    end
    win_round.BackgroundColor3=ogcolor
    win_round_instant.BackgroundColor3=ogcolor
    win_round_instant.Interactable=true
    win_round.Interactable=true
    cooldown=false
end

local auto=false

local function toggleAuto()
    if auto then
        automatic_win.BackgroundColor3=Color3.fromRGB(100,50,50)
        auto=false
    else
        automatic_win.BackgroundColor3=Color3.fromRGB(50,100,50)
        auto=true
    end
end

win_round.Activated:Connect(function()
    attemptRound(false)
end)
win_round_instant.Activated:Connect(function()
    attemptRound(true)
end)
automatic_win.Activated:Connect(function()
    toggleAuto()
end)

local dragging=false
local ogpos=Vector2.new(0,0)
local ogguipos=UDim2.new(0,0,0,0)
local dinput

frame.InputBegan:Connect(function(input)
    if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
        dragging=true
        ogpos=input.Position
        ogguipos=main_frame.Position
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
        dragging=false
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then
        dinput=input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input==dinput and dragging then
        local minus = input.Position - ogpos
        main_frame.Position=UDim2.new(ogguipos.X.Scale,ogguipos.X.Offset + minus.X ,ogguipos.Y.Scale,ogguipos.Y.Offset + minus.Y)
    end
end)

local enabled=true

local function disable()
    if enabled then
        win_round.Interactable=false
        win_round_instant.Interactable=false
        win_round.BackgroundColor3=Color3.fromRGB(100,50,50)
        win_round_instant.BackgroundColor3=Color3.fromRGB(100,50,50)
        win_round.Text="(Waiting for timer to be at 2:00 or below..)"
        win_round.TextScaled=true
        win_round_instant.Text="(Anti-cheat will kick you if you use it too early)"
        enabled=false
    end
end

local function enable()
    if not enabled then
        win_round.Interactable=true
        win_round_instant.Interactable=true
        win_round.BackgroundColor3=ogcolor
        win_round_instant.BackgroundColor3=ogcolor
        win_round.Text="Attempt to win round"
        win_round.TextScaled=false
        win_round_instant.Text="Attempt to win round instantly"
        enabled=true
    end
end

local autowin=false

local check;check=game:GetService("RunService").Heartbeat:Connect(function()
    if timer then
        local sub=string.sub(timer.Text, 1,1)
        if timer.Visible then
            if timer.Text=="2:00" or sub=="1" or sub=="0" then
                enable()
                if auto and not autowin then
                    for i=1,3,1 do
                        attemptRound(true)
                    end
                    autowin=true
                end
            else
                disable()
                autowin=false
            end
        else
            disable()
            autowin=false
        end
    end
end)

close.Activated:Connect(function()
    gui:Destroy()
    check:Disconnect()
    script:Destroy()
end)