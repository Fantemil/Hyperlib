loadstring([[

local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("Humanoid")
local cam = workspace.CurrentCamera
local flying = false
local flySpeed = 50

local function createESPBox(plr)
    local box = Instance.new("BoxHandleAdornment")
    box.Adornee = plr.Character:FindFirstChild("HumanoidRootPart")
    box.AlwaysOnTop = true
    box.ZIndex = 5
    box.Size = Vector3.new(4, 7, 4)
    box.Color3 = Color3.new(1, 0, 0)
    box.Transparency = 0.7
    box.Parent = plr.Character:FindFirstChild("HumanoidRootPart")
end

local function enableESP()
    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= p and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            createESPBox(v)
        end
    end
    game.Players.PlayerAdded:Connect(function(v)
        v.CharacterAdded:Connect(function()
            wait(1)
            createESPBox(v)
        end)
    end)
end

local function startFly()
    if flying then return end
    flying = true
    local bv = Instance.new("BodyVelocity")
    bv.Velocity = Vector3.new(0, 0, 0)
    bv.MaxForce = Vector3.new(4000, 4000, 4000)
    bv.Parent = h.RootPart

    while flying do
        local dir = Vector3.new()
        if p.Input:GetKey("W") then dir = dir + cam.CFrame.LookVector end
        if p.Input:GetKey("S") then dir = dir - cam.CFrame.LookVector end
        if p.Input:GetKey("A") then dir = dir - cam.CFrame.RightVector end
        if p.Input:GetKey("D") then dir = dir + cam.CFrame.RightVector end
        bv.Velocity = dir * flySpeed
        wait()
    end
end

local function stopFly()
    flying = false
    h.RootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
end

local gui = Instance.new("ScreenGui", p.PlayerGui)
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0.3, 0, 0.4, 0)
main.Position = UDim2.new(0.35, 0, 0.3, 0)
main.BackgroundTransparency = 0.3
main.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)

local title = Instance.new("TextLabel", main)
title.Text = "Control Panel"
title.Size = UDim2.new(1, 0, 0.1, 0)
title.BackgroundTransparency = 1
title.TextScaled = true
title.Font = Enum.Font.SourceSansBold
title.TextColor3 = Color3.new(1, 1, 1)

local function createSlider(labelText, pos, default, callback)
    local label = Instance.new("TextLabel", main)
    label.Text = labelText
    label.Size = UDim2.new(0.4, 0, 0.1, 0)
    label.Position = UDim2.new(0.05, 0, pos, 0)
    label.BackgroundTransparency = 1
    label.TextScaled = true
    label.Font = Enum.Font.SourceSans
    label.TextColor3 = Color3.new(1, 1, 1)
    
    local slider = Instance.new("TextBox", main)
    slider.Size = UDim2.new(0.4, 0, 0.1, 0)
    slider.Position = UDim2.new(0.55, 0, pos, 0)
    slider.Text = tostring(default)
    slider.Font = Enum.Font.SourceSans
    slider.TextScaled = true
    
    slider.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            local val = tonumber(slider.Text)
            if val then callback(val) end
        end
    end)
end

createSlider("Walk Speed:", 0.2, 16, function(val) h.WalkSpeed = val end)
createSlider("Jump Power:", 0.35, 50, function(val) h.JumpPower = val end)

local flyButton = Instance.new("TextButton", main)
flyButton.Text = "Toggle Fly"
flyButton.Size = UDim2.new(0.9, 0, 0.1, 0)
flyButton.Position = UDim2.new(0.05, 0, 0.5, 0)
flyButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
flyButton.TextScaled = true
flyButton.Font = Enum.Font.SourceSansBold
flyButton.TextColor3 = Color3.new(1, 1, 1)

local espButton = Instance.new("TextButton", main)
espButton.Text = "Toggle ESP"
espButton.Size = UDim2.new(0.9, 0, 0.1, 0)
espButton.Position = UDim2.new(0.05, 0, 0.65, 0)
espButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
espButton.TextScaled = true
espButton.Font = Enum.Font.SourceSansBold
espButton.TextColor3 = Color3.new(1, 1, 1)

local closeButton = Instance.new("TextButton", main)
closeButton.Text = "Close"
closeButton.Size = UDim2.new(0.9, 0, 0.1, 0)
closeButton.Position = UDim2.new(0.05, 0, 0.8, 0)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.TextScaled = true
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextColor3 = Color3.new(1, 1, 1)

flyButton.MouseButton1Click:Connect(function()
    if flying then
        stopFly()
        flyButton.Text = "Toggle Fly"
    else
        startFly()
        flyButton.Text = "Stop Fly"
    end
end)

espButton.MouseButton1Click:Connect(enableESP)
closeButton.MouseButton1Click:Connect(function() main.Visible = false end)

h.WalkSpeed = 16
h.JumpPower = 50

]])()