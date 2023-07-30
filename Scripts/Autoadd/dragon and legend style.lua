--not made by me but anotha person
--tip
local DragonText = "Dragon"
local DragonColor = Color3.new(0.95, 0.05, 0.1)
local DragonSequence = ColorSequence.new({ColorSequenceKeypoint.new(0, DragonColor), ColorSequenceKeypoint.new(1, DragonColor)})
 
local plr = game.Players.LocalPlayer
local pgui = plr.PlayerGui
local interf = pgui.Interface
local bt = interf.Battle
local main = bt.Main
 
local hasUpdatedOnce = false
local tigerDropsSession = 0
local hactsSession = 0
 
 
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
 
local alreadyRunning = game.ReplicatedStorage:FindFirstChild("DragonOfSteel")
if alreadyRunning then
	sendNotification("Dragon of Steel is already loaded")
	return
end
 
 
alreadyRunning = Instance.new("BoolValue")
alreadyRunning.Parent =game.ReplicatedStorage
alreadyRunning.Value = true
alreadyRunning.Name = "DragonOfSteel"
 
 
sendNotification("loading mod...")
 
local menu = pgui.MenuUI.Menu 
local abil = menu.Abilities.Frame.Frame.Frame
local moves = game.ReplicatedStorage.Moves
 
local abilFolder = game.ReplicatedStorage.Abilities.Brawler
 
local kiwamiParticle;
local battleWatcher = false;
 
local fill3 = nil
local climaxfill3 = nil	
 
local fillPreview = nil
local climaxPreview = nil
 
local status = plr.Status
 
local connections = {
	KiwamiParticles = nil;
	PunchTrail = nil;
	BattleStart = nil;	
}
 
local specDialogues = {
	Parker = false;
	Bill = false;
	James = false;
	Caitlin = false;
}
 
local animsChanged = false
local hasReloaded = false
 
local essenceCodeNames = { }
local essenceUsages = { }
 
 
 
local anim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(game.ReplicatedStorage.AIStyles.Dragon.StanceIdle)
anim.Priority = Enum.AnimationPriority.Movement
 
function scanHeatActions()
	for _,action in pairs(game.ReplicatedStorage.Moves:GetChildren()) do
		if string.sub(action.Name, 1, 2) == "H_" then
			local mn = action:FindFirstChild("MoveName")
			if mn then
				essenceCodeNames[mn.Value] = action.Name
 
				if action:FindFirstChild("HeatUse") then
					essenceUsages[mn.Value] = action.HeatUse.Value 
				else
					essenceUsages[mn.Value] = action:FindFirstChild("HeatNeeded") and (action.HeatNeeded.Value == "Climax" and 75 or action.HeatNeeded.Value == "Full" and 100 or 50) or 50
				end
			end
		end
	end
end
 
sendNotification("loading heat actions...", Color3.fromRGB(255, 255, 255))
scanHeatActions()
 
local function addFearParticle()
	local part = game.ReplicatedStorage.Particles.Fear
	for i,z in pairs(part:GetChildren()) do
		local p = z:Clone()
		p.Name = "FearParticle"
		p.Parent = plr.Character.Head
		p.Enabled = true
	end
 
	local snd = Instance.new("Sound")
	snd.Parent = plr.Character.Head
	snd.SoundId = "rbxassetid://1846247709"
	snd.Volume = 0.5
	snd:Play()
	snd.Name = "FearSound"
	game:GetService("Debris"):AddItem(snd, 3)
end
 
local function createDeathMessage(text)
	local new = Instance.new("TextLabel")
	new.Parent = interf
	new.Name = "DeathMessage"
	new.Text = ""
	new.Size = UDim2.new(1,0,1,0)
	new.Position = UDim2.new(0.5, 0, 0.5, 0)
	new.BackgroundTransparency = 1
	new.TextSize = 60
	new.TextStrokeTransparency = 0.5
	new.TextColor3 = Color3.fromRGB(255, 255 ,255)
	new.FontFace = Font.fromEnum(Enum.Font.Antique)
	new.AnchorPoint = Vector2.new(0.5, 0.5)
	for i = 1, string.len(text), 1 do
		new.Text = string.sub(text, 1, i)
		task.wait(0.025)
	end
	task.wait(0.10)
	repeat game:GetService("RunService").RenderStepped:Wait() until status.Health.Value > 0
	local tween = game:GetService("TweenService"):Create(new, TweenInfo.new(1.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {Size = UDim2.new(1.15, 0, 1.15, 0), TextTransparency = 1, TextStrokeTransparency = 1})
	tween:Play()
	game:GetService("Debris"):AddItem(new, 1.25)
end
 
local dc = Instance.new("ColorCorrectionEffect")
dc.Name = "DeathCorrection"
dc.Parent = workspace.CurrentCamera
 
local function setDeathFilter()
	local tween = game:GetService("TweenService"):Create(dc, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {TintColor = Color3.fromRGB(255, 206, 206), Saturation = -1, Brightness = -0.44})
	tween:Play()
	task.wait(0.4)
	repeat game:GetService("RunService").RenderStepped:Wait() until status.Health.Value > 0
	local tween = game:GetService("TweenService"):Create(dc, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {TintColor = Color3.fromRGB(255, 255, 255), Saturation = 0, Brightness = 0})
	tween:Play()
end
 
local function onBattleStart()
	task.wait(0.5)
	local arena = status.MyArena.Value
	if arena then
		if arena:FindFirstChild("AI"):FindFirstChild("Object") and arena.AI.Object.Value and arena.AI.Object.Value.Name == "Legendary Dragon" then
			addFearParticle()
			sendNotification("a tall dragon stands above you")
			sendNotification("an overwhelming sense of dread fills your body")
			coroutine.wrap(function()
				task.wait(1.5)
				sendNotification("you can't muster up any courage to use heat actions, items, or counters")
			end)()
		end
	end
end
 
local function onBattleEnd()
	for _,z in pairs(plr.Character.Head:GetChildren()) do
		if z.Name == "FearParticle" then
			z:Destroy()
		end
	end
end
 
local function UpdateStyle()
	if status.Style.Value == "Brawler" then -- idk why, but in the game's code, the game uses yakuza 0 style names instead of the ones rolve used in the game
		--main gui
		game.ReplicatedStorage.Styles.Brawler.VisualName.Value = DragonText
		game.ReplicatedStorage.Styles.Brawler.Color.Value = DragonColor
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
		if DragonText == "Dragon" then
			main.Heat.Fill.ImageColor3 = Color3.fromRGB(180, 0, 0)
			main.Heat.Fill2.ImageColor3 = Color3.fromRGB(255, 66, 142)
			main.Heat.ClimaxFill.ImageColor3 = Color3.fromRGB(180, 0, 0)
			main.Heat.ClimaxFill2.ImageColor3 = Color3.fromRGB(255, 39, 86)
		elseif DragonText == "Legend" then
			main.Heat.Fill.ImageColor3 = Color3.fromRGB(152, 152, 152)
			main.Heat.Fill2.ImageColor3 = Color3.fromRGB(203, 221, 225)
			main.Heat.ClimaxFill.ImageColor3 = Color3.fromRGB(136, 149, 152)
			main.Heat.ClimaxFill2.ImageColor3 = Color3.fromRGB(144, 216, 221)
		end
		-- idle stance
		--if (isInBattle() and not hasWeaponInHand() and char.Humanoid.MoveDirection == Vector3.new(0, 0, 0)) and not anim.IsPlaying then
		--	anim:Play()
		--elseif (not isInBattle() or hasWeaponInHand() or char.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)) and anim.IsPlaying then
		--	anim:Stop()
		--end
	else
		local char = plr.Character
		char.UpperTorso["r2f_aura_burst"].Flare.Enabled = false
		char.UpperTorso["r2f_aura_burst"].Lines1.Enabled = false
		if anim.IsPlaying then
			anim:Stop()
		end
 
		char.HumanoidRootPart.Fire_Main.Rate = 80
		char.HumanoidRootPart.Fire_Secondary.Rate = 50
		char.HumanoidRootPart.Lines1.Rate = 20
		char.HumanoidRootPart.Lines2.Rate = 20
 
		main.Heat.Fill.ImageColor3 = Color3.fromRGB(40, 150, 250)
		main.Heat.Fill2.ImageColor3 = Color3.fromRGB(70, 250, 250)
		main.Heat.ClimaxFill.ImageColor3 = Color3.fromRGB(180, 0, 0)
		main.Heat.ClimaxFill2.ImageColor3 = Color3.fromRGB(250, 60, 100)
	end
 
 
	if abil.Info.LvlHolder.Box.LvlHolder.Box.Fill.BackgroundColor3 == Color3.fromRGB(19, 157, 255) then
		abil.Info.LvlHolder.Box.LvlHolder.Box.Fill.BackgroundColor3 = DragonColor
	end
	-- Hact Names
	if main.HeatMove.TextLabel.Text == "Guru Spin Counter [Front]" then
		main.HeatMove.TextLabel.Text = "Essence of Arm Counter [Front]"
	elseif main.HeatMove.TextLabel.Text == "Guru Spin Counter [Left]" then
		main.HeatMove.TextLabel.Text = "Essence of Arm Counter [Left]"
	elseif main.HeatMove.TextLabel.Text == "Guru Spin Counter [Right]" then
		main.HeatMove.TextLabel.Text = "Essence of Arm Counter [Right]"
	elseif main.HeatMove.TextLabel.Text == "Guru Spin Counter [Back]" then
		main.HeatMove.TextLabel.Text = "Essence of Arm Counter [Back]"
	elseif main.HeatMove.TextLabel.Text == "Essence of Fisticuffs" then
		main.HeatMove.TextLabel.Text = "Essence of Knockdown"
	elseif main.HeatMove.TextLabel.Text == "Guru Firearm Flip" then
		main.HeatMove.TextLabel.Text = "Komaki Shot Stopper"
	end
 
	if plr.Character:FindFirstChild("Heated") then
		if not plr.Character.Heated:FindFirstChild("HeatedBy") then
			main.HeatMove.ImageColor3 = Color3.fromRGB(255, 255, 255)
			main.HeatMove.TextLabel.TextColor3 = Color3.fromRGB(70, 250, 250)
		else
			main.HeatMove.ImageColor3 = Color3.fromRGB(255, 0, 0)
			main.HeatMove.TextLabel.TextColor3 = Color3.fromRGB(250, 73, 73)
		end
	end
 
	-- Move Descriptions
	abilFolder["Ultimate Essence"].Description.Value = "The Legend's ultimate attack. Unleash the might of the Red Dragon to crush any opponent."
	abilFolder["Ultimate Essence"].Prompt.Value = "HEAVY ATTACK near stunned enemies via Komaki Parry with Full Heat"
	abilFolder["Time for Resolve"].Description.Value = "Unleash the willpower of the Legendary Red Dragon to fly above the rest and withstand any attacks that would stagger or knock you down."
 
	abilFolder["Guru Parry"].Description.Value = "One of the Three Ultimate Komaki style moves. Stuns the enemy."
	abilFolder["Counter Hook"].Description.Value = "One of the Three Ultimate Komaki style moves. The style's strongest counter-attack."
	abilFolder["Guru Knockback"].Description.Value = "One of the Three Ultimate Komaki style moves. Send an enemy's attack right back at them."
 
	-- Move Names & Requirements
	for i,z in pairs(abil.List.ListFrame:GetChildren()) do
 
		if z:IsA("ImageButton") then
 
			if z:FindFirstChild("sty").Value == "Brawler" and z:FindFirstChild("MyColor").Value == Color3.fromRGB(19, 157, 255) then
				z.MyColor.Value = DragonColor
				z.Generic.Label.TextColor3 = DragonColor
				if z.Name == "Counter Hook" then
					z.Generic.Label.Text = "Komaki Tiger Drop (Lvl. 25)"
				elseif z.Name == "Guru Knockback" then
					z.Generic.Label.Text = "Komaki Knock Back"
				elseif z.Name == "Ultimate Essence" then
					if string.sub(z.Lock.Title.Text, 1, 10) ~= "Need to be" then
						z.Lock.Title.Text = "Need to unlock Komaki Parry"
					end
				elseif z.Name == "Guru Parry" then
					z.Generic.Label.Text = "Komaki Parry (Lvl. 20)"
					if string.sub(z.Lock.Title.Text, 1, 10) ~= "Need to be" then
						z.Lock.Title.Text = "Need to unlock Finishing Hold"
					end
				elseif z.Name == "Guru Spin Counter" then
					z.Generic.Label.Text = "Komaki Fist Reversal"
				elseif z.Name == "Guru Firearm Flip" then
					z.Generic.Label.Text = "Komaki Shot Stopper"
				elseif z.Name == "Guru Dodge Shot" then
					z.Generic.Label.Text = "Komaki Evade & Strike"
					if string.sub(z.Lock.Title.Text, 1, 10) ~= "Need to be" then
						z.Lock.Title.Text = "Need to unlock Komaki Knock Back"
					end
				elseif z.Name == "Guru Safety Roll" then
					z.Generic.Label.Text = "Komaki Dharma Tumbler"
				elseif z.Name == "Essence of Fisticuffs" then
					z.Generic.Label.Text = "Essence of Knockdown"
				elseif z.Name == "Time for Resolve" then
					z.Generic.Label.Text = "Red Dragon Spirit (Lvl. 20)"
				end
			end
		end
	end
 
end
 
local function UpdateStyleOnce()
	if not hasUpdatedOnce then
		hasUpdatedOnce = true
		sendNotification("setting style...", Color3.fromRGB(255, 255, 255))
	end
	DragonSequence = ColorSequence.new({ColorSequenceKeypoint.new(0, DragonColor), ColorSequenceKeypoint.new(1, DragonColor)})
	status.Stats.Kills_Brawler.Visual.Value = "Enemies defeated using " .. DragonText
 
	abil.Tabs.Tabs.Brawler.Filled.Title.Text = DragonText
 
	game.ReplicatedStorage.Moves.TigerDrop.Anim.AnimationId = "rbxassetid://12120052426"
 
	local function updateEncounterTitle()
		if interf.BattleStart.Text == "LEGENDARY DRAGON" then
			interf.BattleStart.Text = "THE TRUE DRAGON"
		elseif interf.BattleStart.Text == "MYSTERIOUS MERCS" then
			interf.BattleStart.Text = "MEN IN BLACK"
		elseif interf.BattleStart.Text == "DELINQUENTS" then
			local r = math.random(1, 3)
			interf.BattleStart.Text = r == 1 and "STREET RUFFIANS" or r == 2 and "STREET PUNKS" or "DELINQUENTS"
		elseif interf.BattleStart.Text == "RICH FIEND" then
			interf.BattleStart.Text = "NOUVEAU RICHE"
		elseif interf.BattleStart.Text == "DEVIOUS DAN" then
			interf.BattleStart.Text = "AVERAGE AMERICAN"
		elseif interf.BattleStart.Text == "JEFF ATTACK" then
			interf.BattleStart.Text = "BLUE BELTS"
		elseif interf.BattleStart.Text == "GORILLAMAN" then
			local r = math.random(1, 2)
			interf.BattleStart.Text = r == 1 and "COSPLAYERS" or "APE ARMY"
		elseif interf.BattleStart.Text == "HUE" then
			interf.BattleStart.Text = "COPYCAT"
		elseif interf.BattleStart.Text == "BLOODSUCKER" then
			local r = math.random(1, 4)
			interf.BattleStart.Text = r == 1 and "MENACING MAN" or r == 2 and "VAMPIRE" or r == 3 and "BUFF GUY" or "SUCKER" 
		end
	end
 
	if connections.BattleStart == nil then
		connections.BattleStart = interf.BattleStart.Changed:Connect(function()
			updateEncounterTitle()
		end)
	end	
 
	if kiwamiParticle == nil then
		kiwamiParticle = plr.Character.Head.FS:Clone()
		kiwamiParticle.Rate = 500
		kiwamiParticle.Enabled = false
		kiwamiParticle.Parent = game.ReplicatedStorage
		kiwamiParticle.Name = "KiwamiParticles"
	end
	--if connections.PunchTrail == nil then -- punch trail colors properly to legend style color
	--	connections.PunchTrail = game.Players.LocalPlayer.Character.DescendantAdded:Connect(function(child)
	--		if child:IsA("Trail") and status.Style.Value == "Brawler" then
	--			coroutine.wrap(function()
	--				while child do
	--					child.Color = DragonSequence
	--					game:GetService("RunService").RenderStepped:Wait()
	--				end
	--			end)()
	--		end
	--	end)
	--end
 
	if fill3 == nil and not main.Heat:FindFirstChild("Fill3") then
		fill3 = main.Heat.Fill2:Clone()
		fill3.Parent = main.Heat
		fill3.Name = "Fill3"
		fill3.Visible = false
		fill3.ImageColor3 = Color3.fromRGB(255, 255, 255)
		fill3.ImageTransparency = 1
		coroutine.wrap(function()
			main.Heat.Fill2.Changed:Connect(function()
				fill3.Size = main.Heat.Fill2.Size
			end)
 
			while true do
				repeat game:GetService("RunService").RenderStepped:Wait() until plr.Character:FindFirstChild("Heated") and not plr.Character.Heated:FindFirstChild("Throwing") and plr.Character.Heated:FindFirstChild("Heating") and plr.Character.Heated.Heating.Value ~= plr.Character
				fill3.ImageColor3 = Color3.fromRGB(0, 200, 0)		
				repeat game:GetService("RunService").RenderStepped:Wait() until not plr.Character:FindFirstChild("Heated")
				fill3.ImageColor3 = Color3.fromRGB(255, 255, 255)
			end
		end)()
		local tween = game:GetService("TweenService"):Create(fill3, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, math.huge, true, 0), {ImageTransparency = 0.4})
		tween:Play()
		local function updateFill()
			fill3.Visible = status.Heat.Value >= 50 and true or false
		end
		status.Heat.Changed:Connect(function()
			updateFill()
		end)
		updateFill()
	end
	if climaxfill3 == nil and not main.Heat:FindFirstChild("ClimaxFill3") then
		climaxfill3 = main.Heat.ClimaxFill2:Clone()
		climaxfill3.Parent = main.Heat
		climaxfill3.Name = "ClimaxFill3"
		climaxfill3.Visible = false
		climaxfill3.ImageColor3 = Color3.fromRGB(255, 255, 255)
		climaxfill3.ImageTransparency = 1
		coroutine.wrap(function()
			main.Heat.ClimaxFill2.Changed:Connect(function()
				climaxfill3.Size = main.Heat.ClimaxFill2.Size
			end)
 
			while true do
				repeat game:GetService("RunService").RenderStepped:Wait() until plr.Character:FindFirstChild("Heated") and not plr.Character.Heated:FindFirstChild("Throwing") and plr.Character.Heated:FindFirstChild("Heating") and plr.Character.Heated.Heating.Value ~= plr.Character
				climaxfill3.ImageColor3 = Color3.fromRGB(0, 200, 0)				
				repeat game:GetService("RunService").RenderStepped:Wait() until not plr.Character:FindFirstChild("Heated")
				climaxfill3.ImageColor3 = Color3.fromRGB(255, 255, 255)
			end
		end)()
		local tween = game:GetService("TweenService"):Create(climaxfill3, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, math.huge, true, 0), {ImageTransparency = 0.4})
		tween:Play()
		local function updateFill()
			climaxfill3.Visible = status.Heat.Value >= 100 and true or false
		end
		status.Heat.Changed:Connect(function()
			updateFill()
		end)
		updateFill()
	end
 
	if not fillPreview and not main.Heat:FindFirstChild("FillPreview") then
		fillPreview = main.Heat.Fill2:Clone()
		fillPreview.Parent = main.Heat
		fillPreview.Name = "FillPreview"
		fillPreview.Visible = false
		fillPreview.ImageColor3 = Color3.fromRGB(255, 0, 0)
		fillPreview.ImageTransparency = 0
	end
 
	if not climaxPreview and not main.Heat:FindFirstChild("ClimaxPreview") then
		climaxPreview = main.Heat.ClimaxFill2:Clone()
		climaxPreview.Parent = main.Heat
		climaxPreview.Name = "ClimaxPreview"
		climaxPreview.Visible = false
		climaxPreview.ImageColor3 = Color3.fromRGB(255, 0, 0)
		climaxPreview.ImageTransparency = 0
	end
 
	if not animsChanged then
		animsChanged = true
 
		game.ReplicatedStorage.Styles.Brawler.Idle.AnimationId = "rbxassetid://12120045620"
 
		local current;
		--finishing blows
		current = moves["BStomp"]
		current.Anim.AnimationId = "rbxassetid://7546695030"
 
		current = moves["BStrike1"]
		current.Anim.AnimationId = "rbxassetid://8216285224"
		changeValueStrict(current, "EndAt", 0.75, "NumberValue")
		changeValueStrict(current, "HitDur", 0.6, "NumberValue")
		changeValueStrict(current, "HitboxLocations", '[["RightFoot",3,[0,0,0]],["RightLowerLeg",2.25,[0,0,0]],["RightUpperLeg",1.5,[0,0,0]]]', "StringValue")
 
		current = moves["BStrike5"]
		current.Anim.AnimationId = "rbxassetid://7546691847"
		changeValueStrict(current, "MoveDuration", 0.3, "NumberValue")
		changeValueStrict(current, "ComboAt", 0.6, "NumberValue")
		changeValueStrict(current, "HSize", 1.3, "NumberValue")
		changeValueStrict(current, "HitboxLocations", '[["RightFoot",1.5,[0,0,0]],["RightLowerLeg",0.75,[0,0,0]],["RightUpperLeg",0.5,[0,0,0]]]', "StringValue")
 
		-- x2 finishing blows
		moves["B2Strike4"].Name = "Fake2Strike4"
		moves["龍2Strike4"].Name = "B2Strike4"
 
		current = moves["B2Strike2"]
		current.Anim.AnimationId = "rbxassetid://11955435829"
		changeValueStrict(current, "HSize", 0.75, "NumberValue")
		changeValueStrict(current, "HSound", "hardkick", "StringValue")
		changeValueStrict(current, "HitDur", 0.2, "NumberValue")
		changeValueStrict(current, "MoveDuration", 0.3, "NumberValue")
		changeValueStrict(current, "RagdollBonus", 1.25, "NumberValue")
		changeValueStrict(current, "HitboxLocations", '[["LeftFoot",1,[0,0,-0.5]],["LeftLowerLeg",2,[0,0,-0.5]],["LeftUpperLeg",2,[0,0,-0.5]]]', "StringValue")
 
		current = moves["B2Strike3"]
		current.Anim.AnimationId = "rbxassetid://11809009022"
		changeValueStrict(current, "HitDur", 0.2, "NumberValue")
		changeValueStrict(current, "MoveDuration", 0.3, "NumberValue")
		changeValueStrict(current, "AniSpeed", 0.75, "NumberValue")
		changeValueStrict(current, "HSize", 0.75, "NumberValue")
		changeValueStrict(current, "RagdollBonus", 1.25, "NumberValue")
		changeValueStrict(current, "HorizKnockback", 0, "NumberValue")
		changeValueStrict(current, "HitboxLocations", '[["LeftHand",2,[0,0,0]],["RightHand",2,[0,0,0]]]', "StringValue")
 
		current = moves["B2Strike1"]
		current.Anim.AnimationId = "rbxassetid://11826216628"
		changeValueStrict(current, "HitDur", 0.2, "NumberValue")
		changeValueStrict(current, "MoveDuration", 0.5, "NumberValue")
		changeValueStrict(current, "AniSpeed", 1, "NumberValue")
		changeValueStrict(current, "HSize", 0.75, "NumberValue")
		changeValueStrict(current, "RagdollBonus", 1.25, "NumberValue")
		changeValueStrict(current, "HorizKnockback", 0.25, "NumberValue")
		changeValueStrict(current, "Reaction", "Uppercut", "StringValue")
		changeValueStrict(current, "HitboxLocations", '[["RightHand",2,[0,0,0]],["RightLowerArm",1.5,[0,0,0]],["RightUpperArm",1,[0,0,0]]]', "StringValue")
 
		-- rush combo
		moves["BAttack1"].Name = "FakeAttack1"
		moves["龍Attack1"].Name = "BAttack1"
		changeValueStrict(moves["BAttack1"], "ComboAt", 0.35, "NumberValue")
 
		moves["BAttack2"].Name = "FakeAttack2"
		moves["龍Attack2"].Name = "BAttack2"
		changeValueStrict(moves["BAttack2"], "ComboAt", 0.35, "NumberValue")
 
		moves["BAttack3"].Name = "FakeAttack3"
		moves["龍Attack3"].Name = "BAttack3"
		changeValueStrict(moves["BAttack3"], "ComboAt", 0.35, "NumberValue")
 
		moves["BAttack4"].Name = "FakeAttack4"
		moves["龍Attack4"].Name = "BAttack4"
		changeValueStrict(moves["BAttack4"], "ComboAt", 0.35, "NumberValue")
	end
 
 
	if connections.KiwamiParticles == nil then -- Kiwami-style particles for enemies stunned by guru parry (to indicate if they can get UE'd)
		print("kiwami connected")
		connections.KiwamiParticles = game.Players.LocalPlayer.Character.ChildAdded:Connect(function(child)
			if status.Styles.Brawler:FindFirstChild("Ultimate Essence") then
				task.wait(0.1)
				if child.Name == "Heated" then
					if child:FindFirstChild("MoveName") then
						hactsSession += 1
						if hactsSession % 10 == 0 then
							sendNotification("heat actions (this session): [" .. hactsSession .. "]", Color3.fromRGB(0, 200, 0))
						end
					end
					if child:FindFirstChild("Throwing") and child:FindFirstChild("Heating") then
						local target = child.Heating.Value
						local n = 3
						repeat task.wait(0.05) n-=0.05 until target:FindFirstChild("Stunned") or not target or n<=0
						if target and target:FindFirstChild("Stunned") and target.Stunned:FindFirstChild("Guru") then
							print(target.Name .. " stunned by guru parry")
							if not target.Head:FindFirstChild("KiwamiParticles") then
								local new = kiwamiParticle:Clone()
								new.Parent = target.Head
								new.Color = DragonSequence
								new.Enabled = true
								coroutine.wrap(function()
									while target:FindFirstChild("Stunned") do game:GetService("RunService").RenderStepped:Wait() new.Color = DragonSequence end
									new:Destroy()
								end)()
							end
						end
					end
				end
			end
		end)
	end
 
	main.Heat.noheattho.Text = "Heat Actions Disabled"
	main.Heat.noheattho.Size = UDim2.new(10, 0, 1, 0)
 
	menu.Bars.Mobile_Title.Text = "DRAGON of STEEL Mod by MisterMax228#7446"
	menu.Bars.Mobile_Title.Visible = true
	if not isDungeon() then
		-- Dialogues
		workspace.Map.MiniQuests["Helen"].Dialogue.Dialog.Value = [[Thinking about moving to Bloxxer City..... But those crime rates are so high, and we got the dragon of steel protecting us here.]]
		workspace.Map.MiniQuests["Jort"].Dialogue.Dialog.Value = [[These are my favorite vending machines. There's a street legend out there who chugs sonic energy colas and then beats up all the bad guys... Or something like that.]]
		workspace.Map.MiniQuests["Fisherman Jimbo"].Dialogue.Dialog.Value = [[You don't look like ya fish... But you do look intimidating, to say the least. Do you happen to know that city legend that everyone says can drop a tiger in one blow? You kinda remind me of them...]]
		workspace.Map.MiniQuests["Fisherman Quill"].Dialogue.Dialog.Value = [[Hey there young legend, you look hungry. The dock lady is still there selling fresh stuff. Bearing the might of a Dragon surely is exhaustive, right?]]
		workspace.Map.MiniQuests["Anderson"].Dialogue.Dialog.Value = [[Wow, that's crazy. You'd think there would be more crime scenes around the city. You know, considering how big of a mess YOU'VE caused. You crush the nearest street thug and who do you think has to clean all that up?!]]
		-- Special dialogues
		if not specDialogues.Caitlin then
			specDialogues.Caitlin = true
			workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Value = [[There sure are a lot of jerks in this city who want to pick a fight. What, you want to fight too?]]
			local d1 = Instance.new("StringValue")
			d1.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog
			d1.Value = "Yeah, fight me."
			d1.Name = "Dialog1"
			local r1 = Instance.new("StringValue")
			r1.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog1
			r1.Name = "Dialog"
			r1.Value = [[Aren't you that kid from Rajad that everyone talks about? Go do your thing and beat up <font color="#FF00AA">Vulcan</font> instead of fighting innocent bystanders.]]
			local d2 = Instance.new("StringValue")
			d2.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog
			d2.Value = "There's no such thing as rest in this city."
			d2.Name = "Dialog2"
			local r2 = Instance.new("StringValue")
			r2.Parent = workspace.Map.MiniQuests["Caitlin"].Dialogue.Dialog.Dialog2
			r2.Name = "Dialog"
			r2.Value = [[I know, right. The mayor doesn't even do anything about it... Instead of fighting crimes, he watches videos of them, man. VIDEOS! OF CRIMES! ON TWITTER! He should be fired.]]			
		end
		if not specDialogues.Bill then
			specDialogues.Bill = true
			workspace.Map.MiniQuests["Bill"].Dialogue.Dialog.Value = [[Hey, you're that legend from Rajad. I remember when you first arrived to Steel. Yeah, feels like it was yesterday.]]
			local d1 = Instance.new("StringValue")
			d1.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog
			d1.Value = "Same."
			d1.Name = "Dialog1"
			local r1 = Instance.new("StringValue")
			r1.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog.Dialog1
			r1.Name = "Dialog"
			r1.Value = "Memories bring back memories..."
			local d2 = Instance.new("StringValue")
			d2.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog
			d2.Value = "Do you just... stand here all day?"
			d2.Name = "Dialog2"
			local d2 = Instance.new("StringValue")
			d2.Parent = workspace.Map.MiniQuests["Bill"].Dialogue.Dialog.Dialog2
			d2.Name = "Dialog"
			d2.Value = "What? No! Of course not. I just feel very nostalgic. Besides, I have really important things to do. Like um... uh... Nevermind."
		end
		if not specDialogues.James then
			specDialogues.James = true
			workspace.Map.MiniQuests["James"].Dialogue.Dialog.Value = [[There used to be a time when we didn't have a tower looming over this street, boy do I love corporations. You look awfully intimidating. Do you happen to be the guy from the legend?]]		
			local d1 = Instance.new("StringValue")
			d1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog
			d1.Value = "You've got the wrong person."
			d1.Name = "Dialog1"
			local r1 = Instance.new("StringValue")
			r1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1
			r1.Name = "Dialog"
			r1.Value = "Someone needs to stop them. I REALLY hate the very existence of that tower."
			local d1_1 = Instance.new("StringValue")
			d1_1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1.Dialog
			d1_1.Value = "What's so bad about it?"
			d1_1.Name = "Dialog1"
			local r1_1 = Instance.new("StringValue")
			r1_1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1.Dialog.Dialog1
			r1_1.Name = "Dialog"
			r1_1.Value = "That skyscraper is owned by a corporation run by an obnoxious guy named Derek, I think. Tough guy. Thinks there's no one stronger than him. He definitely fears that he might get beat up by the Dragon of Steel one day. He prolly built that tower just to look above everyone else... Literally."
			local d1_2 = Instance.new("StringValue")
			d1_2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1.Dialog
			d1_2.Value = "Yeah, I hate it too."
			d1_2.Name = "Dialog2"
			local r1_2 = Instance.new("StringValue")
			r1_2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog1.Dialog.Dialog1
			r1_2.Name = "Dialog"
			r1_2.Value = "Crazy how the mayor allowed this..."
			local d2 = Instance.new("StringValue")
			d2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog
			d2.Value = "Maybe I am."
			d2.Name = "Dialog2"
			local r2 = Instance.new("StringValue")
			r2.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog2
			r2.Name = "Dialog"
			r2.Value = "Say, why don't you go inside and teach them to not build giant corporate towers to ruin our mood?"
			local d2_1 = Instance.new("StringValue")
			d2_1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog2.Dialog
			d2_1.Value = "Maybe later?.."
			d2_1.Name = "Dialog1"
			local r2_1 = Instance.new("StringValue")
			r2_1.Parent = workspace.Map.MiniQuests["James"].Dialogue.Dialog.Dialog2.Dialog.Dialog1
			r2_1.Name = "Dialog"
			r2_1.Value = "You better hurry. I have a headache looking at how annoyingly high that tower is. Ruins the entire atmosphere of the city."
		end
		if not specDialogues.Parker then
			specDialogues.Parker = true
			workspace.Map.MiniQuests["Parker"].Dialogue.FDialog.Name = "Dialog"
			workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Value = [[Welcome back, kid.]]
			local d1 = Instance.new("StringValue")
			d1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog
			d1.Value = "You know what."
			d1.Name = "Dialog1"
			local r1 = Instance.new("StringValue")
			r1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog1
			r1.Name = "FDialog"
			r1.Value = "So you haven't changed."
			local d2 = Instance.new("StringValue")
			d2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog
			d2.Value = "What's up?"
			d2.Name = "Dialog2"
			local r2 = Instance.new("StringValue")
			r2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2
			r2.Name = "Dialog"
			r2.Value = "Nothing much. Still have a sore throat."
			local d2_1 = Instance.new("StringValue")
			d2_1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2.Dialog
			d2_1.Value = "So... wanna fight?"
			d2_1.Name = "Dialog1"
			local r2_1 = Instance.new("StringValue")
			r2_1.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2.Dialog.Dialog1
			r2_1.Name = "FDialog"
			r2_1.Value = "...You're really gonna make me stack up hospital bills."
			local d2_2 = Instance.new("StringValue")
			d2_2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2.Dialog
			d2_2.Value = "Stay healthy."
			d2_2.Name = "Dialog2"
			local r2_2 = Instance.new("StringValue")
			r2_2.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog2.Dialog.Dialog2
			r2_2.Name = "Dialog"
			r2_2.Value = "You too, kid."
			local d3 = Instance.new("StringValue")
			d3.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog
			d3.Value = "Nothing, see ya later."
			d3.Name = "Dialog3"
			local r3 = Instance.new("StringValue")
			r3.Parent = workspace.Map.MiniQuests["Parker"].Dialogue.Dialog.Dialog3
			r3.Name = "Dialog"
			r3.Value = "*cough* ..."
		end
	end
	if hasReloaded == false then
		hasReloaded = true
		local cframe = plr.Character.LowerTorso.CFrame
		sendNotification("reloading character...")
		interf.Client.Disabled = true
		task.wait()
		interf.Client.Disabled = false
		task.wait(0.1)
		plr.Character.LowerTorso.CFrame = cframe
	end
 
	if not battleWatcher then
		battleWatcher = true
		while true do
			repeat task.wait() until isInBattle()
			coroutine.wrap(function()
				onBattleStart()
			end)()
			repeat task.wait() until not isInBattle()
			coroutine.wrap(function()
				onBattleEnd()
			end)()
		end
	end
end
 
game:GetService("RunService").RenderStepped:Connect(function()
	UpdateStyle()
end)
 
game.UserInputService.InputBegan:Connect(function(key)
	if game.UserInputService:GetFocusedTextBox() == nil then
		if key.KeyCode == Enum.KeyCode.L then
			if DragonText == "Dragon" then
				DragonText = "Legend"
				DragonColor = Color3.new(0.760784, 0.898039, 1)
				sendNotification("legend", DragonColor)
			elseif DragonText == "Legend" then
				DragonText = "Dragon"
				DragonColor = Color3.new(0.9, 0.05, 0.15)
				sendNotification("dragon of steel", DragonColor)
			end
			UpdateStyleOnce()
		end
	end
end)
 
status.Health.Changed:Connect(function()
	if status.Health.Value <= 0 then
		task.wait()
		if not plr.Character:FindFirstChild("ImaDea") then
			return
		end
		local prompts = {
			"What brought you here?"; 
			"What happened to your right 2 fight?";
			"THAT'S supposed to be the strength of a Dragon?";
			"Who's laughing now?";
			"No way you're that bad...";
			"You can't give up just yet... " .. plr.DisplayName .. "... Stay determined!";
			"Would you like to continue? Don't say anything if yes.";
			"GAME OVER!......................... Not really. You can keep playing.";
			"Bet you'd die to spoiled brat";
			"That was a warm up, right?!";
			"So that's the Dragon of Steel?";
		}
 
		if not game:GetService("UserInputService").GamepadEnabled then
			table.insert(prompts, "Real Legends use a controller")
		end	
 
		local text = prompts[math.random(1, #prompts)]
 
		local arena = status.MyArena.Value
		if arena then
			if arena:FindFirstChild("AI"):FindFirstChild("Object") and arena.AI.Object.Value and arena.AI.Object.Value.Name == "Legendary Dragon" then
				text = "There can be only one Legendary Dragon."
			end
		end
		local n = status.Stats.Deaths.Value + 1
		coroutine.wrap(function()
			createDeathMessage(text)
		end)()
		coroutine.wrap(function()
			setDeathFilter()
		end)()
	end
end)
 
coroutine.wrap(function()
	while true do
		UpdateStyleOnce()
		task.wait(5) -- update everything every 5 seconds (optimization)
	end
end)()
 
status.Resets.Changed:Connect(function()
	sendNotification("you are now prestige [" .. status.Resets.Value .. "]", Color3.fromRGB(0, 200, 0))
end)
 
status.Level.Changed:Connect(function()
	if status.Level.Value % 5 == 0 then
		sendNotification("you are now level [" .. status.Level.Value .. "]", Color3.fromRGB(0, 200, 0))
	end
end)
 
status.Stats.Deaths.Changed:Connect(function()
	sendNotification("deaths total: [" .. status.Stats.Deaths.Value .. "]", Color3.fromRGB(200, 0, 0))
end)
 
status.Stats.Kills_Brawler.Changed:Connect(function()
	if status.Stats.Kills_Brawler.Value % 50 == 0 then
		sendNotification("enemies defeated in " .. DragonText .. " style: [" .. status.Stats.Kills_Brawler.Value .. "]", Color3.fromRGB(0, 200, 0))
	end
end)
 
status.Stats.Kills_Beast.Changed:Connect(function()
	if status.Stats.Kills_Beast.Value % 50 == 0 then
		sendNotification("enemies defeated in Brute style: [" .. status.Stats.Kills_Beast.Value .. "]", Color3.fromRGB(0, 200, 0))
	end
end)
 
status.Stats.Kills_Rush.Changed:Connect(function()
	if status.Stats.Kills_Rush.Value % 50 == 0 then
		sendNotification("enemies defeated in Frenzy style: [" .. status.Stats.Kills_Rush.Value .. "]", Color3.fromRGB(0, 200, 0))
	end
end)
 
status.Stats.Kills.Changed:Connect(function()
	if status.Stats.Kills.Value % 50 == 0 then
		sendNotification("enemies defeated total: [" .. status.Stats.Kills.Value .. "]", Color3.fromRGB(0, 200, 0))
	end
end)
 
status.AttackBegan.Changed:Connect(function()
	if status.AttackBegan.Value == true then
		if status.CurrentMove.Value.Name == "TigerDrop" then
			tigerDropsSession += 1
			if tigerDropsSession % 10 == 0 then
				sendNotification("tiger drops (this session): [" .. tigerDropsSession .. "]", Color3.fromRGB(0, 200, 0))
				if tigerDropsSession == 100 then
					sendNotification("DAAAAAAAAAAAMN")
				end
			end
		end
	end
end)
 
sendNotification("mod loaded", Color3.fromRGB(0, 200, 0))
task.wait(3)
sendNotification("tip: dont try to do a tiger drop kick, itll kick you", Color3.fromRGB(0, 200, 0))
task.wait(3)
sendNotification("press [L] to switch between legend/dragon styles", Color3.fromRGB(255, 255, 255))