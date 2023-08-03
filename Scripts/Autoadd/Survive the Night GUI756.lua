--[[Created By: Unordinary]]
for i, v in pairs(game:GetDescendants()) do
    if v.Name == "ScreenGui" then
        v:Destroy()
    end
end

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local RelicESP = Instance.new("TextButton")
local RelicAura = Instance.new("TextButton")
local PlayerESP = Instance.new("TextButton")
local InstaBuild = Instance.new("TextButton")
local TaskAura = Instance.new("TextButton")
local TaskESP = Instance.new("TextButton")
local FullBright = Instance.new("TextButton")
local TurnInvisible = Instance.new("TextButton")
local ToggleMetalDetectorFarm = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local cool = true
local on = true
local oN = true

ScreenGui.Parent = game:WaitForChild("CoreGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
Frame.BorderColor3 = Color3.fromRGB(226, 226, 226)
Frame.Draggable = true
Frame.Position = UDim2.new(0.833333313, -76, 0.606741607, -150)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 153, 0, 33)
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.fromRGB(119, 124, 127)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(119, 124, 127)
TextLabel.Position = UDim2.new(0.327688575, 0, 0.190135613, 0)
TextLabel.Size = UDim2.new(0, 50, 0, 20)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "STN GUI"
TextLabel.TextColor3 = Color3.fromRGB(187, 255, 253)
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(187, 255, 253)
TextLabel.TextWrapped = true

ScrollingFrame.Parent = Frame
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
ScrollingFrame.BackgroundTransparency = 0.500
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(-0.00086286955, 0, 0.999025285, 0)
ScrollingFrame.Selectable = false
ScrollingFrame.Size = UDim2.new(0, 153, 0, 194)
ScrollingFrame.CanvasPosition = Vector2.new(0, 150)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 60, 0)
ScrollingFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
ScrollingFrame.ScrollBarThickness = 10

RelicESP.Name = "RelicESP"
RelicESP.Parent = ScrollingFrame
RelicESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RelicESP.Position = UDim2.new(0.0466145016, 0, 0.00465609878, 0)
RelicESP.Size = UDim2.new(0, 136, 0, 27)
RelicESP.Style = Enum.ButtonStyle.RobloxRoundButton
RelicESP.Font = Enum.Font.SourceSans
RelicESP.Text = "RelicESP"
RelicESP.TextColor3 = Color3.fromRGB(131, 192, 219)
RelicESP.TextSize = 16.000
RelicESP.TextWrapped = true

RelicAura.Name = "RelicAura"
RelicAura.Parent = ScrollingFrame
RelicAura.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RelicAura.Position = UDim2.new(0.0531504489, 0, 0.0213227645, 0)
RelicAura.Size = UDim2.new(0, 136, 0, 27)
RelicAura.Style = Enum.ButtonStyle.RobloxRoundButton
RelicAura.Font = Enum.Font.SourceSans
RelicAura.Text = "RelicAura"
RelicAura.TextColor3 = Color3.fromRGB(131, 192, 219)
RelicAura.TextSize = 16.000
RelicAura.TextWrapped = true

PlayerESP.Name = "PlayerESP"
PlayerESP.Parent = ScrollingFrame
PlayerESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerESP.Position = UDim2.new(0.0531504489, 0, 0.0384944826, 0)
PlayerESP.Size = UDim2.new(0, 136, 0, 27)
PlayerESP.Style = Enum.ButtonStyle.RobloxRoundButton
PlayerESP.Font = Enum.Font.SourceSans
PlayerESP.Text = "PlayerESP"
PlayerESP.TextColor3 = Color3.fromRGB(131, 192, 219)
PlayerESP.TextSize = 16.000
PlayerESP.TextWrapped = true

InstaBuild.Name = "InstaBuild"
InstaBuild.Parent = ScrollingFrame
InstaBuild.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InstaBuild.Position = UDim2.new(0.0466145016, 0, 0.0556662008, 0)
InstaBuild.Size = UDim2.new(0, 136, 0, 27)
InstaBuild.Style = Enum.ButtonStyle.RobloxRoundButton
InstaBuild.Font = Enum.Font.SourceSans
InstaBuild.Text = "InstaBuild"
InstaBuild.TextColor3 = Color3.fromRGB(131, 192, 219)
InstaBuild.TextSize = 16.000
InstaBuild.TextWrapped = true

TaskAura.Name = "TaskAura"
TaskAura.Parent = ScrollingFrame
TaskAura.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TaskAura.Position = UDim2.new(0.0466145016, 0, 0.072837919, 0)
TaskAura.Size = UDim2.new(0, 136, 0, 27)
TaskAura.Style = Enum.ButtonStyle.RobloxRoundButton
TaskAura.Font = Enum.Font.SourceSans
TaskAura.Text = "TaskAura"
TaskAura.TextColor3 = Color3.fromRGB(131, 192, 219)
TaskAura.TextSize = 16.000
TaskAura.TextWrapped = true

TaskESP.Name = "TaskESP"
TaskESP.Parent = ScrollingFrame
TaskESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TaskESP.Position = UDim2.new(0.0531504489, 0, 0.0900096372, 0)
TaskESP.Size = UDim2.new(0, 136, 0, 27)
TaskESP.Style = Enum.ButtonStyle.RobloxRoundButton
TaskESP.Font = Enum.Font.SourceSans
TaskESP.Text = "TaskESP"
TaskESP.TextColor3 = Color3.fromRGB(131, 192, 219)
TaskESP.TextSize = 16.000
TaskESP.TextWrapped = true

FullBright.Name = "FullBright"
FullBright.Parent = ScrollingFrame
FullBright.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FullBright.Position = UDim2.new(0.0531504489, 0, 0.107181355, 0)
FullBright.Size = UDim2.new(0, 136, 0, 27)
FullBright.Style = Enum.ButtonStyle.RobloxRoundButton
FullBright.Font = Enum.Font.SourceSans
FullBright.Text = "FullBright"
FullBright.TextColor3 = Color3.fromRGB(131, 192, 219)
FullBright.TextSize = 16.000
FullBright.TextWrapped = true

TurnInvisible.Name = "Turn Invisible"
TurnInvisible.Parent = ScrollingFrame
TurnInvisible.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TurnInvisible.Position = UDim2.new(0.0466145016, 0, 0.123848021, 0)
TurnInvisible.Size = UDim2.new(0, 136, 0, 27)
TurnInvisible.Style = Enum.ButtonStyle.RobloxRoundButton
TurnInvisible.Font = Enum.Font.SourceSans
TurnInvisible.Text = "Turn Invisible"
TurnInvisible.TextColor3 = Color3.fromRGB(131, 192, 219)
TurnInvisible.TextSize = 16.000
TurnInvisible.TextWrapped = true

ToggleMetalDetectorFarm.Name = "ToggleMetalDetectorFarm"
ToggleMetalDetectorFarm.Parent = ScrollingFrame
ToggleMetalDetectorFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleMetalDetectorFarm.Position = UDim2.new(0.0466145016, 0, 0.140514687, 0)
ToggleMetalDetectorFarm.Size = UDim2.new(0, 136, 0, 27)
ToggleMetalDetectorFarm.Style = Enum.ButtonStyle.RobloxRoundButton
ToggleMetalDetectorFarm.Font = Enum.Font.SourceSans
ToggleMetalDetectorFarm.Text = "Toggle Point Farm"
ToggleMetalDetectorFarm.TextColor3 = Color3.fromRGB(131, 192, 219)
ToggleMetalDetectorFarm.TextSize = 16.000
ToggleMetalDetectorFarm.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(125, 125, 125)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(125, 125, 125))}
UIGradient.Parent = Frame

RelicESP.MouseButton1Down:connect(function()

    for i,v in pairs(game:GetService("Workspace").TempMap.Main.Relics:GetChildren()) do
        if v.ClassName == "Relic" or v:IsA("MeshPart") then

            local function addGui(part)
                if v:FindFirstChild("STNESP") ~= nil then
                    v:FindFirstChild("STNESP"):Destroy()
                    print("Removing old ESP on " .. part.parent.Name)
                end

                local gui = Instance.new("BillboardGui", part)
                gui.Name = "STNESP"
                gui.Size = UDim2.new(1, 0, 1, 0)
                gui.AlwaysOnTop = true

                local frame = Instance.new("Frame", gui)
                frame.Size = UDim2.new(3, 0, 3, 0)
                frame.BackgroundTransparency = 0.5
                frame.BorderSizePixel = 0

                if part.parent.Name == "Relic" then
                    frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                end

                print("Added ESP to " .. part.parent.Name .. "!")
            end
            addGui(v)
        end
    end
end)

RelicAura.MouseButton1Click:Connect(function()
    if not on then on = true
        _G.On = true
        if game:GetService("Workspace").TempMap.Main.Relics.Relic then
            while _G.On and wait(0.1) do
                for i,v in pairs(game:GetService("Workspace").TempMap.Main.Relics:GetChildren()) do
                    if v.Name == "Relic" then
                        fireproximityprompt(v.RelicPrompt)
                    end
                end
            end
        end
    else on = false
        _G.On = false
        if game:GetService("Workspace").TempMap.Main.Relics.Relic then
            while _G.On and wait(0.1) do
                for i,v in pairs(game:GetService("Workspace").TempMap.Main.Relics:GetChildren()) do
                    if v.Name == "Relic" then
                        fireproximityprompt(v.RelicPrompt)
                    end
                end
            end
        end
    end
end)

PlayerESP.MouseButton1Down:connect(function()

    local workspace = game:GetService("Workspace")
    local player = game:GetService("Players").LocalPlayer
    local camera = workspace.CurrentCamera

    --// Settings:
    local on = true -- Use this if your making gui

    local Box_Color = Color3.fromRGB(255, 0, 0)
    local Box_Thickness = 2
    local Box_Transparency = 1

    local Tracers = true
    local Tracer_Color = Color3.fromRGB(255, 0, 0)
    local Tracer_Thickness = 2
    local Tracer_Transparency = 1

    local Autothickness = true

    local Team_Check = true
    local red = Color3.fromRGB(227, 52, 52)
    local green = Color3.fromRGB(88, 217, 24)

    local function NewLine()
        local line = Drawing.new("Line")
        line.Visible = false
        line.From = Vector2.new(0, 0)
        line.To = Vector2.new(1, 1)
        line.Color = Box_Color
        line.Thickness = Box_Thickness
        line.Transparency = Box_Transparency
        return line
    end

    for i, v in pairs(game.Players:GetChildren()) do

        local lines = {
            line1 = NewLine(),
            line2 = NewLine(),
            line3 = NewLine(),
            line4 = NewLine(),
            line5 = NewLine(),
            line6 = NewLine(),
            line7 = NewLine(),
            line8 = NewLine(),
            line9 = NewLine(),
            line10 = NewLine(),
            line11 = NewLine(),
            line12 = NewLine(),
            Tracer = NewLine()
        }

        lines.Tracer.Color = Tracer_Color
        lines.Tracer.Thickness = Tracer_Thickness
        lines.Tracer.Transparency = Tracer_Transparency

        local function ESP()
            local connection
            connection = game:GetService("RunService").RenderStepped:Connect(function()
                if on and v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Name ~= player.Name and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") ~= nil then
                    local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    if vis then
                        local Scale = v.Character.Head.Size.Y/2
                        local Size = Vector3.new(2, 3, 1.5) * (Scale * 2)

                        local Top1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
                        local Top2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
                        local Top3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
                        local Top4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

                        local Bottom1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
                        local Bottom2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
                        local Bottom3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
                        local Bottom4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)

                        lines.line1.From = Vector2.new(Top1.X, Top1.Y)
                        lines.line1.To = Vector2.new(Top2.X, Top2.Y)

                        lines.line2.From = Vector2.new(Top2.X, Top2.Y)
                        lines.line2.To = Vector2.new(Top3.X, Top3.Y)

                        lines.line3.From = Vector2.new(Top3.X, Top3.Y)
                        lines.line3.To = Vector2.new(Top4.X, Top4.Y)

                        lines.line4.From = Vector2.new(Top4.X, Top4.Y)
                        lines.line4.To = Vector2.new(Top1.X, Top1.Y)

                        lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
                        lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

                        lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
                        lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

                        lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
                        lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

                        lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
                        lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)

                        lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
                        lines.line9.To = Vector2.new(Top1.X, Top1.Y)

                        lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
                        lines.line10.To = Vector2.new(Top2.X, Top2.Y)

                        lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
                        lines.line11.To = Vector2.new(Top3.X, Top3.Y)

                        lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
                        lines.line12.To = Vector2.new(Top4.X, Top4.Y)

                        if Tracers then
                            local trace = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(0, -Size.Y, 0)).p)

                            lines.Tracer.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
                            lines.Tracer.To = Vector2.new(trace.X, trace.Y)
                        end

                        if Team_Check then
                            if v.TeamColor == player.TeamColor then
                                for u, x in pairs(lines) do
                                    x.Color = green
                                end
                            else
                                for u, x in pairs(lines) do
                                    x.Color = red
                                end
                            end
                        end

                        --// Autothickness:
                        if Autothickness then
                            local distance = (player.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
                            local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
                            for u, x in pairs(lines) do
                                x.Thickness = value
                            end
                        else
                            for u, x in pairs(lines) do
                                x.Thickness = Box_Thickness
                            end
                        end

                        for u, x in pairs(lines) do
                            if x ~= lines.Tracer then
                                x.Visible = true
                            end
                        end
                        if Tracers then
                            lines.Tracer.Visible = true
                        end
                    else
                        for u, x in pairs(lines) do
                            x.Visible = false
                        end
                    end
                else
                    for u, x in pairs(lines) do
                        x.Visible = false
                    end
                    if game.Players:FindFirstChild(v.Name) == nil then
                        connection:Disconnect()
                    end
                end
            end)
        end
        coroutine.wrap(ESP)()
    end

    game.Players.PlayerAdded:Connect(function(newplr)
        --// Lines for 3D box (12)
        local lines = {
            line1 = NewLine(),
            line2 = NewLine(),
            line3 = NewLine(),
            line4 = NewLine(),
            line5 = NewLine(),
            line6 = NewLine(),
            line7 = NewLine(),
            line8 = NewLine(),
            line9 = NewLine(),
            line10 = NewLine(),
            line11 = NewLine(),
            line12 = NewLine(),
            Tracer = NewLine()
        }

        lines.Tracer.Color = Tracer_Color
        lines.Tracer.Thickness = Tracer_Thickness
        lines.Tracer.Transparency = Tracer_Transparency

        --// Updates ESP (lines) in render loop
        local function ESP()
            local connection
            connection = game:GetService("RunService").RenderStepped:Connect(function()
                if on and newplr.Character ~= nil and newplr.Character:FindFirstChild("Humanoid") ~= nil and newplr.Character:FindFirstChild("HumanoidRootPart") ~= nil and newplr.Name ~= player.Name and newplr.Character.Humanoid.Health > 0 and newplr.Character:FindFirstChild("Head") ~= nil then
                    local pos, vis = camera:WorldToViewportPoint(newplr.Character.HumanoidRootPart.Position)
                    if vis then
                        local Scale = newplr.Character.Head.Size.Y/2
                        local Size = Vector3.new(2, 3, 1.5) * (Scale * 2) -- Change this for different box size

                        local Top1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
                        local Top2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
                        local Top3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
                        local Top4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

                        local Bottom1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
                        local Bottom2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
                        local Bottom3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
                        local Bottom4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)

                        --// Top:
                        lines.line1.From = Vector2.new(Top1.X, Top1.Y)
                        lines.line1.To = Vector2.new(Top2.X, Top2.Y)

                        lines.line2.From = Vector2.new(Top2.X, Top2.Y)
                        lines.line2.To = Vector2.new(Top3.X, Top3.Y)

                        lines.line3.From = Vector2.new(Top3.X, Top3.Y)
                        lines.line3.To = Vector2.new(Top4.X, Top4.Y)

                        lines.line4.From = Vector2.new(Top4.X, Top4.Y)
                        lines.line4.To = Vector2.new(Top1.X, Top1.Y)

                        --// Bottom:
                        lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
                        lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

                        lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
                        lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

                        lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
                        lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

                        lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
                        lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)

                        --//S ides:
                        lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
                        lines.line9.To = Vector2.new(Top1.X, Top1.Y)

                        lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
                        lines.line10.To = Vector2.new(Top2.X, Top2.Y)

                        lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
                        lines.line11.To = Vector2.new(Top3.X, Top3.Y)

                        lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
                        lines.line12.To = Vector2.new(Top4.X, Top4.Y)

                        --// Tracer:
                        if Tracers then
                            local trace = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(0, -Size.Y, 0)).p)
                            lines.Tracer.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
                            lines.Tracer.To = Vector2.new(trace.X, trace.Y)
                        end

                        --// Teamcheck:
                        if Team_Check then
                            if newplr.TeamColor == player.TeamColor then
                                for u, x in pairs(lines) do
                                    x.Color = green
                                end
                            else
                                for u, x in pairs(lines) do
                                    x.Color = red
                                end
                            end
                        end

                        --// Autothickness:
                        if Autothickness then
                            local distance = (player.Character.HumanoidRootPart.Position - newplr.Character.HumanoidRootPart.Position).magnitude
                            local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
                            for u, x in pairs(lines) do
                                x.Thickness = value
                            end
                        else
                            for u, x in pairs(lines) do
                                x.Thickness = Box_Thickness
                            end
                        end

                        for u, x in pairs(lines) do
                            if x ~= lines.Tracer then
                                x.Visible = true
                            end
                        end
                        if Tracers then
                            lines.Tracer.Visible = true
                        end
                    else
                        for u, x in pairs(lines) do
                            x.Visible = false
                        end
                    end
                else
                    for u, x in pairs(lines) do
                        x.Visible = false
                    end
                    if game.Players:FindFirstChild(newplr.Name) == nil then
                        connection:Disconnect()
                    end
                end
            end)
        end
        coroutine.wrap(ESP)()
    end)

    function Create(base, team)
        local bb = Instance.new('BillboardGui', game.CoreGui)
        bb.Adornee = base
        bb.ExtentsOffset = Vector3.new(0,1,0)
        bb.AlwaysOnTop = true
        bb.Size = UDim2.new(0,5,0,5)
        bb.StudsOffset = Vector3.new(0,1,0)
        bb.Name = 'tracker'
        local frame = Instance.new('Frame',bb)
        frame.ZIndex = 10
        frame.BackgroundTransparency = 0.3
        frame.Size = UDim2.new(1,0,1,0)
        local txtlbl = Instance.new('TextLabel',bb)
        txtlbl.ZIndex = 10
        txtlbl.BackgroundTransparency = 1
        txtlbl.Position = UDim2.new(0,0,0,-35)
        txtlbl.Size = UDim2.new(1,0,10,0)
        txtlbl.Font = 'ArialBold'
        txtlbl.FontSize = 'Size12'
        txtlbl.Text = base.Parent.Name:upper()
        txtlbl.TextStrokeTransparency = 0.5
        if team then
            txtlbl.TextColor3 = Color3.new(0,1,1)
            frame.BackgroundColor3 = Color3.new(0,1,1)
        else
            txtlbl.TextColor3 = Color3.new(1,0,0)
            frame.BackgroundColor3 = Color3.new(1,0,0)
        end
    end

    function Clear()
        for _,v in pairs(game.CoreGui:children()) do
            if v.Name == 'tracker' and v:isA('BillboardGui') then
                v:Destroy()
            end
        end
    end

    function Find()
        Clear()
        track = true
        spawn(function()
            while wait(1) do
                if track then
                    Clear()
                    for _,v in pairs(game.Players:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            if v.Character and v.Character.Head then
                                Create(v.Character.Head, false)
                            end
                        end
                    end
                end
                wait(1)
            end
        end)
    end

    Find()
end)

InstaBuild.MouseButton1Down:connect(function()

    for i = 1,100 do
        for i,v in pairs(game:GetService("Workspace").Misc:GetDescendants()) do
            if v.Name == "BarricadePrompt" then
                fireproximityprompt(v)
            end
        end
    end
end)

TaskAura.MouseButton1Click:Connect(function()
    if not oN then oN = true
        _G.ON = true
        while _G.ON and wait(0.1) do
            for i,v in pairs(game:GetService("Workspace").TempMap.Main.BonusItems:GetDescendants()) do
                if v.ClassName == "ProximityPrompt" then
                    fireproximityprompt(v)
                end
            end
        end
    else oN = false
        _G.ON = false
        while _G.ON and wait(0.1) do
            for i,v in pairs(game:GetService("Workspace").TempMap.Main.BonusItems:GetDescendants()) do
                if v.ClassName == "ProximityPrompt" then
                    fireproximityprompt(v)
                end
            end
        end
    end
end)

TaskESP.MouseButton1Down:connect(function()

    for i, v in pairs(game:GetService("Workspace").TempMap.Main.BonusItems:GetDescendants()) do
        if v:FindFirstChild("BillboardGui") ~= nil then
            v:FindFirstChild("BillboardGui"):Destroy()
        end

        if v.ClassName == "Model" then
            local BillboardGui = Instance.new("BillboardGui")
            local TextLabel = Instance.new("TextLabel")

            BillboardGui.Parent = v.Parent
            BillboardGui.AlwaysOnTop = true
            BillboardGui.LightInfluence = 1
            BillboardGui.Size = UDim2.new(0, 50, 0, 50)
            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

            TextLabel.Parent = BillboardGui
            TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.Text = v.parent.Name
            TextLabel.TextColor3 = Color3.new(1, 0, 0)
            TextLabel.TextScaled = true
        end
    end
end)

FullBright.MouseButton1Down:connect(function()
    game:GetService("Lighting").Skybox:Destroy()
    game:GetService("Lighting").FlareColorCorrection.Enabled = false
    game:GetService("Lighting").BasicColorCorrection.Enabled = false
    game:GetService("Lighting").PlayerBlur.Enabled = false
    game:GetService("Lighting").DefaultColorCorrection.Enabled = false
    game:GetService("Lighting").DefaultBloom.Enabled = false
    game:GetService("Lighting").DefaultSunRays.Enabled = false
    game:GetService("Lighting").DefaultBlur.Enabled = false
    game:GetService("Lighting").Ambient = Color3.fromRGB(236, 236, 236)
    game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(70, 70, 70)
    game:GetService("Lighting").Brightness = 3
    game:GetService("Lighting").ExposureCompensation = 0.25
    game:GetService("Lighting").ClockTime = 14.5
    game:GetService("Lighting").FogEnd = 10000000
    game:GetService("Lighting").Atmosphere.Enabled = false
end)

TurnInvisible.MouseButton1Down:connect(function()

    local c = game.Players.LocalPlayer.Character
    c.UpperTorso.Waist:Destroy()
    c.LeftUpperLeg:Destroy()
    c.RightUpperLeg:Destroy()
end)

ToggleMetalDetectorFarm.MouseButton1Click:Connect(function()
    if not cool then cool = true
        local speed = 6 -- the higher the number the slower you go.
        _G.ON = true
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(speed, Enum.EasingStyle.Linear)
        while _G.ON and wait(0.1) do
            game:GetService("Players").LocalPlayer.Character.Kit.Remotes.Gear:FireServer()
            wait(1)
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character.Kit.Gear.Objects:GetChildren()) do
                if v.ClassName == "Part" then
                    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(v.Position)})
                    tween:Play()
                    wait(10)
                    fireproximityprompt(v.MetalDetectorPrompt)
                end
            end
        end
    else cool = false
        local speed = 6 -- the higher the number the slower you go.
        _G.ON = false
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(speed, Enum.EasingStyle.Linear)
        while _G.ON and wait(0.1) do
            game:GetService("Players").LocalPlayer.Character.Kit.Remotes.Gear:FireServer()
            wait(1)
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character.Kit.Gear.Objects:GetChildren()) do
                if v.ClassName == "Part" then
                    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(v.Position)})
                    tween:Play()
                    wait(10)
                    fireproximityprompt(v.MetalDetectorPrompt)
                end
            end
        end
    end
end)