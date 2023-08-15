-- kiryu animation script

local styles = game.ReplicatedStorage.Styles
local kiryu

for i,v in pairs(styles:GetChildren()) do
	if v:FindFirstChild"VisualName" and v.VisualName.Value == "Dragon" and v.Name ~= "Brawler" then
		kiryu = v
		break
	end
end

local brawlerstyle = styles.Brawler

local ToOverwrite = {
	"Rush",
	"Strike",
	"Taunt",
	"RedHeat",
	"Color",
	"VisualName",
	"Idle",
	"Grab",
	"Block",
	"Throw"
}

local function find(x)
	for i,v in pairs(ToOverwrite) do
		if x:find(v) then
			return true
		end
	end

	return false
end

for i,v in pairs(kiryu:GetChildren()) do
	if find(v.Name) then
		local x = brawlerstyle:FindFirstChild(v.Name)

		if x then
			x:Destroy()
		end

		v:Clone().Parent = brawlerstyle
	end
end

local plr = game.Players.LocalPlayer
local pgui = plr.PlayerGui
local interf = pgui.Interface
local bt = interf.Battle
local main = bt.Main
local status = plr.Status

local function playsound(id)
	local sfx = Instance.new("Sound", workspace)
	sfx.SoundId = "rbxassetid://"..tostring(id)

	game:GetService("SoundService"):PlayLocalSound(sfx)

	spawn(function()
		task.wait(sfx.TimeLength)
		sfx:Destroy()
	end)
end

local function add_forcefield(duration)
	local p = game.Players.LocalPlayer
	local Status = p.Status

	local invun = game.ReplicatedStorage.Invulnerable:Clone()
	invun.Parent = Status

	if duration then
		spawn(function()
			task.wait(duration)
			invun:Destroy()
		end)
	end

	return invun
end

local function play_ingamesound(sfxname)
	local v = game.ReplicatedStorage.Sounds:FindFirstChild(sfxname)
	local sfx = Instance.new("Sound", nil)
	local id = v.Value

	sfx.SoundId = id

	for i,v in pairs(v:GetChildren()) do
		sfx[v.Name] = v.Value
	end

	game.SoundService:PlayLocalSound(sfx)
	task.delay(15, function()
		sfx:Destroy()
	end)
end

function playticksound()
	local sfx = Instance.new("Sound", workspace)
	sfx.SoundId = "rbxassetid://4843088994"

	game:GetService("SoundService"):PlayLocalSound(sfx)

	spawn(function()
		task.wait(2)
		sfx:Destroy()
	end)
end

local function sendNotification(text, color)
	if not color then color = Color3.new(1, 1, 1) end
	pgui.Notify.Awards.ChildAdded:Once(function(c)
		if c.Text == text then
			c.TextColor3 = color
			coroutine.wrap(function()
				local con;
				con = game:GetService("RunService").RenderStepped:Connect(function()
					if not c then
						con:Disconnect()
						return
					end
					c.TextColor3 = color
				end)()
			end)()
		end
	end)
	pgui["नोटिफ"]:Fire(text)
end

sendNotification("Loading Dragon mod..")

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

local function IsInHeatMode()
	return plr.PlayerGui.Interface.Uberd.ImageTransparency < 1	
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

local function style_changed()
	if status.Style.Value == brawlerstyle.Name then -- idk why, but in the game's code, the game uses yakuza 0 style names instead of the ones rolve used in the game
		--main gui

		local DragonColor = brawlerstyle.Color.Value
		local DragonSequence = ColorSequence.new({ColorSequenceKeypoint.new(0, DragonColor), ColorSequenceKeypoint.new(1, DragonColor)})

		main.XP.Fill.ImageColor3 = DragonColor 

		--particles
		local char = plr.Character
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
		-- heat bar
		--if DragonText == "Dragon" then
		--	main.Heat.Fill.ImageColor3 = Color3.fromRGB(180, 0, 0)
		--	main.Heat.Fill2.ImageColor3 = Color3.fromRGB(255, 66, 142)
		--	main.Heat.ClimaxFill.ImageColor3 = Color3.fromRGB(180, 0, 0)
		--	main.Heat.ClimaxFill2.ImageColor3 = Color3.fromRGB(255, 39, 86)
		--elseif DragonText == "Legend" then
		--	main.Heat.Fill.ImageColor3 = Color3.fromRGB(152, 152, 152)
		--	main.Heat.Fill2.ImageColor3 = Color3.fromRGB(203, 221, 225)
		--	main.Heat.ClimaxFill.ImageColor3 = Color3.fromRGB(136, 149, 152)
		--	main.Heat.ClimaxFill2.ImageColor3 = Color3.fromRGB(144, 216, 221)
		--end

		main.Heat.Fill.ImageColor3 = Color3.fromRGB(152, 152, 152)
		main.Heat.Fill2.ImageColor3 = Color3.fromRGB(203, 221, 225)
		main.Heat.ClimaxFill.ImageColor3 = Color3.fromRGB(136, 149, 152)
		main.Heat.ClimaxFill2.ImageColor3 = Color3.fromRGB(144, 216, 221)
	end
end

for i,v in pairs(status:GetChildren()) do
	v.Changed:Connect(style_changed)
end

-- custom ablitites

local kiryu_ablitites = {
	["H_Distanced"] = "H_Escape",
	["EvadeStrikeB"] = "ShuckyDrop"
}

for i,v in pairs(kiryu_ablitites) do
	local x = brawlerstyle:FindFirstChild(i)

	if x then
		x.Value = v
	else
		local x = Instance.new("StringValue", brawlerstyle)
		x.Value = v
		x.Name = i
	end
end

changeValueStrict(game.ReplicatedStorage.Moves.ShuckyDrop, 'AniSpeed', 2, "NumberValue")
changeValueStrict(game.ReplicatedStorage.Moves.ShuckyDrop, 'MoveForward', 25, "NumberValue")
changeValueStrict(game.ReplicatedStorage.Moves.ShuckyDrop, 'Damage', 40000000, "NumberValue")
changeValueStrict(game.ReplicatedStorage.Moves.ShuckyDrop, "HitboxLocations", '[["RightHand",6,[0,0,0]],["RightLowerArm",8,[0,0,0]],["RightUpperArm",6,[0,0,0]]]', "StringValue")

if status.Heat.Value == 100 then
	brawlerstyle.H_Distanced.Value = "H_GUltimateEssence"
else
	brawlerstyle.H_Distanced.Value = "H_Escape"
end

status.Heat.Changed:Connect(function()
	if status.Heat.Value == 100 then
		brawlerstyle.H_Distanced.Value = "H_GUltimateEssence"
	else
		brawlerstyle.H_Distanced.Value = "H_Escape"
	end
end)

local tweenserive = game:GetService('TweenService')

local ti = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, true, 0)
local ti2 = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, true, 0)

local color = Instance.new("ColorCorrectionEffect", game:GetService("Lighting"))

local ctween = tweenserive:Create(color, ti, {Saturation = -2, Brightness = -0.1})
local ctween2 = tweenserive:Create(color, ti2, {Saturation = -2, Brightness = -0.1})
local dashcooldown = false

game.UserInputService.InputBegan:Connect(function(key)
	if game.UserInputService:GetFocusedTextBox() == nil then
		if key.KeyCode == Enum.KeyCode.L then
			--local id = "rbxassetid://12022473514"
			--local anim = Instance.new("Animation")
			--anim.AnimationId = id

			--game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim):Play()

			--task.wait(5)
			--anim:Destroy()
		elseif key.KeyCode == Enum.KeyCode.Z then
			if not dashcooldown then
				--playvoiceline("Taunt")

				local lookvector = workspace.CurrentCamera.CFrame.LookVector * Vector3.new(1, 0, 1)
				local root = game.Players.LocalPlayer.Character.PrimaryPart
				local lock = game.Players.LocalPlayer.Character.LockedOn.Value
				if lock and lock:IsDescendantOf(workspace) and lock.Parent.Health.Value > 0 then
					local id = "rbxassetid://10928237540"
					local anim = Instance.new("Animation")
					anim.AnimationId = id

					local v = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
					v:Play()

					if IsInHeatMode() then
						v:AdjustSpeed(8)
						ctween2:Play()
					else
						ctween:Play()
					end

					dashcooldown = true

					root.Anchored = true

					playsound(2102274452)
					if IsInHeatMode() then
						task.wait(0.07)
					else
						add_forcefield(1.8)
						task.wait(0.5)
					end

					root.Anchored = false
					root.CFrame = CFrame.new(lock.Position - (lock.CFrame.LookVector * Vector3.new(1, 0, 1).Unit * 3), lock.Position)

					play_ingamesound("Teleport")

					if IsInHeatMode() then
						task.wait(0.8)
					else
						task.wait(1)
					end


					dashcooldown = false
					playticksound()
					return
				end

				dashcooldown = true

				local id = "rbxassetid://10928237540"
				local anim = Instance.new("Animation")
				anim.AnimationId = id

				local v = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)
				v:Play()

				root.Anchored = true
				ctween:Play()
				task.wait(0.9)

				play_ingamesound("Teleport")
				root.Anchored = false
				root.CFrame = CFrame.new(root.Position, root.Position + lookvector)

				--local rp = RaycastParams.new()
				--rp.FilterDescendantsInstances = {root.Parent}
				--rp.FilterType = Enum.RaycastFilterType.Blacklist
				--rp.IgnoreWater = true

				--local ray = workspace:Raycast(root.Position, lookvector * 50, rp)

				--local cf
				--if ray then
				--	cf = CFrame.new(ray.Position - lookvector * 6, ray.Position + lookvector)
				--else
				--	cf = root.CFrame + lookvector * 50
				--end

				--local ti = TweenInfo.new(v.Length*0.5, Enum.EasingStyle.Linear)
				--local t = tweenserive:Create(root, ti, {CFrame = cf})
				--t:Play()
				--t.Completed:Once(function()
				--	root.Anchored = false
				--	v:Stop()
				--end)


				local bodyvel = Instance.new("BodyVelocity", root)
				bodyvel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				bodyvel.Velocity = lookvector * 90
				local hitbox = Instance.new("Part", bodyvel)
				hitbox.CanCollide = false
				hitbox.CanQuery = false
				hitbox.Transparency = 1
				hitbox.Size = Vector3.new(1, 1, 5)
				local w = Instance.new("Weld", hitbox)
				w.Part0 = hitbox
				w.Part1 = root

				local b2 = game:GetService("RunService").Heartbeat:Connect(function(d)
root.CFrame = root.CFrame + (bodyvel.Velocity*d)*4
				end)

				local b = hitbox.Touched:Connect(function(part)
					if part.CanCollide then
						local vel = -bodyvel.Velocity

						bodyvel:Destroy()
						v:Stop()

						--local id = "rbxassetid://"..getrandom_array(hurtanims)
						--local anim = Instance.new("Animation")
						--anim.AnimationId = id
						--local v = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)

						--v:Play()

						--local b = game:GetService("RunService").Heartbeat:Connect(function(d)
						--	root.CFrame += (vel * d) * 0.5
						--end)

						--v.Ended:Once(function()
						--	b:Disconnect()
						--	v:Destroy()
						--end)
					end
				end)

				bodyvel.Destroying:Once(function()
					b:Disconnect()
					b2:Disconnect()
					hitbox:Destroy()
				end)

				v.Ended:wait()

				if bodyvel then
					bodyvel:Destroy()
				end

				task.wait(2)

				playticksound()

				dashcooldown = false
			end
		end
	end
end)

local level = interf.Battle.Main.XP.Label
local t = ""
local function changelevel()
	if t == level.Text then
		return
	end

	local num = tonumber(level.Text:sub(5))
	level.Text = "Lvl. "..(num * 6)+20
	t = level.Text
end

changelevel()
level.Changed:Connect(changelevel)

brawlerstyle.VisualName.Value = "Legend"
brawlerstyle.Color.Value = Color3.new(0.1, 0.2, 1)

game.ReplicatedStorage.ScriptEvents.rplaysound:Fire("Yell")
game.ReplicatedStorage.ScriptEvents.rplaysound:Fire("Ignite")

local function lerp(x1, x2, alpha)
	return x1 + (x2 - x1) * alpha
end

local speedvalue = 1.5
local walkspeed_increase = lerp(speedvalue, 1, 0.75)
brawlerstyle.Speed.Value = brawlerstyle.Speed.Value * walkspeed_increase
game.ReplicatedStorage.Styles.Rush.Speed.Value = game.ReplicatedStorage.Styles.Rush.Speed.Value * walkspeed_increase
game.ReplicatedStorage.Styles.Beast.Speed.Value = game.ReplicatedStorage.Styles.Beast.Speed.Value * walkspeed_increase

for i,v in pairs(game.ReplicatedStorage.Moves:GetChildren()) do
	local anispeed = v:FindFirstChild("AniSpeed")
	local combospeed = v:FindFirstChild("ComboAt")

	if anispeed then
anispeed.Value = anispeed.Value * speedvalue
	elseif combospeed then
combospeed.Value = combospeed.Value / speedvalue
	end
end

status.AttackBegan.Changed:Connect(function()
	brawlerstyle.Grab.Value = "BTCounter"
	task.wait(0.3)
	brawlerstyle.Grab.Value = "T_BrawlerToss"
end)

local function critcal_health()
	return status.Health.Value <= status.MaxHealth.Value * 0.25
end

local heatuses = 24
local function fill_heat()
	if status.Heat.Value >= 100 or heatuses <= 0 then
		return
	end

	if heatuses == 24 then
		game.ReplicatedStorage.ScriptEvents.rplaysound:Fire("Yell")
		game.ReplicatedStorage.ScriptEvents.rplaysound:Fire("Ignite")
	end

heatuses = heatuses - 1

	for i=1,6 do
		local A_1 =  {
			[1] = "heat", 
			[2] = game:GetService("ReplicatedStorage").Moves.Taunt
		}
		local Event = game:GetService("ReplicatedStorage").Events.ME
		Event:FireServer(A_1)
		task.wait(0.2)
	end
end

plr.ChildRemoved:Connect(function(v)
	if v.Name == "InBattle" then
		heatuses = 24
	end
end)

status.Heat.Changed:Connect(function()
	if critcal_health() then
		fill_heat()
	end
end)

status.Health.Changed:Connect(function()
	if critcal_health() then
		fill_heat()
	end
end)

local Strike5 = brawlerstyle.Strike5
local oldvalue = Strike5.Value

plr.PlayerGui.Interface.Uberd.Changed:Connect(function()
	if IsInHeatMode() then
		plr.PlayerGui.Interface.Uberd.ImageColor3 = Color3.new(1, 0, 0)
		if Strike5.Value == oldvalue then
			Strike5.Value = "TigerDrop"
		end
	else
		Strike5.Value = oldvalue	
	end
end)

interf.Client.Disabled = true
task.wait()
interf.Client.Disabled = false

sendNotification("Legend mod loaded!")