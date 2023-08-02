for i,v in next, game.Players:GetPlayers() do
if v ~= game.Players.LocalPlayer then
local args = {
    [1] = ""..v.Name
}

game:GetService("Players").LocalPlayer.PlayerGui.Admin.Panel.Buttons.Kick.Select.Kick:FireServer(unpack(args))
end
end