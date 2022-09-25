local Mouse = game:GetService('Players').LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
 if game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.E) and Mouse.Target then
  for i,targetTeam in pairs(game.Players:GetChildren()) do
   if targetTeam.Team ~= game:GetService("Players").LocalPlayer.Team then
    local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
    local part = targetTeam.Character.HumanoidRootPart
    part.Anchored = true
    part.CFrame = CFrame.new(Mouse.Hit.Position + Vector3.new(0,3,0))
   end
  end
 end
end)