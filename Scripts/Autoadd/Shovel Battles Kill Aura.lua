-- Variables
local Client = game.Players.LocalPlayer
local Root = Client.Character.HumanoidRootPart
local Players = game.Players
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Event = game.ReplicatedStorage.gameAssets.events.hit
local Enabled = false

-- Functions
local function closestPlayer()
 local closest, maxDist = nil, 9e9
 for _, player in pairs(Players:GetPlayers()) do
  if player ~= Client and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
   if player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
    local dist = (Root.Position - player.Character.HumanoidRootPart.Position).Magnitude
    if dist < maxDist then
     closest, maxDist = player, dist
    end
   end
  end
 end
 return closest
end

-- Main script

UserInputService.InputBegan:Connect(function(input)
 if input.KeyCode == Enum.KeyCode.Q then
  Enabled = not Enabled
  print("Enabled: " .. tostring(Enabled))
 end
end)

RunService.Stepped:Connect(function()
 if Enabled then
  local player = closestPlayer()
  local Shovel = Client.Backpack:FindFirstChildOfClass("Tool") or Client.Character:FindFirstChildOfClass("Tool")
  if Shovel and (player.Character.HumanoidRootPart.Position - Root.Position).Magnitude <= 15 then
   local s = require(Shovel.Settings)
   Event:FireServer(
    player.Character,
    player.Character.Head,
    s.damage,
    s.power,
    s.powerUp,
    s.ragdollTime,
    Shovel
   )
  end
 end
end)