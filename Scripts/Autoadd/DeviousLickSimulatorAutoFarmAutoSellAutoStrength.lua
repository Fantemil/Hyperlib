-- Variable

local player = game.Players.LocalPlayer
local bLocation
-- function

function teleport(loc) -- Nymphoria on v3rmillion.net
  bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  if game.Players.LocalPlayer.Character.Humanoid.Sit then
      game.Players.LocalPlayer.Character.Humanoid.Sit = false
  end
  wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
end

-- Sell script
teleport(CFrame.new(209.33769226074, -147.44990539551, -1707.4577636719))
wait(5)
teleport(bLocation)