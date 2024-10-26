local smoothness = 0 -- set to a higher number for more. (good for legit cheating)
local wallcheck_enabled = false-- checks for walls set to true to enable
local triggerbot_enabled = false -- automatically shoots when aiming at someone set to true to enable


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
local holdingrightclick = false

local function isnotbehindwall(target)
    if not wallcheck_enabled then
        return true
    end

    local mycharacter = players.LocalPlayer.Character
    if not mycharacter or not mycharacter.PrimaryPart then
        return false
    end

    local targetpart = target.Character:FindFirstChild("Head")
    if targetpart then
        local myposition = mycharacter.PrimaryPart.Position
        local targetposition = targetpart.Position

        local raycastparams = RaycastParams.new()
        raycastparams.FilterDescendantsInstances = {mycharacter}
        raycastparams.FilterType = Enum.RaycastFilterType.Blacklist
        raycastparams.IgnoreWater = true

        local direction = (targetposition - myposition).Unit * (targetposition - myposition).Magnitude
        local result = workspace:Raycast(myposition, direction, raycastparams)

        return not result or result.Instance:IsDescendantOf(target.Character)
    end
    return false
end

local function getclosestplayer()
    local mouse = players.LocalPlayer:GetMouse()
    local closesthomie = nil
    local closestdist = math.huge

    for _, homie in pairs(players:GetPlayers()) do
        if homie ~= players.LocalPlayer and homie.Character and homie.Character:FindFirstChild("Head") then
            if isnotbehindwall(homie) then
                local part = homie.Character:FindFirstChild("Head")
                local partpos, onscreen = cam:WorldToScreenPoint(part.Position)

                if onscreen then
                    local mousedist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(partpos.X, partpos.Y)).Magnitude
                    local playerdist = (players.LocalPlayer.Character.PrimaryPart.Position - part.Position).Magnitude
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

userinputservice.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            holdingrightclick = true
            target = getclosestplayer()
        end
    end
)

userinputservice.InputEnded:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            holdingrightclick = false
            target = nil
        end
    end
)

runservice.RenderStepped:Connect(
    function()
        if target and target.Character then
            local targetpart = target.Character:FindFirstChild("Head")

            if targetpart then
                local mycharacter = players.LocalPlayer.Character

                if not mycharacter or not mycharacter.PrimaryPart then
                    return
                end

                local targetposition = targetpart.Position
                local myposition = mycharacter.PrimaryPart.Position
                local distance = (targetposition - myposition).Magnitude

                local offset = math.clamp(distance * 0.04, 0, 5) -- recommend not messing with this if you are modifying the script
                local aimposition = targetposition - Vector3.new(0, offset, 0)

                local targetscreenpos = cam:WorldToScreenPoint(aimposition)
                local mousemovedir =
                    Vector2.new(targetscreenpos.X, targetscreenpos.Y) -
                    Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2) -- I also recommend not to mess with this if you are modifying the script

                mousemovedir = mousemovedir / (smoothness > 0 and smoothness or 1)

                mousemoverel(mousemovedir.X, mousemovedir.Y)

                if triggerbot_enabled then
                    mouse1press()
                    wait(0.01)
                    mouse1release()
                end
            end
        end
    end
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
textlabel.Text = "Loaded, Join The Discord Please!"
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