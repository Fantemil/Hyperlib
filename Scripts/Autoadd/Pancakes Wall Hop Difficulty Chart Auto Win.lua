_G.Auto_win = true
while wait(0.1) do
 pcall(function()
  if _G.Auto_win then
   if game.Players.LocalPlayer.leaderstats.Stage.Value == 83 then
    _G.Auto_win = false
    else
     _G.Stage = game.Players.LocalPlayer.leaderstats.Stage.Value+1
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Checkpoints[_G.Stage].CFrame
   end
  end
 end)
end