for i, v in pairs(game.Teams.Criminals:GetPlayers()) do
  if v.Name ~= game.Players.LocalPlayer.Name then
   local inp = 10
   repeat
    wait()
    inp = inp-1
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
                  game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
   until inp == 0
  end
 end