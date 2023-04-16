-- made by echofluwuff
-- game = https://www.roblox.com/games/9907515494/Limited-Jumps
local character = game.Players.LocalPlayer.Character
local humanoid = character:FindFirstChild("Humanoid")

local function teleportToCup()
  local cups = {}
  for i, v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Cup" then
      table.insert(cups, v)
    end
  end

  if #cups > 0 then
    local cup = cups[math.random(#cups)]
    character.HumanoidRootPart.CFrame = cup.CFrame
  end
end

while true do
  if humanoid then
    local success, err = pcall(function()
      teleportToCup()
    end)
    if not success then
      print("Error occurred: ", err)
    end
  end
  wait(0.1)
end