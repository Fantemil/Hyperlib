local toggle = false
local loopRunning = false
local loopConnection

function toggleScript()
  toggle = not toggle
  if toggle then
    print("Script is now on")
    if not loopRunning then
      loopConnection = game:GetService("RunService").Stepped:Connect(function()
        if not toggle then
          return
        end
        for i = 2, #game.Players:GetPlayers() do
          pcall(function()
            v = game.Players:GetPlayers()[i]
            local distance =
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                v.Character.HumanoidRootPart.Position).magnitude
            if distance <= 60 and v.Character.Humanoid.Health > 0 then
              game:GetService("ReplicatedStorage").Events.Hit:FireServer(
                  v.Character.HumanoidRootPart,
                  "player",
                  1
              )
            end
          end)
        end
      end)
      loopRunning = true
    end
  else
    print("Script is now off")
    if loopRunning then
      loopConnection:Disconnect()
      loopRunning = false
    end
  end
end

function onKeyPress(key)
-- CHANGE KEY HERE, DONT MAKE IT CAPITALIZED
  if key == "z" then
    toggleScript()
  end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
  if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard then
    onKeyPress(input.KeyCode.Name:lower())
  end
end)