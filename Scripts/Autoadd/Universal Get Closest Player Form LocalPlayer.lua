-- Get the local player
local player = game.Players.LocalPlayer
-- Get all of the players in the game
local players = game.Players:GetPlayers()
-- This function will be called every 1 second
function onTick()
  -- Set the minimum distance to a large number
  local minDistance = math.huge
  -- Set the closest player to nil
  local closestPlayer = nil
  -- Loop through all of the players
  for _, otherPlayer in pairs(players) do
    -- Skip the local player
    if otherPlayer == player then
      continue
    end
    -- Get the distance between the local player and the other player
    local distance = (player.Character.PrimaryPart.Position - otherPlayer.Character.PrimaryPart.Position).magnitude
    -- If the distance is less than the minimum distance, set the closest player to the other player and update the minimum distance
    if distance < minDistance then
      closestPlayer = otherPlayer
      minDistance = distance
    end
  end
  -- Print the distance to the closest player
  print(minDistance)
  print(closestPlayer)
end
-- Run the onTick function every 1 second
while true do
  wait(1)
  onTick()
end