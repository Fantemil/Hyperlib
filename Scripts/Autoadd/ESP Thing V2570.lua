local ESPLib = {}

function ESPLib:CreateESPTag(params)
    local RunService = game:GetService("RunService")
    local player = game.Players.LocalPlayer
    local camera = game:GetService("Workspace").CurrentCamera

    local Text = params.Text
    local Part = params.Part
    local TextSize = params.TextSize
    local TextColor = params.TextColor
    local BoxColor = params.BoxColor
    local Highlight = params.Highlight or false
    local Outline = params.Outline or Color3.new(255, 255, 255)
    local TracerColor = params.TracerColor or Color3.new(255, 255, 255)
    local TrailMode = params.TrailMode or false
    local TrailColor = params.TrailColor or {Color3.new(255, 0, 0)}
    local TrailWidth = params.TrailWidth or {2}
    local EnableBoxESP = params.EnableBoxESP or false  -- New parameter for BoxESP

    if #TrailColor < 2 then
        TrailColor[2] = TrailColor[1]
    end

    if #TrailWidth < 2 then
        TrailWidth[2] = TrailWidth[1]
    end
    
    if Highlight == true then
        local a = Instance.new("Highlight", Part)
        a.FillTransparency = 1
        a.OutlineColor = Outline
    end

    local esp = Instance.new("BillboardGui")
    esp.Name = "esp"
    esp.Size = UDim2.new(0, 200, 0, 50)
    esp.StudsOffset = Vector3.new(0, Part.Size.Y + 2, 0)
    esp.Adornee = Part
    esp.Parent = Part
    esp.AlwaysOnTop = true

    local esplabelfr = Instance.new("TextLabel")
    esplabelfr.Name = "esplabelfr"
    esplabelfr.Size = UDim2.new(1, 0, 0, 70)
    esplabelfr.BackgroundColor3 = Color3.new(0, 0, 0)
    esplabelfr.TextColor3 = TextColor or Color3.fromRGB(255, 255, 255)
    esplabelfr.BackgroundTransparency = 1
    esplabelfr.TextStrokeTransparency = 0
    esplabelfr.TextStrokeColor3 = Color3.new(0, 0, 0)
    esplabelfr.TextSize = TextSize
    esplabelfr.TextScaled = false
    esplabelfr.Font = "Arcade"
    esplabelfr.Parent = esp

    if EnableBoxESP then
        local box = Instance.new("BoxHandleAdornment")
        box.Name = "box"
        box.Size = Part.Size + Vector3.new(0.5, 0.5, 0.5)
        box.Adornee = Part
        box.AlwaysOnTop = true
        box.Transparency = 0.6
        box.Color3 = BoxColor or Color3.new(0, 0, 255)
        box.ZIndex = 0
        box.Parent = Part
    end

    local tracerLine = Drawing.new("Line")
    tracerLine.Visible = false

    local trail = Instance.new("Trail")
    trail.Texture = "rbxassetid://188166667"
    trail.Attachment0 = Instance.new("Attachment", player.Character.Torso)
    trail.Attachment1 = Instance.new("Attachment", Part)
    trail.Enabled = false
    trail.Color = ColorSequence.new(TrailColor[1], TrailColor[2])
    trail.WidthScale = NumberSequence.new(TrailWidth[1], TrailWidth[2])
    trail.Parent = Part
    trail.Lifetime = 0.5

    local function updateesplabelfr()
        if not Part or not Part:IsA("BasePart") or not Part.Parent then
            esp:Destroy()
            tracerLine:Remove()
            trail:Destroy()
            return
        end

        local playerPosition = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if playerPosition then
            local distance = (playerPosition.Position - Part.Position).Magnitude
            esplabelfr.Text = string.format(Text .. ": %.2f", distance)

            local headPosition = Part.Position + Vector3.new(0, Part.Size.Y / 2, 0)
            local screenPosition, onScreen = camera:WorldToScreenPoint(headPosition)

            if onScreen or playerPosition.Position.Y > Part.Position.Y then
                esp.Adornee = Part
                esp.Enabled = true
                if EnableBoxESP then
                    box.Adornee = Part
                    box.Visible = true
                end

                local tracerStart = camera:WorldToViewportPoint(player.Character.Head.Position)
                local tracerEnd = camera:WorldToViewportPoint(Part.Position)
                tracerLine.From = Vector2.new(tracerStart.X, tracerStart.Y)
                tracerLine.To = Vector2.new(tracerEnd.X, tracerEnd.Y)
                tracerLine.Color = TracerColor
                tracerLine.Thickness = 2
                tracerLine.Visible = not TrailMode

                trail.Attachment1 = Part.Attachment
                trail.Lifetime = 0.3
                trail.Enabled = TrailMode
                trail.Color = ColorSequence.new(TrailColor[1], TrailColor[2])
                trail.WidthScale = NumberSequence.new(TrailWidth[1], TrailWidth[2])
            else
                esp.Enabled = false
                if EnableBoxESP then
                    box.Visible = false
                end
                tracerLine.Visible = false
                trail.Enabled = false
            end
        else
            esp.Enabled = false
            if EnableBoxESP then
                box.Visible = false
            end
            tracerLine.Visible = false
            trail.Enabled = false
        end
    end

    RunService.RenderStepped:Connect(updateesplabelfr)
end


-- Use 1 (tracer mode)
ESPLib:CreateESPTag({
    Text = "Part",
    Part = game.Workspace.nil, -- Replace nil with part
    TextSize = 7,
    TextColor = Color3.new(255, 255, 255),
    Highlight = true, -- may not work on some parts
    Outline = Color3.new(255,0,0),
    EnableBoxESP = true, -- Disable for no box to indicate object
    BoxColor = Color3.new(255,255,255),
    TracerColor = Color3.new(255,0,0)
})

-- Use 2 (trail mode)
ESPLib:CreateESPTag({
    Text = "Part",
    Part = game.Workspace.nil, -- Replace nil with part
    TextSize = 7,
    TextColor = Color3.new(255, 255, 255),
    Highlight = true, -- may not work on some parts
    Outline = Color3.new(255,0,0),
    EnableBoxESP = true, -- Disable for no box to indicate object
    BoxColor = Color3.new(255,255,255),
    TrailMode = true, -- Disable + remove 2 lines under for tracer mode as showing in use 1
    TrailColor = Color3.new(Color3.new(255,255,255), Color3.new(255,255,255)},
    TrailWidth = {2, 4}
})