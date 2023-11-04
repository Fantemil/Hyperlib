local Folder = workspace["Game Systems"]
local player = game.Players.LocalPlayer.Character.HumanoidRootPart


for _, Child in ipairs(Folder:GetDescendants()) do
	if Child.Name:match("Airdrop_") then 
		player.CFrame = Child.MainPart.CFrame
end
end