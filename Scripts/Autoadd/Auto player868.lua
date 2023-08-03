-- press q to toggle
local speed = 0.1 -- lower = faster (going too fast may break it, i recommend 0.1 lowest)
local randomizeSpeed = true -- will randomize your speed by a small value to look more legit

-- services
local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local userInputService = game:GetService("UserInputService")

-- variables
local player = players.LocalPlayer
local info = player.PlayerGui.GameplayGUI.Timer.Title
local playerScripts = player.PlayerScripts
local characterModule = require(playerScripts.GameClient.CharacterModule)
local character = characterModule:WaitFor(player)
local primaryPart = character.PrimaryPart
local startEvent = replicatedStorage.Remotes.StartRE
local stairs = workspace.Stairs
local enabled = true

-- toggle
userInputService.InputBegan:Connect(function(input, procesing)
  if (not processing) then
      if (input.KeyCode == Enum.KeyCode.Q) then
          enabled = not enabled
      end
  end
end)

-- autoplay
local moveLeft, moveRight = nil, nil

for index, func in ipairs(getgc()) do
  if (type(func) == "function") then
      if (getinfo(func, "n").name == "MoveLeft") then
          moveLeft = func
      elseif (getinfo(func, "n").name == "MoveRight") then
          moveRight = func
      end
  end
end

local random = Random.new(math.random(1, 1000))

local function getClosestStairDirection()
  local closestDistance, closestStair = math.huge, nil

  for index, stair in ipairs(stairs:GetChildren()) do
      local distance = (primaryPart.Position - stair.Position).Magnitude

      if (distance < closestDistance and distance ~= 1.75 and stair.Transparency ~= 1) then
          closestDistance = distance
          closestStair = stair
      end
  end

  return primaryPart.Position.Z <= closestStair.Position.Z and "left" or "right"
end

local function autoPlay()
  stairs:WaitForChild("Stair") -- wait for stairs to be added

  while task.wait(randomSpeed and speed + random:NextNumber(-0.01, 0.05) or speed) do
      if (stairs:FindFirstChild("Stair")) then -- confirming the round hasn't ended
          if (info.Text ~= "Begining In..." and enabled) then -- waiting til round starts and checking if enabled (both not good method idc)
              local direction = getClosestStairDirection()

              if (direction == "left") then
                  moveLeft(nil, Enum.UserInputState.Begin)
              else
                  moveRight(nil, Enum.UserInputState.Begin)
              end
          end
      else
          break
      end
  end
end

startEvent.OnClientEvent:Connect(autoPlay)

if (stairs:FindFirstChild("Stair")) then
  autoPlay()
end