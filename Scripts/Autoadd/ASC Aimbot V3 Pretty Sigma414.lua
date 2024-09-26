--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local smoothness = 0 -- Smoothness, makes the aimbot more legit. More smoothness = more legit
local wallcheck_enabled = false -- Wallcheck, checks for a wall and if there is won't lock on the person. Set to true to turn on
local teamcheck_enabled = false -- teamcheck, not always 100% accurate. Set to true to turn on
local triggerbot_enabled = false -- Automatically shoots opponent for you
local autoswitch_enabled = false -- Automatically switches to another person if the person you're locked on dies
local esp_enabled = true -- uh esp see people thru wals ð¤

if getgenv().script_loaded then
    local player = game.Players.LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.Parent = player:WaitForChild("PlayerGui")

    local notification = Instance.new("TextButton")
    notification.Size = UDim2.new(0, 300, 0, 50)
    notification.Position = UDim2.new(0.5, 0, 0, -100)
    notification.AnchorPoint = Vector2.new(0.5, 0.5)
    notification.Text = ""
    notification.BackgroundTransparency = 0
    notification.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
    notification.BorderSizePixel = 0
    notification.Parent = gui
    notification.ClipsDescendants = true
    notification.AutoButtonColor = false
    notification.ZIndex = 100

    local roundcorners = Instance.new("UICorner")
    roundcorners.CornerRadius = UDim.new(0, 15)
    roundcorners.Parent = notification

    local gradient = Instance.new("UIGradient")
    gradient.Color =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0, Color3.new(0.5, 0, 0.5)),
        ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
    }
    gradient.Rotation = 45
    gradient.Parent = notification

    local textlabel = Instance.new("TextLabel")
    textlabel.Size = UDim2.new(1, 0, 1, 0)
    textlabel.Position = UDim2.new(0, 0, 0, 0)
    textlabel.BackgroundTransparency = 1
    textlabel.Text = "Already Loaded ;) "
    textlabel.Font = Enum.Font.GothamBold
    textlabel.TextSize = 22
    textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textlabel.TextScaled = true
    textlabel.ZIndex = 101
    textlabel.Parent = notification

    notification:TweenPosition(UDim2.new(0.5, 0, 0.33, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 1, true)

    wait(1.83)

    notification:TweenPosition(
        UDim2.new(0.5, 0, 0, -100),
        Enum.EasingDirection.In,
        Enum.EasingStyle.Quad,
        0.5,
        true,
        function()
            gui:Destroy()
        end
    )
    return
else
    getgenv().script_loaded = true
end

local players = game:GetService("Players")
local userinputservice = game:GetService("UserInputService")
local runservice = game:GetService("RunService")
local cam = workspace.CurrentCamera
local target = nil
local lasttargetposition = nil
local holdingrightclick = false

local function isinfrontofplayer(target)
    local mycharacter = players.LocalPlayer.Character
    if not mycharacter or not mycharacter.PrimaryPart then
        return false
    end

    local myposition = mycharacter.PrimaryPart.Position
    local targetposition = target.Character.Head.Position
    local directiontotarget = (targetposition - myposition).Unit
    local lookdirection = mycharacter.PrimaryPart.CFrame.LookVector

    return directiontotarget:Dot(lookdirection) > 0
end

local function isnotbehindwall(target)
    if not wallcheck_enabled then
        return true
    end

    local mycharacter = players.LocalPlayer.Character
    if not mycharacter or not mycharacter.PrimaryPart then
        return false
    end

    local myposition = mycharacter.PrimaryPart.Position
    local targetposition = target.Character.Head.Position

    local raycastparams = RaycastParams.new()
    raycastparams.FilterDescendantsInstances = {mycharacter}
    raycastparams.FilterType = Enum.RaycastFilterType.Blacklist
    raycastparams.IgnoreWater = true

    local direction = (targetposition - myposition).Unit * (targetposition - myposition).Magnitude
    local result = workspace:Raycast(myposition, direction, raycastparams)

    return not result or result.Instance:IsDescendantOf(target.Character)
end

local function isontheteam(target)
    if not teamcheck_enabled then
        return true
    end
    return target.Team ~= players.LocalPlayer.Team
end

local function createhighlight(player)
    if esp_enabled and player.Character and player.Character:FindFirstChild("Head") then
        if not player.Character:FindFirstChildOfClass("Highlight") then
            local highlight = Instance.new("Highlight")
            highlight.Parent = player.Character
            highlight.Adornee = player.Character
            highlight.FillColor = Color3.fromRGB(255, 0, 0)
            highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
            highlight.FillTransparency = 0.75
            highlight.OutlineTransparency = 0.2

            local head = player.Character:FindFirstChild("Head")
            if head then
                local billboardgui = Instance.new("BillboardGui")
                billboardgui.Parent = head
                billboardgui.Adornee = head
                billboardgui.Size = UDim2.new(1, 0, 1, 0)
                billboardgui.StudsOffset = Vector3.new(0, 2, 0)

                local nametag = Instance.new("TextLabel")
                nametag.Parent = billboardgui
                nametag.Size = UDim2.new(1.5, 0, 1.5, 0)
                nametag.BackgroundTransparency = 1
                nametag.Text = player.DisplayName
                nametag.TextColor3 = Color3.fromRGB(255, 0, 0)
                nametag.TextScaled = true
                nametag.Font = Enum.Font.GothamBold
                nametag.TextSize = 24
            end
        end
    end
end

local function getclosestplayer()
    local mouse = players.LocalPlayer:GetMouse()
    local closesthomie = nil
    local closestdist = math.huge

    for _, homie in pairs(players:GetPlayers()) do
        if homie ~= players.LocalPlayer and homie.Character and homie.Character:FindFirstChild("Head") then
            if isinfrontofplayer(homie) and isnotbehindwall(homie) and isontheteam(homie) then
                local head = homie.Character.Head
                local headpos, onscreen = cam:WorldToScreenPoint(head.Position)

                if onscreen then
                    local mousedist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(headpos.X, headpos.Y)).Magnitude
                    local playerdist = (players.LocalPlayer.Character.PrimaryPart.Position - head.Position).Magnitude
                    local combineddist = mousedist + playerdist

                    if combineddist < closestdist then
                        closesthomie = homie
                        closestdist = combineddist
                    end
                end
            end
        end
    end

    return closesthomie
end

local function applyesp()
    for _, homie in pairs(players:GetPlayers()) do
        if homie ~= players.LocalPlayer and isontheteam(homie) then
            createhighlight(homie)
        end
    end
end

userinputservice.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            holdingrightclick = true
            target = getclosestplayer()
            lasttargetposition = target and target.Character and target.Character.PrimaryPart.Position
        end
    end
)

userinputservice.InputEnded:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            holdingrightclick = false
            target = nil
            lasttargetposition = nil
        end
    end
)

runservice.RenderStepped:Connect(
    function()
        if
            autoswitch_enabled and holdingrightclick and
                (not target or not target.Character or not target.Character:FindFirstChild("Head"))
         then
            target = getclosestplayer()
            lasttargetposition = target and target.Character and target.Character.PrimaryPart.Position
        end

        if target and target.Character and target.Character:FindFirstChild("Head") then
            local targetpos = target.Character.Head.Position
            local mycharacter = players.LocalPlayer.Character

            if not mycharacter or not mycharacter.PrimaryPart then
                return
            end

            if lasttargetposition and (targetpos - lasttargetposition).Magnitude > 10 then
                target = nil
            else
                lasttargetposition = targetpos
                local currentcframe = cam.CFrame
                local targetcframe = CFrame.new(currentcframe.Position, targetpos)
                cam.CFrame = currentcframe:Lerp(targetcframe, 1 - smoothness)

                if triggerbot_enabled then
                    mouse1press()
                    wait(0.01)
                    mouse1release()
                end
            end
        end
    end
)

print(
    [[

    ___   _____ ______
   /   | / ___// ____/
  / /| | \__ \/ /     
 / ___ |___/ / /___   
/_/  |_/____/\____/                             
           __    ____  ___    ____  __________ 
          / /   / __ \/   |  / __ \/ ____/ __ \
         / /   / / / / /| | / / / / __/ / / / /
        / /___/ /_/ / ___ |/ /_/ / /___/ /_/ / 
       /_____/\____/_/  |_/_____/_____/_____/ V3
    ]]
)

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

local notification = Instance.new("Frame")
notification.Size = UDim2.new(0, 400, 0, 100)
notification.Position = UDim2.new(0.5, 0, 0, -100)
notification.AnchorPoint = Vector2.new(0.5, 0.5)
notification.BackgroundTransparency = 0
notification.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
notification.BorderSizePixel = 0
notification.Parent = gui

local roundcorners = Instance.new("UICorner")
roundcorners.CornerRadius = UDim.new(0, 15)
roundcorners.Parent = notification

local gradient = Instance.new("UIGradient")
gradient.Color =
    ColorSequence.new {
    ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(31, 72, 100))
}
gradient.Rotation = 326
gradient.Parent = notification

local textlabel = Instance.new("TextLabel")
textlabel.Size = UDim2.new(0.7, 0, 1, 0)
textlabel.Position = UDim2.new(0, 0, 0, 0)
textlabel.BackgroundTransparency = 1
textlabel.Text = "Script Is loading, btw join the discord, you get early access to new releases https://discord.gg/NUSBZCbPqK"
textlabel.Font = Enum.Font.GothamBold
textlabel.TextSize = 22
textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textlabel.TextScaled = true
textlabel.Parent = notification

local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(0.3, 0, 0.6, 0)
copyButton.Position = UDim2.new(0.7, 0, 0.2, 0)
copyButton.BackgroundColor3 = Color3.fromRGB(30, 20, 100)
copyButton.Text = "Copy"
copyButton.Font = Enum.Font.GothamBold
copyButton.TextSize = 18
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.Parent = notification

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0, 15)
copyCorner.Parent = copyButton

notification:TweenPosition(UDim2.new(0.5, 0, 0.33, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 1, true)

copyButton.MouseButton1Click:Connect(
    function()
        setclipboard("https://discord.gg/NUSBZCbPqK")
    end
)

wait(5)

notification:TweenPosition(
    UDim2.new(0.5, 0, 0, -100),
    Enum.EasingDirection.In,
    Enum.EasingStyle.Quad,
    0.5,
    true,
    function()
        gui:Destroy()
    end
)

if esp_enabled then
    while true do
        applyesp()
        wait(1)
    end
end