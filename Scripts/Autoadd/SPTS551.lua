if getgenv().ib then
	getgenv().ib:Disconnect()
	getgenv().hb:Disconnect()
end

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")

VirtualUser:CaptureController()
ReplicatedStorage.RemoteEvent:FireServer({"Weight", Weight})

local Player = Players.LocalPlayer

local Respawning = false
local Toggled = false
local LastRespawn = 0
local Position
local Character = Player.Character
local LastUsed = {}

local function CalculateGlobals()
	if not Position then
		return
	end

	local TPosition = Position.Position
	local TrainingArea = workspace.Main.TrainingArea

	getrenv()._G.NearTrainingRock =    (TPosition - ReplicatedStorage:WaitForChild("TrainingRockCollision").Position).Magnitude < 35
	getrenv()._G.NearTrainingCrystal = (TPosition - ReplicatedStorage:WaitForChild("TrainingCrystalCollision").Position).Magnitude < 15
	getrenv()._G.NearStarFSTraining1 = (TPosition - TrainingArea:WaitForChild("StarFSTraining1").Position).Magnitude < 25
	getrenv()._G.NearStarFSTraining2 = (TPosition - TrainingArea:WaitForChild("StarFSTraining2").Position).Magnitude < 35
	getrenv()._G.NearStarFSTraining3 = (TPosition - TrainingArea:WaitForChild("StarFSTraining3").Position).Magnitude < 105
	getrenv()._G.NearPPTrainingPart1 = (TPosition - TrainingArea:WaitForChild("PPTrainingPart1").Position).Magnitude < 20
	getrenv()._G.NearPPTrainingPart2 = (TPosition - TrainingArea:WaitForChild("PPTrainingPart2").Position).Magnitude < 20
	getrenv()._G.NearPPTrainingPart3 = (TPosition - TrainingArea:WaitForChild("PPTrainingPart3").Position).Magnitude < 25
	getrenv()._G.NearPPTrainingPart4 = (TPosition - TrainingArea:WaitForChild("PPTrainingPart4").Position).Magnitude < 35
end

local ToolCooldowns = {
	["Fist Training"] = 1.1,
	["Push Up"] = 1.1
}
local function ShouldUseTool(ToolName)
	return tick() - (LastUsed[ToolName] or 0) >= ToolCooldowns[ToolName]
end

local function ClearXpFrames()
	for _, XpFrame in pairs(Player.PlayerGui.ScreenGui:GetChildren()) do
		if XpFrame.Name == "XpFrame" then
			XpFrame:Destroy()
		end
	end
end

local function Respawn()
    ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})
end

getgenv().ib = UserInputService.InputBegan:Connect(function(Key,IC)
    if (IC) then return end

    if (Key.KeyCode == Enum.KeyCode.L) then
        Position = Player.Character:GetPrimaryPartCFrame()
    elseif (Key.KeyCode == Enum.KeyCode.P) then
		VirtualUser:SetKeyUp(0x77)
        Toggled = not Toggled
    end
end)

getgenv().hb = RunService.Heartbeat:Connect(function()
    if not (Toggled and Position) then
		return
	end

    local HumanoidRootPart = Character:FindFirstChild'HumanoidRootPart'
	local Humanoid = Character:FindFirstChild("Humanoid")

	if #getgenv().EquipTools > 0 and Humanoid then
		for _, ToolName in pairs(getgenv().EquipTools) do
			local Tool = Player.Backpack:FindFirstChild(ToolName)

			if Tool and not Respawning then
				Tool.Parent = Character
			end

			local EquippedTool = Character:FindFirstChild(ToolName)
			if EquippedTool and ShouldUseTool(ToolName) then
				CalculateGlobals()
				LastUsed[ToolName] = tick()

				EquippedTool:Activate()
				EquippedTool:Deactivate()
			end
		end
	end

    if (tick() - LastRespawn >= (getgenv().RespawnInterval or 2) - 1.2 and (not Respawning)) then
        Respawning = true

		CalculateGlobals()
		ClearXpFrames()

		Respawn()

		Character = Player.CharacterAdded:Wait()
		repeat
			task.wait()
		until Player.Character.Parent == workspace

		local Weight = "Unequip"
		if getgenv().EquipWeight and getgenv().EquipWeight > 0 then
			Weight = "Weight" .. getgenv().EquipWeight
		end

		ReplicatedStorage.RemoteEvent:FireServer({"Weight", Weight})

		CalculateGlobals()
		ClearXpFrames()

        LastRespawn = tick()
        Respawning = false

        VirtualUser:CaptureController()
        VirtualUser:SetKeyDown(0x77)
    end

    if (HumanoidRootPart and Position) then
        HumanoidRootPart.CFrame = Position
    end
end)