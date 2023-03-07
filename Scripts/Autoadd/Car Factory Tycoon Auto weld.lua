getgenv().track = true

local function ClickButton(btn)
  local events = {"MouseButton1Up", "MouseButton1Down", "MouseButton1Click", "Activated"}
  for _,event in pairs(events) do
      for _,evnt in pairs(getconnections(btn[event])) do
          evnt:Fire()
      end
  end
end

task.spawn(function()
  while task.wait() do
      if track then
          if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Weld") then
              if math.floor(game.Players.LocalPlayer.PlayerGui.Weld.Frame.MainBar.Red.AbsolutePosition.X) > 650 and math.floor(game.Players.LocalPlayer.PlayerGui.Weld.Frame.MainBar.Red.AbsolutePosition.X) < 700 then
                  ClickButton(game.Players.LocalPlayer.PlayerGui.Weld.Frame.WeldButton)
              end
          end
      else
          break
      end
  end

end)