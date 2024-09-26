local s = {}
local tpcam = false
local tpcamon = false
local dropdownenabled = false
local supportgetgenv = false
local tpplron = false
local radius = 5
local lastpos
local lastpos2
local selectedplr
local success,err = pcall(function()
    if typeof(getgenv()) == "table" then
        supportgetgenv = true
    end
end)
if not getgenv().bypassedadonis then
    local success,err = pcall(function()
        for k,v in pairs(getgc(true)) do -- https://v3rmillion.net/showthread.php?tid=1209519
            if pcall(function() return rawget(v,"indexInstance") end) and type(rawget(v,"indexInstance")) == "table" and  (rawget(v,"indexInstance"))[1] == "kick" then
                bypassed = true
                v.tvk = {"kick",function() return game.Workspace:WaitForChild("") end}
            end
        end
    end)
end
if supportgetgenv then
    getgenv().bypassedadonis = true
end
table.insert(s,workspace.CurrentCamera:GetPropertyChangedSignal("CameraType"):Connect(function()
    if workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable then
        print("camera cutscene found")
        tpcam = true
        lastpos = game.Players.LocalPlayer.Character:GetPivot()
        if tpcamon then
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart",math.huge)
            if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                local bodyvel = Instance.new("BodyVelocity")
                bodyvel.Velocity = Vector3.new(0,0,0)
                bodyvel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                bodyvel.P = 1000
                bodyvel.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            end
        end
    else
        print("camera is not a cutscene :/")
        tpcam = false
        if lastpos then
            game.Players.LocalPlayer.Character:PivotTo(lastpos)
        end
        if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity:Destroy()
        end
    end
end))
table.insert(s,workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
    if tpcam and tpcamon then
        warn("teleporting to cam")
        game.Players.LocalPlayer.Character:PivotTo(workspace.CurrentCamera.CFrame * CFrame.new(0,1,-1))
    end
end))
table.insert(s,game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    if (tpcam and tpcamon) or (selectedplr and tpplron) then
        char:WaitForChild("HumanoidRootPart",math.huge)
        local bodyvel = Instance.new("BodyVelocity")
        bodyvel.Velocity = Vector3.new(0,0,0)
        bodyvel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        bodyvel.P = 1000
        bodyvel.Parent = char.HumanoidRootPart
    end
end))
local gui = Instance.new("ScreenGui")
if supportgetgenv then
    if getgenv().cameraguilol and getgenv().cameraguidelete then
        getgenv().cameraguidelete()
    end
    getgenv().cameraguilol = gui
end
gui.Name = ""
for i=1,50 do
    gui.Name = gui.Name..tostring(math.random(1,9))
end
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

local mainframe = Instance.new("Frame")
mainframe.BackgroundColor3 = Color3.fromRGB(50,50,50)
mainframe.BorderColor3 = Color3.fromRGB(255,255,255)
mainframe.Size = UDim2.new(.3,0,.6,0)
mainframe.Position = UDim2.new(.35,0,.2)
mainframe.Active = true
mainframe.Draggable = true
mainframe.Parent = gui
local constraint = Instance.new("UIAspectRatioConstraint")
constraint.AspectType = Enum.AspectType.ScaleWithParentSize
constraint.Parent = mainframe
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,.1,0)
title.Text = "Game Annoyance"
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(255,255,255)
title.BackgroundColor3 = Color3.fromRGB(50,50,50)
title.BorderColor3 = Color3.fromRGB(255,255,255)
title.Parent = mainframe
local credits = Instance.new("TextLabel")
credits.Size = UDim2.new(1,0,.05,0)
credits.Position = UDim2.new(0,0,.1,0)
credits.Text = "By 2AreYouMental110"
credits.TextScaled = true
credits.TextColor3 = Color3.fromRGB(255,255,255)
credits.BackgroundColor3 = Color3.fromRGB(50,50,50)
credits.BorderColor3 = Color3.fromRGB(255,255,255)
credits.Parent = mainframe

local playerdropdown = Instance.new("TextButton")
playerdropdown.Size = UDim2.new(.2,0,.2,0)
playerdropdown.Position = UDim2.new(0.1,0,.2,0)
playerdropdown.Text = "Players"
playerdropdown.TextScaled = true
playerdropdown.TextColor3 = Color3.fromRGB(255,255,255)
playerdropdown.BackgroundColor3 = Color3.fromRGB(50,50,50)
playerdropdown.BorderColor3 = Color3.fromRGB(255,255,255)
playerdropdown.Parent = mainframe
local dropdownframe = Instance.new("ScrollingFrame")
dropdownframe.Size = UDim2.new(1.5,0,10,0)
dropdownframe.Position = UDim2.new(-.25,0,1,0)
dropdownframe.BackgroundColor3 = Color3.fromRGB(50,50,50)
dropdownframe.BorderColor3 = Color3.fromRGB(255,255,255)
dropdownframe.ZIndex = 100
dropdownframe.CanvasSize = UDim2.new(0,0,100,0)
dropdownframe.Visible = false
dropdownframe.Parent = playerdropdown
local sort = Instance.new("UIListLayout")
sort.Parent = dropdownframe
table.insert(s,playerdropdown.MouseButton1Click:Connect(function()
    dropdownenabled = not dropdownenabled
    dropdownframe.Visible = dropdownenabled
end))
local autotpbutton = Instance.new("TextButton")
autotpbutton.Size = UDim2.new(.2,0,.2,0)
autotpbutton.Position = UDim2.new(0.4,0,.2,0)
autotpbutton.Text = "Auto TP to cutscene camera: OFF"
autotpbutton.TextScaled = true
autotpbutton.TextColor3 = Color3.fromRGB(255,255,255)
autotpbutton.BackgroundColor3 = Color3.fromRGB(50,50,50)
autotpbutton.BorderColor3 = Color3.fromRGB(255,255,255)
autotpbutton.Parent = mainframe
table.insert(s,autotpbutton.MouseButton1Click:Connect(function()
    tpcamon = not tpcamon
    if tpcamon then
        autotpbutton.Text = "Auto TP to cutscene camera: ON"
    else
        autotpbutton.Text = "Auto TP to cutscene camera: OFF"
    end
end))

local autotpbutton2 = Instance.new("TextButton")
autotpbutton2.Size = UDim2.new(.2,0,.2,0)
autotpbutton2.Position = UDim2.new(0.7,0,.2,0)
autotpbutton2.Text = "Auto TP around selected player: OFF"
autotpbutton2.TextScaled = true
autotpbutton2.TextColor3 = Color3.fromRGB(255,255,255)
autotpbutton2.BackgroundColor3 = Color3.fromRGB(50,50,50)
autotpbutton2.BorderColor3 = Color3.fromRGB(255,255,255)
autotpbutton2.Parent = mainframe
table.insert(s,autotpbutton2.MouseButton1Click:Connect(function()
    tpplron = not tpplron
    if tpplron then
        autotpbutton2.Text = "Auto TP around selected player: ON"
        if selectedplr then
            local bodyvel = Instance.new("BodyVelocity")
            bodyvel.Velocity = Vector3.new(0,0,0)
            bodyvel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            bodyvel.P = 1000
            bodyvel.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			lastpos2 = game.Players.LocalPlayer.Character:GetPivot()
        end
    else
        autotpbutton2.Text = "Auto TP around selected player: OFF"
        if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity:Destroy()
        end
		if lastpos2 then
			game.Players.LocalPlayer.Character:PivotTo(lastpos2)
		end
    end
end))

local tpradiustextbox = Instance.new("TextBox")
tpradiustextbox.Size = UDim2.new(.2,0,.2,0)
tpradiustextbox.Position = UDim2.new(0.1,0,.5,0)
tpradiustextbox.Text = ""
tpradiustextbox.PlaceholderText = "Put radius of where to tp here! (automatically set to 5)"
tpradiustextbox.TextScaled = true
tpradiustextbox.TextColor3 = Color3.fromRGB(255,255,255)
tpradiustextbox.BackgroundColor3 = Color3.fromRGB(50,50,50)
tpradiustextbox.BorderColor3 = Color3.fromRGB(255,255,255)
tpradiustextbox.Parent = mainframe
table.insert(s,tpradiustextbox.FocusLost:Connect(function()
    local num = tonumber(tpradiustextbox.Text)
    if typeof(num) == "number" then
        radius = num
    end
end))

function doplr(plr)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(.85,0,.01,0)
    button.ZIndex = 101
    button.Text = plr.Name
    if game.ReplicatedStorage:FindFirstChild("Season") and game.ReplicatedStorage.Season:FindFirstChild("Players") and game.ReplicatedStorage.Season.Players:FindFirstChild(plr.Name) then
        button.Text = plr.Name.." | "..game.ReplicatedStorage.Season.Players[plr.Name].Value
    end
    button.TextScaled = true
    button.TextColor3 = Color3.fromRGB(255,255,255)
    button.BackgroundColor3 = Color3.fromRGB(50,50,50)
    button.BorderColor3 = Color3.fromRGB(255,255,255)
    button.Name = plr.Name
    button.Parent = dropdownframe
    table.insert(s,button.MouseButton1Click:Connect(function()
        dropdownenabled = not dropdownenabled
        dropdownframe.Visible = dropdownenabled
        selectedplr = plr
    end))
end

table.insert(s,game.Players.PlayerAdded:Connect(function(plr)
    doplr(plr)
end))
table.insert(s,game.Players.PlayerRemoving:Connect(function(plr)
    for i,v in pairs(dropdownframe:GetChildren()) do
        if plr.Name == v.Name then
            v:Destroy()
        end
    end
end))
for i,v in pairs(game.Players:GetPlayers()) do
    doplr(v)
end

table.insert(s,game:GetService("RunService").RenderStepped:Connect(function()
    if selectedplr and tpplron then
        local charcframe = selectedplr.Character:GetPivot()
        local randpos = Vector3.new(math.random(-(radius/2),radius/2),math.random(-(radius/2),radius/2),math.random(-(radius/2),radius/2))
        game.Players.LocalPlayer.Character:PivotTo(charcframe + randpos)
    end
end))

function guidelete()
    gui:Destroy()
    tpcam = false
    tpcamon = false
    tpplron = false
    for i,v in pairs(s) do
        v:Disconnect()
    end
end
if supportgetgenv then
    getgenv().cameraguidelete = guidelete
end