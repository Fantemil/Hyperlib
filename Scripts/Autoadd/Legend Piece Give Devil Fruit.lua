local args = {
  [1] = game.Players.LocalPlayer.Backpack.Combat,
  [2] = "None",
  [3] = "Magma" -- Change This, Light, Magma, Quake, Flame, Ice, Paw, Sand, Invisible
}

game:GetService("ReplicatedStorage").Remotes.Eat:FireServer(unpack(args))