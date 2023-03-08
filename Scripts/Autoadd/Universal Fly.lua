local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local flying = false

function fly()
 flying = true
 local playerTorso = player.Character:FindFirstChild("HumanoidRootPart")
 while flying do
  local direction = (mouse.Hit.p - playerTorso.Position).unit
  playerTorso.Velocity = direction * 50
  wait()
 end
end

mouse.Button1Down:Connect(fly)
mouse.Button1Up:Connect(function() flying = false end)