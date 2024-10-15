local screenGui = Instance.new("ScreenGui")
local button1 = Instance.new("TextButton")

screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

button1.Size = UDim2.new(0, 99, 0, 50)
button1.Position = UDim2.new(0.2, -100, 0.4, 0)
button1.Text = "MUDA!"
button1.BackgroundColor3 = Color3.new(255, 0, 0)
button1.Parent = screenGui

button1.MouseButton1Click:Connect(function()
 sound = Instance.new("Sound",workspace)
sound.Name = "MUDA"
sound.SoundId = "rbxassetid://616593932"
sound:Play()
local animationId = "rbxassetid://126753849"
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local animation = Instance.new("Animation")
animation.AnimationId = animationId
local humanoid = character:WaitForChild("Humanoid")
local animationTrack = humanoid:LoadAnimation(animation)
animationTrack:Play()  
end)