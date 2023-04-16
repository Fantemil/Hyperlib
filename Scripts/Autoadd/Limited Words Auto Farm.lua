local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

-- config
_G.fire = true

local function teleportToBillboard()
  local billboards = {}
  for i, v in pairs(game.Workspace:GetDescendants()) do
    if v:IsA("BillboardGui") and v.Name == "BillboardGui" then
      table.insert(billboards, v)
    end
  end

  if #billboards > 0 then
    local billboard = billboards[math.random(#billboards)]
    local billboardPart = billboard.Parent
    while not billboardPart:IsA("BasePart") and billboardPart.Parent do
      billboardPart = billboardPart.Parent
    end
    if billboardPart:IsA("BasePart") then
      character.HumanoidRootPart.CFrame = billboardPart.CFrame
    end
  end
end

while true do
  if humanoid then
    local success, err = pcall(function()
      teleportToBillboard()
    end)
    if not success then
      warn("Error occurred: ", err)
    end
  end
  
  for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("ProximityPrompt") and v.Enabled and v.Parent then
      fireproximityprompt(v, 1, true)
    end
  end
  
  wait(0.1)
end