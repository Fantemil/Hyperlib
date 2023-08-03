local Client = game.Players.LocalPlayer
local RS = game.ReplicatedStorage
local BlockFolder = workspace.Plots[Client.Name].Blocks
local RunService = game:GetService("RunService")

local Events = {
	Tap = RS.Functions.Tap,
}

local function Merge()
	for _, Block in pairs(BlockFolder:GetChildren()) do
		for _, OtherBlock in pairs(BlockFolder:GetChildren()) do
			if Block ~= OtherBlock and Block:GetAttribute("level") == OtherBlock:GetAttribute("level") then
				Block.CFrame = OtherBlock.CFrame
			end
		end
	end
end

local function TapBlocks()
	for _, Block in pairs(BlockFolder:GetChildren()) do
		Events.Tap:FireServer(Block)
	end
end

RunService.Heartbeat:Connect(function()
	Merge()
	TapBlocks()
end)

-- optional, inf obby reward (just remove it if you don't want it)
while task.wait() do
	firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Obby.Finish, 0)
	firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Obby.Finish, 1)
end
