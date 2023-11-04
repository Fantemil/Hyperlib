_G.AutoClick = not _G.AutoClick

while _G.AutoClick do
	firesignal(game.Players.LocalPlayer.PlayerGui.mainUI.clickerButton.MouseButton1Click)
	wait()
end

-- too  easy