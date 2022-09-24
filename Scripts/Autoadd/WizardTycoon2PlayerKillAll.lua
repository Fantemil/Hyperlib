while task.wait(0.1) do
 for Index, Value in next, game.Players:GetPlayers() do
  if (Value ~= game.Players.LocalPlayer and Value.Character and Value.Character:FindFirstChild("HumanoidRootPart")) then


local args = {
   [1] = CFrame.new(Value.Character.HumanoidRootPart.Position),
   [2] = math.huge,
   [3] = math.huge,
   [4] = game:GetService("Players").LocalPlayer.Character.Wand,
   [5] = math.huge,
   [6] = game:GetService("Players").LocalPlayer.Character
}

game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
end end end