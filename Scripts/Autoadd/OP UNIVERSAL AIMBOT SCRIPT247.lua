--[[
	Made by MrScripts
	
	Note: Only things not made by me were the FOV checker and getrandomstring() function
]]--

_G.aimDebug = true --FOV Checker is still wonky - Keep this setting on or you can't have FOV checker on

--Stuff you can customize
local settings = {
	Binds = {
		Aimbot = "f",
		Hide = "=" --[=] by default but is not required
	},
	Aimbot = {
		FOV = 15, --The smaller the less space to lock on | 15 by default
		Closest = false, --Targets closest player, otherwise does closest to mouse | False by default
		HoldKey = true, --False by default
		TeamCheck = false --False by default
	},
	Color = {
		["CheckboxOff"] = Color3.fromRGB(255, 0, 0), --[255, 0, 0] by default (Red)
		["CheckboxOn"] = Color3.fromRGB(0, 255, 0), --[0, 255, 0] by default (Green)
		
		["Border"] = Color3.fromRGB(235, 115, 17), --[235, 115, 17] by default
		["Background"] = Color3.fromRGB(30, 30, 30), --[30, 30, 30] by default
		["Text"] = Color3.fromRGB(255, 255, 255) --[255, 255, 255] by default
	}
}

------------------------------
----Stuff you don't touch:----
------------------------------
local Aimbot_SG = Instance.new("ScreenGui")

local gPlayers = game:GetService("Players")
local gPlr = gPlayers.LocalPlayer
local plr = gPlr.Name
local gUIS = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

local InputBegan, InputEnded, BindPressed, AimbotStepped

local gotstring = 1
local function getrandomstring()
	gotstring = gotstring+666
	local str = ""
	local randomstring = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "g", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
	"?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?", "`", "$",
	"0","1","2","3","4","5","6","7","8","9", }
	local counting123 = 0
	for i, v in ipairs(randomstring) do
		counting123 = i
	end
	do
		math.randomseed(tick()+gotstring)
		for i = 3, math.random(1,100) do
			math.randomseed(i+tick()+gotstring)
			local oneortwo = math.random(1,2)
			if oneortwo == 2 then
				math.randomseed(i+tick()+gotstring)
				str = str..""..randomstring[math.random(1, counting123)]
			else
				math.randomseed(i+tick()+gotstring)
				str = str..""..string.upper(randomstring[math.random(1, counting123)])
			end
		end
	end
	return str
end

-----------------------------
--------Actual Stuff:--------
-----------------------------
local AimbotSG_Name = "$?8??4V32HTT?B?T17O9IA282??I6A"
local valid = nil

if (settings.Binds.Aimbot and settings.Binds.Hide) then
	valid = true
	for i,v in pairs(settings) do
		if (v == nil) then
			valid = false
			break
		end
	end
end

if (valid) then

if (game.CoreGui:FindFirstChild(AimbotSG_Name)) then
	warn("Attempted to open another aimbot GUI again!")
	return
end

--=========================================================--

local aimKey = settings.Binds.Aimbot:lower()
local hideKey = settings.Binds.Hide:lower()

-- Instances:
local Title_Frame = Instance.new("Frame")
local Title_Label = Instance.new("TextLabel")
local Exit_BTN = Instance.new("TextButton")
local Minimize_BTN = Instance.new("TextButton")
local Aimbot_Frame = Instance.new("Frame")
local HoldKey_CB = Instance.new("TextButton")
local TeamCheck_CB = Instance.new("TextButton")
local AimbotKey_TB = Instance.new("TextBox")
local AimbotKey_Label = Instance.new("TextLabel")
local HoldKey_Label = Instance.new("TextLabel")
local CyclePart_BTN = Instance.new("TextButton")
local Part_Label = Instance.new("TextLabel")
local TeamCheck_Label = Instance.new("TextLabel")
local Status_Label = Instance.new("TextLabel")

--Properties:
Aimbot_SG.Name = AimbotSG_Name
Aimbot_SG.Parent = game:WaitForChild("CoreGui")
Aimbot_SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Aimbot_SG.ResetOnSpawn = false

Title_Frame.Name = getrandomstring()
Title_Frame.Parent = Aimbot_SG
Title_Frame.BackgroundColor3 = settings.Color.Border
Title_Frame.BorderSizePixel = 0
Title_Frame.Position = UDim2.new(0.0216195825, 0, 0.254411727, 0)
Title_Frame.Size = UDim2.new(0, 225, 0, 25)
Title_Frame.Active = true
Title_Frame.Draggable = true

Title_Label.Name = getrandomstring()
Title_Label.Parent = Title_Frame
Title_Label.BackgroundColor3 = settings.Color.Border
Title_Label.BorderSizePixel = 0
Title_Label.Position = UDim2.new(-0.0266666673, 0, 0, 0)
Title_Label.Size = UDim2.new(0, 175, 0, 25)
Title_Label.Font = Enum.Font.SourceSans
Title_Label.Text = "JD Aimbot"
Title_Label.TextColor3 = settings.Color.Text
Title_Label.TextScaled = true
Title_Label.TextSize = 14.000
Title_Label.TextWrapped = true

Exit_BTN.Name = getrandomstring()
Exit_BTN.Parent = Title_Frame
Exit_BTN.BackgroundColor3 = settings.Color.Border
Exit_BTN.BorderColor3 = Color3.fromRGB(27, 42, 53)
Exit_BTN.BorderSizePixel = 0
Exit_BTN.Position = UDim2.new(0.884444475, 0, 0, 0)
Exit_BTN.Size = UDim2.new(0, 25, 0, 25)
Exit_BTN.Font = Enum.Font.SourceSans
Exit_BTN.Text = "X"
Exit_BTN.TextColor3 = settings.Color.Text
Exit_BTN.TextScaled = true
Exit_BTN.TextSize = 14.000
Exit_BTN.TextWrapped = true

Minimize_BTN.Name = getrandomstring()
Minimize_BTN.Parent = Title_Frame
Minimize_BTN.BackgroundColor3 = settings.Color.Border
Minimize_BTN.BorderColor3 = Color3.fromRGB(27, 42, 53)
Minimize_BTN.BorderSizePixel = 0
Minimize_BTN.Position = UDim2.new(0.773333371, 0, 0, 0)
Minimize_BTN.Size = UDim2.new(0, 25, 0, 25)
Minimize_BTN.Font = Enum.Font.SourceSans
Minimize_BTN.Text = "-"
Minimize_BTN.TextColor3 = settings.Color.Text
Minimize_BTN.TextScaled = true
Minimize_BTN.TextSize = 14.000
Minimize_BTN.TextWrapped = true

Aimbot_Frame.Name = getrandomstring()
Aimbot_Frame.Parent = Title_Frame
Aimbot_Frame.BackgroundColor3 = settings.Color.Background
Aimbot_Frame.BorderSizePixel = 0
Aimbot_Frame.Position = UDim2.new(-0.0266666673, 0, 0.976347685, 0)
Aimbot_Frame.Size = UDim2.new(0, 230, 0, 216)

--[[
HoldKey_CB.Instance.Name = "lol"
HoldKey_CB.Instance.Parent = Aimbot_Frame
HoldKey_CB.Instance.BackgroundColor3 = settings.Color.CheckboxOff
HoldKey_CB.Instance.BorderColor3 = settings.Color.Border
HoldKey_CB.Instance.Position = UDim2.new(0.0400000066, 0, 0.474999994, 0)
HoldKey_CB.Instance.Size = UDim2.new(0, 25, 0, 25)
HoldKey_CB.Instance.Font = Enum.Font.SourceSans
HoldKey_CB.Instance.Text = ""
HoldKey_CB.Instance.TextColor3 = Color3.fromRGB(0, 0, 0)
HoldKey_CB.Instance.TextSize = 14.000
]]--
--
HoldKey_CB.Name = getrandomstring()
HoldKey_CB.Parent = Aimbot_Frame
HoldKey_CB.BackgroundColor3 = settings.Color.CheckboxOff
HoldKey_CB.BorderColor3 = settings.Color.Border
HoldKey_CB.Position = UDim2.new(0.0400000066, 0, 0.474999994, 0)
HoldKey_CB.Size = UDim2.new(0, 25, 0, 25)
HoldKey_CB.Font = Enum.Font.SourceSans
HoldKey_CB.Text = ""
HoldKey_CB.TextColor3 = Color3.fromRGB(0, 0, 0)
HoldKey_CB.TextSize = 14.000
--

TeamCheck_CB.Name = getrandomstring()
TeamCheck_CB.Parent = Aimbot_Frame
TeamCheck_CB.BackgroundColor3 = settings.Color.CheckboxOff
TeamCheck_CB.BorderColor3 = settings.Color.Border
TeamCheck_CB.Position = UDim2.new(0.0400000066, 0, 0.637500048, 0)
TeamCheck_CB.Size = UDim2.new(0, 25, 0, 25)
TeamCheck_CB.Font = Enum.Font.SourceSans
TeamCheck_CB.Text = ""
TeamCheck_CB.TextColor3 = Color3.fromRGB(0, 0, 0)
TeamCheck_CB.TextSize = 14.000

AimbotKey_TB.Name = getrandomstring()
AimbotKey_TB.Parent = Aimbot_Frame
AimbotKey_TB.BackgroundColor3 = settings.Color.Text
AimbotKey_TB.Position = UDim2.new(0.0400000066, 0, 0.0620370433, 0)
AimbotKey_TB.Size = UDim2.new(0, 25, 0, 25)
AimbotKey_TB.Font = Enum.Font.SourceSans
AimbotKey_TB.Text = aimKey
AimbotKey_TB.TextColor3 = Color3.fromRGB(0, 0, 0)
AimbotKey_TB.TextSize = 17.000

AimbotKey_Label.Name = getrandomstring()
AimbotKey_Label.Parent = Aimbot_Frame
AimbotKey_Label.BackgroundColor3 = settings.Color.Background
AimbotKey_Label.BorderSizePixel = 0
AimbotKey_Label.Position = UDim2.new(0.186666653, 0, 0.0620370433, 0)
AimbotKey_Label.Size = UDim2.new(0, 180, 0, 25)
AimbotKey_Label.Font = Enum.Font.SourceSans
AimbotKey_Label.Text = "Aimbot Key: "..aimKey
AimbotKey_Label.TextColor3 = settings.Color.Text
AimbotKey_Label.TextSize = 23.000
AimbotKey_Label.TextWrapped = true
AimbotKey_Label.TextXAlignment = Enum.TextXAlignment.Left

HoldKey_Label.Name = getrandomstring()
HoldKey_Label.Parent = Aimbot_Frame
HoldKey_Label.BackgroundColor3 = settings.Color.Background
HoldKey_Label.BorderSizePixel = 0
HoldKey_Label.Position = UDim2.new(0.186666653, 0, 0.474999994, 0)
HoldKey_Label.Size = UDim2.new(0, 180, 0, 25)
HoldKey_Label.Font = Enum.Font.SourceSans
HoldKey_Label.Text = "Hold Key"
HoldKey_Label.TextColor3 = settings.Color.Text
HoldKey_Label.TextSize = 23.000
HoldKey_Label.TextWrapped = true
HoldKey_Label.TextXAlignment = Enum.TextXAlignment.Left

CyclePart_BTN.Name = getrandomstring()
CyclePart_BTN.Parent = Aimbot_Frame
CyclePart_BTN.BackgroundColor3 = settings.Color.Background
CyclePart_BTN.BorderColor3 = settings.Color.Text
CyclePart_BTN.Position = UDim2.new(0.0400000066, 0, 0.213888898, 0)
CyclePart_BTN.Size = UDim2.new(0, 25, 0, 25)
CyclePart_BTN.Font = Enum.Font.SourceSans
CyclePart_BTN.Text = ""
CyclePart_BTN.TextColor3 = Color3.fromRGB(0, 0, 0)
CyclePart_BTN.TextSize = 14.000

Part_Label.Name = getrandomstring()
Part_Label.Parent = Aimbot_Frame
Part_Label.BackgroundColor3 = settings.Color.Background
Part_Label.BorderSizePixel = 0
Part_Label.Position = UDim2.new(0.186666653, 0, 0.213888928, 0)
Part_Label.Size = UDim2.new(0, 180, 0, 25)
Part_Label.Font = Enum.Font.SourceSans
Part_Label.Text = "Part: Head"
Part_Label.TextColor3 = settings.Color.Text
Part_Label.TextSize = 23.000
Part_Label.TextWrapped = true
Part_Label.TextXAlignment = Enum.TextXAlignment.Left

TeamCheck_Label.Name = getrandomstring()
TeamCheck_Label.Parent = Aimbot_Frame
TeamCheck_Label.BackgroundColor3 = settings.Color.Background
TeamCheck_Label.BorderSizePixel = 0
TeamCheck_Label.Position = UDim2.new(0.186666653, 0, 0.637499988, 0)
TeamCheck_Label.Size = UDim2.new(0, 180, 0, 25)
TeamCheck_Label.Font = Enum.Font.SourceSans
TeamCheck_Label.Text = "Team Check"
TeamCheck_Label.TextColor3 = settings.Color.Text
TeamCheck_Label.TextSize = 23.000
TeamCheck_Label.TextWrapped = true
TeamCheck_Label.TextXAlignment = Enum.TextXAlignment.Left

Status_Label.Name = getrandomstring()
Status_Label.Parent = Aimbot_Frame
Status_Label.BackgroundColor3 = settings.Color.Background
Status_Label.BorderSizePixel = 0
Status_Label.Position = UDim2.new(0.146666676, 0, 0.829166651, 0)
Status_Label.Size = UDim2.new(0, 158, 0, 25)
Status_Label.Font = Enum.Font.SourceSans
Status_Label.Text = "Aimbot: Disabled"
Status_Label.TextColor3 = settings.Color.Text
Status_Label.TextSize = 25.000

----------------------------------------
------------Events and stuff:-----------
----------------------------------------
local HoldKey = settings.Aimbot.HoldKey
local TeamCheck = settings.Aimbot.TeamCheck
local AimbotStarted = nil

if (HoldKey) then
	HoldKey_CB.BackgroundColor3 = settings.Color.CheckboxOn
end
if (TeamCheck) then
	TeamCheck_CB.BackgroundColor3 = settings.Color.CheckboxOn
end

function dispose()
	if (AimbotStepped) then
		AimbotStepped:Disconnect()
	end
	AimbotStarted = false
	Status_Label.Text = "Aimbot: Disabled"
end

function playerRoot(playerChar)
	if (playerChar) then --HRP/Torso: R6 | UpperTorso: R15
		local root = playerChar:FindFirstChild("HumanoidRootPart") or playerChar:FindFirstChild("Torso") or
			playerChar:FindFirstChild("UpperTorso")
		return root
	end
	return nil
end

function getfovxyz(p0, p1, deg)
	local x1, y1, z1 = p0:ToOrientation()
	local cf = CFrame.new(p0.p, p1.p)
	local x2, y2, z2 = cf:ToOrientation()
	local d = math.deg
	if (deg) then
		return Vector3.new(d(x1 - x2), d(y1 - y2), d(z1 - z2))
	else
		return Vector3.new((x1 - x2), (y1 - y2), (z1 - z2))
	end
end

function checkfov(part)
	local fov = getfovxyz(Camera.CFrame, part.CFrame)
	local angle = math.abs(fov.X) + math.abs(fov.Y)
	return angle
end

Exit_BTN.MouseButton1Click:Connect(function()
	dispose()
	--InputBegan:Disconnect()
	InputEnded:Disconnect()
	BindPressed:Disconnect()
	
	Aimbot_SG:Destroy()
end)

Minimize_BTN.MouseButton1Click:Connect(function()
	if (Aimbot_Frame.Visible) then
		Aimbot_Frame.Visible = false
	else
		Aimbot_Frame.Visible = true
	end
end)

local TargetPart = 1 --1 = Head | 2 = Root
local otherParts = {"Left Arm", "Right Arm", "Left Leg", "Right Leg"}
CyclePart_BTN.MouseButton1Click:Connect(function()
	if (TargetPart == 1) then
		TargetPart = 2
		Part_Label.Text = "Part: Root (Center)"
	elseif (TargetPart == 6) then
		TargetPart = 1
		Part_Label.Text = "Part: Head"
	else
		TargetPart = TargetPart + 1
		Part_Label.Text = "Part: "..otherParts[TargetPart - 2]
	end
end)

AimbotKey_TB:GetPropertyChangedSignal("Text"):Connect(function()
	local text = AimbotKey_TB.Text
	if (text ~= "") then
		local firstChar = text:sub(1,1):lower()
		aimKey = firstChar
		
		AimbotKey_TB.Text = firstChar
		AimbotKey_Label.Text = "Aimbot Key: "..aimKey
		AimbotKey_TB:ReleaseFocus()
	end
end)

HoldKey_CB.MouseButton1Click:Connect(function()
	if (HoldKey) then
		HoldKey_CB.BackgroundColor3 = settings.Color.CheckboxOff
		HoldKey = false
	else
		HoldKey_CB.BackgroundColor3 = settings.Color.CheckboxOn
		HoldKey = true
	end
end)

TeamCheck_CB.MouseButton1Click:Connect(function()
	if (TeamCheck) then
		TeamCheck_CB.BackgroundColor3 = settings.Color.CheckboxOff
		TeamCheck = false
	else
		TeamCheck_CB.BackgroundColor3 = settings.Color.CheckboxOn
		TeamCheck = true
	end
end)

-----

BindPressed = gPlr:GetMouse().KeyDown:Connect(function(key)
	local keyValue = key:byte()
	if (keyValue == aimKey:byte()) then
		if (AimbotStarted and not HoldKey) then
			dispose()
			return
		end
		---
		local mouse, playerTarget = gPlr:GetMouse(), nil
		if (settings.Aimbot.Closest) then
			local plrChar = gPlr.Character
			local plrRoot = playerRoot(plrChar)
			if (not plrChar or not playerRoot(plrChar)) then
				playerTarget = nil
				return
			end
			
			local nearDist = math.huge
			local nearest = nil
			for _,target in pairs(gPlayers:GetPlayers()) do
				if (target ~= gPlr and target.Character and playerRoot(target.Character)) then
					local charDist = target:DistanceFromCharacter(plrRoot.Position)
					if (charDist < nearDist) then
						nearDist = charDist
						nearest = target
					end
				end
			end
			playerTarget = nearest
		else
			if not (_G.aimDebug) then --If off, then defaults to closest player
			--
			local pos = mouse.Hit.p
			local targetPos = Vector3.new(pos.X, pos.Y, pos.Z)
			
			local nearDist = math.huge
			local nearest = nil
			for _,target in pairs(gPlayers:GetPlayers()) do
				if (target ~= gPlr and target.Character and playerRoot(target.Character)) then
					local charDist = target:DistanceFromCharacter(targetPos)
					if (charDist < nearDist) then
						nearDist = charDist
						nearest = target
					end
				end
			end
			
			playerTarget = nearest
			--
			else --Experimental
			--
			local maxangle = math.rad(settings.Aimbot.FOV)
			local closestToMouse = nil
			for i,player in pairs(gPlayers:GetChildren()) do
				local pChar = player.Character
				if not (pChar) then return end
				
				local part = playerRoot(pChar) or pChar:FindFirstChild("Head")
				if (player.Name ~= plr and part) then
					local angle = checkfov(part)
					if (angle <= maxangle) then
						maxangle = angle
						closestToMouse = player
					end
                end
			end
			playerTarget = closestToMouse
			--
			end
		end
		if (playerTarget == nil) then return end
		AimbotStepped = game:GetService("RunService").RenderStepped:Connect(function()
			if (AimbotStarted and playerTarget and playerTarget.Character) then
				local part = nil
				
				--Check stuff
				if (TargetPart == 1) then --Head
					part = playerTarget.Character:FindFirstChild("Head")
				elseif (TargetPart == 2) then --Root
					part = playerRoot(playerTarget.Character)
				else
					part = playerTarget.Character:FindFirstChild(otherParts[TargetPart - 2])
				end
				
				--Actual stuff now
				if (part) then
					
					if (TeamCheck) then
						if (playerTarget.Team ~= gPlr.Team) then
							Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p, part.CFrame.p)
						end
					else
						Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p, part.CFrame.p)
					end
				end
			end
		end)
		---
		Status_Label.Text = "Aimbot: Enabled"
		AimbotStarted = true
	elseif (keyValue == hideKey:byte()) then
		if (Aimbot_Frame.Visible) then
			Aimbot_Frame.Visible = false
		else
			Aimbot_Frame.Visible = true
		end
	end
end)

InputEnded = gUIS.InputEnded:Connect(function(key)
	if (HoldKey and key.KeyCode.Value == aimKey:byte()) then
		dispose()
	end
end)

print("Loaded JohnnyDoe's Aimbot GUI")

else
warn("Something in settings was invalid! Check your binds and color settings!")
end