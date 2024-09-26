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