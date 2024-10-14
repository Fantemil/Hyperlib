local player = game.Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

function notifyPlayer(title, text)
    StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = 5;
    })
end


notifyPlayer("Nameless Animation V4", "Originally Made By MyWorld")

notifyPlayer("Sda Reanimation", "SetDesired-hub")

notifyPlayer("Silly Edits", "By Gazer_ha")



local fake_transparency = 0.8

local Motors = {
	["Left Hip"] = 0,
	["Neck"] = 0,
	["Left Shoulder"] = 0,
	["Right Hip"] = 0,
	["Right Shoulder"] = 0
}

local TS = game:GetService("TweenService")

local function getnext(tbl, number)
	local closestDiff = math.huge
	local closestValue = 0
	for i, v in pairs(tbl) do
		if i > number and i - number < closestDiff then
			closestDiff = i - number
			closestValue = i
		end
	end
	return closestValue
end

local function kftotbl(kf)
	local tbl3 = {}
	for _, v in pairs(kf:GetDescendants()) do
		if v:IsA("Pose") then
			tbl3[string.sub(v.Name, 1, 1) .. string.sub(v.Name, #v.Name, #v.Name)] = v.CFrame
		end
	end
	return tbl3
end

local function getSpeed(lastTimeStamp, currentTimeStamp)
	if currentTimeStamp == 0 then return 0 end
	return math.abs(lastTimeStamp - currentTimeStamp)
end

local function getAnimation(animationId)
	local animationObject
	local success, errorMsg = pcall(function()
		animationObject = game:GetObjects(animationId)[1]
	end)
	if not success then
		warn("Failed to load animation: " .. errorMsg)
		return nil
	end
	return animationObject
end

local Main = {}
Main.__index = Main

function Main.LoadDummy(DummyChar)
	local metatable = {}
	setmetatable(metatable, Main)
	metatable.char = DummyChar
	return metatable
end

function Main:LoadAnimation(animationId)
	local Character = self.char
	local animationObject = getAnimation(animationId)
	if not animationObject then return end
	print(animationObject)
	local metatable = {}
	setmetatable(metatable, Main)
	metatable.char = Character
	metatable.animObject = animationObject
	return metatable
end

function Main:Play()
	local Character = self.char
	local animationObject = self.animObject
	local Looped = true
	local anim = {}

	for _, v in pairs(animationObject:GetChildren()) do
		if v:IsA("Keyframe") then
			anim[v.Time] = kftotbl(v)
		end
	end

	local LH = Character.Torso["Left Hip"].C0
	local RH = Character.Torso["Right Hip"].C0
	local LS = Character.Torso["Left Shoulder"].C0
	local RS = Character.Torso["Right Shoulder"].C0
	local RoH = Character.HumanoidRootPart["RootJoint"].C0
	local N = Character.Torso["Neck"].C0
	local count = -1
	local lastTimeStamp = 0

	self.played = false
	local times = {
		Lg = 0,
		Rg = 0,
		Lm = 0,
		Rm = 0,
		To = 0,
		Hd = 0
	}
	local lasttime = tick()

	while not self.played do
		local timepassed = tick() - lasttime
		if not Looped then 
			self.played = true
		end	
		for i, v in pairs(anim) do
			local asdf = getnext(anim, count)
			v = anim[asdf]
			count = asdf

			task.wait(asdf - count)
			-- Handle keyframe updates
			if v["Lg"] then
				local Ti = TweenInfo.new(getSpeed(lastTimeStamp, asdf) + times.Lg + getSpeed(lastTimeStamp, asdf))
				times.Lg = 0
				TS:Create(Character.Torso["Left Hip"], Ti, {C0 = LH * v["Lg"]}):Play()
			else
				times.Lg = times.Lg + getSpeed(lastTimeStamp, asdf)
			end
			if v["Rg"] then
				local Ti = TweenInfo.new(getSpeed(lastTimeStamp, asdf) + times.Rg + getSpeed(lastTimeStamp, asdf))
				times.Rg = 0
				TS:Create(Character.Torso["Right Hip"], Ti, {C0 = RH * v["Rg"]}):Play()
			else
				times.Rg = times.Rg + getSpeed(lastTimeStamp, asdf)
			end
			if v["Lm"] then
				local Ti = TweenInfo.new(getSpeed(lastTimeStamp, asdf) + times.Lm + getSpeed(lastTimeStamp, asdf))
				times.Lm = 0
				TS:Create(Character.Torso["Left Shoulder"], Ti, {C0 = LS * v["Lm"]}):Play()
			else
				times.Lm = times.Lm + getSpeed(lastTimeStamp, asdf)
			end
			if v["Rm"] then
				local Ti = TweenInfo.new(getSpeed(lastTimeStamp, asdf) + times.Rm + getSpeed(lastTimeStamp, asdf))
				times.Rm = 0
				TS:Create(Character.Torso["Right Shoulder"], Ti, {C0 = RS * v["Rm"]}):Play()
			else
				times.Rm = times.Rm + getSpeed(lastTimeStamp, asdf)
			end
			if v["To"] then
				local Ti = TweenInfo.new(getSpeed(lastTimeStamp, asdf) + times.To + getSpeed(lastTimeStamp, asdf))
				times.To = 0
				TS:Create(Character.HumanoidRootPart["RootJoint"], Ti, {C0 = RoH * v["To"]}):Play()
			else
				times.To = times.To + getSpeed(lastTimeStamp, asdf)
			end
			if v["Hd"] then
				local Ti = TweenInfo.new(getSpeed(lastTimeStamp, asdf) + times.Hd + getSpeed(lastTimeStamp, asdf))
				times.Hd = 0
				TS:Create(Character.Torso["Neck"], Ti, {C0 = N * v["Hd"]}):Play()
			else
				times.Hd = times.Hd + getSpeed(lastTimeStamp, asdf)
			end
			task.wait(getSpeed(lastTimeStamp, asdf))
			lastTimeStamp = asdf
		end
	end
	
	-- Reset character to original pose after animation ends
	Character.Torso["Left Hip"].C0 = LH
	Character.Torso["Right Hip"].C0 = RH
	Character.Torso["Left Shoulder"].C0 = LS
	Character.Torso["Right Shoulder"].C0 = RS
	Character.HumanoidRootPart["RootJoint"].C0 = RoH
	Character.Torso["Neck"].C0 = N
end

function Main:Stop()
	self.played = true
end

-- Script setup and initialization
local animationplayer = Main

local LoadedAnimationTable = {}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local RunService = game:GetService("RunService")

game.Players.LocalPlayer.Character.Archivable = true
local FakeCharacter = game.Players.LocalPlayer.Character:Clone()

Player.Character:BreakJoints()
Player.Character = nil

local Connection
Connection = game.Workspace.DescendantAdded:Connect(function(c)
	if c.Name == "Animate" and c.Parent == Player.Character then
		c.Enabled = false   
		Connection:Disconnect()
	end
end)

repeat task.wait() until game.Players.LocalPlayer.Character
task.wait(0.1)

local RealChar = Player.Character
RealChar.Archivable = true
FakeCharacter.Name = "non"
FakeCharacter.Parent = workspace

local rig = animationplayer.LoadDummy(FakeCharacter)

-- Sigma Sigma Ayo Kita Sigma
-- Bacot Jing

-- local track = rig:LoadAnimation("rbxassetid://17603135849")
-- coroutine.wrap(function()
--     track:Play()
-- end)()

task.spawn(function()
	for _, LS in ipairs(FakeCharacter:GetChildren()) do
		if LS:IsA("LocalScript") then
			LS.Enabled = false
			task.wait(0.1)
			LS.Enabled = false
		end
	end
end)

for _, Part in ipairs(FakeCharacter:GetDescendants()) do
	if Part:IsA("BasePart") then
		Part.Transparency = fake_transparency
	end
end

for _, Decal in ipairs(FakeCharacter:GetDescendants()) do
	if Decal:IsA("Decal") then
		Decal.Transparency = fake_transparency
	end
end

Player.Character = FakeCharacter

local function MotorAngle()
	if RealChar:FindFirstChild("Torso") then
		for MotorName, Motor6DAngle in pairs(Motors) do
			if RealChar:FindFirstChild("Torso"):FindFirstChild(MotorName) then
				RealChar:FindFirstChild("Torso"):FindFirstChild(MotorName).CurrentAngle = Motor6DAngle
			end
		end
	end
end

local function SetAngles()
	if FakeCharacter:FindFirstChild("Torso") then
		for MotorName, Motor6DAngle in pairs(Motors) do
			if FakeCharacter:FindFirstChild("Torso"):FindFirstChild(MotorName) then
				local Motor = FakeCharacter:FindFirstChild("Torso"):FindFirstChild(MotorName)
				local rx, ry, rz = Motor.Part1.CFrame:ToObjectSpace(FakeCharacter:FindFirstChild("Torso").CFrame):ToOrientation()
				if Motor.Name == "Right Shoulder" then
					Motors[MotorName] = -rx
				end
				if Motor.Name == "Left Shoulder" then
					Motors[MotorName] = rx
				end
				if Motor.Name == "Right Hip" then
					Motors[MotorName] = -rx
				end
				if Motor.Name == "Left Hip" then
					Motors[MotorName] = rx
				end
				if Motor.Name == "Neck" then
					Motors[MotorName] = -ry
				end
			end
		end
	end
end

local KFFolder = Instance.new("Folder")
KFFolder.Parent = game.ReplicatedStorage

--[[local function LoadAllAnimations()
	-- Assuming AnimIDs is a table containing animation IDs
	for _, AnimID in pairs(AnimIDs) do
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://" .. AnimID
		local LoadedAnim = RealChar:WaitForChild("Humanoid"):LoadAnimation(Anim)
	end]]

local function BaseCol()
	for _, Part in ipairs(RealChar:GetChildren()) do
		if Part:IsA("BasePart") then
			Part.CanCollide = false
		end
	end
    for _, Part in ipairs(FakeCharacter:GetChildren()) do
		if Part:IsA("BasePart") then
			Part.CanCollide = false
		end
	end
end

RunService.Heartbeat:Connect(function()
	SetAngles()
	MotorAngle()
	pcall(function()
	RealChar.HumanoidRootPart.CFrame = FakeCharacter.Torso.CFrame
	end)
end)

RunService.PreSimulation:Connect(function()
	BaseCol()
end)


loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Nameless-Animations-V4-4249"))()

task.wait(1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/GGH52lan/GGH52lan/main/keyboard.txt"))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Gazer-Ha/Energize-Protected/main/Yh"))()