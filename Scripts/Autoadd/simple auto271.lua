while wait(1) do
local args = {
    [1] = 7,
    [2] = game.Players.fishistastynotfr.PlayerGui.Main.Spin.List.Reward
}
game.ReplicatedStorage.Assets.Remotes.Misc.SpinWheel:FireServer(unpack(args))
end