local msg = game.Players.LocalPlayer.PlayerGui.Game.Message
local vim = game:GetService("VirtualInputManager")
local ps = Enum.KeyCode.Print

while true do
	while not msg.Visible do wait() end
	while msg.Visible do wait() end
	vim:SendKeyEvent(true, ps, false, game)
    vim:SendKeyEvent(false, ps, false, game)
end