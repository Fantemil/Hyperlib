local yazı = "HACKER BY ANONYMOUS"

for _, oyuncu in pairs(game.Players:GetPlayers()) do
  oyuncu.Character.Head.BillboardGui.TextLabel.Text = yazı
  oyuncu.Character.Head.BillboardGui.TextLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
  oyuncu.Character.Head.BillboardGui.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
end
