getgenv().AutoUpgrade = true -- turn off if issues

-- tiny little anticheat bypass tomato.txt and auto collect squares
getgenv()["tomato.txt_anticheatbypassandmore"] = function()
	local function RemoveAntiCheat(Character)
		local AnticheatProtectScript = Character:WaitForChild("Anti", 5)
		if not AnticheatProtectScript then
			return
		end
		local AnticheatScript = Character:WaitForChild("JyAntiCheat.lua")
		AnticheatProtectScript.Disabled = true
		AnticheatScript.Disabled = true
		AnticheatProtectScript:Destroy()
		AnticheatScript:Destroy()
	end
	local LocalPlayer = game:GetService("Players").LocalPlayer
	RemoveAntiCheat(LocalPlayer.Character)
	LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(-100, 0, 0)
	local playercube = workspace.PlayerCube:WaitForChild(LocalPlayer.Name)
	while task.wait() do
		for i, Area in pairs(workspace.Areas:GetChildren()) do
			playercube.CFrame = Area.CFrame
		end
	end
end
task.spawn(getgenv()["tomato.txt_anticheatbypassandmore"])

if not getgenv().AutoUpgrade then error("Auto Upgrade off thats why this error has appeared its Okay tho :)") end

-- semi smart auto upgrade 55% efficency
local RemoteEvents = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents")
local BuyMax = RemoteEvents:WaitForChild("BuyMax")
local BuyOne = RemoteEvents:WaitForChild("BuyOne")
local PrestigeReset = RemoteEvents:WaitForChild("PrestigeReset")
local RubyReset = RemoteEvents:WaitForChild("RubyReset")
local LightResetCheck = RemoteEvents:WaitForChild("LightResetCheck")


while task.wait(0.1 - 0.015) do
	-- Square and Golden Square upgrades
	local SU_GSU = {"SU1B", "SU2B", "SU3B", "GSU1B", "GSU2B"}
	for i,v in pairs(SU_GSU) do
		BuyMax:FireServer(v)
		task.wait()
		PrestigeReset:FireServer()
		task.wait()
	end

	-- Prestige Upgrades
	local PU = {"PU1B", "PU2B"}
	for i,v in pairs(PU) do
		BuyMax:FireServer(v)
		task.wait()
		RubyReset:FireServer()
		task.wait()
	end

	--Third Prestige Upgrade IE uses diffrent remote
	BuyOne:FireServer("PU3B")
	task.wait()
	RubyReset:FireServer()
	task.wait()
	-- Ruby Upgrades
	local RU = {"RU1B", "RU2B", "RU3B"}
	for i,v in pairs(RU) do
		BuyMax:FireServer(v)
		task.wait()
		LightResetCheck:FireServer()
		task.wait()
	end
end