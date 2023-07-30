-- Get the necessary services and objects
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Define the function that will be used to create the ragdoll
local function createRagdoll(character)
	-- Check that the character is a valid instance of a humanoid
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end

	-- Disable the character's root part to make it fall
	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if rootPart then
		rootPart.Anchored = true
	end

	-- Create a ragdoll model
	local ragdoll = Instance.new("Model")
	ragdoll.Name = "Ragdoll"
	ragdoll.Parent = character.Parent

	-- Clone the character's parts and add them to the ragdoll model
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			local clonePart = part:Clone()
			clonePart.Anchored = false
			clonePart.Parent = ragdoll
		end
	end

	-- Remove the character's original model and humanoid
	character:Destroy()
	humanoid:Destroy()

	return ragdoll
end

-- Create the ragdoll for each player when they die
Players.PlayerAdded:Connect(function(player)
	-- Create the ragdoll when the player's character dies
	player.CharacterAdded:Connect(function(character)
		character.Humanoid.Died:Connect(function()
			local ragdoll = createRagdoll(character)
			if not ragdoll then
				return
			end

			-- Make the ragdoll invisible to the player who died
			if player.Character == character then
				for _, part in pairs(ragdoll:GetDescendants()) do
					if part:IsA("BasePart") then
						part.Transparency = 1
					end
				end
			end

			-- Set the respawn time to 200
			player.RespawnTime = 200
		end)
	end)
end)

-- Update the ragdoll's position and orientation
RunService.Heartbeat:Connect(function()
	for _, ragdoll in pairs(workspace:GetDescendants()) do
		if ragdoll.Name == "Ragdoll" then
			local humanoidRootPart = ragdoll:FindFirstChild("HumanoidRootPart")
			if humanoidRootPart then
				local character = humanoidRootPart.Parent
				if character then
					humanoidRootPart.CFrame = character.HumanoidRootPart.CFrame
				end
			end
		end
	end
end)

-- Create a keybind for ragdolling the player
local isRagdolling = false
local inputService = game:GetService("UserInputService")

inputService.InputBegan:Connect(function(input, isTyping)
	if isTyping then
		return
	end

	if input.KeyCode == Enum.KeyCode.R then
		if isRagdolling then
			isRagdolling = false
			Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
		else
			isRagdolling = true
			Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
		end
	end

	if input.KeyCode == Enum.KeyCode.Q then
		if isRagdolling then
			isRagdolling = false
			Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
		end
	end
end)

-- Make the ragdoll visible to the player who initiated the script
local localPlayer = Players.LocalPlayer
local localRagdoll = nil

-- Create the ragdoll for the local player when they die
localPlayer.CharacterAdded:Connect(function(character)
character.Humanoid.Died:Connect(function()
local ragdoll = createRagdoll(character)
if not ragdoll then
return
end
	-- Make the ragdoll invisible to other players
	for _, part in pairs(ragdoll:GetDescendants()) do
		if part:IsA("BasePart") then
			part.Transparency = 1
		end
	end

	-- Set the respawn time to 200
	localPlayer.RespawnTime = 200

	-- Store a reference to the local player's ragdoll
	localRagdoll = ragdoll
end)
end)

-- Update the local player's ragdoll position and orientation
RunService.Heartbeat:Connect(function()
if localRagdoll then
local humanoidRootPart = localRagdoll:FindFirstChild("HumanoidRootPart")
if humanoidRootPart then
humanoidRootPart.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
end
end
end)

-- Create a keybind for ragdolling the player
local isRagdolling = false
local inputService = game:GetService("UserInputService")

inputService.InputBegan:Connect(function(input, isTyping)
if isTyping then
return
end
if input.KeyCode == Enum.KeyCode.R then
	if isRagdolling then
		isRagdolling = false
		localPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
	else
		isRagdolling = true
		localPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
	end
end

if input.KeyCode == Enum.KeyCode.Q then
	if isRagdolling then
		isRagdolling = false
		localPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
	end
end
end)