local thekeybindis = "b"

game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "@dread.w",
    Text = "Your keybind is " ..thekeybindis,
})

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local orgp = player.Character.HumanoidRootPart.Position
local istping = false

local function teleport()
while istping do
local randomPosition = orgp + Vector3.new(math.random(-15, 15), math.random(-15, 35), math.random(-15, 15))
player.Character.HumanoidRootPart.CFrame = CFrame.new(randomPosition)
wait()
end
end

mouse.KeyDown:Connect(function(key)
if key == thekeybindis then
if istping then
istping = false
player.Character.HumanoidRootPart.CFrame = CFrame.new(orgp)
else -- made by @dread.w
istping = true
orgp = player.Character.HumanoidRootPart.Position
teleport()
end
end
end)