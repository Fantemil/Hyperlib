getgenv().SlapAllOfThem = true -- replace true by false to disable
-- made by kr4sk 
local players = game.Players:GetPlayers()
while getgenv().SlapAllOfThem do
    wait()
for _, plr in ipairs(players) do
  if plr ~= game.Players.LocalPlayer then -- don't slap ur self
      local args = {
    [1] = "slash",
    [2] = workspace:WaitForChild(plr.Name),
    [3] = Vector3.new(2.3112568855285645, 0.00000721670403436292, 1.912613868713379) -- dont change this or do if you know stuff 
}
game:GetService("Players").LocalPlayer.Character.Default.Event:FireServer(unpack(args))
end
end
end