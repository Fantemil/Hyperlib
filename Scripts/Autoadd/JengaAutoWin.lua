while wait() do
 if game.Players.LocalPlayer.Team == game.Teams.Towers then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Classic.Button.CFrame
 end
end