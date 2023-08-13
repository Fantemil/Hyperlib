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

    local esp = Instance.new("BillboardGui")
    esp.Name = "esp"
    esp.Size = UDim2.new(0, 200, 0, 50)
    esp.StudsOffset = Vector3.new(0, 1.5, 0) -- Offset to raise the label slightly
    esp.Adornee = Part
    esp.Parent = Part
    esp.AlwaysOnTop = true

    local esplabelfr = Instance.new("TextLabel")
    esplabelfr.Name = "esplabelfr"
    esplabelfr.Size = UDim2.new(1, 0, 0, 70)
    esplabelfr.BackgroundColor3 = Color3.new(0, 0, 0)
    esplabelfr.TextColor3 = TextColor or Color3.fromRGB(255, 255, 255) -- Use provided color or default white
    esplabelfr.BackgroundTransparency = 1
    esplabelfr.TextStrokeTransparency = 0
    esplabelfr.TextStrokeColor3 = Color3.new(0, 0, 0)
    esplabelfr.TextSize = TextSize
    esplabelfr.TextScaled = false
    esplabelfr.Parent = esp

    local box = Instance.new("BoxHandleAdornment")
    box.Name = "box"
    box.Size = Part.Size + Vector3.new(0.5, 0.5, 0.5)
    box.Adornee = Part
    box.AlwaysOnTop = true
    box.Transparency = 0.6
    box.Color3 = BoxColor or Color3.new(0, 0, 255)
    box.ZIndex = 0
    box.Parent = Part

    local function updateesplabelfr()
        local playerPosition = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if playerPosition then
            local distance = (playerPosition.Position - Part.Position).Magnitude
            esplabelfr.Text = string.format(Text .. ": %.2f", distance)

            local headPosition = Part.Position + Vector3.new(0, Part.Size.Y / 2, 0)
            local screenPosition, onScreen = camera:WorldToScreenPoint(headPosition)

            if onScreen or playerPosition.Position.Y > Part.Position.Y then
                esp.Adornee = Part
                esp.Enabled = true
                box.Adornee = Part
                box.Visible = true
            else
                esp.Enabled = false
                box.Visible = false
            end
        else
            esp.Enabled = false
            box.Visible = false
        end
    end

    RunService.RenderStepped:Connect(updateesplabelfr)
end

function ESPLib:PlayerESP()
    for i, player in pairs(game.Players:GetChildren()) do
        if player:IsA("Player") and player.Name ~= game.Players.LocalPlayer.Name then
            ESPLib:CreateESPTag({
                Text = player.DisplayName .. "/" .. player.Name,
                Part = player.Character.UpperTorso or player.Character.Torso,
                TextSize = 10,
                TextColor = Color3.new(255, 255, 255),
                BoxColor = Color3.new(255, 255, 255)
            })
        end
    end
end

--[[ 
    Func Uses = ({
        ESPLib:PlayerESP() -- Built in Player ESP
        ESPLib:CreateESPTag({ -- Create an ESP Tag
            Text = "Sample",
            Part = game.Workspace.Part,
            TextSize = 20,
            TextColor = Color3.new(255,255,255),
            BoxColor = Color3.new(255,255,255)
        })
    }
]]