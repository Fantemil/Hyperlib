local DragonText = "Ghost"
local DragonColor = Color3.fromRGB(84, 119, 125)
local DragonSequence = ColorSequence.new({ColorSequenceKeypoint.new(0, DragonColor), ColorSequenceKeypoint.new(1, DragonColor)})

local rushstyle = game.ReplicatedStorage.Styles.Rush

local plr = game.Players.LocalPlayer
local pgui = plr.PlayerGui
local interf = pgui.Interface
local bt = interf.Battle
local main = bt.Main
local status = plr.Status

local function sendNotification(text, color)
	pgui.Notify:Fire(text)
end

for i,v in pairs(game.ReplicatedStorage.Styles.Rush:GetChildren()) do
	if v:IsA("Animation") and v.Name:find("Evade") then
		v.AnimationId = "rbxassetid://"
	end
end

function isInBattle()
	return (plr:FindFirstChild("InBattle") and true or false)
end

function isDungeon()
	return game.ReplicatedStorage.Dungeon.Value
end

function doingHact()
	return (plr.Character:FindFirstChild("Heated") and true or false)
end

function showMaxHeatEffect()
	return (isInBattle() and not doingHact() and plr.Status.Heat.Value >= 100) and true or false
end

function hasWeaponInHand()
	return (plr.Character:FindFirstChild("Holding") and true or false)
end

local function changeValueStrict(obj, valName, newVal, valClass)
	if obj and newVal and valName then
		if not obj:FindFirstChild(valName) then
			local n = Instance.new(valClass)
			n.Name = valName
			n.Parent = obj
		end
		obj[valName].Value = newVal
	end
end

local moves = game.ReplicatedStorage.Moves
local stylesR = game.ReplicatedStorage.Styles.Rush

current = moves["CounterHook"]
changeValueStrict(current, "HitDur", 100, "NumberValue")
changeValueStrict(current, "MoveDuration", 0, "NumberValue")
changeValueStrict(current, "AniSpeed", 100000, "NumberValue")
changeValueStrict(current, "Dmg", 10000, "NumberValue")
changeValueStrict(current, "HitboxLocations", '[["RightHand",10000,[0,0,0]],["RightLowerArm",10000,[0,0,0]],["RightUpperArm",10000,[0,0,0]]]', "StringValue")
changeValueStrict(current, "MoveForward", 0, "NumberValue")

stylesR.Rush1.Value = "CounterHook" --press q to explode

local function update()
	local char = plr.Character or plr.CharacterAdded:Wait()
	char.HumanoidRootPart.Fire_Main.Color = DragonSequence
	char.HumanoidRootPart.Fire_Secondary.Color = DragonSequence
	char.HumanoidRootPart.Fire_Main.Rate = status.Heat.Value >= 100 and 115 or status.Heat.Value >= 75 and 85 or 80
	char.HumanoidRootPart.Fire_Secondary.Rate = status.Heat.Value >= 100 and 90 or status.Heat.Value >= 75 and 80 or 70
	char.HumanoidRootPart.Lines1.Color = DragonSequence
	char.HumanoidRootPart.Lines1.Rate = status.Heat.Value >= 100 and 60 or status.Heat.Value >= 75 and 40 or 20
	char.HumanoidRootPart.Lines2.Color = DragonSequence
	char.HumanoidRootPart.Lines2.Rate = status.Heat.Value >= 100 and 60 or status.Heat.Value >= 75 and 40 or 20
	char.HumanoidRootPart.Sparks.Color = DragonSequence
	if not char.HumanoidRootPart.TimeFor.Enabled then
		char.HumanoidRootPart.TimeFor.Color = DragonSequence
	end

	char.UpperTorso["r2f_aura_burst"].Lines1.Color = DragonSequence
	char.UpperTorso["r2f_aura_burst"].Lines2.Color = DragonSequence
	char.UpperTorso["r2f_aura_burst"].Flare.Color = DragonSequence
	char.UpperTorso["r2f_aura_burst"].Lines1.Enabled = showMaxHeatEffect()
	char.UpperTorso["r2f_aura_burst"].Flare.Enabled = showMaxHeatEffect()
	char.UpperTorso["r2f_aura_burst"].Smoke.Color = DragonSequence
	char.UpperTorso.Evading.Color = DragonSequence
end

update()

rushstyle.VisualName.Value = DragonText
rushstyle.Color.Value = DragonColor
print(rushstyle.VisualName.Value)

if status.Style.Value == "Rush" then
	main.XP.Fill.ImageColor3 = DragonColor
end

status.Heat.Changed:Connect(function()
	update()
end)

status.Style.Changed:Connect(function()
	if status.Style.Value == "Rush" then
		main.XP.Fill.ImageColor3 = DragonColor
	end
end)

local function add_invun()
	local invun = Instance.new("Folder")

	invun.Name = "Invulnerable"
	invun.Parent = status
	return invun
end

add_invun()

status.ChildRemoved:Connect(function()
	if not status:FindFirstChild("Invulnerable") then
		add_invun()
	end
end)

local blacklist = {"Teleport"}

game.ReplicatedStorage.OverworldSpeed.Value = 10

while true do
	for i,v in pairs(game.ReplicatedStorage.Sounds:GetChildren()) do
		if not table.find(blacklist, v.Name) then
			changeValueStrict(current, "Sound", v.Name, "StringValue") --change the "Explode3" value to "KnockOutRare" or "MetalPipe"
			task.wait()
		end
	end
	task.wait()
end