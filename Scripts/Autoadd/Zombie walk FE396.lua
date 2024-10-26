local players = game:GetService("Players")
local tweensigma = game:GetService("TweenService")

local rizzplayer = players.LocalPlayer
local skibidichar = rizzplayer.Character or rizzplayer.CharacterAdded:Wait()
local gyatthumanoid = skibidichar:WaitForChild("Humanoid")

local skibidianim = Instance.new("Animation")
skibidianim.AnimationId = "rbxassetid://183294396"
local sigmaanimtrack = gyatthumanoid:LoadAnimation(skibidianim)

local rizzinfo = TweenInfo.new(0.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out)
local sigmaweight = Instance.new("NumberValue")
sigmaweight.Value = 0

sigmaweight.Changed:Connect(function(newValue)
    sigmaanimtrack:AdjustWeight(newValue)
end)

sigmaanimtrack:Play()
sigmaanimtrack:AdjustSpeed(0)
local gyatttween = tweensigma:Create(sigmaweight, rizzinfo, {Value = 1})
gyatttween:Play()
