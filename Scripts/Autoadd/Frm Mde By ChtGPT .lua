-- Get the services we need
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

-- Define the teleport destinations
local destinations = {
	Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart,
	Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart,
	Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart,
	Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart,
	Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart,
	Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart,
	Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart,
	Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart,
	Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart,
	Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart,
}

-- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the Tweening information
local tweenInfo = TweenInfo.new(
	2, -- Time
	Enum.EasingStyle.Linear, -- Easing style
	Enum.EasingDirection.InOut, -- Easing direction
	0, -- Repeat count (0 means no repeat)
	false, -- Reverses the tween on completion if true
	0 -- Delay before tween starts
)

-- Function to tween the character to a destination
local function teleportCharacterTo(destination)
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if humanoidRootPart then
		local goal = {CFrame = destination.CFrame}
		local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)

		local humanoid = character:FindFirstChildOfClass("Humanoid")
		local originalGravity = humanoid.JumpPower -- store original jump power
		humanoid.JumpPower = 0 -- set jump power to 0 to "freeze" in air

		-- Anchor the HumanoidRootPart
		local wasAnchored = humanoidRootPart.Anchored
		humanoidRootPart.Anchored = true

		tween.Completed:Connect(function()
			humanoid.JumpPower = originalGravity -- restore original jump power
			-- Restore original anchored state
			humanoidRootPart.Anchored = wasAnchored
		end)

		tween:Play()
		tween.Completed:Wait() -- Wait for the tween to complete before returning
	end
end

-- Teleport the character to each destination in order
for _, destination in ipairs(destinations) do
	teleportCharacterTo(destination)
	wait(0.1) -- Wait for a second between each teleport
end

-- Finally, teleport to TheEnd
teleportCharacterTo(Workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger)
