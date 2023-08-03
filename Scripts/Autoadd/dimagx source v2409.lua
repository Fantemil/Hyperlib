if not game["Loaded"] or not game:GetService("Players")["LocalPlayer"] then
    game["Loaded"]:Wait()
    game:WaitForChild(game:GetService("Players"))
    game:GetService("Players"):WaitForChild(game:GetService("Players").LocalPlayer.Name)
    repeat
        game:GetService("RunService").RenderStepped:Wait()
    until game:GetService("Players").LocalPlayer.Character
end
do
    local ui = game:GetService("CoreGui"):FindFirstChild("dimagx")
    if ui then
        ui:Destroy()
    end
end

function Notify(title, text, dur)
    game.StarterGui:SetCore("SendNotification", {
    Title = title or "Dimag X";
    Text = text or "";
    Duration = dur or math.random(3,5);
    })
end

Notify("Dimag X", "Loaded!, dawn#9990")

assert(getrawmetatable)
gmt = getrawmetatable(game)
setreadonly(gmt, false)
old = gmt.__namecall
gmt.__namecall =
    newcclosure(
        function(self, ...)
        local args = {...}
        if tostring(args[1]) == "BreathingHAMON" then
            return
        elseif tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return end

        return old(self, ...)
    end)

local function gplr(String)
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
            if v.Name ~= lp.Name then
                table.insert(Found,v)
            end
        end 
    elseif strl == "me" then
        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
            if v.Name == lp.Name then
                table.insert(Found,v)
            end
        end 
    else
        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end 
    end
    return Found 
end
local Targetting

local lib = {RainbowColorValue = 0, HueSelectionPosition = 0}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
        )
        local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
        Tween:Play()
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

local dimagx = Instance.new("ScreenGui")
dimagx.Name = "dimagx"
dimagx.Parent = game.CoreGui
dimagx.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local usi = game:GetService("UserInputService")
local uitoggled = false
usi.InputBegan:Connect(
    function(io, p)
        if io.KeyCode == Enum.KeyCode.V then
            if uitoggled == false then
                dimagx.Enabled = false
                uitoggled = true
            else
                dimagx.Enabled = true
                uitoggled = false
            end
        end
    end
)

function lib:Tween(instance, properties, duration, ...)
    TweenService:Create(instance, TweenInfo.new(duration, ...), properties):Play()
end

coroutine.wrap(
    function()
        while wait() do
            lib.RainbowColorValue = lib.RainbowColorValue + 1 / 255
            lib.HueSelectionPosition = lib.HueSelectionPosition + 1

            if lib.RainbowColorValue >= 1 then
                lib.RainbowColorValue = 0
            end

            if lib.HueSelectionPosition == 105 then
                lib.HueSelectionPosition = 0
            end
        end
    end
)()

function lib:notification(textt)
    for i, v in next, dimagx:GetChildren() do
        if v.Name == "notificationframe" then
            v:Destroy()
        end
    end
    local notificationframe = Instance.new("Frame")
    local notificationuicorner = Instance.new("UICorner")
    local Glow = Instance.new("ImageLabel")
    local text = Instance.new("TextLabel")
    local container = Instance.new("Frame")
    local containeruicorner = Instance.new("UICorner")
    local okay = Instance.new("TextButton")
    local loaduicorner = Instance.new("UICorner")
    local desc = Instance.new("TextLabel")


    notificationframe.Name = "notificationframe"
    notificationframe.Parent = dimagx
    notificationframe.AnchorPoint = Vector2.new(0.5, 0.5)
    notificationframe.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    notificationframe.Position = UDim2.new(0.5, 0, 0.50856787, 0)
    notificationframe.Size = UDim2.new(0, 406, 0, 194)

    notificationuicorner.CornerRadius = UDim.new(0, 6)
    notificationuicorner.Name = "notificationuicorner"
    notificationuicorner.Parent = notificationframe

    Glow.Name = "Glow"
    Glow.Parent = notificationframe
    Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Glow.BackgroundTransparency = 1.000
    Glow.BorderSizePixel = 0
    Glow.Position = UDim2.new(0, -15, 0, -15)
    Glow.Size = UDim2.new(1, 30, 1, 30)
    Glow.ZIndex = 0
    Glow.Image = "rbxassetid://4996891970"
    Glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
    Glow.ScaleType = Enum.ScaleType.Slice
    Glow.SliceCenter = Rect.new(20, 20, 280, 280)

    text.Name = "text"
    text.Parent = notificationframe
    text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    text.BackgroundTransparency = 1.000
    text.Position = UDim2.new(0.0470411777, 0, 0.0600325875, 0)
    text.Size = UDim2.new(0, 106, 0, 28)
    text.Font = Enum.Font.GothamSemibold
    text.Text = "Notification"
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.TextSize = 18.000
    text.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    text.TextWrapped = true
    text.TextXAlignment = Enum.TextXAlignment.Left

    container.Name = "container"
    container.Parent = notificationframe
    container.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
    container.Position = UDim2.new(0.031752713, 0, 0.228634387, 0)
    container.Size = UDim2.new(0, 383, 0, 142)

    containeruicorner.CornerRadius = UDim.new(0, 6)
    containeruicorner.Name = "containeruicorner"
    containeruicorner.Parent = container

    okay.Name = "okay"
    okay.Parent = container
    okay.AnchorPoint = Vector2.new(0.5, 0.5)
    okay.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
    okay.BackgroundTransparency = -0.050
    okay.Position = UDim2.new(0.499596477, 0, 0.844715297, 0)
    okay.Size = UDim2.new(0, 368, 0, 31)
    okay.AutoButtonColor = false
    okay.Font = Enum.Font.Gotham
    okay.Text = "Okay"
    okay.TextColor3 = Color3.fromRGB(255, 255, 255)
    okay.TextSize = 14.000

    loaduicorner.CornerRadius = UDim.new(0, 3)
    loaduicorner.Name = "loaduicorner"
    loaduicorner.Parent = okay

    desc.Name = "desc"
    desc.Parent = notificationframe
    desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    desc.BackgroundTransparency = 1.000
    desc.Position = UDim2.new(0.226844221, 0, 0.410032541, 0)
    desc.Size = UDim2.new(0, 223, 0, 42)
    desc.Font = Enum.Font.GothamSemibold
    desc.Text = textt
    desc.TextColor3 = Color3.fromRGB(255, 255, 255)
    desc.TextScaled = true
    desc.TextSize = 18.000
    desc.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    desc.TextWrapped = true
    
    okay.MouseEnter:Connect(
        function()
            TweenService:Create(
                okay,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 = Color3.fromRGB(71, 71, 71)}
            ):Play()
        end
    )

    okay.MouseLeave:Connect(
        function()
            TweenService:Create(
                okay,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 = Color3.fromRGB(61, 61, 61)}
            ):Play()
        end
    )
    
    okay.MouseButton1Click:Connect(function()
        notificationframe:Destroy()
    end)
end

function lib:MainWindow(text)
    local ft = false

    local mainframe = Instance.new("Frame")
    local mainuicorner = Instance.new("UICorner")
    local leftframe = Instance.new("Frame")
    local leftuicorner = Instance.new("UICorner")
    local title = Instance.new("TextLabel")
    local gamename = Instance.new("TextLabel")
    local tabholder = Instance.new("Frame")
    local tabuicorner = Instance.new("UICorner")
    local tabuilist = Instance.new("UIListLayout")
    local tabuipadding = Instance.new("UIPadding")
    local currenttab = Instance.new("TextLabel")
    local Glow = Instance.new("ImageLabel")
    local Glow_2 = Instance.new("ImageLabel")
    local containers = Instance.new("Folder")
    local dragframe = Instance.new("Frame")

    mainframe.Name = "mainframe"
    mainframe.Parent = dimagx
    mainframe.AnchorPoint = Vector2.new(0.5, 0.5)
    mainframe.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    mainframe.Position = UDim2.new(0.5, 0, 0.5, 0)
    mainframe.Size = UDim2.new(0, 624, 0, 358)

    mainuicorner.CornerRadius = UDim.new(0, 6)
    mainuicorner.Name = "mainuicorner"
    mainuicorner.Parent = mainframe

    leftframe.Name = "leftframe"
    leftframe.Parent = mainframe
    leftframe.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    leftframe.Position = UDim2.new(-0.000906724192, 0, -0.000741202093, 0)
    leftframe.Size = UDim2.new(0, 162, 0, 358)

    leftuicorner.CornerRadius = UDim.new(0, 6)
    leftuicorner.Name = "leftuicorner"
    leftuicorner.Parent = leftframe

    title.Name = "title"
    title.Parent = leftframe
    title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1.000
    title.Position = UDim2.new(0.172839507, 0, 0.0558659211, 0)
    title.Size = UDim2.new(0, 106, 0, 28)
    title.Font = Enum.Font.GothamSemibold
    title.Text = "Dimag X"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 18.000
    title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

    gamename.Name = "gamename"
    gamename.Parent = leftframe
    gamename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    gamename.BackgroundTransparency = 1.000
    gamename.Position = UDim2.new(0.172839507, 0, 0.0977653712, 0)
    gamename.Size = UDim2.new(0, 106, 0, 28)
    gamename.Font = Enum.Font.Gotham
    gamename.Text = text
    gamename.TextColor3 = Color3.fromRGB(255, 255, 255)
    gamename.TextSize = 12.000
    gamename.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

    tabholder.Name = "tabholder"
    tabholder.Parent = leftframe
    tabholder.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    tabholder.Position = UDim2.new(0.0608215332, 0, 0.175977647, 0)
    tabholder.Size = UDim2.new(0, 141, 0, 283)

    tabuicorner.CornerRadius = UDim.new(0, 6)
    tabuicorner.Name = "tabuicorner"
    tabuicorner.Parent = tabholder

    tabuilist.Name = "tabuilist"
    tabuilist.Parent = tabholder
    tabuilist.SortOrder = Enum.SortOrder.LayoutOrder
    tabuilist.Padding = UDim.new(0, 6)

    tabuipadding.Name = "tabuipadding"
    tabuipadding.Parent = tabholder
    tabuipadding.PaddingBottom = UDim.new(0, 6)
    tabuipadding.PaddingTop = UDim.new(0, 6)

    currenttab.Name = "currenttab"
    currenttab.Parent = leftframe
    currenttab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    currenttab.BackgroundTransparency = 1.000
    currenttab.Position = UDim2.new(1.09876537, 0, 0.0558659211, 0)
    currenttab.Size = UDim2.new(0, 106, 0, 28)
    currenttab.Font = Enum.Font.GothamSemibold
    currenttab.Text = "Main"
    currenttab.TextColor3 = Color3.fromRGB(255, 255, 255)
    currenttab.TextSize = 18.000
    currenttab.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    currenttab.TextWrapped = true
    currenttab.TextXAlignment = Enum.TextXAlignment.Left

    Glow.Name = "Glow"
    Glow.Parent = leftframe
    Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Glow.BackgroundTransparency = 1.000
    Glow.BorderSizePixel = 0
    Glow.Position = UDim2.new(0, -15, 0, -15)
    Glow.Size = UDim2.new(1, 30, 1, 30)
    Glow.ZIndex = 0
    Glow.Image = "rbxassetid://4996891970"
    Glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
    Glow.ScaleType = Enum.ScaleType.Slice
    Glow.SliceCenter = Rect.new(20, 20, 280, 280)

    Glow_2.Name = "Glow"
    Glow_2.Parent = mainframe
    Glow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Glow_2.BackgroundTransparency = 1.000
    Glow_2.BorderSizePixel = 0
    Glow_2.Position = UDim2.new(0, -15, 0, -15)
    Glow_2.Size = UDim2.new(1, 30, 1, 30)
    Glow_2.ZIndex = 0
    Glow_2.Image = "rbxassetid://4996891970"
    Glow_2.ImageColor3 = Color3.fromRGB(15, 15, 15)
    Glow_2.ScaleType = Enum.ScaleType.Slice
    Glow_2.SliceCenter = Rect.new(20, 20, 280, 280)

    dragframe.Name = "dragframe"
    dragframe.Parent = mainframe
    dragframe.AnchorPoint = Vector2.new(0.5, 0.5)
    dragframe.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    dragframe.BackgroundTransparency = 1.000
    dragframe.Position = UDim2.new(0.629807711, 0, 0.0893854722, 0)
    dragframe.Size = UDim2.new(0, 448, 0, 48)
    MakeDraggable(dragframe, mainframe)

    containers.Name = "containers"
    containers.Parent = mainframe

    local window = {}

    function window:Tab(title)
        local scrollframe = Instance.new("ScrollingFrame")
        local container = Instance.new("Frame")
        local containeruicorner = Instance.new("UICorner")
        local scrolluilist = Instance.new("UIListLayout")
        local tab = Instance.new("TextButton")

        tab.Name = "tab"
        tab.Parent = tabholder
        tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tab.BackgroundTransparency = 1.000
        tab.Size = UDim2.new(0, 141, 0, 22)
        tab.Font = Enum.Font.Gotham
        tab.Text = title
        tab.TextColor3 = Color3.fromRGB(255, 255, 255)
        tab.TextSize = 14.000
        tab.TextTransparency = 0.5

        scrollframe.Name = "scrollframe"
        scrollframe.Parent = container
        scrollframe.Active = true
        scrollframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        scrollframe.BackgroundTransparency = 1.000
        scrollframe.BorderSizePixel = 0
        scrollframe.Position = UDim2.new(0.0260001495, 0, 0.04099999, 0)
        scrollframe.Size = UDim2.new(0, 427, 0, 264)
        scrollframe.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        scrollframe.CanvasSize = UDim2.new(0, 0, 0, 0)
        scrollframe.ScrollBarThickness = 2
        scrollframe.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        scrollframe.ScrollBarImageColor3 = Color3.fromRGB(75, 75, 75)

        scrolluilist.Name = "scrolluilist"
        scrolluilist.Parent = scrollframe
        scrolluilist.SortOrder = Enum.SortOrder.LayoutOrder
        scrolluilist.Padding = UDim.new(0, 3)

        container.Name = "container"
        container.Parent = containers
        container.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
        container.Position = UDim2.new(0.273131847, 0, 0.175236449, 0)
        container.Size = UDim2.new(0, 443, 0, 283)
        container.Visible = false

        containeruicorner.CornerRadius = UDim.new(0, 6)
        containeruicorner.Name = "containeruicorner"
        containeruicorner.Parent = container

        if ft == false then
            ft = true
            container.Visible = true
            tab.TextTransparency = 0
            currenttab.Text = title
        end

        tab.MouseButton1Click:Connect(
            function()
                for i, v in next, containers:GetChildren() do
                    if v.Name == "container" then
                        v.Visible = false
                    end
                end
                for i, v in next, tabholder:GetChildren() do
                    if v.ClassName == "TextButton" then
                        v.TextTransparency = 0.5
                    end
                end
                container.Visible = true
                tab.TextTransparency = 0
                currenttab.Text = title
            end
        )
        local tab = {}

        function tab:Button(title, callback)
            local button = Instance.new("TextButton")
            local buttonuicorner = Instance.new("UICorner")

            button.Name = "button"
            button.Parent = scrollframe
            button.AnchorPoint = Vector2.new(0.5, 0.5)
            button.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            button.Position = UDim2.new(0.503571451, 0, 0.535714269, 0)
            button.Size = UDim2.new(0, 420, 0, 28)
            button.AutoButtonColor = false
            button.Font = Enum.Font.Gotham
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.TextSize = 14.000
            button.Text = title

            buttonuicorner.CornerRadius = UDim.new(0, 3)
            buttonuicorner.Name = "buttonuicorner"
            buttonuicorner.Parent = button

            button.MouseEnter:Connect(
                function()
                    TweenService:Create(
                        button,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(71, 71, 71)}
                    ):Play()
                end
            )

            button.MouseLeave:Connect(
                function()
                    TweenService:Create(
                        button,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(61, 61, 61)}
                    ):Play()
                end
            )

            button.MouseButton1Click:Connect(
                function()
                    button.TextSize = 0
                    lib:Tween(button, {TextSize = 16}, 0.2)

                    wait(0.2)
                    lib:Tween(button, {TextSize = 14}, 0.2)
                    if callback then
                        pcall(callback)
                    end
                end
            )

            scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
        end

        function tab:Toggle(text, toggled, callback)
            local t = false

            local toggle = Instance.new("TextButton")
            local toggleuicorner = Instance.new("UICorner")
            local title = Instance.new("TextLabel")
            local box = Instance.new("Frame")
            local fill = Instance.new("Frame")
            local filluicorner = Instance.new("UICorner")
            local boxuicorner = Instance.new("UICorner")

            toggle.Name = "toggle"
            toggle.Parent = scrollframe
            toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            toggle.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            toggle.Position = UDim2.new(0.503571451, 0, 0.535714269, 0)
            toggle.Size = UDim2.new(0, 420, 0, 28)
            toggle.AutoButtonColor = false
            toggle.Font = Enum.Font.Gotham
            toggle.Text = ""
            toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            toggle.TextSize = 14.000

            toggleuicorner.CornerRadius = UDim.new(0, 3)
            toggleuicorner.Name = "toggleuicorner"
            toggleuicorner.Parent = toggle

            title.Name = "title"
            title.Parent = toggle
            title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            title.BackgroundTransparency = 1.000
            title.Position = UDim2.new(0.0238095261, 0, 0.178571433, 0)
            title.Size = UDim2.new(0, 55, 0, 17)
            title.Font = Enum.Font.Gotham
            title.Text = text
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 14.000
            title.TextXAlignment = Enum.TextXAlignment.Left

            box.Name = "box"
            box.Parent = toggle
            box.AnchorPoint = Vector2.new(1, 0.5)
            box.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
            box.BorderSizePixel = 0
            box.Position = UDim2.new(1, -5, 0.5, 0)
            box.Size = UDim2.new(0, 36, 1, -8)

            fill.Name = "fill"
            fill.Parent = box
            fill.AnchorPoint = Vector2.new(0, 0.5)
            fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            fill.BorderSizePixel = 0
            fill.Position = UDim2.new(0, 2, 0.5, 0)
            fill.Size = UDim2.new(0.5, -2, 1, -4)

            filluicorner.CornerRadius = UDim.new(0, 3)
            filluicorner.Name = "filluicorner"
            filluicorner.Parent = fill

            boxuicorner.CornerRadius = UDim.new(0, 3)
            boxuicorner.Name = "boxuicorner"
            boxuicorner.Parent = box

            toggle.MouseEnter:Connect(
                function()
                    TweenService:Create(
                        toggle,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(71, 71, 71)}
                    ):Play()
                end
            )

            toggle.MouseLeave:Connect(
                function()
                    TweenService:Create(
                        toggle,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(61, 61, 61)}
                    ):Play()
                end
            )

            toggle.MouseButton1Click:Connect(
                function()
                    if t == true then
                        fill:TweenPosition(UDim2.new(0, 2, 0.5, 0), "In", "Linear", 0.2)
                        if callback then
                            callback(false)
                        end
                        t = not t
                    else
                        fill:TweenPosition(UDim2.new(0, 17, 0.5, 0), "Out", "Linear", 0.2)
                        if callback then
                            callback(true)
                        end
                        t = not t
                    end
                end
            )
            scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
        end

        function tab:Colorpicker(text, presetcolor, callback)
            local colorpicker = Instance.new("TextButton")
            local colorpickeruicorner = Instance.new("UICorner")
            local title = Instance.new("TextLabel")
            local currentcolor = Instance.new("Frame")
            local currentcoloruicorner = Instance.new("UICorner")

            local ColorPickerToggled = false
            local OldToggleColor = Color3.fromRGB(0, 0, 0)
            local OldColor = Color3.fromRGB(0, 0, 0)
            local OldColorSelectionPosition = nil
            local OldHueSelectionPosition = nil
            local ColorH, ColorS, ColorV = 1, 1, 1
            local RainbowColorPicker = false
            local ColorPickerInput = nil
            local ColorInput = nil
            local HueInput = nil

            colorpicker.Name = "colorpicker"
            colorpicker.Parent = scrollframe
            colorpicker.AnchorPoint = Vector2.new(0.5, 0.5)
            colorpicker.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            colorpicker.Position = UDim2.new(0.516391993, 0, 0.569233835, 0)
            colorpicker.Size = UDim2.new(0, 420, 0, 28)
            colorpicker.AutoButtonColor = false
            colorpicker.Font = Enum.Font.Gotham
            colorpicker.Text = ""
            colorpicker.TextColor3 = Color3.fromRGB(255, 255, 255)
            colorpicker.TextSize = 14.000

            colorpickeruicorner.CornerRadius = UDim.new(0, 3)
            colorpickeruicorner.Name = "colorpickeruicorner"
            colorpickeruicorner.Parent = colorpicker

            title.Name = "title"
            title.Parent = colorpicker
            title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            title.BackgroundTransparency = 1.000
            title.Position = UDim2.new(0.0238095261, 0, 0.178571433, 0)
            title.Size = UDim2.new(0, 55, 0, 17)
            title.Font = Enum.Font.Gotham
            title.Text = text
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 14.000
            title.TextXAlignment = Enum.TextXAlignment.Left

            currentcolor.Name = "currentcolor"
            currentcolor.Parent = colorpicker
            currentcolor.AnchorPoint = Vector2.new(1, 0.5)
            currentcolor.BackgroundColor3 = presetcolor
            currentcolor.BorderSizePixel = 0
            currentcolor.Position = UDim2.new(1, -5, 0.5, 0)
            currentcolor.Size = UDim2.new(0, 36, 1, -8)

            currentcoloruicorner.CornerRadius = UDim.new(0, 3)
            currentcoloruicorner.Name = "currentcoloruicorner"
            currentcoloruicorner.Parent = currentcolor

            local colorpickerframe = Instance.new("Frame")
            local color = Instance.new("ImageLabel")
            local UICorner = Instance.new("UICorner")
            local colorselection = Instance.new("ImageLabel")
            local colorhue = Instance.new("ImageLabel")
            local huecorner = Instance.new("UICorner")
            local UIGradient = Instance.new("UIGradient")
            local hueselection = Instance.new("ImageLabel")
            local confirmbutton = Instance.new("TextButton")
            local confirmbuttonuicorner = Instance.new("UICorner")
            local colorpickeruicorner = Instance.new("UICorner")
            local rainbowtoggle = Instance.new("TextButton")
            local rainbowtoggleuicorner = Instance.new("UICorner")
            local title = Instance.new("TextLabel")
            local box = Instance.new("Frame")
            local fill = Instance.new("Frame")
            local filluicorner = Instance.new("UICorner")
            local boxuicorner = Instance.new("UICorner")

            colorpickerframe.Name = "colorpickerframe"
            colorpickerframe.Parent = scrollframe
            colorpickerframe.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            colorpickerframe.Position = UDim2.new(1.06778276, 0, -0.0327380896, 0)
            colorpickerframe.Size = UDim2.new(0, 169, 0, 175)
            colorpickerframe.Visible = false

            color.Name = "color"
            color.Parent = colorpickerframe
            color.BackgroundColor3 = presetcolor
            color.Position = UDim2.new(0, 9, 0, 10)
            color.Size = UDim2.new(0, 124, 0, 105)
            color.ZIndex = 10
            color.Image = "rbxassetid://4155801252"

            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = color

            colorselection.Name = "colorselection"
            colorselection.Parent = color
            colorselection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            colorselection.BackgroundTransparency = 1.000
            colorselection.ZIndex = 25
            colorselection.AnchorPoint = Vector2.new(0.5, 0.5)
            colorselection.Position = UDim2.new(presetcolor and select(3, Color3.toHSV(presetcolor)))
            colorselection.Size = UDim2.new(0, 18, 0, 18)
            colorselection.Image = "rbxassetid://4953646208"
            colorselection.ScaleType = Enum.ScaleType.Fit

            colorhue.Name = "colorhue"
            colorhue.Parent = colorpickerframe
            colorhue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            colorhue.Position = UDim2.new(0, 136, 0, 10)
            colorhue.Size = UDim2.new(0, 25, 0, 105)

            huecorner.CornerRadius = UDim.new(0, 3)
            huecorner.Name = "huecorner"
            huecorner.Parent = colorhue

            UIGradient.Color =
                ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
                ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
                ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
                ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
                ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
                ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
            }
            UIGradient.Rotation = 270
            UIGradient.Parent = colorhue

            hueselection.Name = "hueselection"
            hueselection.Parent = colorhue
            hueselection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            hueselection.BackgroundTransparency = 1.000
            hueselection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(presetcolor)))
            hueselection.Size = UDim2.new(0, 18, 0, 18)
            hueselection.Image = "rbxassetid://4953646208"
            hueselection.AnchorPoint = Vector2.new(0.5, 0.5)

            confirmbutton.Name = "confirmbutton"
            confirmbutton.Parent = colorpickerframe
            confirmbutton.AnchorPoint = Vector2.new(0.5, 0.5)
            confirmbutton.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
            confirmbutton.Position = UDim2.new(0.499422163, 0, 0.90464288, 0)
            confirmbutton.Size = UDim2.new(0, 150, 0, 19)
            confirmbutton.AutoButtonColor = false
            confirmbutton.Font = Enum.Font.Gotham
            confirmbutton.Text = "Confirm"
            confirmbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
            confirmbutton.TextSize = 14.000

            confirmbuttonuicorner.CornerRadius = UDim.new(0, 3)
            confirmbuttonuicorner.Name = "confirmbuttonuicorner"
            confirmbuttonuicorner.Parent = confirmbutton

            colorpickeruicorner.CornerRadius = UDim.new(0, 3)
            colorpickeruicorner.Name = "colorpickeruicorner"
            colorpickeruicorner.Parent = colorpickerframe

            rainbowtoggle.Name = "rainbowtoggle"
            rainbowtoggle.Parent = colorpickerframe
            rainbowtoggle.AnchorPoint = Vector2.new(0.5, 0.5)
            rainbowtoggle.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            rainbowtoggle.Position = UDim2.new(0.495000005, 0, 0.755999982, 0)
            rainbowtoggle.Size = UDim2.new(0, 152, 0, 25)
            rainbowtoggle.AutoButtonColor = false
            rainbowtoggle.Font = Enum.Font.Gotham
            rainbowtoggle.Text = ""
            rainbowtoggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            rainbowtoggle.TextSize = 14.000

            rainbowtoggleuicorner.CornerRadius = UDim.new(0, 3)
            rainbowtoggleuicorner.Name = "rainbowtoggleuicorner"
            rainbowtoggleuicorner.Parent = rainbowtoggle

            title.Name = "title"
            title.Parent = rainbowtoggle
            title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            title.BackgroundTransparency = 1.000
            title.Position = UDim2.new(0.0238095261, 0, 0.178571433, 0)
            title.Size = UDim2.new(0, 55, 0, 17)
            title.Font = Enum.Font.Gotham
            title.Text = "Rainbow"
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 14.000
            title.TextXAlignment = Enum.TextXAlignment.Left

            box.Name = "box"
            box.Parent = rainbowtoggle
            box.AnchorPoint = Vector2.new(1, 0.5)
            box.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
            box.BorderSizePixel = 0
            box.Position = UDim2.new(1, -5, 0.5, 0)
            box.Size = UDim2.new(0, 36, 1, -8)

            fill.Name = "fill"
            fill.Parent = box
            fill.AnchorPoint = Vector2.new(0, 0.5)
            fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            fill.BorderSizePixel = 0
            fill.Position = UDim2.new(0, 2, 0.5, 0)
            fill.Size = UDim2.new(0.5, -2, 1, -4)

            filluicorner.CornerRadius = UDim.new(0, 3)
            filluicorner.Name = "filluicorner"
            filluicorner.Parent = fill

            boxuicorner.CornerRadius = UDim.new(0, 3)
            boxuicorner.Name = "boxuicorner"
            boxuicorner.Parent = box

            colorpicker.MouseEnter:Connect(
                function()
                    TweenService:Create(
                        colorpicker,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(71, 71, 71)}
                    ):Play()
                end
            )

            colorpicker.MouseLeave:Connect(
                function()
                    TweenService:Create(
                        colorpicker,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(61, 61, 61)}
                    ):Play()
                end
            )

            local function UpdateColorPicker(nope)
                currentcolor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
                color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

                callback(currentcolor.BackgroundColor3)
            end

            ColorH =
                1 -
                (math.clamp(hueselection.AbsolutePosition.Y - colorhue.AbsolutePosition.Y, 0, colorhue.AbsoluteSize.Y) /
                colorhue.AbsoluteSize.Y)
            ColorS =
                (math.clamp(colorselection.AbsolutePosition.X - color.AbsolutePosition.X, 0, color.AbsoluteSize.X) /
                color.AbsoluteSize.X)
            ColorV =
                1 -
                (math.clamp(colorselection.AbsolutePosition.Y - color.AbsolutePosition.Y, 0, color.AbsoluteSize.Y) /
                color.AbsoluteSize.Y)

            currentcolor.BackgroundColor3 = presetcolor
            color.BackgroundColor3 = presetcolor
            callback(color.BackgroundColor3)

            color.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if RainbowColorPicker then
                            return
                        end

                        if ColorInput then
                            ColorInput:Disconnect()
                        end

                        ColorInput =
                            RunService.RenderStepped:Connect(
                            function()
                                local ColorX =
                                    (math.clamp(Mouse.X - color.AbsolutePosition.X, 0, color.AbsoluteSize.X) /
                                    color.AbsoluteSize.X)
                                local ColorY =
                                    (math.clamp(Mouse.Y - color.AbsolutePosition.Y, 0, color.AbsoluteSize.Y) /
                                    color.AbsoluteSize.Y)

                                colorselection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                                ColorS = ColorX
                                ColorV = 1 - ColorY

                                UpdateColorPicker(true)
                            end
                        )
                    end
                end
            )

            color.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if ColorInput then
                            ColorInput:Disconnect()
                        end
                    end
                end
            )

            colorhue.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if RainbowColorPicker then
                            return
                        end

                        if HueInput then
                            HueInput:Disconnect()
                        end

                        HueInput =
                            RunService.RenderStepped:Connect(
                            function()
                                local HueY =
                                    (math.clamp(Mouse.Y - colorhue.AbsolutePosition.Y, 0, colorhue.AbsoluteSize.Y) /
                                    colorhue.AbsoluteSize.Y)

                                hueselection.Position = UDim2.new(0.48, 0, HueY, 0)
                                ColorH = 1 - HueY

                                UpdateColorPicker(true)
                            end
                        )
                    end
                end
            )

            colorhue.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if HueInput then
                            HueInput:Disconnect()
                        end
                    end
                end
            )

            rainbowtoggle.MouseButton1Down:Connect(
                function()
                    RainbowColorPicker = not RainbowColorPicker

                    if ColorInput then
                        ColorInput:Disconnect()
                    end

                    if HueInput then
                        HueInput:Disconnect()
                    end

                    if RainbowColorPicker then
                        fill:TweenPosition(UDim2.new(0, 17, 0.5, 0), "In", "Linear", 0.2)

                        OldToggleColor = currentcolor.BackgroundColor3
                        OldColor = color.BackgroundColor3
                        OldColorSelectionPosition = colorselection.Position
                        OldHueSelectionPosition = hueselection.Position

                        while RainbowColorPicker do
                            currentcolor.BackgroundColor3 = Color3.fromHSV(lib.RainbowColorValue, 1, 1)
                            color.BackgroundColor3 = Color3.fromHSV(lib.RainbowColorValue, 1, 1)

                            colorselection.Position = UDim2.new(1, 0, 0, 0)
                            hueselection.Position = UDim2.new(0.48, 0, 0, lib.HueSelectionPosition)

                            callback(color.BackgroundColor3)
                            wait()
                        end
                    elseif not RainbowColorPicker then
                        fill:TweenPosition(UDim2.new(0, 2, 0.5, 0), "Out", "Linear", 0.2)
                        currentcolor.BackgroundColor3 = OldToggleColor
                        color.BackgroundColor3 = OldColor

                        colorselection.Position = OldColorSelectionPosition
                        hueselection.Position = OldHueSelectionPosition

                        callback(currentcolor.BackgroundColor3)
                    end
                end
            )

            colorpicker.MouseButton1Click:Connect(
                function()
                    if ColorPickerToggled == true then
                        ColorPickerToggled = not ColorPickerToggled
                        colorpickerframe.Visible = false
                        scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
                    else
                        ColorPickerToggled = not ColorPickerToggled
                        colorpickerframe.Visible = true
                        scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
                    end
                end
            )

            confirmbutton.MouseButton1Click:Connect(
                function()
                    ColorPickerToggled = not ColorPickerToggled
                    colorpickerframe.Visible = false
                    scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
                end
            )

            scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
        end

        function tab:Slider(text, min, max, callback)
            local dragging = false
            local slider = Instance.new("TextButton")
            local slideruicorner = Instance.new("UICorner")
            local title = Instance.new("TextLabel")
            local placetoslide = Instance.new("Frame")
            local slidingframe = Instance.new("Frame")
            local slidinguicorner = Instance.new("UICorner")
            local placeuicorner = Instance.new("UICorner")
            local valueframe = Instance.new("Frame")
            local valueuicorner = Instance.new("UICorner")
            local value = Instance.new("TextLabel")

            slider.Name = "slider"
            slider.Parent = scrollframe
            slider.AnchorPoint = Vector2.new(0.5, 0.5)
            slider.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            slider.Position = UDim2.new(0.503571451, 0, 0.562250555, 0)
            slider.Size = UDim2.new(0, 420, 0, 47)
            slider.AutoButtonColor = false
            slider.Font = Enum.Font.Gotham
            slider.Text = ""
            slider.TextColor3 = Color3.fromRGB(255, 255, 255)
            slider.TextSize = 14.000

            slideruicorner.CornerRadius = UDim.new(0, 3)
            slideruicorner.Name = "slideruicorner"
            slideruicorner.Parent = slider

            title.Name = "title"
            title.Parent = slider
            title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            title.BackgroundTransparency = 1.000
            title.Position = UDim2.new(0.0261903312, 0, 0.19669877, 0)
            title.Size = UDim2.new(0, 54, 0, 15)
            title.Font = Enum.Font.Gotham
            title.Text = text
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 14.000
            title.TextXAlignment = Enum.TextXAlignment.Left

            placetoslide.Name = "placetoslide"
            placetoslide.Parent = slider
            placetoslide.AnchorPoint = Vector2.new(1, 0.5)
            placetoslide.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
            placetoslide.BorderSizePixel = 0
            placetoslide.Position = UDim2.new(0.973809481, 0, 0.769376695, 0)
            placetoslide.Size = UDim2.new(0, 398, 0, 8)

            slidingframe.Name = "slidingframe"
            slidingframe.Parent = placetoslide
            slidingframe.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
            slidingframe.BorderSizePixel = 0
            slidingframe.Size = UDim2.new(0, 0, 1, 0)

            slidinguicorner.CornerRadius = UDim.new(0, 3)
            slidinguicorner.Name = "slidinguicorner"
            slidinguicorner.Parent = slidingframe

            placeuicorner.CornerRadius = UDim.new(0, 3)
            placeuicorner.Name = "placeuicorner"
            placeuicorner.Parent = placetoslide

            valueframe.Name = "valueframe"
            valueframe.Parent = slider
            valueframe.AnchorPoint = Vector2.new(1, 0.5)
            valueframe.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
            valueframe.BorderSizePixel = 0
            valueframe.Position = UDim2.new(0.973809361, 0, 0.363507211, 0)
            valueframe.Size = UDim2.new(0, 44, 0, 16)

            valueuicorner.CornerRadius = UDim.new(0, 3)
            valueuicorner.Name = "valueuicorner"
            valueuicorner.Parent = valueframe

            value.Name = "value"
            value.Parent = valueframe
            value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            value.BackgroundTransparency = 1.000
            value.Position = UDim2.new(-0.0209999997, 0, 0.00999999978, 0)
            value.Size = UDim2.new(0, 44, 0, 16)
            value.Font = Enum.Font.Gotham
            value.Text = min
            value.TextColor3 = Color3.fromRGB(255, 255, 255)
            value.TextSize = 12.000

            local function slide(input)
                local pos =
                    UDim2.new(
                    math.clamp((input.Position.X - placetoslide.AbsolutePosition.X) / placetoslide.AbsoluteSize.X, 0, 1),
                    0,
                    1,
                    0
                )
                slidingframe:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
                local s = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                value.Text = tostring(s)
                callback(s)
            end

            placetoslide.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        slide(input)
                        dragging = true
                    end
                end
            )

            placetoslide.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end
            )

            UserInputService.InputChanged:Connect(
                function(input)
                    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                        slide(input)
                    end
                end
            )
            scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
        end

        function tab:Label(text)
            local labelfunc = {}
            local label = Instance.new("TextButton")
            local labeluicorner = Instance.new("UICorner")

            label.Name = "button"
            label.Parent = scrollframe
            label.AnchorPoint = Vector2.new(0.5, 0.5)
            label.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            label.Position = UDim2.new(0.503571451, 0, 0.535714269, 0)
            label.Size = UDim2.new(0, 420, 0, 28)
            label.AutoButtonColor = false
            label.Font = Enum.Font.Gotham
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.TextSize = 14.000
            label.Text = text

            labeluicorner.CornerRadius = UDim.new(0, 3)
            labeluicorner.Name = "buttonuicorner"
            labeluicorner.Parent = label
            scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
            function labelfunc:Change(name)
                label.Text = name
            end
            return labelfunc
        end

        function tab:Spliter()
            local spliter = Instance.new("TextButton")
            local spliteruicorner = Instance.new("UICorner")
            spliter.Name = "spliter"
            spliter.Parent = scrollframe
            spliter.AnchorPoint = Vector2.new(0.5, 0.5)
            spliter.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            spliter.Position = UDim2.new(0.491803288, 0, 0.42992425, 0)
            spliter.Size = UDim2.new(0, 420, 0, 3)
            spliter.AutoButtonColor = false
            spliter.Font = Enum.Font.Gotham
            spliter.Text = ""
            spliter.TextColor3 = Color3.fromRGB(255, 255, 255)
            spliter.TextSize = 14.000

            spliteruicorner.CornerRadius = UDim.new(0, 3)
            spliteruicorner.Name = "spliteruicorner"
            spliteruicorner.Parent = spliter
            scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
        end
        function tab:Textbox(text, disapper, callback)
            local textbox = Instance.new("TextButton")
            local textboxuicorner = Instance.new("UICorner")
            local title = Instance.new("TextLabel")
            local textboxframe = Instance.new("Frame")
            local textboxframeuicorner = Instance.new("UICorner")
            local textboxmain = Instance.new("TextBox")
            textbox.Name = "textbox"
            textbox.Parent = scrollframe
            textbox.AnchorPoint = Vector2.new(0.5, 0.5)
            textbox.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            textbox.Position = UDim2.new(0.516391993, 0, 0.569233835, 0)
            textbox.Size = UDim2.new(0, 420, 0, 28)
            textbox.AutoButtonColor = false
            textbox.Font = Enum.Font.Gotham
            textbox.Text = ""
            textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
            textbox.TextSize = 14.000

            textboxuicorner.CornerRadius = UDim.new(0, 3)
            textboxuicorner.Name = "textboxuicorner"
            textboxuicorner.Parent = textbox

            title.Name = "title"
            title.Parent = textbox
            title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            title.BackgroundTransparency = 1.000
            title.Position = UDim2.new(0.0238095261, 0, 0.178571433, 0)
            title.Size = UDim2.new(0, 55, 0, 17)
            title.Font = Enum.Font.Gotham
            title.Text = text
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 14.000
            title.TextXAlignment = Enum.TextXAlignment.Left

            textboxframe.Name = "textboxframe"
            textboxframe.Parent = textbox
            textboxframe.AnchorPoint = Vector2.new(1, 0.5)
            textboxframe.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
            textboxframe.BorderSizePixel = 0
            textboxframe.Position = UDim2.new(1.00000012, -5, 0.5, 0)
            textboxframe.Size = UDim2.new(0.349999994, 36, 1, -8)

            textboxframeuicorner.CornerRadius = UDim.new(0, 3)
            textboxframeuicorner.Name = "textboxframeuicorner"
            textboxframeuicorner.Parent = textboxframe

            textboxmain.Name = "textboxmain"
            textboxmain.Parent = textboxframe
            textboxmain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textboxmain.BackgroundTransparency = 1.000
            textboxmain.Size = UDim2.new(0, 182, 0, 20)
            textboxmain.Font = Enum.Font.Gotham
            textboxmain.Text = ""
            textboxmain.TextColor3 = Color3.fromRGB(255, 255, 255)
            textboxmain.TextSize = 14.000

            textboxmain.FocusLost:Connect(
                function(ep)
                    if ep then
                        if #textboxmain.Text > 0 then
                            callback(textboxmain.Text)
                            if disapper then
                                textboxmain.Text = ""
                            end
                        end
                    end
                end
            )

            scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
        end

        function tab:Dropdown(name, list, callback)
            local d = false
            local dropdown = Instance.new("TextButton")
            local dropdownuicorner = Instance.new("UICorner")
            local title = Instance.new("TextLabel")
            local arrow = Instance.new("ImageLabel")

            dropdown.Name = "dropdown"
            dropdown.Parent = scrollframe
            dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
            dropdown.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            dropdown.Position = UDim2.new(0.503571451, 0, 0.535714269, 0)
            dropdown.Size = UDim2.new(0, 420, 0, 28)
            dropdown.AutoButtonColor = false
            dropdown.Font = Enum.Font.Gotham
            dropdown.Text = ""
            dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
            dropdown.TextSize = 14.000

            dropdownuicorner.CornerRadius = UDim.new(0, 3)
            dropdownuicorner.Name = "dropdownuicorner"
            dropdownuicorner.Parent = dropdown

            title.Name = "title"
            title.Parent = dropdown
            title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            title.BackgroundTransparency = 1.000
            title.Position = UDim2.new(0.0238095261, 0, 0.178571433, 0)
            title.Size = UDim2.new(0, 55, 0, 17)
            title.Font = Enum.Font.Gotham
            title.Text = name
            title.TextColor3 = Color3.fromRGB(255, 255, 255)
            title.TextSize = 14.000
            title.TextXAlignment = Enum.TextXAlignment.Left

            arrow.Name = "arrow"
            arrow.Parent = dropdown
            arrow.AnchorPoint = Vector2.new(1, 0.5)
            arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            arrow.BackgroundTransparency = 1.000
            arrow.Position = UDim2.new(0.99249202, -3, 0.5, 0)
            arrow.Rotation = 90.000
            arrow.Size = UDim2.new(0, 21, 0, 22)
            arrow.Image = "http://www.roblox.com/asset/?id=5728209609"
            arrow.SliceScale = 2.000

            local dropdownframe = Instance.new("TextButton")
            local dropdownframeuicorner = Instance.new("UICorner")
            local dropdownscrollframe = Instance.new("ScrollingFrame")
            local dropscrolluilist = Instance.new("UIListLayout")

            dropdownframe.Name = "dropdownframe"
            dropdownframe.Parent = scrollframe
            dropdownframe.AnchorPoint = Vector2.new(0.5, 0.5)
            dropdownframe.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
            dropdownframe.Position = UDim2.new(0.491803288, 0, 0.744318187, 0)
            dropdownframe.Size = UDim2.new(0, 420, 0, 95)
            dropdownframe.AutoButtonColor = false
            dropdownframe.Font = Enum.Font.Gotham
            dropdownframe.Text = ""
            dropdownframe.TextColor3 = Color3.fromRGB(255, 255, 255)
            dropdownframe.TextSize = 14.000
            dropdownframe.Visible = false

            dropdownframeuicorner.CornerRadius = UDim.new(0, 3)
            dropdownframeuicorner.Name = "dropdownframeuicorner"
            dropdownframeuicorner.Parent = dropdownframe

            dropdownscrollframe.Name = "dropdownscrollframe"
            dropdownscrollframe.Parent = dropdownframe
            dropdownscrollframe.Active = true
            dropdownscrollframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            dropdownscrollframe.BackgroundTransparency = 1.000
            dropdownscrollframe.BorderSizePixel = 0
            dropdownscrollframe.Position = UDim2.new(0.0260001048, 0, 0.0936317816, 0)
            dropdownscrollframe.Size = UDim2.new(0, 403, 0, 79)
            dropdownscrollframe.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
            dropdownscrollframe.CanvasSize = UDim2.new(0, 0, 0, 0)
            dropdownscrollframe.ScrollBarThickness = 2
            dropdownscrollframe.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
            dropdownscrollframe.ScrollBarImageColor3 = Color3.fromRGB(71, 71, 71)

            dropscrolluilist.Name = "dropscrolluilist"
            dropscrolluilist.Parent = dropdownscrollframe
            dropscrolluilist.SortOrder = Enum.SortOrder.LayoutOrder
            dropscrolluilist.Padding = UDim.new(0, 3)

            for i, v in next, list do
                local item = Instance.new("TextButton")
                local itemuicorner = Instance.new("UICorner")
                item.Name = "item"
                item.Parent = dropdownscrollframe
                item.AnchorPoint = Vector2.new(0.5, 0.5)
                item.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
                item.Position = UDim2.new(0.491315126, 0, 0.177215189, 0)
                item.Size = UDim2.new(0, 396, 0, 28)
                item.AutoButtonColor = false
                item.Font = Enum.Font.Gotham
                item.Text = v
                item.TextColor3 = Color3.fromRGB(255, 255, 255)
                item.TextSize = 14.000

                itemuicorner.CornerRadius = UDim.new(0, 3)
                itemuicorner.Name = "itemuicorner"
                itemuicorner.Parent = item
                item.MouseEnter:Connect(
                    function()
                        TweenService:Create(
                            item,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(71, 71, 71)}
                        ):Play()
                    end
                )

                item.MouseLeave:Connect(
                    function()
                        TweenService:Create(
                            item,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(61, 61, 61)}
                        ):Play()
                    end
                )

                item.MouseButton1Click:Connect(
                    function()
                        TweenService:Create(
                            arrow,
                            TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Rotation = 90}
                        ):Play()
                        dropdownframe.Visible = false
                        d = not d
                        scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
                        title.Text = name .. " - " .. v
                    end
                )
                dropdownscrollframe.CanvasSize = UDim2.new(0, 0, 0, dropscrolluilist.AbsoluteContentSize.Y)
            end

            dropdown.MouseEnter:Connect(
                function()
                    TweenService:Create(
                        dropdown,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(71, 71, 71)}
                    ):Play()
                end
            )

            dropdown.MouseLeave:Connect(
                function()
                    TweenService:Create(
                        dropdown,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(61, 61, 61)}
                    ):Play()
                end
            )

            dropdown.MouseButton1Click:Connect(
                function()
                    if d == true then
                        TweenService:Create(
                            arrow,
                            TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Rotation = 90}
                        ):Play()
                        dropdownframe.Visible = false
                        d = not d
                        scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
                    else
                        TweenService:Create(
                            arrow,
                            TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Rotation = 0}
                        ):Play()
                        dropdownframe.Visible = true
                        d = not d
                        scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
                    end
                end
            )

            scrollframe.CanvasSize = UDim2.new(0, 0, 0, scrolluilist.AbsoluteContentSize.Y)
        end
        return tab
    end

    return window
end

local s = lib:MainWindow("")

local ss = s:Tab("Main")

ss:Button(
    "Fly",
    function()
        local plr = game.Players.LocalPlayer
        local mouse = plr:GetMouse()
    
        localplayer = plr
    
        if workspace:FindFirstChild("Core") then
            workspace.Core:Destroy()
        end
    
        local Core = Instance.new("Part")
        Core.Name = "Core"
        Core.Size = Vector3.new(0.05, 0.05, 0.05)
    
        spawn(function()
            Core.Parent = workspace
            local Weld = Instance.new("Weld", Core)
            Weld.Part0 = Core
            Weld.Part1 = localplayer.Character.LowerTorso
            Weld.C0 = CFrame.new(0, 0, 0)
        end)
    
        workspace:WaitForChild("Core")
    
        local torso = workspace.Core
        flying = true
        local speed=7.5
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.cframe = torso.CFrame
            repeat
                wait()
                localplayer.Character.Humanoid.PlatformStand=true
                local new=gyro.cframe - gyro.cframe.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=7.5
                end
                if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+0
                end
                if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+0
                end
                if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed+0
                end
                if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed+0
                end
                if speed>3.2 then
                    speed=7.5
                end
                pos.position=new.p
                if keys.w then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
                elseif keys.s then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
                else
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                end
            until flying == false
            if gyro then gyro:Destroy() end
            if pos then pos:Destroy() end
            flying=false
            localplayer.Character.Humanoid.PlatformStand=false
            speed=7.5
        end
        e1=mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            elseif key=="x" then
                if flying==true then
                    flying=false
                else
                    flying=true
                    start()
                end
            end
        end)
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)
        start()                                                                         
    end
)

ss:Toggle(
    "Noclip",
    false,
    function(t)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacker1337/legohacks/main/PhysicsServiceOnClient.lua"))()
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        if t == true then
            game:GetService('RunService'):BindToRenderStep("crash", 0 , function()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end)
        elseif t == false then
            game:GetService('RunService'):UnbindFromRenderStep("crash")
        end
    end
)

ss:Button(
    "Hide User",
    function()
        if game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask") then
            game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask"):FindFirstChildWhichIsA("Model"):Destroy()
            game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask"):FindFirstChild('Handle'):Destroy()
        end
    end
)

ss:Button(
    "Korblox",
    function()
        local ply = game.Players.LocalPlayer
        local chr = ply.Character
        chr.RightLowerLeg.MeshId = "902942093"
        chr.RightLowerLeg.Transparency = "1"
        chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
        chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        chr.RightFoot.MeshId = "902942089"
        chr.RightFoot.Transparency = "1"
    end
)

ss:Button(
    "Headless",
    function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
        if (v:IsA("Decal")) then
        v.Transparency = 1
        end
        end
    end
)

ss:Slider(
    "Walkspeed (16 to become normal)",
    16,
    150,
    function(t)
        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').Name = 'SWAG MODE'
        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').WalkSpeed = t
        if t == 16 then
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').Name = 'Humanoid'
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').WalkSpeed = 16
        end
    end
)

ss:Button(
    "Trash Talk",
    function()
        function dowait()
            wait(0.172)
        end
        local tbl_main = 
        {
              "focus up son." , 
              "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
        dowait()
        local tbl_main = 
        {
              "run my hours." , 
              "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
        dowait()
        local tbl_main = 
        {
              "your so bad dont duck." , 
              "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
        dowait()
        local tbl_main = 
        {
              "lol airshotted so bad." , 
              "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
        dowait()
        local tbl_main = 
        {
              "ur bad kid run officials." , 
              "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
    end
)

ss:Button(
    "No Display Names",
    function()
        pcall(function()
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character then
                    if v.Character:FindFirstChild("Humanoid") then
                        v.Character:FindFirstChild("Humanoid").DisplayName = v.Name 
                    end
                end
            end
        end)
    end
)

ss:Button(
    "Rejoin",
    function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end
)

local CombatTab = s:Tab(
    "Combat"
)

CombatTab:Button(
    "Inf-Jump",
    function()
        local player = game.Players.LocalPlayer
        local spacedown = false
        staminup = true
        game:GetService('UserInputService').InputBegan:Connect(function(key,b)
            if key.KeyCode == Enum.KeyCode.Space and not b then
                if staminup == true then
                    spacedown = true
                    while spacedown == true do
                        wait()
                        player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                        player.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
                        player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
                    end
                end
            end
        end)
        game:GetService('UserInputService').InputEnded:Connect(function(key,b)
            if key.KeyCode == Enum.KeyCode.Space and not b then
                if staminup == true then
                    spacedown = false
                end
            end
        end)
    end
)

CombatTab:Toggle(
    "Anti-Slow",
    false,
    function(gh)
        if gh == true then
            game:GetService('RunService'):BindToRenderStep("Anti-Slow", 0 , function()
                if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed"):Destroy() end
                if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk"):Destroy() end
                if game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") then game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping"):Destroy() end
                if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
            end)
        elseif gh == false then
            game:GetService('RunService'):UnbindFromRenderStep("Anti-Slow")
        end
    end
)

CombatTab:Toggle(
    "Reach",
    false,
    function(e)
        if e == true then
            game:GetService('RunService'):BindToRenderStep("Reach", 0 , function()
                local success, err = pcall(function()
                    if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
        elseif e == false then
            game:GetService('RunService'):UnbindFromRenderStep("Reach")
        end
    end
)

CombatTab:Toggle(
    "Auto-Stomp",
    false,
    function(r)
        if r == true then
            game:GetService('RunService'):BindToRenderStep("Auto-Stomp", 0 , function()
                game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
            end)
        elseif r == false then
            game:GetService('RunService'):UnbindFromRenderStep("Auto-Stomp")
        end
    end
)

CombatTab:Toggle(
    "Anti-Stomp",
    false,
    function(x)
        if x == true then
            game:GetService('RunService'):BindToRenderStep("Anti-Stomp", 0 , function()
                if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v:IsA('MeshPart') or v:IsA('Part') then
                            v:Destroy()
                        end
                    end
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v:IsA('Accessory') then
                            v.Handle:Destroy()
                        end
                    end
                end
            end)
        elseif x == false then
            game:GetService('RunService'):UnbindFromRenderStep("Anti-Stomp")
        end
    end
)

CombatTab:Toggle(
    "Auto-Reload",
    false,
    function(r)
        if r == true then
            game:GetService('RunService'):BindToRenderStep("Auto-Reload", 0 , function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                            game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
                            wait(1)
                        end
                    end
                end
            end)
        elseif r == false then
            game:GetService('RunService'):UnbindFromRenderStep("Auto-Reload")
        end
    end
)

CombatTab:Toggle(
    "Inf-Armor (STILL IN DEV)",
    false,
    function(cuh)
        if cuh == true then
            Position = LocalPlayer.Character.HumanoidRootPart.Position
            game:GetService('RunService'):BindToRenderStep("Inf-Armor", 0 , function()
                LocalPlayer = game.Players.LocalPlayer
                if LocalPlayer.Character.BodyEffects.Armor.Value == 0 then
                        function Buy()
                            LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].Head.CFrame + Vector3.new(0, 3, 0)
                            if (LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].Head.Position).Magnitude <= 50 then
                                wait(.2)
                                fireclickdetector(game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].ClickDetector, 4)
                                wait()
                                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Position)
                            end
                                if LocalPlayer.Character.BodyEffects.Armor.Value <= 0 then
                                    LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].Head.CFrame + Vector3.new(0, 3, 0)
                                    if (LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].Head.Position).Magnitude <= 50 then
                                        wait(.2)
                                        fireclickdetector(game.Workspace.Ignored.Shop["[Medium Armor] - $1000"].ClickDetector, 4)
                                        wait()
                                        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Position)
                                    end
                                end
                            end
                    Buy()
                end
            end)
        elseif cuh == false then
            game:GetService('RunService'):UnbindFromRenderStep("Inf-Armor")
        end
    end
)

CombatTab:Button(
    "No Recoil",
    function()
        local player = game.Players.LocalPlayer
        for i,v in pairs(game:GetService('Workspace'):GetChildren()) do
            if v:IsA('Camera') then
                v:Destroy()
            end
        end
        local newcam = Instance.new('Camera')
        newcam.Parent = game:GetService('Workspace')
        newcam.Name = 'Camera'
        newcam.CameraType = 'Custom'
        newcam.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
        newcam.HeadLocked = true
        newcam.HeadScale = 1 
    end
)

CombatTab:Button(
    "Hoodshark",
    function() 
        loadstring(game:HttpGet('http://bin.shortbin.eu:8080/raw/n2dTcDByxD'))()
    end
)

local TpTab = s:Tab(
    "Teleports"
)

TpTab:Button(
    "Admin Base", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-797.15, -39.6189, -887.957)
end
)

TpTab:Button(
    "Food Shop [Bank]", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-335.141, 23.7129, -298.029)
end
)

TpTab:Button(
    "Food Shop [Uphill]", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(298.477, 49.3129, -615.231)
end
)

TpTab:Button(
    "Food Shop [Taco]", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(583.96, 51.0917, -479.596)
end
)

TpTab:Button(
    "Food Shop [Hamburger]", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-279.501, 22.6801, -803.887)
end
)

TpTab:Button(
    "Gun Shop [Uphill]", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.925, 48.1008, -621.23)
end
)

TpTab:Button(
    "Gun Shop [Armor]", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-580.27, 8.34504, -734.832)
end
)

TpTab:Button(
    "Bank", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-438.689, 39.0127, -284.731)
end
)

TpTab:Button(
    "Police Station", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-263.919, 21.8302, -112.858)
end
)

TpTab:Button(
    "Fire Department", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-129.534, 27.842, -113.062)
end
)

TpTab:Button(
    "Church", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205.53, 21.7803, -80.2361)
end
)

TpTab:Button(
    "Casino", 
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-904.457, 24.7803, -156.994)
end
)

TpTab:Button(
    "School",
    function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578, 22, 337)
end
)

local AimlockTab = s:Tab("Aimlock")

AimlockTab:Button(
    "Dimag16 Lock (q)",
    function()
        _G.KEY = "q"
        _G.PART = "LowerTorso"
        _G.PRED = 0.037
        _G.Frame = Vector3.new(0,0.53,0)
        _G.AIR = -0.5
        _G.SHIT = 0.1
        
        
        local CC = game:GetService "Workspace".CurrentCamera
        local Plr
        local enabled = false
        local accomidationfactor = nil
        local mouse = game.Players.LocalPlayer:GetMouse()
        local placemarker = Instance.new("Part", game.Workspace)
        local guimain = Instance.new("Folder", game.CoreGui)
        
        getgenv().makemarker = function(Parent, Adornee, Color, Size, Size2)
            local e = Instance.new("BillboardGui", Parent)
            e.Name = "PP"
            e.Adornee = Adornee
            e.Size = UDim2.new(Size, Size2, Size, Size2)
            e.AlwaysOnTop = true
            local a = Instance.new("Frame", e)
            a.Size = UDim2.new(4, 0, 4, 0)
            a.BackgroundTransparency = 0.1
            a.BackgroundColor3 = Color
            local g = Instance.new("UICorner", a)
            g.CornerRadius = UDim.new(50, 50)
            return (e)
        end
        
        local data = game.Players:GetPlayers()
        function noob(player)
            local character
            repeat
                wait()
            until player.Character
            local handler = makemarker(guimain, player.Character:WaitForChild(_G.PART), Color3.fromRGB(255, 255, 255), 0.0, 0)
            handler.Name = player.Name
            player.CharacterAdded:connect(
                function(Char)
                    handler.Adornee = Char:WaitForChild(_G.PART)
                end
            )
        
            local TextLabel = Instance.new("TextLabel", handler)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Position = UDim2.new(0, 0, 0, -50)
            TextLabel.Size = UDim2.new(0, 100, 0, 100)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.TextSize = 14
            TextLabel.TextColor3 = Color3.new(1, 1, 1)
            TextLabel.TextStrokeTransparency = 0
            TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
            TextLabel.Text = "Name: " .. player.Name
            TextLabel.ZIndex = 10
        
            spawn(
                function()
                    while wait() do
                        if player.Character then
                        --TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                        end
                    end
                end
            )
        end
        
        for i = 1, #data do
            if data[i] ~= game.Players.LocalPlayer then
                noob(data[i])
            end
        end
        
        game.Players.PlayerAdded:connect(
            function(Player)
                noob(Player)
            end
        )
        
        game.Players.PlayerRemoving:Connect(
            function(player)
                guimain[player.Name]:Destroy()
            end
        )
        
        spawn(
            function()
                placemarker.Anchored = true
                placemarker.CanCollide = false
                placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
                placemarker.Transparency = _G.SHIT
                makemarker(placemarker, placemarker, Color3.fromRGB(255, 255, 255), 0.20, 0)
            end
        )
        
        mouse.KeyDown:Connect(
            function(k)
                if k ~= _G.KEY then
                    return
                end
                if enabled then
                    -- guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    enabled = false
                    TextLabel.TextColor3 = Color3.fromRGB(255, 20, 75)
                    TextLabel.Text = "------"
                else
                    --guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                    enabled = true
                    Plr = getClosestPlayerToCursor()
                    TextLabel.TextColor3 = Color3.fromRGB(12, 255, 0)
                    TextLabel.Text = Plr.Character.Humanoid.DisplayName
                end
            end)
        
        function getClosestPlayerToCursor()
            local closestPlayer
            local shortestDistance = math.huge
        
            for i, v in pairs(game.Players:GetPlayers()) do
                if
                    v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                        v.Character.Humanoid.Health ~= 0 and
                        v.Character:FindFirstChild(_G.PART)
                 then
                    local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                    if magnitude < shortestDistance then
                        closestPlayer = v
                        shortestDistance = magnitude
                    end
                end
            end
            return closestPlayer
        end
        
        game:GetService "RunService".Stepped:connect(
            function()
                if enabled and Plr.Character and Plr.Character:FindFirstChild(_G.PART) then
                    placemarker.CFrame =
                        CFrame.new(Plr.Character[_G.PART].Position + _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor))
                else
                    placemarker.CFrame = CFrame.new(0, 9999, 0)
                end
            end
        )
        
        local mt = getrawmetatable(game)
        local old = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall =
            newcclosure(
            function(...)
                local args = {...}
                if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
                    args[3] = Plr.Character[_G.PART].Position+ _G.Frame + (Plr.Character[_G.PART].Velocity * accomidationfactor)
                    return old(unpack(args))
                end
                return old(...)
            end
        )
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "print" then
                    print(accomidationfactor)
                end
            end
        )
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "Code:1029" then
        
                    _G.KEY = nil
                    _G.AIR = nil
                    _G.PART = nil
                    _G.PRED = nil
                    TextLabel.Visible = false
        
        
                end
            end
        )
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "Code:1030" then
        
                _G.KEY = "q"
                _G.PART = "UpperTorso"
                _G.PRED = 0.037
                _G.Frame = Vector3.new(0,0.0,0)
                _G.AIR = -0.5
                _G.SHIT = 1
        
        
                end
            end
        )
        
        
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "P+" then
        
        
                    _G.PRED = _G.PRED+0.001
        
        
        
                end
            end
        )
        
        game.Players.LocalPlayer.Chatted:Connect(
            function(Chat)
                if Chat == "P-" then
        
                    _G.PRED = _G.PRED-0.001
        
        
        
                end
            end
        )
        
        
        --[[
        while wait() do
            local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
            local Value = tostring(ping)
            local pingValue = Value:split(" ")
            local PingNumber = pingValue[1]
            
            accomidationfactor = PingNumber / 1000 + _G.PRED
             if getClosestPlayerToCursor().Character.Humanoid.Jump == true and AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                _G.PART = "RightFood"
                accomidationfactor = _G.AIR
            else
                getClosestPlayerToCursor().Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                    if new == Enum.HumanoidStateType.Freefall then
                        _G.PART = "RightFood"
                        accomidationfactor = _G.AIR
                    else
                        _G.PART = "UpperTorso"
                        accomidationfactor = PingNumber / 1000 + _G.PRED
                    end
                end)
            end
        end
        
        ]]
        
        while wait() do
            local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
            local Value = tostring(ping)
            local pingValue = Value:split(" ")
            local PingNumber = pingValue[1]
            
         accomidationfactor = PingNumber / 1000 + _G.PRED
        end
    end
)

local AmuseTab = s:Tab("Fun Stuff")

AmuseTab:Button(
    "Animation Gamepass",
    function()
        local Folder = Instance.new('Folder', game:GetService("Workspace"))
        local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
        local ScrollingFrame = AnimationPack.ScrollingFrame
        local CloseButton = AnimationPack.CloseButton
    
        AnimationPack.Visible = true
    
        local LeanAnimation = Instance.new("Animation", Folder)
        LeanAnimation.Name = "LeanAnimation"
        LeanAnimation.AnimationId = "rbxassetid://3152375249"
        local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
    
        local LayAnimation = Instance.new("Animation", Folder)
        LayAnimation.Name = "LayAnimation"
        LayAnimation.AnimationId = "rbxassetid://3152378852"
        local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
    
        local Dance1Animation = Instance.new("Animation", Folder)
        Dance1Animation.Name = "Dance1Animation"
        Dance1Animation.AnimationId = "rbxassetid://3189773368"
        local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
    
        local Dance2Animation = Instance.new("Animation", Folder)
        Dance2Animation.Name = "Dance2Animation"
        Dance2Animation.AnimationId = "rbxassetid://3189776546"
        local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
    
        local GreetAnimation = Instance.new("Animation", Folder)
        GreetAnimation.Name = "GreetAnimation"
        GreetAnimation.AnimationId = "rbxassetid://3189777795"
        local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
    
        local PrayingAnimation = Instance.new("Animation", Folder)
        PrayingAnimation.Name = "PrayingAnimation"
        PrayingAnimation.AnimationId = "rbxassetid://3487719500"
        local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Lean" then
                    v.Name = "LeanButton"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Lay" then
                    v.Name = "LayButton"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Dance1" then
                    v.Name = "Dance1Button"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Dance2" then
                    v.Name = "Dance2Button"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Greet" then
                    v.Name = "GreetButton"
                end
            end
        end
    
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v.Name == "TextButton" then
                if v.Text == "Praying" then
                    v.Name = "PrayingButton"
                end
            end
        end
    
        function Stop()
            Lay:Stop()
            Lean:Stop()
            Dance1:Stop()
            Dance2:Stop()
            Greet:Stop()
            Praying:Stop()
        end
    
        local LeanTextButton = ScrollingFrame.LeanButton
        local LayTextButton = ScrollingFrame.LayButton
        local Dance1TextButton = ScrollingFrame.Dance1Button
        local Dance2TextButton = ScrollingFrame.Dance2Button
        local GreetTextButton = ScrollingFrame.GreetButton
        local PrayingTextButton = ScrollingFrame.PrayingButton
    
        AnimationPack.MouseButton1Click:Connect(function()
            if ScrollingFrame.Visible == false then
                ScrollingFrame.Visible = true
                CloseButton.Visible = true
            end
        end)
        CloseButton.MouseButton1Click:Connect(function()
            if ScrollingFrame.Visible == true then
                ScrollingFrame.Visible = false
                CloseButton.Visible = false
            end
        end)
        LeanTextButton.MouseButton1Click:Connect(function()
            Stop()
            Lean:Play()
        end)
        LayTextButton.MouseButton1Click:Connect(function()
            Stop()
            Lay:Play()
        end)
        Dance1TextButton.MouseButton1Click:Connect(function()
            Stop()
            Dance1:Play()
        end)
        Dance2TextButton.MouseButton1Click:Connect(function()
            Stop()
            Dance2:Play()
        end)
        GreetTextButton.MouseButton1Click:Connect(function()
            Stop()
            Greet:Play()
        end)
        PrayingTextButton.MouseButton1Click:Connect(function()
            Stop()
            Praying:Play()
        end)
    
        game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
            Stop()
        end)
        game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
            Stop()
            repeat
                wait()
            until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
            wait(1)
            local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
            local ScrollingFrame = AnimationPack.ScrollingFrame
            local CloseButton = AnimationPack.CloseButton
    
            AnimationPack.Visible = true
    
            local LeanAnimation = Instance.new("Animation", Folder)
            LeanAnimation.Name = "LeanAnimation"
            LeanAnimation.AnimationId = "rbxassetid://3152375249"
            local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
    
            local LayAnimation = Instance.new("Animation", Folder)
            LayAnimation.Name = "LayAnimation"
            LayAnimation.AnimationId = "rbxassetid://3152378852"
            local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
    
            local Dance1Animation = Instance.new("Animation", Folder)
            Dance1Animation.Name = "Dance1Animation"
            Dance1Animation.AnimationId = "rbxassetid://3189773368"
            local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
    
            local Dance2Animation = Instance.new("Animation", Folder)
            Dance2Animation.Name = "Dance2Animation"
            Dance2Animation.AnimationId = "rbxassetid://3189776546"
            local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
    
            local GreetAnimation = Instance.new("Animation", Folder)
            GreetAnimation.Name = "GreetAnimation"
            GreetAnimation.AnimationId = "rbxassetid://3189777795"
            local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
    
            local PrayingAnimation = Instance.new("Animation", Folder)
            PrayingAnimation.Name = "PrayingAnimation"
            PrayingAnimation.AnimationId = "rbxassetid://3487719500"
            local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
    
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Lean" then
                        v.Name = "LeanButton"
                    end
                end
            end
    
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Lay" then
                        v.Name = "LayButton"
                    end
                end
            end
    
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Dance1" then
                        v.Name = "Dance1Button"
                    end
                end
            end
    
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Dance2" then
                        v.Name = "Dance2Button"
                    end
                end
            end
    
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Greet" then
                        v.Name = "GreetButton"
                    end
                end
            end
    
            for i,v in pairs(ScrollingFrame:GetChildren()) do
                if v.Name == "TextButton" then
                    if v.Text == "Praying" then
                        v.Name = "PrayingButton"
                    end
                end
            end
    
            function Stop()
                Lay:Stop()
                Lean:Stop()
                Dance1:Stop()
                Dance2:Stop()
                Greet:Stop()
                Praying:Stop()
            end
    
            local LeanTextButton = ScrollingFrame.LeanButton
            local LayTextButton = ScrollingFrame.LayButton
            local Dance1TextButton = ScrollingFrame.Dance1Button
            local Dance2TextButton = ScrollingFrame.Dance2Button
            local GreetTextButton = ScrollingFrame.GreetButton
            local PrayingTextButton = ScrollingFrame.PrayingButton
    
            AnimationPack.MouseButton1Click:Connect(function()
                if ScrollingFrame.Visible == false then
                    ScrollingFrame.Visible = true
                    CloseButton.Visible = true
                end
            end)
            CloseButton.MouseButton1Click:Connect(function()
                if ScrollingFrame.Visible == true then
                    ScrollingFrame.Visible = false
                    CloseButton.Visible = false
                end
            end)
            LeanTextButton.MouseButton1Click:Connect(function()
                Stop()
                Lean:Play()
            end)
            LayTextButton.MouseButton1Click:Connect(function()
                Stop()
                Lay:Play()
            end)
            Dance1TextButton.MouseButton1Click:Connect(function()
                Stop()
                Dance1:Play()
            end)
            Dance2TextButton.MouseButton1Click:Connect(function()
                Stop()
                Dance2:Play()
            end)
            GreetTextButton.MouseButton1Click:Connect(function()
                Stop()
                Greet:Play()
            end)
            PrayingTextButton.MouseButton1Click:Connect(function()
                Stop()
                Praying:Play()
            end)
        end)
    end
)

AmuseTab:Button(
    "Juggernaut",
    function()
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        local OriginalKeyUpValue = 0
        
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://2788838708"
        
        function StopAudio()
            LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
        end
        
        function stop(ID, Key)
            local cor = coroutine.wrap(function()
                wait(LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
                if LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                    StopAudio()
                end
            end)
            cor()
        end
        
        function play(ID, STOP, LMAO)
            if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
                local Tool = nil
                if LocalPlayer.Character:FindFirstChildOfClass("Tool") and LMAO == true then
                    Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
                end
                LocalPlayer.Backpack["[Boombox]"].Parent =
                    LocalPlayer.Character
                game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
                LocalPlayer.Character["[Boombox]"].RequiresHandle = false
                if LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
                    LocalPlayer.Character["[Boombox]"].Handle:Destroy()
                end
                LocalPlayer.Character["[Boombox]"].Parent =
                    LocalPlayer.Backpack
                LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
                if Tool ~= true then
                    if Tool then
                        Tool.Parent = LocalPlayer.Character
                    end
                end
                if STOP == true then
                    LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
                    local cor = coroutine.wrap(function()
                        repeat wait() until LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                        OriginalKeyUpValue = OriginalKeyUpValue+1
                        stop(ID, OriginalKeyUpValue)
                    end)
                    cor()
                end
            end
        end
        
        function Tool()
            local Tool = Instance.new("Tool")
            Tool.Name = "Juggernaut"
            Tool.RequiresHandle = false
            Tool.Activated:Connect(function()
                local Character = LocalPlayer.Character
                local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        
                function rm()
                    for i,v in pairs(Character:GetDescendants()) do
                        if v:IsA("BasePart") or v:IsA("MeshPart") then
                            if v.Name ~= "Head" then
                                for i,cav in pairs(v:GetDescendants()) do
                                    if cav:IsA("Attachment") then
                                        if cav:FindFirstChild("OriginalPosition") then
                                            cav.OriginalPosition:Destroy()
                                        end
                                    end
                                end
                                for i,v in pairs(v:GetChildren()) do
                                    if v.Name == "OriginalSize" then
                                        v:Destroy()
                                    end
                                end
                                if v:FindFirstChild("AvatarPartScaleType") then
                                    v:FindFirstChild("AvatarPartScaleType"):Destroy()
                                end
                            end
                        end
                    end
                end
        
                Humanoid:LoadAnimation(Anim):Play()
                play(862491729, true, true)
                wait(0.4)
                rm()
                Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
                wait(0.2)
        
                rm()
                Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
                wait(0.02)
        
                rm()
                Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
                wait(0.02)
        
                rm()
                Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
                wait(0.02)
            end)
            Tool.Parent = LocalPlayer.Backpack
        end
        Tool()
    end
)

AmuseTab:Button(
    "Glide",
    function()
        wait()
        local outfit = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
        outfit.Name = "Glide"
        outfit.RequiresHandle = false
        local player = game.Players.LocalPlayer
        while true do
            wait()
            if player.Character then
                break
            end
        end
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://3084858603"
        local char = player.Character
        local Humanoid = char:WaitForChild("Humanoid")
        local tool = outfit
        local u1 = false
        local u3 = false
        local u4 = Humanoid:LoadAnimation(Animation)
        tool.Equipped:connect(function(p1)
            p1.Button1Down:connect(function()
                if u1 or Humanoid.FloorMaterial ~= Enum.Material.Air then
                    return
                end
                u1 = true
                u3 = true
                u4:Play()
                local v5 = Instance.new("BodyVelocity", char.HumanoidRootPart)
                v5.MaxForce = Vector3.new(50000, 50000, 50000)
                v5.Velocity = (char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-18), 0, 0)).lookVector * 40
                while u3 and Humanoid.FloorMaterial == Enum.Material.Air do
                    v5.Velocity = (char.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-18), 0, 0)).lookVector * 40
                    game:GetService("RunService").Heartbeat:wait()
                end
                v5:Destroy()
                u3 = false
                u4:Stop()
                wait(0.3)
                u1 = false
            end)
            p1.Button1Up:connect(function()
                u3 = false
            end)
        end)
        tool.Unequipped:connect(function()
            u3 = false
        end)
    end
)

AmuseTab:Button(
    "Shazam Fly",
    function()
        function Fly()
            function sandbox(var,func)
                local env = getfenv(func)
                local newenv = setmetatable({},{
                    __index = function(self,k)
                        if k=="script" then
                            return var
                        else
                            return env[k]
                        end
                    end,
                })
                setfenv(func,newenv)
                return func
            end
            cors = {}
            mas = Instance.new("Model",game:GetService("Lighting"))
            Tool0 = Instance.new("Tool")
            LocalScript1 = Instance.new("LocalScript")
            Sound2 = Instance.new("Sound")
            Sound3 = Instance.new("Sound")
            Animation4 = Instance.new("Animation")
            RemoteEvent5 = Instance.new("RemoteEvent")
            Animation6 = Instance.new("Animation")
            Tool0.Name = "Fly"
            Tool0.Parent = mas
            Tool0.CanBeDropped = false
            Tool0.RequiresHandle = false
            LocalScript1.Name = "local"
            LocalScript1.Parent = Tool0
            table.insert(cors,sandbox(LocalScript1,function()
                wait();
                local l__LocalPlayer__1 = game.Players.LocalPlayer;
                while true do
                    wait();
                    if l__LocalPlayer__1.Character then
                        break;
                    end;
                end;
                local l__Character__2 = l__LocalPlayer__1.Character;
                local l__Humanoid__3 = l__Character__2:WaitForChild("Humanoid");
                local l__Parent__4 = script.Parent;
                local u1 = false;
                local u2 = l__Humanoid__3:LoadAnimation(script.Hover);
                local u3 = nil;
                local u4 = nil;
                local u5 = false;
                local u6 = false;
                local u7 = l__Humanoid__3:LoadAnimation(script.Fly);
                l__Parent__4.Equipped:connect(function(p1)
                    Sound3:Play()
                    p1.TargetFilter = workspace;
                    u1 = true;
                    u2:Play();
                    u3 = Instance.new("BodyGyro");
                    u3.Name = "NA";
                    u3.Parent = l__Character__2.HumanoidRootPart;
                    u3.MaxTorque = Vector3.new(30000, 0, 30000);
                    u3.P = u3.P * 5;
                    u3.CFrame = CFrame.new(0, 0, 0);
                    u4 = Instance.new("BodyPosition");
                    u4.Name = "NA";
                    u4.Parent = l__Character__2.HumanoidRootPart;
                    u4.MaxForce = Vector3.new(60000, 60000, 60000);
                    u4.Position = l__Character__2.HumanoidRootPart.Position;
                    p1.Button1Down:connect(function()
                        Sound2:Play()
                        if u5 then
                            return;
                        end;
                        u5 = true;
                        u6 = true;
                        u7:Play();
                        local v5 = Instance.new("BodyVelocity", l__Character__2.HumanoidRootPart);
                        v5.MaxForce = Vector3.new(50000, 50000, 50000);
                        v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
                        u3.MaxTorque = Vector3.new(30000, 30000, 30000);
                        u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
                        u4.Parent = nil;
                        l__Humanoid__3.AutoRotate = false;
                        if u2.IsPlaying then
                            u2:Stop();
                        end;
                        while u6 do
                            v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
                            u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
                            game:GetService("RunService").Heartbeat:wait();     
                        end;
                        l__Humanoid__3.AutoRotate = true;
                        v5:Destroy();
                        if u4 ~= nil then
                            u4.Position = l__Character__2.HumanoidRootPart.Position;
                            u4.Parent = l__Character__2.HumanoidRootPart;
                        end;
                        if u3 ~= nil then
                            u3.MaxTorque = Vector3.new(30000, 0, 30000);
                            u3.CFrame = CFrame.new(0, 0, 0);
                        end;
                        u6 = false;
                        if u1 then
                            u2:Play();
                        end;
                        u7:Stop();
                        wait(0.3);
                        u5 = false;
                    end);
                    p1.Button1Up:connect(function()
                        Sound2:Stop()
                        Sound3:Play()
                        u6 = false;
                    end);
                end);
                l__Parent__4.Unequipped:connect(function()
                    Sound2:Stop()
                    Sound3:Play()
                    u1 = false;
                    u6 = false;
                    u3:Destroy();
                    u3 = nil;
                    u4:Destroy();
                    u4 = nil;
                    if u2.IsPlaying then
                        u2:Stop();
                    end;
                end);
            end))
            Sound2.Name = "Flapping"
            Sound2.Parent = LocalScript1
            Sound2.Looped = true
            Sound2.MaxDistance = 100
            Sound2.Pitch = 1.5
            Sound2.PlaybackSpeed = 1.5
            Sound2.SoundId = "rbxassetid://1462718291"
            Sound3.Name = "Activation"
            Sound3.Parent = LocalScript1
            Sound3.MaxDistance = 100
            Sound3.SoundId = "rbxassetid://2952274135"
            Sound3.Volume = 0.69999998807907
            Animation4.Name = "Hover"
            Animation4.Parent = LocalScript1
            Animation4.AnimationId = "rbxassetid://3541114300"
            RemoteEvent5.Name = "re"
            RemoteEvent5.Parent = LocalScript1
            Animation6.Name = "Fly"
            Animation6.Parent = LocalScript1
            Animation6.AnimationId = "rbxassetid://3541044388"
            for i,v in pairs(mas:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Backpack
                pcall(function() v:MakeJoints() end)
            end
            mas:Destroy()
            for i,v in pairs(cors) do
                spawn(function()
                    pcall(v)
                end)
            end
        end
        game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
        Fly()
    end
)

AmuseTab:Button(
    "Hearing",
    function()
        function Hearing()
            function sandbox(var,func)
                local env = getfenv(func)
                local newenv = setmetatable({},{
                    __index = function(self,k)
                        if k=="script" then
                            return var
                        else
                            return env[k]
                        end
                    end,
                })
                setfenv(func,newenv)
                return func
            end
            cors = {}
            mas = Instance.new("Model",game:GetService("Lighting"))
            Tool0 = Instance.new("Tool")
            LocalScript1 = Instance.new("LocalScript")
            BillboardGui2 = Instance.new("BillboardGui")
            ImageLabel3 = Instance.new("ImageLabel")
            ScreenGui4 = Instance.new("ScreenGui")
            TextLabel5 = Instance.new("TextLabel")
            ScreenGui6 = Instance.new("ScreenGui")
            ImageLabel7 = Instance.new("ImageLabel")
            Tool0.Name = "Hearing"
            Tool0.Parent = mas
            Tool0.CanBeDropped = false
            Tool0.RequiresHandle = false
            LocalScript1.Parent = Tool0
            table.insert(cors,sandbox(LocalScript1,function()
                wait();
                local l__LocalPlayer__1 = game.Players.LocalPlayer;
                while true do
                    wait();
                    if l__LocalPlayer__1.Character then
                        break;
                    end;
                end;
                local l__Character__2 = l__LocalPlayer__1.Character;
                local u1 = false;
                local l__PlayerGui__2 = game.CoreGui;
                function ChatFunc(p1)
                    local v3 = p1.Chatted:connect(function(p2)
                        if u1 then
                            local v4 = BrickColor.Random();
                            local v5 = script.MsgGui:Clone();
                            if string.find(string.lower(p2), "super") then
                                v5.Msg.TextSize = 29;
                            end;
                            v5.Msg.Text = p1.Name .. ": " .. p2;
                            v5.Msg.TextColor3 = v4.Color;
                            v5.Msg.Position = UDim2.new(0.5, math.random(-350, 350), 0.5, math.random(-210, 250));
                            v5.Parent = l__PlayerGui__2;
                            local v6 = script.DotGui:Clone();
                            v6.Dot.ImageColor3 = v4.Color;
                            v6.Enabled = true;
                            if p1.Character then
                                if p1.Character:findFirstChild("Head") then
                                    v6.Parent = p1.Character.Head;
                                end;
                            end;
                            spawn(function()
                                local v7 = 1 - 1;
                                while true do
                                    v6.Size = v6.Size - UDim2.new(0, 1, 0, 1);
                                    game:GetService("RunService").RenderStepped:wait();
                                    if 0 <= 1 then
                                        if v7 < 70 then
        
                                        else
                                            break;
                                        end;
                                    elseif 70 < v7 then
        
                                    else
                                        break;
                                    end;
                                    v7 = v7 + 1;                
                                end;
                            end);
                            game.Debris:AddItem(v5, 3);
                            game.Debris:AddItem(v6, 6);
                        end;
                    end);
                end;
                for v8, v9 in pairs(game.Players:GetChildren()) do
                    ChatFunc(v9);
                end;
                game.Players.PlayerAdded:connect(function(p3)
                    ChatFunc(p3);
                end);
                local u3 = false;
                local u4 = nil;
                script.Parent.Equipped:connect(function(p4)
                    p4.Button1Down:connect(function()
                        if u3 then
                            return;
                        end;
                        u3 = true;
                        if not u1 then
                            u4 = script.Frame:Clone();
                            u4.Parent = l__PlayerGui__2;
                            u1 = true;
                        else
                            u4:Destroy();
                            u1 = false;
                        end;
                        wait(1);
                        u3 = false;
                    end);
                end);
            end))
            BillboardGui2.Name = "DotGui"
            BillboardGui2.Parent = LocalScript1
            BillboardGui2.Enabled = false
            BillboardGui2.Size = UDim2.new(0, 90, 0, 90)
            BillboardGui2.Active = true
            BillboardGui2.ClipsDescendants = true
            BillboardGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            BillboardGui2.AlwaysOnTop = true
            ImageLabel3.Name = "Dot"
            ImageLabel3.Parent = BillboardGui2
            ImageLabel3.Size = UDim2.new(1, 0, 1, 0)
            ImageLabel3.BackgroundColor = BrickColor.new("Institutional white")
            ImageLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
            ImageLabel3.BackgroundTransparency = 1
            ImageLabel3.Image = "rbxassetid://130424513"
            ImageLabel3.ImageColor3 = Color3.new(1, 0, 0)
            ScreenGui4.Name = "MsgGui"
            ScreenGui4.Parent = LocalScript1
            ScreenGui4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            TextLabel5.Name = "Msg"
            TextLabel5.Parent = ScreenGui4
            TextLabel5.Position = UDim2.new(0, 300, 0, 25)
            TextLabel5.Size = UDim2.new(0, 1, 0, 1)
            TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
            TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
            TextLabel5.BackgroundTransparency = 1
            TextLabel5.Font = Enum.Font.SourceSansBold
            TextLabel5.FontSize = Enum.FontSize.Size28
            TextLabel5.Text = ""
            TextLabel5.TextColor = BrickColor.new("Really black")
            TextLabel5.TextColor3 = Color3.new(0, 0, 0)
            TextLabel5.TextSize = 25
            TextLabel5.TextStrokeTransparency = 0.60000002384186
            ScreenGui6.Name = "Frame"
            ScreenGui6.Parent = LocalScript1
            ScreenGui6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            ImageLabel7.Name = "Image"
            ImageLabel7.Parent = ScreenGui6
            ImageLabel7.Size = UDim2.new(1, 0, 1, 0)
            ImageLabel7.BackgroundColor = BrickColor.new("Institutional white")
            ImageLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
            ImageLabel7.BackgroundTransparency = 1
            ImageLabel7.Image = "rbxassetid://36869195"
            ImageLabel7.ImageColor3 = Color3.new(0.290196, 1, 0.917647)
            ImageLabel7.ImageTransparency = 0.80000001192093
            for i,v in pairs(mas:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Backpack
                pcall(function() v:MakeJoints() end)
            end
            mas:Destroy()
            for i,v in pairs(cors) do
                spawn(function()
                    pcall(v)
                end)
            end
        end
        game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
        Hearing()
    end
)

AmuseTab:Button(
    "Heart",
    function()
        game.Players.LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = true
        game.Players.LocalPlayer.PlayerGui:WaitForChild("MainScreenGui"):WaitForChild("Bar"):WaitForChild("HP"):WaitForChild("Picture"):WaitForChild("Life").Visible = true
    end
)

AmuseTab:Button(
    "Super Jump (H to toggle, 'Time erase!' to time erase)",
    function()
        local  MyStand = "DxskTilIDawn"
        local SuperJumpEnabled = false
        
        getgenv().Toggled = false
        local UIS = game:GetService("UserInputService")
        UIS.InputBegan:connect(function(input,gameProcessed)
            if input.UserInputType == Enum.UserInputType.Keyboard then
                if input.KeyCode == Enum.KeyCode.H then
                    if UIS:GetFocusedTextBox() == nil then
                        if getgenv().Toggled == false then
                            getgenv().Toggled = true
                        else
                            getgenv().Toggled = true
                        end;end;end;end;end)
        
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Cookies = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
        local OriginalKeyUpValue = 0
        local Anim = Instance.new("Animation" )
        Anim.AnimationId = "rbxassetid://2788290270"
        local Hover = Instance.new("Animation", game.Workspace)
        Hover.Name = "Hover"
        Hover.AnimationId = "rbxassetid://698251653"
        local LeftPunch = Instance.new("Animation",  game.ReplicatedStorage.ClientAnimations)LeftPunch.Name = "LeftPunch"
        LeftPunch.AnimationId = "rbxassetid://2788308661"
        local LeftAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.LeftPunch)
        local CoreUI = Instance.new("ScreenGui")
        local Humanoid = game.Players.LocalPlayer.Character.Humanoid
        CoreUI.Parent = game.CoreGui
        local SaveLocation = nil
        local RigWalk = nil
        local RigIdle = nil
        local InTimeErase = false
        
        local Pointing = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        Pointing.AnimationId = "rbxassetid://507770453"
        
        local UNMASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        UNMASKKK.Name = "Unmask"
        UNMASKKK.AnimationId = "rbxassetid://3380629232"
        
        local MASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        MASKKK.Name = "Mask"
        MASKKK.AnimationId = "rbxassetid://3380627692"
        
        local Poter = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
        Poter.Looped = true
        Poter.Priority = Enum.AnimationPriority.Action
        
        local WalkAnimation = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        WalkAnimation.AnimationId = "rbxassetid://2510198475"
        
        local Idle = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        Idle.AnimationId = "rbxassetid://507766388"
        
        local OldChar = LocalPlayer.Character
        local MaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Mask)
        local UnmaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Unmask)
        
        function FoV()
            local fov = coroutine.wrap(function()
                local Camera = workspace.Camera
                for i = 1, 20 do
                    game.TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 8*i}):Play()
                    wait(0.01)
                end
                for i = 1, 20 do
                    game.TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 160-i*4.5}):Play()
                    wait(0.01)
                end
            end)
            fov()
        end
        
        local WalkSpeed = false
        
        local function rm()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v.Name == "OriginalPosition" then
                    v:Destroy()
                elseif v.Name == "OriginalSize" then
                    v:Destroy()
                elseif v.Name == "AvatarPartScaleType" then
                    v:Destroy()
                end
            end
        end
        
        
        function Lighting()
            if game.Lighting:FindFirstChild("ERASE") == nil then
                local sound5 = Instance.new("Sound", CoreUI)
                sound5.Volume = 0.1
                sound5.Name = "ERASE"
                sound5.Looped = true
                sound5.SoundId = "rbxassetid://3167092959"
                sound5:Play()
        
                game.Lighting.Sky.Parent = workspace
                game:GetObjects("rbxassetid://6546113226")[1].Parent=game.Lighting
        
            else
                workspace.Sky.Parent = game.Lighting
                CoreUI:FindFirstChild("ERASE"):Destroy()
                game.Lighting:FindFirstChild("ERASE"):Destroy()
            end
        end
        
        function TimeEraseUI()
            local sound5 = Instance.new("Sound", CoreUI)
            sound5.Volume = 0.1
            sound5.SoundId = "rbxassetid://6546128175"
            sound5:Play()
        
            local Image = Instance.new("ImageLabel", CoreUI)
            Image.Image = "http://www.roblox.com/asset/?id=6546043746"
            Image.BackgroundTransparency = 1
            Image.AnchorPoint = Vector2.new(0.5, 0.5)
            Image.Size = UDim2.fromScale(1, 1)
            Image.Position = UDim2.fromScale(-0.5, 0.5)
            delay(0, function()
                for i = 0, 1, 0.1 do
                    Image.Position = UDim2.fromScale(-Image.Position.X.Scale+i, 0.5)
                    Image.ImageTransparency = Image.ImageTransparency+i
                    wait(.01)
                end
                Image:Destroy()
                sound5:Destroy()
            end)
        end
        
        
        function ModelCharacter()
            if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
                local MODEL = Instance.new("Model", workspace)
                MODEL.Name = LocalPlayer.Name.."StringKOD"
        
                OldChar.Humanoid:UnequipTools()
        
                for i, v in pairs(OldChar:GetChildren()) do 
                    if (v:IsA("BasePart")  or v:IsA("MeshPart")) and v.Parent:FindFirstChildOfClass("Humanoid") and v.Name ~= "HumanoidRootPart" then
                        local Part = v:Clone()
                        Part.Parent = MODEL
                        Part.Name = v.Name
                        Part.Material = Enum.Material.ForceField
                        Part.CFrame = v.CFrame
                        Part.Transparency = 0.5 
                        Part.BrickColor = BrickColor.Red()
                        Part.CanCollide = false
                        Part.Anchored = true
                        for i, v  in pairs(Part:GetChildren()) do 
                            if v.ClassName ~= "SpecialMesh" then
                                v:Destroy()
                            end
                        end
                    end
                end
                local NewCharacter = game:GetObjects("rbxassetid://6547055500")[1]
                NewCharacter.Parent = MODEL
                NewCharacter.Name = "Idaro"
        
                workspace.Camera.CameraSubject = NewCharacter.Humanoid
                SaveLocation = OldChar.HumanoidRootPart.CFrame
                InTimeErase = true
                NewCharacter.HumanoidRootPart.CFrame = SaveLocation
        
                RigIdle = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(Idle)
                RigIdle.Looped = true
                RigIdle.Priority = Enum.AnimationPriority.Action
                RigWalk = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(WalkAnimation)
                RigWalk.Looped = true
                RigWalk.Priority = Enum.AnimationPriority.Action
                WalkSpeed = true
                RigIdle:Play()
            else
                InTimeErase = false
                WalkSpeed = false
                workspace.Camera.CameraSubject =  OldChar.Humanoid
                OldChar.HumanoidRootPart.CFrame =  workspace:FindFirstChild(LocalPlayer.Name.."StringKOD").Idaro.HumanoidRootPart.CFrame
                workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):Destroy()
            end
        end
        
        function Slide()
            local XD = OldChar.Humanoid:LoadAnimation(Anim)
            XD:Play()
            XD.TimePosition = 0.15
            XD.Looped = false
            XD:AdjustSpeed(1.1)
        end
        
        function AddVelocity(Vel, Char)
            Char.HumanoidRootPart.Velocity = Char.HumanoidRootPart.Velocity+Vel
        end
        
        local IsJump = false
        
        function Jumping()
            if IsJump == false then
                return false
            else
                return true
            end
        end
        
        local Mouse = LocalPlayer:GetMouse()
        
        local MoveDirection = Vector3.new(0,0,0)
        local WSpped = 0 
        local LeftSpeed = 0
        local UpSpeed = 0
        
        function IdleRigXD()
            if RigIdle and RigWalk.IsPlaying and WSpped == 0 and LeftSpeed == 0 and UpSpeed == 0 then
                RigIdle:Play()
                RigWalk:Stop()
            end
        end
        
        function WalkRigXD()
            if RigWalk and RigIdle.IsPlaying then
                RigIdle:Stop()
                RigWalk:Play()
            end
        end
        
        Mouse.KeyDown:Connect(function(KeyDownXD)
            if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") then
                if KeyDownXD == "w" then
                    WSpped = -1
                    WalkRigXD()
                elseif KeyDownXD == "a" then
                    LeftSpeed = -1
                    WalkRigXD()
                elseif KeyDownXD == "d" then
                    LeftSpeed = 1
                    WalkRigXD()
                elseif KeyDownXD == "s" then
                    WSpped = 1
                    WalkRigXD()
                end
            end
        end)
        
        Mouse.KeyUp:Connect(function(KeyDownXD)
            if KeyDownXD == "w" then
                WSpped = 0
                IdleRigXD()
            elseif KeyDownXD == "a" then
                LeftSpeed = 0
                IdleRigXD()
            elseif KeyDownXD == "d" then
                LeftSpeed = -0
                IdleRigXD()
            elseif KeyDownXD == "s" then
                WSpped = 0
                IdleRigXD()
            end
        end)
        
        local CD = false
        local uis = game:GetService("UserInputService")
        
        uis.InputBegan:Connect(function(i, XD)
            if i.KeyCode == Enum.KeyCode.H and XD == false then
                if SuperJumpEnabled == false then
                    SuperJumpEnabled = true
                elseif SuperJumpEnabled == true then
                    SuperJumpEnabled = false
                end
            end
        end)
        
        uis.InputBegan:Connect(function(i, XD)
            if i.KeyCode == Enum.KeyCode.Space and XD == false then
                if workspace:FindFirstChild(LocalPlayer.Name.."StringKOD") == nil then
                    if Jumping() == true and not Poter.IsPlaying then
                        AddVelocity(OldChar.HumanoidRootPart.CFrame.LookVector*150, OldChar)
                        IsJump = false
                        Cookies:Stop()
                        CD = true
                        Slide()
                        repeat wait() until workspace:FindPartOnRayWithWhitelist(Ray.new(OldChar.HumanoidRootPart.Position, Vector3.new(0, -4 * OldChar.HumanoidRootPart.Size.y, 0)), { workspace.MAP })
                        CD = false
                    end
                else
                    workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:ChangeState(3)
                end
            end
        end)
        
        function StopAudio()
            OldChar.LowerTorso.BOOMBOXSOUND:Stop()
        end
        
        function stop(ID, Key)
            local cor = coroutine.wrap(function()
                wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength-0)
                if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                    StopAudio()
                end
            end)
            cor()
        end
        
        
        function play(ID, STOP, LMAO)
            if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
                local Tool = nil
                if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
                    Tool = OldChar:FindFirstChildOfClass("Tool")
                    OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
                end
                LocalPlayer.Backpack["[Boombox]"].Parent =
                    OldChar
                game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
                OldChar["[Boombox]"].RequiresHandle = false
                if OldChar["[Boombox]"]:FindFirstChild("Handle") then
                    OldChar["[Boombox]"].Handle:Destroy()
                end
                OldChar["[Boombox]"].Parent =
                    LocalPlayer.Backpack
                LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
                if Tool ~= true then
                    if Tool then
                        Tool.Parent = OldChar
                    end
                end
                if STOP == true then
                    OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
                    local cor = coroutine.wrap(function()
                        repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0
                        OriginalKeyUpValue = OriginalKeyUpValue+1
                        stop(ID, OriginalKeyUpValue)
                    end)
                    cor()
                end
            end
        end
        
        local bro = false
        local TimeErase, CanCel = "Time erase!", "Time erase!"
        local TimeStop, TimeResume = "Time stop!", "Time stop!"
        local XD = false
        LocalPlayer.Chatted:Connect(function(MSG)
            if MSG == "Rage!" then
        if Humanoid:FindFirstChild("HeadScale") then
            rm()
            wait(0.6)
        
            Humanoid:FindFirstChild("HeadScale"):Destroy()
            wait(0.6)
        end
        
        
        if Humanoid:FindFirstChild("BodyWidthScale") then
            rm()
            wait(0.6)
            Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
            wait(0.6)
        end
        
        
        
        if Humanoid:FindFirstChild("BodyDepthScale") then
            rm()
            wait(0.6)
            Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
            wait(0.6)
        end
        
        
        
        if Humanoid:FindFirstChild("BodyTypeScale") then
            rm()
            wait(0.6)
            Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
           wait(0.6)
        end
            elseif MSG:sub(1, 11) == TimeErase and XD == false and not Poter.IsPlaying then
                XDDDD(XD)
            elseif MSG == CanCel and XD == true and not Poter.IsPlaying then
                XDDDD(XD)
            elseif MSG == TimeStop then
                play(6947054675, true, true)
                wait(0.3)
                OldChar.LowerTorso.BOOMBOXSOUND.SoundId = "http://www.roblox.com/asset/?id=wd"
                wait(0.1)
                play(7084712646, true, true)
            end
        end)
        
        function XDDDD(XDR)
            if XDR == false then
                XD = true
                play(6546133414, true, true)
                wait(2)
                TimeEraseUI()
                FoV()
                Lighting()
                ModelCharacter()
            else
                XD = false
                InTimeErase = false
                wait(0.1)
                play(6543435253, true, true)
                TimeEraseUI()
                ModelCharacter()
                Lighting()
                FoV()
        end
        end
        
        function Jump(...)
            (...).Jumping:Connect(function()
                if SuperJumpEnabled == true then
                if CD == false and not Poter.IsPlaying then
                    CD = true
                    delay(1, function()
                        CD = false
                    end)
                    Cookies:Play(0, 1, 1.4)
                    AddVelocity(OldChar.HumanoidRootPart.CFrame.UpVector*120, OldChar)
                    delay(0, function()
                        IsJump = true
                        wait(1) 
                        if IsJump == true then
                            IsJump = false
                        end
                    end)
                    end
                end
            end)
        end
        
        
        Jump(OldChar.Humanoid)
        
        LocalPlayer.CharacterAdded:Connect(function(Character)
            wait(1)
            if Character.Name == LocalPlayer.Name then
                Jump(Character.Humanoid)
                Poter = Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
                Poter.Looped = true
                Poter.Priority = Enum.AnimationPriority.Action
        
                Cookies = Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.Roll)
                OldChar = Character
            end
        end)
        
        game["Run Service"].Heartbeat:Connect(function()
            if InTimeErase then
                for i, v in pairs(OldChar:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CFrame = CFrame.new(math.random(200, 500), math.random(200, 500), math.random(200, 500))
                        v.Velocity = Vector3.new(0,0,0)
                    end
                end
        
                if OldChar:FindFirstChild("Combat") and XD == true then
                    XD = false
                    XDDDD(true)
                end
        
                if WalkSpeed == true then
                    MoveDirection = Vector3.new(LeftSpeed, UpSpeed, WSpped)
                    workspace:FindFirstChild(LocalPlayer.Name.."StringKOD"):FindFirstChild("Idaro").Humanoid:Move(MoveDirection, true)
                end
            else
                if OldChar:FindFirstChild("[Flashlight]") then
                    if workspace.Players:FindFirstChild(MyStand) then
                        if not Poter.IsPlaying then
                            Poter:Play()
                            Poter:AdjustSpeed(0)
                            Poter.TimePosition = 1.2
                        end
                        local lol = workspace.Players:FindFirstChild(MyStand).HumanoidRootPart.CFrame * CFrame.new(0, 0.5, 1.25)
                        OldChar.HumanoidRootPart.CFrame = lol
                    end
                else
                    if Poter.IsPlaying then
                        Poter:Stop()
                    end
                end
            end
        end)    
    end
)

AmuseTab:Button(
    "Fake macro (c)",
    function()
        plr = game:GetService('Players').LocalPlayer
        down = true
         
        function onButton1Down(mouse)
            down = true
            while down do
                if not down then break end
                local char = plr.Character
                char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * 190
                wait()
            end
        end
         
        function onButton1Up(mouse)
            down = false
        end
         
        function onSelected(mouse)
            mouse.KeyDown:connect(function(c) if c:lower()=="c"then onButton1Down(mouse)end end)
            mouse.KeyUp:connect(function(c) if c:lower()=="c"then onButton1Up(mouse)end end)
        end
        onSelected(game.Players.LocalPlayer:GetMouse())
    end
)
 
local AutoBuyTab = s:Tab("Auto Buy")

for i,v in pairs(game:GetService("Workspace").Ignored.Shop:GetChildren()) do
    AutoBuyTab:Button(v.Name, 
    function()
        local Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local Teleport = v:FindFirstChild("Head")
        if Teleport then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Teleport.CFrame
            local CD = v:FindFirstChild("ClickDetector")
            if CD then
                wait(0.75)
                fireclickdetector(CD)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            end
        end
    end)
end

local TargetTAB = s:Tab("Target Tab")

TargetTAB:Textbox(
    "Target Player(DOESNT WORK ATM)", 
    function(Text)
    print(Text)
    Targetting = gplr(Text)
    if Targetting[1] then
        Targetting = Targetting[1]
    end
end)

TargetTAB:Button(
    "Teleport", 
    function()
    if Targetting then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Targetting.Character.HumanoidRootPart.CFrame
    end
end)

local GodStuff = s:Tab("God-Related")
GodStuff:Button(
    "God Block", 
    function()
    local localPlayer = game:GetService('Players').LocalPlayer
    local localCharacter = localPlayer.Character
    localCharacter:FindFirstChild('BodyEffects'):FindFirstChild('Defense'):FindFirstChild('CurrentTimeBlock'):Destroy()
end
)

GodStuff:Button(
    "God Bullet", 
    function()
    local localPlayer = game:GetService('Players').LocalPlayer;
    local localCharacter = localPlayer.Character;
    localCharacter:FindFirstChildWhichIsA('Humanoid').Health = 0;
    for _,v in pairs(localPlayer.Character:GetChildren()) do
        if v:IsA('MeshPart') or v:IsA('Accessory') then
            v:Destroy();
        end;
    end;
    local newCharacter = localPlayer.CharacterAdded:Wait();
    local spoofFolder = Instance.new('Folder');
    spoofFolder.Name = 'FULLY_LOADED_CHAR';
    spoofFolder.Parent = newCharacter;
    newCharacter:WaitForChild('RagdollConstraints'):Destroy();
    newCharacter:WaitForChild('BodyEffects'):WaitForChild('Armor'):Destroy();
    local spoofValue = Instance.new('BoolValue', newCharacter);
    spoofValue.Name = 'RagdollConstraints';
    local armValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
    armValue.Name = 'Armor';
end
)

GodStuff:Button(
    "Full God", 
    function()
    local localPlayer = game:GetService('Players').LocalPlayer;
    local localCharacter = localPlayer.Character;
    localCharacter:FindFirstChildWhichIsA('Humanoid').Health = 0;
    for _,v in pairs(localPlayer.Character:GetChildren()) do
        if v:IsA('MeshPart') or v:IsA('Accessory') then
            v:Destroy();
        end;
    end;
    local newCharacter = localPlayer.CharacterAdded:Wait();
    local spoofFolder = Instance.new('Folder');
    spoofFolder.Name = 'FULLY_LOADED_CHAR';
    spoofFolder.Parent = newCharacter;
    newCharacter:WaitForChild('RagdollConstraints'):Destroy();
    newCharacter:WaitForChild('BodyEffects'):WaitForChild('Defense'):Destroy();
    newCharacter:WaitForChild('BodyEffects'):WaitForChild('Armor'):Destroy();
    local spoofValue = Instance.new('BoolValue', newCharacter);
    spoofValue.Name = 'RagdollConstraints';
    local defValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
    defValue.Name = 'Defense';
    local armValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
    armValue.Name = 'Armor';
end
)

GodStuff:Button(
    "Unban", 
    function()
    local localPlayer = game:GetService('Players').LocalPlayer;
    local localCharacter = localPlayer.Character;
    localCharacter:FindFirstChildWhichIsA('Humanoid').Health = 0;
    for _, v in pairs(localPlayer.Character:GetChildren()) do
        if v:IsA('MeshPart') or v:IsA('Accessory') then
            v:Destroy();
        end;
    end;
    local newCharacter = localPlayer.CharacterAdded:Wait();
    local spoofFolder = Instance.new('Folder');
    spoofFolder.Name = 'FULLY_LOADED_CHAR';
    spoofFolder.Parent = newCharacter;
    newCharacter:WaitForChild('RagdollConstraints'):Destroy();
    local spoofValue = Instance.new('BoolValue', newCharacter);
    spoofValue.Name = 'RagdollConstraints';
end
)

local AnimationsTab = s:Tab("Animations")
local Animate = game.Players.LocalPlayer.Character.Animate

AnimationsTab:Button(
    "Zombie",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
    end
)

AnimationsTab:Button(
    "Werewolf",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
    end
)

AnimationsTab:Button(
    "Vampire",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
    end
)

AnimationsTab:Button(
    "Toy",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
    end
)

AnimationsTab:Button(
    "Superhero",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
    end
)

AnimationsTab:Button(
    "Stylish",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
    end
)

AnimationsTab:Button(
    "Robot",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
    end
)

AnimationsTab:Button(
    "Pirate",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
    end
)

AnimationsTab:Button(
    "Ninja",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
    end
)

AnimationsTab:Button(
    "Mage",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
    end
)

AnimationsTab:Button(
    "Levitation",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
    end
)

AnimationsTab:Button(
    "Knight",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
    end
)

AnimationsTab:Button(
    "Elder",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
    end
)

AnimationsTab:Button(
    "Cartoony",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
    end
)

AnimationsTab:Button(
    "Bubbly",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
        Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
        Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
    end
)

AnimationsTab:Button(
    "Astronaut",
    function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
    end
)

local CreditsTab = s:Tab("Credits")

CreditsTab:Label(
    "dawn#9990 - Made Dimag X"
)

CreditsTab:Label(
    "Dimag16 - Dimag16???"
)