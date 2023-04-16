local DahoodSystem = {}

getgenv().Enabled = true
getgenv().Settings = {
  ['Keybind'] = Enum.KeyCode.Q;
}

-- FUNCTION SECTION --

function DahoodSystem.SendNotification(text, title, dur)
  game:GetService("StarterGui"):SetCore("SendNotification", {
      Title = title,
      Text = text,
      Duration = dur
  })
end

function DahoodSystem.GetClosestKeybind()
  local plr = game.Players.LocalPlayer
  local mouse = plr:GetMouse()

  local LowestDistance = math.huge
  local ClosestCharacter = nil
  local Characters = workspace:GetChildren()
  for i,v in pairs(game:GetService("Players"):GetPlayers()) do
      if v.Character ~= nil then
          table.insert(Characters, v.Character)
      end
  end
  for i,v in pairs(Characters) do
      if v ~= nil then
          if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v ~= plr.Character then
              local InitialDis = (v.HumanoidRootPart.Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
              local Ray = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * InitialDis)
              local Part,Position = game.Workspace:FindPartOnRay(Ray, game.Workspace)
              local FinalDifference = math.floor((Position - v.HumanoidRootPart.Position).magnitude)
              if FinalDifference < LowestDistance then
                  ClosestCharacter = v
                  LowestDistance = FinalDifference
              end
          end
      end
  end
  return ClosestCharacter
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
  if input.KeyCode == Settings['Keybind'] then
      local closestCharacter = DahoodSystem.GetClosestKeybind()

      local currentVelocity = closestCharacter.HumanoidRootPart.Velocity or Vector3.new(0, 0, 0)
      local currentYVelocity = currentVelocity.Y

      if currentYVelocity < -100 or currentYVelocity > 100 then
          DahoodSystem.SendNotification(closestCharacter.Name, "illegal", 5)
      elseif currentVelocity.magnitude > 80 then
          DahoodSystem.SendNotification(closestCharacter.Name, "suspicious", 5)
      else
          DahoodSystem.SendNotification(closestCharacter.Name, "normal", 5)
      end
  end
end)