local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Name = "KR1B TROLL GUI v1"
frame.Size = UDim2.new(0, 300, 0, 100)
frame.Position = UDim2.new(0.2, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
frame.BorderSizePixel = 2
frame.Parent = gui

local button1 = Instance.new("TextButton")
button1.Name = "Fe puncher"
button1.Text = "Fe puncher"
button1.Size = UDim2.new(0.4, 0, 0.4, 0)
button1.Position = UDim2.new(0.05, 0, 0.05, 0)
button1.Parent = frame

local button2 = button1:Clone()
button2.Name = "Fe runner"
button2.Text = "Fe runner"
button2.Position = UDim2.new(0.55, 0, 0.05, 0)
button2.Parent = frame

local button3 = button1:Clone()
button3.Name = "Fe no gravity"
button3.Text = "Fe no gravity"
button3.Position = UDim2.new(0.05, 0, 0.55, 0)
button3.Parent = frame

local button4 = button1:Clone()
button4.Name = "Fe touch fling (not by me)"
button4.Text = "Fe touch fling (not by me)"
button4.Position = UDim2.new(0.55, 0, 0.55, 0)
button4.Parent = frame

local function button1Action()
local H = Instance.new("Hint", game.Workspace)
H.Parent = game.Workspace
H.Text = ("F")
wait(.1)
H.Text = ("Fe")
wait(.1)
H.Text = ("Fe p")
wait(.1)
H.Text = ("Fe pu")
wait(.1)
H.Text = ("Fe pun")
wait(.1)
H.Text = ("Fe punc")
wait(.1)
H.Text = ("Fe punch")
wait(.1)
H.Text = ("Fe punche")
wait(.1)
H.Text = ("Fe puncher")
wait(.1)
H.Text = ("Fe puncher l")
wait(.1)
H.Text = ("Fe puncher lo")
wait(.1)
H.Text = ("Fe puncher loa")
wait(.1)
H.Text = ("Fe puncher load")
wait(.1)
H.Text = ("Fe puncher loade")
wait(.1)
H.Text = ("Fe puncher loaded")
wait(5)
H:Destroy()
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0, 200, 0, 50)
button1.Position = UDim2.new(0, 100, 0, 100)
button1.BackgroundColor3 = Color3.new(255, 0, 0)
button1.Text = "GET READY"
button1.Parent = screenGui

local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0, 200, 0, 50)
button2.Position = UDim2.new(0, 100, 0, 200)
button2.BackgroundColor3 = Color3.new(255, 0, 0)
button2.Text = "punch"
button2.Parent = screenGui

button1.MouseButton1Click:Connect(function()
    local animationId = "rbxassetid://161268368"
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local animation = Instance.new("Animation")
animation.AnimationId = animationId
local humanoid = character:WaitForChild("Humanoid")
local animationTrack = humanoid:LoadAnimation(animation)
animationTrack:Play()
end)

button2.MouseButton1Click:Connect(function()
    local animationId = "rbxassetid://204062532"
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local animation = Instance.new("Animation")
animation.AnimationId = animationId
local humanoid = character:WaitForChild("Humanoid")
local animationTrack = humanoid:LoadAnimation(animation)
animationTrack:Play()
end)
end

local function button2Action()
local H = Instance.new("Hint", game.Workspace)
H.Parent = game.Workspace
H.Text = ("F")
wait(.1)
H.Text = ("Fe")
wait(.1)
H.Text = ("Fe r")
wait(.1)
H.Text = ("Fe ru")
wait(.1)
H.Text = ("Fe run")
wait(.1)
H.Text = ("Fe runn")
wait(.1)
H.Text = ("Fe runne")
wait(.1)
H.Text = ("Fe runner")
wait(.1)
H.Text = ("Fe runner l")
wait(.1)
H.Text = ("Fe runner lo")
wait(.1)
H.Text = ("Fe runner loa")
wait(.1)
H.Text = ("Fe runner load")
wait(.1)
H.Text = ("Fe runner loade")
wait(.1)
H.Text = ("Fe runner loaded")
wait(5)
H:Destroy()
-- made by Jinxx 
local animationId = "rbxassetid://376754935"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack = humanoid:LoadAnimation(animation)

local defaultWalkSpeed = humanoid.WalkSpeed

local function onWalking(speed)
    if speed > 0 then
        humanoid.WalkSpeed = 50
        animationTrack:Play()
    else
        humanoid.WalkSpeed = defaultWalkSpeed
        animationTrack:Stop()
    end
end

humanoid.Running:Connect(onWalking)
end

local function button3Action()
-- No gravity script made by Jinxx enjoy!

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")

local bodyVel = Instance.new("BodyVelocity")
bodyVel.Velocity = Vector3.new(0, 50, 0)
bodyVel.MaxForce = Vector3.new(0, math.huge, 0)
bodyVel.Parent = root

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = root.CFrame
bodyGyro.Parent = root

game:GetService("RunService").Heartbeat:Connect(function()
    bodyGyro.CFrame = root.CFrame
end)
end

local function button4Action()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Touch-fling-10457"))()
end

button1.MouseButton1Click:Connect(button1Action)
button2.MouseButton1Click:Connect(button2Action)local toggleButton = Instance.new("TextButton")
toggleButton.Text = "Open/Close GUI"
toggleButton.Size = UDim2.new(0, 100, 0, 50)
toggleButton.Position = UDim2.new(0.2, -100, 0.5, 50)
toggleButton.Parent = gui

toggleButton.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
end)

button3.MouseButton1Click:Connect(button3Action)
button4.MouseButton1Click:Connect(button4Action)
