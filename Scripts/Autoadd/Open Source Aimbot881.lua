--    ___   _____ ______
--   /   | / ___// ____/
--  / /| | \__ \/ /     
-- / ___ |___/ / /___   
--/_/  |_/____/\____/   
                      

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
    textlabel.Text = "Already Loaded ;)"
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
textlabel.Text = "ASC Loaded ;)!"
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

local players = game:GetService("Players")
local userinputservice = game:GetService("UserInputService")
local runservice = game:GetService("RunService")
local cam = workspace.CurrentCamera

local target = nil

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

local function isaboveplayer(target)
    local mycharacter = players.LocalPlayer.Character
    if not mycharacter or not mycharacter.PrimaryPart then
        return false
    end

    local myposition = mycharacter.PrimaryPart.Position
    local targetposition = target.Character.Head.Position
    return targetposition.Y < myposition.Y
end

local function getclosestplayerundercursor()
    local mouse = players.LocalPlayer:GetMouse()
    local closesthomie = nil
    local closestdist = math.huge

    for _, homie in pairs(players:GetPlayers()) do
        if homie ~= players.LocalPlayer and homie.Character and homie.Character:FindFirstChild("Head") then
            if isinfrontofplayer(homie) and not isaboveplayer(homie) then
                local head = homie.Character.Head
                local headpos, onscreen = cam:WorldToScreenPoint(head.Position)

                if onscreen then
                    local mouseDist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(headpos.X, headpos.Y)).Magnitude
                    if mouseDist < closestdist then
                        closesthomie = homie
                        closestdist = mouseDist
                    end
                end
            end
        end
    end

    return closesthomie
end

userinputservice.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            target = getclosestplayerundercursor()
        end
    end
)

userinputservice.InputEnded:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            target = nil
        end
    end
)

runservice.RenderStepped:Connect(
    function()
        if target and target.Character and target.Character:FindFirstChild("Head") then
            local targetpos = target.Character.Head.Position
            local mycharacter = players.LocalPlayer.Character

            if not mycharacter or not mycharacter.PrimaryPart then
                return
            end

            local currentcframe = cam.CFrame
            local targetcframe = CFrame.new(currentcframe.Position, targetpos)

            cam.CFrame = currentcframe:Lerp(targetcframe, 1)
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
        /_____/\____/_/  |_/_____/_____/_____/  
                                        
                                                      




]]
)
