loadstring([[

local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("Humanoid")
local cam, flying, noclip = workspace.CurrentCamera, false, false
local gravity = workspace.Gravity
local spinSpeed = 0

local function toggleNoclip()
    noclip = not noclip
    game:GetService("RunService").Stepped:Connect(function()
        if noclip then
            for _, v in pairs(c:GetDescendants()) do
                if v:IsA("BasePart") then v.CanCollide = false end
            end
        end
    end)
end

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
        v.CharacterAdded:Connect(function() wait(1) createESPBox(v) end)
    end)
end

local function startFly()
    if flying then return end
    flying = true
    local bv = Instance.new("BodyVelocity", h.RootPart)
    local bg = Instance.new("BodyGyro", h.RootPart)
    bv.Velocity, bv.MaxForce = Vector3.new(0, 0, 0), Vector3.new(4000, 4000, 4000)
    bg.MaxTorque = Vector3.new(400000, 400000, 400000)
    bg.CFrame = h.RootPart.CFrame
    game:GetService("RunService").Stepped:Connect(function()
        if not flying then return end
        bv.Velocity = Vector3.new(0, 0, 0)
        bg.CFrame = cam.CFrame
        local dir = Vector3.new()
        if p.Input:GetKey("W") then dir = dir + cam.CFrame.LookVector end
        if p.Input:GetKey("S") then dir = dir - cam.CFrame.LookVector end
        if p.Input:GetKey("A") then dir = dir - cam.CFrame.RightVector end
        if p.Input:GetKey("D") then dir = dir + cam.CFrame.RightVector end
        bv.Velocity = dir * 50
    end)
end

local function stopFly()
    flying = false
    h.RootPart:FindFirstChildOfClass("BodyVelocity"):Destroy()
    h.RootPart:FindFirstChildOfClass("BodyGyro"):Destroy()
end

local function setGravity(g) workspace.Gravity = g end
local function setSpin(s) spinSpeed = s end

local gui = Instance.new("ScreenGui", p.PlayerGui)
local main = Instance.new("Frame", gui)
main.Size, main.Position, main.BackgroundTransparency, main.BackgroundColor3 = UDim2.new(0.3, 0, 0.5, 0), UDim2.new(0.35, 0, 0.25, 0), 0.3, Color3.new(0.1, 0.1, 0.1)

local function createSlider(text, pos, default, callback)
    local label = Instance.new("TextLabel", main)
    label.Text, label.Size, label.Position, label.BackgroundTransparency, label.TextScaled, label.Font, label.TextColor3 = text, UDim2.new(0.4, 0, 0.1, 0), UDim2.new(0.05, 0, pos, 0), 1, true, Enum.Font.SourceSans, Color3.new(1, 1, 1)
    local slider = Instance.new("TextBox", main)
    slider.Size, slider.Position, slider.Text, slider.Font, slider.TextScaled = UDim2.new(0.4, 0, 0.1, 0), UDim2.new(0.55, 0, pos, 0), tostring(default), Enum.Font.SourceSans, true
    slider.FocusLost:Connect(function(enterPressed) if enterPressed then local val = tonumber(slider.Text) if val then callback(val) end end end)
end

createSlider("Walk Speed:", 0.2, 16, function(val) h.WalkSpeed = val end)
createSlider("Jump Power:", 0.35, 50, function(val) h.JumpPower = val end)
createSlider("Gravity:", 0.5, gravity, setGravity)
createSlider("Spin Speed:", 0.65, 0, setSpin)

local function createButton(text, pos, callback)
    local btn = Instance.new("TextButton", main)
    btn.Text, btn.Size, btn.Position, btn.BackgroundColor3, btn.TextScaled, btn.Font, btn.TextColor3 = text, UDim2.new(0.9, 0, 0.1, 0), UDim2.new(0.05, 0, pos, 0), Color3.new(0.4, 0.4, 0.4), true, Enum.Font.SourceSansBold, Color3.new(1, 1, 1)
    btn.MouseButton1Click:Connect(callback)
end

createButton("Toggle Fly", 0.8, function()
    if flying then stopFly() else startFly() end
end)
createButton("Toggle ESP", 0.95, enableESP)
createButton("Toggle Noclip", 1.1, toggleNoclip)

local closeButton = Instance.new("TextButton", main)
closeButton.Text, closeButton.Size, closeButton.Position, closeButton.BackgroundColor3, closeButton.TextScaled, closeButton.Font, closeButton.TextColor3 = "Close", UDim2.new(0.3, 0, 0.1, 0), UDim2.new(0.35, 0, 0.05, 0), Color3.new(1, 0, 0), true, Enum.Font.SourceSansBold, Color3.new(1, 1, 1)
closeButton.MouseButton1Click:Connect(function() gui:Destroy() end)

h.WalkSpeed = 16
h.JumpPower = 50
workspace.Gravity = gravity

game:GetService("RunService").Stepped:Connect(function()
    if spinSpeed ~= 0 then
        h.RootPart.CFrame = h.RootPart.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0)
    end
end)

]])()