print("---")
print("ClueWord is:", game.ReplicatedStorage.String.ClueWord.Value)
print("SpyWord is:", game.ReplicatedStorage.String.SpyWord.Value)

for _, player in ipairs(game.Players:GetPlayers()) do
	local isSpy = player:FindFirstChild("boolFolder") and player.boolFolder:FindFirstChild("isSpy")
	if isSpy and isSpy:IsA("BoolValue") and isSpy.Value then
		print("the spy is:", player.Name)
	end
end

print("---")