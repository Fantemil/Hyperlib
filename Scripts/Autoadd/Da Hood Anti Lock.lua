local Toggled = true

local KeyCode = 'z'
local hip = 2.80
local val = -35





function AA()
  local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
  game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, val, oldVelocity.Z)
  game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
  game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, val, oldVelocity.Z)
  game.Players.LocalPlayer.Character.Humanoid.HipHeight = hip
end

game:GetService('UserInputService').InputBegan:Connect(function(Key)
  if Key.KeyCode == Enum.KeyCode[KeyCode:upper()] and not game:GetService('UserInputService'):GetFocusedTextBox() then
      if Toggled then
          Toggled = false
          game.Players.LocalPlayer.Character.Humanoid.HipHeight = hip

      elseif not Toggled then
          Toggled = true

          while Toggled do
              AA()
              task.wait()
          end
      end
  end
end)