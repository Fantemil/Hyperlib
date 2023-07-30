local function wfc(p, o)
	return p:WaitForChild(o)
end
game:GetService("Players").LocalPlayer.Backpack.Core.Client:Destroy()

--
local i_n = Instance.new
local v3 = Vector3.new
local ud2 = UDim2.new
local c3 = Color3.new
local bcn = BrickColor.new
local cfn = CFrame.new
local cfa = CFrame.Angles
local ray = Ray.new

local rand = math.random
local ceil = math.ceil
local floor = math.floor
local sqr = math.sqrt
local abs = math.abs

local uit = Enum.UserInputType
local kc = Enum.KeyCode

--
local cs = game:GetService("CollectionService")
local uis = game:GetService("UserInputService")
local rs = game:GetService("ReplicatedStorage")

local modules = wfc(rs, "Modules")
local common = wfc(modules, "CommonEffects")
local rotR3 = wfc(modules, "RotatedRegion3")

local remotes = wfc(rs, "Remotes")
local keygen = wfc(remotes, "RequestKey")

local cmag = wfc(remotes, "CheckMagnitude")
local cray = wfc(remotes, "CheckRay")
local creg = wfc(remotes, "CheckRegion")
local confirm = wfc(remotes, "ConfirmPosition")

local data_check = wfc(remotes, "CheckData")
local data_yield = wfc(remotes, "YieldData")

local spoof = wfc(remotes, "EffectSpoof")
local reset = wfc(remotes, "GameReset")

local damage = wfc(remotes, "Damage")
local junction = wfc(remotes, "HitJunction")
local bullet = wfc(remotes, "BulletJunction")
local pjadd = wfc(remotes, "AddProjectile")
local reflect = wfc(remotes, "ReflectProjectile")
local knockback = wfc(remotes, "Knockback")
local dpopup = wfc(remotes, "DmgPopup")

local adjustcd = wfc(remotes, "AdjustCD")
local inflict = wfc(remotes, "ApplyStatus")
local behavior = wfc(remotes, "AddBehavior")
local addbuff = wfc(remotes, "ApplyBuff")
local unbuff = wfc(remotes, "RemoveBuff")
local gaincrit = wfc(remotes, "GainCritical")

local updateC = wfc(remotes, "UpdateClient")
local updateV = wfc(remotes, "UpdateVisual")
local ping = wfc(remotes, "GetPing")

--
local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local gfolder = wfc(workspace, "Global")
local GL_CD = wfc(gfolder, "GlobalCD")

local cam = workspace.CurrentCamera
local mouse = plr:GetMouse()

local hume = wfc(char, "Humanoid")
local hrp = wfc(char, "HumanoidRootPart")

--
local class = game:GetService("Players").LocalPlayer.Backpack.Core
local params = wfc(class, "Params")
local bspd = wfc(params, "Speed")

local effects = wfc(class, "HitEffects")
local visuals = wfc(class, "FXModule")

local ofx = require(visuals)
local cfx = require(common)
local rotR3 = require(rotR3)

local uii = game:GetService("Players").LocalPlayer.PlayerGui
local ui = wfc(uii, "UI")
local ui_m = wfc(ui, "Main")
local ui_tt = wfc(ui_m, "Tooltip")
local ui_at = wfc(ui_m, "AltTip")
local ui_sb = wfc(ui_m, "StateBox")

--
local sf = char:WaitForChild("Stats")
local shd = wfc(sf, "Shield")
local crit = wfc(sf, "Critical")
local cgain = wfc(sf, "CritGain")
local cdr = wfc(sf, "CDRate")

-- CREATION
function newC3(r, g, b)
	return Color3.new(r/255, g/255, b/255)
end

function newPart(p, n, x, y, z, t, r, anc, cc)
	local part = i_n("Part")
	part.Name = n; part.Size = v3(x, y, z)
	part.Transparency = t; part.Reflectance = r
	part.Anchored = anc; part.CanCollide = cc
	part.TopSurface = Enum.SurfaceType.Smooth
	part.BottomSurface = part.TopSurface
	part.Parent = p; return part
end

function newAnim(id, n)
	local new = i_n("Animation", class)
	new.Name = n or "CoreAnim"
	
	new.AnimationId = "rbxassetid://"..id
	new = hume:LoadAnimation(new)
	
	return new
end

-- ANIMATION
local shootA = newAnim(4219920674, "shootA")
local shootB = newAnim(4219918376, "shootB")

local slash = newAnim(4219963167, "Slash")
local boarding = newAnim(4219835556, "Boarding")
local summon = newAnim(4220013995, "Summon")

local surfidle = newAnim(4220004807, "Surfidle")
local surffront = newAnim(4220007866, "Surffront")
local surfback = newAnim(4219998030, "Surfback")
local surfleft = newAnim(4220002410, "Surfleft")
local surfright = newAnim(4220000146, "Surfright")
local surfjump = newAnim(4728866886, "Surfjump")

-- ABILITIES (NOTE: A 'free' ability can be used while another is in effect, and vice-versa.)
local isMouse = {uit.MouseButton1, uit.MouseButton2, uit.MouseButton3}

local cast = {}
local cond = {}
local cons = {}

local gData = {}
local cData = {}

local aData = {
	PSV = {
		button = wfc(ui_m, "PSV"),
		tooltip = "[PSV]: Metamagic - You deal and receive 10% more damage for every 20% Critical.",
		maxcd = 0,
		ccd = 0,
	},
	ATK = {
		button = wfc(ui_m, "ATK"),
		tooltip = "[ATK]: Mystic Shot (0.4s) - Release a bolt of magic that deals 8 damage on impact.",
		maxcd = 5,
		ccd = 0,
		key = uit.MouseButton1,
		pad = kc.ButtonR2,
		free = false
	},
	AB1 = {
		button = wfc(ui_m, "AB1"),
		tooltip = "[AB1]: Runic Blast (5s) - Unleash 3 bolts of magic in a spread that deal 8 damage each.",
		maxcd = 50,
		ccd = 0,
		key = kc.Q,
		pad = kc.ButtonX,
		free = false,
	},
	AB2 = {
		button = wfc(ui_m, "AB2"),
		tooltip = "[AB2]: Skywalker (0.5s) Gain increased speed and hover through the air in exchange for Critical. Jump while hovering to dismount.",
		altip = "[ALT]: Magic Weave (5s)  - Reuse while on your board to throw it for 10 damage and Slow (3s) on hit. Costs 25% Critical.",
		maxcd = 5,
		ccd = 0,
		key = kc.E,
		pad = kc.ButtonY,
		free = false
	},
	CRT = {
		button = wfc(ui_m, "CRT"),
		tooltip = "[CRT]: Synaptic Static - Unleash five bolts of disrupting energy that deal 9 damage each and inflict Disable (2s).",
		maxcd = 0,
		ccd = 0,
		key = kc.F,
		pad = kc.ButtonB,
		free = false
	},
}

local sData = {
	{icon = 609335836, col = newC3(255, 0, 0), tooltip = "Disable - Target cannot use abilities."},
	{icon = 609337827, col = newC3(50, 0, 255), tooltip = "Slow - Target's movement speed and jump height reduced by 20%."},
	
}

--
local padImages = {
	ButtonA = 3191469144,
	ButtonB = 3191469445,
	ButtonX = 3191469669,
	ButtonY = 3191469881,
	ButtonR1 = 3191470449,
	ButtonR2 = 3191470667,
	ButtonL1 = 3191470906,
	ButtonL2 = 3191471182,
	ButtonR3 = 3191471803,
	ButtonL3 = 3191471975,
	DPadUp = 3191473333,
	DPadDown = 3191473554,
	Unknown = 696413137
}

--
local FIRE_KEY = 0

local ready = false
local dead = false

local active = false
local pause = false
local showBoxes = false
local smallUI = false
local toolMode = false
local selected = nil
local casting = nil
local prev = nil

local pms = 20.0
local mvs = 0

local pCol = newC3(91, 93, 105)
local sCol = newC3(159, 161, 172)
local tCol = newC3(248, 248, 248)

local antibounce = {}
local pressed = {}

-- UNIQUE VARS

local usedalt = false
local flying = false
local surfadd = 0

local armor = wfc(char, "Armor")
local prop = wfc(armor, "HumanoidRootPart")

--
function swait(n)
    if not n then game:GetService("RunService").RenderStepped:wait() else local t = time()
        repeat game:GetService("RunService").RenderStepped:wait() until time()-t >= n/60
    end
end

function check(t, s, v)
	return data_check:InvokeServer(t, s, v)
end

function yield(t)
	return data_yield:InvokeServer(t)
end

function findInTable(list, obj)
	for _,ind in pairs(list) do
		if obj == ind then return true end
	end
	
	return false
end

function removeFromTable(list, obj)
	for i,v in ipairs(list) do
		if v == obj then table.remove(list, i); return end
	end
end

function roll(num)
	return math.random(1, 100) < num
end

function generateKey(length)
	local key = ""
	local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	
	for i = 1, length or 4 do
		if roll(50) then key = key..tostring(math.random(1, 9))
		else local letter = math.random(1, alphabet:len())
			letter = alphabet:sub(letter, letter)
			
			if roll(50) then letter = letter:lower() end
			key = key..letter
		end
	end
	
	return key
end

--
function effect(name, arglist, rep)
	local func = ofx[name]
	
	if rep == nil then rep = true end
	
	if func then func(arglist)
		if rep then spoof:FireServer(name, arglist, visuals) end
	end
end

function common(name, arglist, rep)
	local func = cfx[name]
	
	if rep == nil then rep = true end
	
	if func then func(arglist)
		if rep then spoof:FireServer(name, arglist, common) end
	end
end

function popup(pos, text, col1, col2, scale)
	dpopup:FireServer(pos, text, col1, col2, scale)
end

function condition(n)
	for _,c in pairs(cond) do
		if c:find(n) then return true end
	end
	
	return nil
end

--
function switchTo(ab)
	if selected then selected.button.BorderSizePixel = 0 end
	if ab then selected = ab; selected.button.BorderSizePixel = 3
		selected.button.BorderColor3 = newC3(0, 255, 255)
	else selected = nil
	end
end

function wideUpdate()
	gData = yield("Game"); cData = check("Class", gData.Settings.Class)
	
	local keys = gData.KeyBinds; local pads = gData.PadBinds
	
	for k,v in pairs(aData) do
		local key = keys[k]; local pad = pads[k]
		
		if key and pad then v.pad = kc[pad[2]] or v.pad
			if key[2] == "Unknown" then v.key = uit[key[1]] or v.key
				else v.key = kc[key[2]] or v.key
			end
		end
	end

	pCol = cData.PrimaryColor
	pCol = newC3(pCol.r, pCol.g, pCol.b)
	
	sCol = cData.SecondaryColor
	sCol = newC3(sCol.r, sCol.g, sCol.b)
	
	tCol = cData.TertiaryColor
	tCol = newC3(tCol.r, tCol.g, tCol.b)
	
	showBoxes = gData.Settings.ShowHits
	smallUI = gData.Settings.SmallUI
	toolMode = gData.Settings.ToolMode
end

function visualUpdate()
	local data = {aData.ATK, aData.AB1, aData.AB2, aData.CRT}
	local l = uis:GetLastInputType() or uit.Keyboard
	
	if findInTable(isMouse, l) or l == uit.Keyboard then for _,v in pairs(data) do
		if findInTable(isMouse, v.key) then v.button.Key.Text = (tostring(v.key):sub(20, -1)):gsub("Button", "")
		else v.button.Key.Text = tostring(v.key):sub(14, -1)
		end
			
		v.button.Key.Visible = true; v.button.Pad.Visible = false
		end
	
	elseif l == uit.Gamepad1 then for _,v in pairs(data) do
			v.button.Pad.Image = "rbxassetid://"..padImages[tostring(v.pad):sub(14, -1)] or padImages.Unknown
			v.button.Pad.Visible = true; v.button.Key.Visible = false
		end
	end
	
	for k,v in pairs(aData) do
		if v.stock then 
			v.button.Stock.Visible = true 
			v.button.Stock.Text = "-"..v.stock.."-"
		end
		
		if not canCast(v.button.Name) then
			v.button.Disable.Visible = true
		else v.button.Disable.Visible = false
		end
		
		v.button.ImageColor3 = tCol
	end
	
	if smallUI then ui_m.Size = ud2(.2, 0, .04, 0); ui_m.Position = ud2(.4, 0, .875, 0)
	else ui_m.Size = ud2(.25, 0, .05, 0); ui_m.Position = ud2(.375, 0, .85, 0)
	end
	
	if toolMode then 
		if not selected then switchTo(aData.ATK) end
		else switchTo(nil)
	end
	
	prop = wfc(armor, "HumanoidRootPart")
end

function showData(a)
	if a.altip then
		ui_tt.Position = ud2(-.1, 0, -1.6, 0)
		ui_at.Visible = true; ui_at.Text = a.altip
	else ui_tt.Position = ui_at.Position
	end
	
	if a.col then ui_tt.TextColor3 = a.col
	else ui_tt.TextColor3 = c3(1, 1, 1)
	end
	
	ui_tt.Text = a.tooltip
	ui_tt.Visible = true
end

function makeIcons()
	local perRow = 4
	local column = 0
	
	for i,s in next,(sData) do
		local page = ceil(i/perRow)
		
		if column >= perRow then column = 1
		else column = column + 1
		end
	
		local img = i_n("ImageLabel")
		img.BackgroundTransparency = 1
		img.Position = ud2(.3 * (column-1), 0, .5 * (page-1), 0)
		img.Size = ud2(.25, 0, .5, 0)
		img.Image = "rbxassetid://"..s.icon
	
		img.MouseEnter:connect(function()
			showData(s)
		end)
	
		img.MouseLeave:connect(function()
			ui_tt.Visible = false
			ui_at.Visible = false
		end)
	
		img.Parent = ui_sb
	end
end

function critToggle(bool)
	local b = aData.CRT.button
	
	if bool then
		b.BackgroundTransparency = .4
		b.ImageTransparency = 0
	else
		b.BackgroundTransparency = .8
		b.ImageTransparency = .8
		b.BackgroundColor3 = c3()
	end
end

--
function checkStat(char, stat)
	local sf = char:FindFirstChild("Stats")
	if sf and sf:IsA("Folder") then
		local val = sf:FindFirstChild(stat)
		if val then return val.Value end
	end

	return nil
end

function findHuman(part)
	local hume = part.Parent:FindFirstChildWhichIsA("Humanoid")
	local hp = checkStat(part.Parent, "HP")
	
	if hume and hp and hp > 0 then return part.Parent end 
	return nil
end

function getPos(targ)
	local p = targ.PrimaryPart or targ:FindFirstChild("Torso")
	if p then return p.Position end
	return v3(0, 0, 0)
end

function isAlly(targ, color, isSelf)
	local p = game.Players:GetPlayerFromCharacter(targ)
	local tV = targ:FindFirstChild("AllyFlag")
	if isSelf == nil then isSelf = true end
	
	return (p and p.TeamColor == color and not p.Neutral)
	or (tV and tV:IsA("ObjectValue")) or (isSelf and targ == char)
end

function isAlive(targ)
	local p = game.Players:GetPlayerFromCharacter(targ)
	
	if p then local aV = p:FindFirstChildWhichIsA("BoolValue")
	if aV and aV.Name:lower()=="alive" then return aV.Value end
	end
	
	return true
end

function isTangible(targ)
	local v = targ:FindFirstChildWhichIsA("ObjectValue")
	if v and v.Name:lower()=="notarget" then 
		return false
	end
	
	return true
end

function getMembers(team)
	local list = {}
	
	for _,p in pairs(game.Players:GetPlayers()) do
		if p.Character then local c = p.Character
			if p.TeamColor == team then list[#list+1] = c end
		end
	end
		
	return list
end

function getArmor()
	local sets = {}
	
	for _,p in pairs(game.Players:GetPlayers()) do
		if p.Character then local c = p.Character
			local armor = c:FindFirstChild("Armor")
			if armor then sets[#sets+1] = armor
			end
		end
	end
	
	return sets
end

--
function checkPos(char, pos, forgive)
	return confirm:InvokeServer(char, pos, forgive)
end

function filterTargets(parts, field)
	local targets = {}
	
	for _,part in pairs(parts) do local targ = findHuman(part)
		if targ and not findInTable(targets, targ) 
		and (isAlive(targ) or targ == char) and isTangible(targ) then
			if field == 1 then
				if not isAlly(targ, plr.TeamColor) then
					targets[#targets+1] = targ
				end
				
			elseif field == 2 then
				if isAlly(targ, plr.TeamColor) then
					targets[#targets+1] = targ
				end
			
			else targets[#targets+1] = targ
			end
		end
	end
	
	return targets
end

function filterSingle(part, field)
	local target = nil
	
	local targ = findHuman(part)
	if targ and (isAlive(targ) or targ == char) 
	and isTangible(targ) then
		if field == 1 then
			if not isAlly(targ, plr.TeamColor) then
				target = targ
			end
				
		elseif field == 2 then
			if isAlly(targ, plr.TeamColor) then
				target = targ
			end
			
		else target = targ
		end
	end
	
	return target
end

function hitBox(cf, size, field, maxParts) -- Field: 1 = Enemies; 2 = Allies; 2+ = All
	local ignore = {}; local targets = {}
	
	field = field or 1
	
	if field <= 1 then ignore = {char} end
	
	for _,s in pairs(getArmor()) do ignore[#ignore+1] = s end
	
	if showBoxes then local box = i_n("Part")
		box.Size = size; box.CFrame = cf
		box.Anchored = true; box.CanCollide = false
		box.TopSurface = Enum.SurfaceType.Smooth
		box.BottomSurface = box.TopSurface
		box.Material = Enum.Material.Neon
		box.Transparency = 0.6
	
		if field == 2 then box.BrickColor = bcn("Bright blue")
		elseif field > 2 then box.BrickColor = bcn("New Yeller")
		else box.BrickColor = bcn("Bright red")
		end
	
		box.Parent = cam
		game:GetService("Debris"):AddItem(box, 1)
	end
	
	local region = rotR3.new(cf, size)
	local parts = region:cast(ignore, maxParts or 100)
	targets = filterTargets(parts, field)
	
	return targets
end

function magBox(cf, size, field)
	local exp = i_n("Explosion")
	exp.DestroyJointRadiusPercent = 0
	exp.BlastPressure = 0; exp.BlastRadius = size
	exp.ExplosionType = Enum.ExplosionType.NoCraters
	exp.Visible = false; exp.Position = cf.p
	exp.Parent = workspace
	
	field = field or 1
	
	if showBoxes then
		local orb = newPart(nil, "Orb", size*2, size*2, size*2, .6, 0, true, false)
		orb.TopSurface = Enum.SurfaceType.Smooth; orb.BottomSurface = orb.TopSurface
		orb.Material = Enum.Material.Neon
		
		local m = i_n("SpecialMesh", orb)
		m.MeshType = Enum.MeshType.Sphere
		
		if field == 2 then orb.BrickColor = bcn("Bright blue")
		elseif field > 2 then orb.BrickColor = bcn("New Yeller")
		else orb.BrickColor = bcn("Bright red")
		end
		
		orb.CFrame = cf; orb.Parent = cam
		game:GetService("Debris"):AddItem(orb, 1)
	end
	
	return exp
end

function gainCritical(amt)
	gaincrit:FireServer(amt, FIRE_KEY)
end

function hurt(targ, amt, hitfx, typ, scale, pierce, absolute, show)
	damage:FireServer(targ, amt, hitfx, typ, scale, pierce, absolute, show, FIRE_KEY)
end

function junc(targ, pos, f, amt, hitfx, typ, scale, pierce, absolute, show)
	junction:FireServer(targ, pos, f, amt, hitfx, typ, scale, pierce, absolute, show, FIRE_KEY)
end

function bjunc(targ, p, id, f, amt, hitfx, typ, scale, pierce, absolute, show)
	bullet:FireServer(targ, p, id, f, amt, hitfx, typ, scale, pierce, absolute, show, FIRE_KEY)
end

function applyStatus(targ, name, amt, dur, list)
	inflict:FireServer(targ, name, amt, dur, list, FIRE_KEY)
end

function buff(targ, stat, dur, op, amt, key)
	addbuff:FireServer(targ, stat, dur, op, amt, key, FIRE_KEY)
end

function debuff(targ, key)
	unbuff:FireServer(targ, key)
end

function kb(targ, o, p, a, t)
	knockback:FireServer(targ, o, p, a, t, FIRE_KEY)
end

--
function checkInput(a)
	local np = 0
	
	local keys = uis:GetKeysPressed()
	local buttons = uis:GetGamepadState(uit.Gamepad1)
	local mb = uis:GetMouseButtonsPressed()
	
	for _,a in pairs(aData) do
		if pressed[a.button] then
			np = np + 1
		end
	end
	
	if not toolMode then
		for _,k in pairs(keys) do
			if k.KeyCode == a.key then return k end
		end
	
		for _,b in pairs(buttons) do
			if b.KeyCode == a.pad and b.UserInputState == Enum.UserInputState.Begin
			then return b end
		end
	
		if np <= 0 then
			for _,m in pairs(mb) do
				if m.UserInputType == a.key then return m end
			end
		end
		
	elseif selected == a then
		for _,m in pairs(mb) do
			return m.UserInputType == uit.MouseButton1
		end
	end
	
	return pressed[a.button]
end

function canCast(k)
	local ind = {
		A = "PSV", B = "ATK",
		C = "AB1", D = "AB2",
		E = "CRT"
	}
		
	for _,v in pairs(cond) do
		if v:find("disable") or v:find("silenceall") then return false
		elseif v:find("silence") then local t = v:gsub("silence", "")
			for i = 1, t:len() do
				local l = t:sub(i, i)
				if ind[l] and ind[l] == k then 
					return false 
				end
			end
		end
	end
	
	return true
end

function canUse(k)
	local ab = aData[k]
	
	if ab then local stock = ab.stock
		if stock then return (ab.ccd <= 0 and stock > 0)
			else return ab.ccd <= 0
		end
	end
	
	return false
end

function canMove()
	if condition("disable") then 
		return false 
	end
	
	return true	
end

local function cooldown(a, n)
	local cd = ceil((n or a.maxcd) * (cdr.Value/100) * (GL_CD.Value/100))
	
	if cd > 0 then a.ccd = cd
		a.button.BackgroundTransparency = .8
		a.button.ImageTransparency = .8
	
		spawn(function()
			while a.ccd > 1 do 
				if not condition("stasis") then a.ccd = a.ccd - 1
				
					if a.ccd < 10 then a.button.CD.Text = a.ccd/10
					else a.button.CD.Text = math.ceil(a.ccd/10)
					end 
				end
				
				wait(.1)
			end 
			
			a.ccd = 0
			a.button.BackgroundTransparency = .4
			a.button.ImageTransparency = 0
			a.button.CD.Text = ""
			
			for k,v in pairs(aData) do
				if a == v and checkInput(a) then
					rawCast(k)
				end
			end
		end)
	end
end

function destock(a, n)
	local cd = ceil((n or a.maxcd) * (cdr.Value/100))
	local ccd = cd
	
	local stock = (a.maxstock and a.maxstock > 0)
	if stock then a.stock = math.max(a.stock - 1, 0)
		a.button.Stock.Text = "-"..a.stock.."-"
		
		spawn(function()
			while ccd > 1 do
				if not condition("stasis") then ccd = ccd - 1 end
				wait(.1)
			end
			
			a.stock = math.min(a.stock + 1, a.maxstock)
			a.button.Stock.Text = "-"..a.stock.."-"
		end)
	end
end

function usingEmote()
	local s = char:FindFirstChild("Emotes")
	if s and s:FindFirstChild("UsingEmote") and s.UsingEmote.Value == true then
		return true
	end
	return false
end

local function floorDist(a, b)
	local dist = math.huge
	
	if a and b then
		local fA = a.Position * v3(1, 0, 1)
		local fB = b.Position * v3(1, 0, 1)
		return (fA - fB).magnitude
	end
	
	return dist
end

local function getHPSignal(targ)
	local sf = targ:FindFirstChild("Stats")
	if sf and sf:IsA("Folder") then
		local hp = sf:FindFirstChild("HP")
		if hp then return hp.Changed end
	end
	
	return nil
end

-- armor fix
function armorfix()
	local armor = wfc(char, "Armor")
	effect("surfend", {armor = armor})
	
	local con
	
	con = armor.AncestryChanged:connect(function()
		armorfix(); con:Disconnect()
	end)
end

function checkmoved(cf1,cf2)
    if cf1 ~= cf2 then
        return true
    elseif cf1 == cf2 then
        return false
    end
end

function cast.ATK()
	local hitfx = {}
	
	local dmg = 8
	local size = v3(4.4, 4.4, 4.4)
	local speed = 65
	local lt = 7
	
	local anim = shootA
	local vol = sqr(size.X * size.Y * size.Z) * 2
	
	local function projectile(size,speed,lt,cf, owner, ignore)
		local p = game.Players:GetPlayerFromCharacter(owner)
		local key = generateKey(6)
		
		local hitdb = {}
		local con = nil
		
		local shot = newPart(cam, "Bullet", size.X, size.Y, size.Z, 1, 0, false, false)
		shot.CFrame = cf
			
		if showBoxes then shot.Material = Enum.Material.Neon
			shot.BrickColor = bcn("Really red"); shot.Transparency = .5 
		end
			
		local o = shot.CFrame.p
		local v = shot.CFrame.lookVector * speed
			
		local bv = i_n("BodyVelocity")
		bv.MaxForce = v3(math.huge, math.huge, math.huge)
		bv.Velocity = v; bv.Parent = shot
		
		pjadd:FireServer(key, o, v.unit, speed)
		owner = owner or char
			
		shot.Touched:connect(function(hit)
			local targ = hit.Parent
			local hume = targ:FindFirstChild("Humanoid")
			local ac = (p and isAlly(targ, p.TeamColor, false))
				
			local f = vol + (pms/20)
			f = math.min(f, vol * 1.5)
				
			if not (hit:IsDescendantOf(owner) or hit:IsDescendantOf(cam)) and hit ~= ignore then
				if hit.Name:lower() == "reflector" then local ref = hit:FindFirstChildWhichIsA("ObjectValue")
					if ref then ref = ref.Value; else ref = hit end
						
					local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
					shot:Destroy(); projectile(new, ref, hit)
					
				elseif hume and not hitdb[targ] and isAlive(targ) and isTangible(targ)
					and not ac then hitdb[targ] = true
						
					if checkStat(targ, "Reflect") then 
						local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
						shot:Destroy(); projectile(new, targ, hit)
							
					else local loc = hit.Parent:FindFirstChild("Torso") or hrp
						local amt = math.ceil(dmg); hitfx.critgen = {amt = math.ceil(dmg * .5)}
						hitfx.sound = {id = 160432334, v = 1, pos = loc}
						bjunc(targ, shot.CFrame.p, key, f, amt, hitfx, 3)
						
						shot:Destroy()
					end
				end
			end
		end)
			
		con = reflect.OnClientEvent:connect(function(k, ref)
			if k == key then con:disconnect()
				local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
				shot:Destroy(); projectile(new, ref)
			end
		end)
		
		shot.AncestryChanged:connect(function()
			con:disconnect(); effect("clear", key)
		end)
			
		game:GetService("Debris"):AddItem(shot, lt)
		effect("shot", {cf = shot.CFrame, size = size; col = tCol, d = v.unit, s = speed, lt = lt, key = key})
        return shot
	end
	
	hitfx.critgen = {amt = math.ceil(dmg * .5)}
	common("sound", {id = 260433768, v = .5, p = 1, pos = hrp})
	
	if prev == shootA then anim = shootB; shootA:Stop()
	else shootB:Stop()
	end
	
	prev = anim; anim:Play()
	local ok = projectile(size,speed,lt,hrp.CFrame + hrp.CFrame.lookVector * 2, char)
    local firing = true
    local oldcf
    local targ
	spawn(function()
        while firing == true do
            if checkmoved(ok.CFrame,oldcf) then
            else
                firing = false
            end
            local player = game.Players.LocalPlayer
            for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= player and v:FindFirstChild("Alive") and pcall(function() return v.Character.HumanoidRootPart end) and v:DistanceFromCharacter(ok.Position) < tonumber(75) then
                    if pcall(function() return v.Character.Part,player.Character.Part end) and v.Character.Part.Color ~= player.Character.Part.Color or not player.Character:FindFirstChild("Part") then
                        targ = v
                        break
                    end
                end
            end
            oldcf = ok.CFrame
            wait(0.1)
            if targ ~= nil then
                local a1 = ok.CFrame
                local a2 = targ.Character.HumanoidRootPart.CFrame--targ cframe goes here
                local cf = CFrame.lookAt(a1.p,a2.p)
                projectile(v3(1.5,1.5,1.5),speed*2,0.7,cf,char)
            end
        end
    end)
    spawn(function()
        wait(lt)
        firing = false
    end)
	cooldown(aData.ATK)
end

function cast.AB1()
	local hitfx = {}
	
	local dmg = 8 + surfadd
	local size = v3(5, 7.5, 0.4)
	local speed = 80
	local lt = 0.25
	
	local anim = slash
	local vol = sqr(size.X * size.Y * size.Z) * 2
	
	local function projectile(cf, owner, ignore)
		local p = game.Players:GetPlayerFromCharacter(owner)
		local key = generateKey(6)
		
		local hitdb = {}
		local con = nil
		
		local shot = newPart(cam, "Bullet", size.X, size.Y, size.Z, 1, 0, false, false)
		shot.CFrame = cf
			
		if showBoxes then shot.Material = Enum.Material.Neon
			shot.BrickColor = bcn("Really red"); shot.Transparency = .5 
		end
			
		local o = shot.CFrame.p
		local v = shot.CFrame.lookVector * speed
			
		local bv = i_n("BodyVelocity")
		bv.MaxForce = v3(math.huge, math.huge, math.huge)
		bv.Velocity = v; bv.Parent = shot
		
		pjadd:FireServer(key, o, v.unit, speed)
		owner = owner or char
			
		shot.Touched:connect(function(hit)
			if hit.Parent then
				local targ = hit.Parent
				local hume = targ:FindFirstChild("Humanoid")
				local ac = (p and isAlly(targ, p.TeamColor, false))
					
				local f = vol + (pms/20)
				f = math.min(f, vol * 1.5)
					
				if not (hit:IsDescendantOf(owner) or hit:IsDescendantOf(cam)) and hit ~= ignore then
					if hit.Name:lower() == "reflector" then local ref = hit:FindFirstChildWhichIsA("ObjectValue")
						if ref then ref = ref.Value; else ref = hit end
							
						local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
						shot:Destroy(); projectile(new, ref, hit)
						
					elseif hume and not hitdb[targ] and isAlive(targ) and isTangible(targ)
						and not ac then hitdb[targ] = true
							
						if checkStat(targ, "Reflect") then 
							local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
							shot:Destroy(); projectile(new, targ, hit)
								
						else local loc = hit.Parent:FindFirstChild("Torso") or hrp
							local amt = math.ceil(dmg); hitfx.critgen = {amt = math.ceil(dmg * .5)}
							hitfx.sound = {id = 160432334, v = 1, pos = loc}
							bjunc(targ, shot.CFrame.p, key, f, amt, hitfx, 3)
							
							shot:Destroy()
						end
					end
				end
			end
		end)
			
		con = reflect.OnClientEvent:connect(function(k, ref)
			if k == key then con:disconnect()
				local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
				shot:Destroy(); projectile(new, ref)
			end
		end)
		
		shot.AncestryChanged:connect(function()
			con:disconnect(); effect("clear", key)
		end)
			
		game:GetService("Debris"):AddItem(shot, lt)
		effect("blast", {cf = shot.CFrame, size = size; col = tCol, d = v.unit, s = speed, lt = lt, key = key})
	end
	
	hitfx.critgen = {amt = math.ceil(dmg * .5)}; anim:Play()
	common("sound", {id = 260433768, v = 1, p = 1, pos = hrp})
	
	for index = -1, 1 do
		local cframe = (hrp.CFrame * CFrame.Angles(0, (math.pi/12) * index, 0)) * CFrame.new(0, 1, -5) - hrp.CFrame.lookVector * 4.5
		projectile(cframe + cframe.lookVector, char)
	end
	
	cooldown(aData.AB1)
	anim.Stopped:wait()
end

function cast.AB2()
	local this = "AB2"
	local anim = boarding
	local anim2 = surfjump
	
	local alt = flying
	
	local ab = aData[this]
	
	local function switch(a)
		if anim ~= a then
			if anim then anim:Stop() end
			anim = a; anim:Play()
		end
	end
	
	if not flying and crit.Value > 10 and not (condition("bind") or condition("nojump")) then flying = true
		local bH = 3.75; local onjump = nil; local onclasschange
		
		armor = wfc(char, "Armor"); effect("surf", {armor = armor})
		
		onclasschange = script.AncestryChanged:connect(function()
			if flying then flying = false; onjump:disconnect(); onclasschange:disconnect()
				anim:Stop(); debuff(char, "SORCAB2") 
			end
		end)
		
		anim:Play(); wait(.3); anim:Stop()
		common("sound", {id = 260433768, v = 0.5, pos = hrp})
		
		if roll(10) then
			common("sound", {id = 335961064, v = 1, pos = hrp})
		end
		
		if canCast(this) and flying == true then switch(surfidle)
			local ignore = {char, cam}
			
			for _, p in ipairs(workspace:GetDescendants()) do
				if p:FindFirstChild("Humanoid") or p:FindFirstChild("Torso") then
					table.insert(ignore, p)
				elseif p:IsA("Part") and p.Transparency == 1 and p.CanCollide == false then
					table.insert(ignore, p)
				end
			end
			
			surfadd = 0 -- 2
			buff(char, "CritGain", math.huge, "x", 0, "SORCAB2")
			buff(char, "Speed", math.huge, "x", 1.9, "SORCAB2")
			hume.HipHeight = -2
			
			local bv = i_n("BodyVelocity", hrp)
			bv.MaxForce = v3(0, 100000, 0)
			bv.Velocity = hrp.Velocity/3
			
			onjump = uis.JumpRequest:connect(function()
				if flying then debuff(char, "SORCPSV")
					flying = false; onjump:disconnect(); onclasschange:disconnect()
					
					if crit.Value >= 25 then gainCritical(-25)
						local bonus = (hrp.Velocity * v3(1, .5, 1)).magnitude/2
						bonus = math.min(bonus, 35); hrp.Velocity = hrp.Velocity * v3(1, 0, 1) + v3(0, bonus + 55, 0)
						bv.Velocity = hrp.Velocity
					end
				end
			end)
			
			spawn(function()
				while flying and canCast(this) and crit.Value > 0 
				and not (condition("bind") or condition("nojump")) do
					
					local height = nil
					local start = hrp.Position.Y
					
					local dir = hrp.Velocity + hume.MoveDirection * hrp.Velocity.magnitude
					
					local yoffset = 3
					local rayorigin = hrp.Position + (dir / math.max(dir.magnitude, 1)) * v3(2, 0, 2) + v3(0, yoffset, 0)
					
					local gc = ray(rayorigin, v3(0, -yoffset -bH, 0))
					local hit, pos = workspace:FindPartOnRayWithIgnoreList(gc, ignore)
					
					if hit and pos then height = start - pos.Y end
					
					if height and height >= bH - .1 then bv.Velocity = v3(0, 0, 0)
					elseif height and height < bH then local perc = height/bH
					bv.Velocity = bv.Velocity * v3(1, 0.5, 1) + v3(0, 6/perc, 0) * 0.85
					else bv.Velocity = bv.Velocity * 0.98 + v3(0, -25, 0) * 0.02 
					end
					
					if bv.Velocity.Y > 50 then bv.Velocity = bv.Velocity * v3(1, 0, 1) + v3(0, 50, 0) end
					
					if hume.MoveDirection.magnitude <= 0.1 then switch(surfidle)
					elseif (-hume.MoveDirection - hrp.CFrame.lookVector).magnitude <= 0.9 then switch(surfback)
					elseif (hume.MoveDirection - hrp.CFrame.rightVector).magnitude <= 1.2 then switch(surfright)
					elseif (-hume.MoveDirection - hrp.CFrame.rightVector).magnitude <= 1.2 then switch(surfleft)
					else switch(surffront)
					end
					
					gainCritical(-1)
					wait(.05)
				end
				
				flying = false
				common("sound", {id = 260433768, v = 0.5, p = 1, pos = hrp})
				effect("surfend", {armor = armor})
		
				onjump:disconnect()
				onclasschange:disconnect()
				
				hume.HipHeight = 0
				surfadd = 0
				
				bv:Destroy(); anim:Stop()
				debuff(char, "SORCAB2")
				
				if not usedalt then cooldown(aData.AB2) end
				usedalt = false
			end)
		end
		
	elseif alt and crit.Value >= 25 then
		
		local size = v3(7, 2, 7); local jump
		local dmg = 10; local lt = 1.5
		local speed = 75; local hitfx = {}
		local vol = 1 + sqr(size.X * size.Y * size.Z) * 2
		
		local function projectile(cf, owner, ignore)
			if jump.Parent then jump:Destroy() end
			local p = game.Players:GetPlayerFromCharacter(owner)
			local key = generateKey(6)
			
			local hitdb = {}; local con = nil
			
			local board = newPart(cam, "Board", size.X, size.Y, size.Z, 1, 0, false, false)
			board.CFrame = cf
			
			if showBoxes then board.Material = Enum.Material.Neon
				board.BrickColor = bcn("Really red"); board.Transparency = .5 
			end
			
			local o = board.CFrame.p
			local v = board.CFrame.lookVector * speed
			
			local bv = i_n("BodyVelocity")
			bv.MaxForce = v3(math.huge, math.huge, math.huge)
			bv.Velocity = v; bv.Parent = board
			
			pjadd:FireServer(key, o, v.unit, speed)
			owner = owner or char
			
			board.Touched:connect(function(hit)
				local targ = hit.Parent
				local hume = targ:FindFirstChild("Humanoid")
				local ac = (p and isAlly(targ, p.TeamColor, false))
					
				local f = vol + (pms/20)
				f = math.min(f, vol * 1.5)
					
				if not (hit:IsDescendantOf(owner) or hit:IsDescendantOf(cam)) and hit ~= ignore then
					if hit.Name:lower() == "reflector" then local ref = hit:FindFirstChildWhichIsA("ObjectValue")
						if ref then ref = ref.Value; else ref = hit end
							
						local new = cfn(board.Position, board.Position + board.CFrame.lookVector * -1)
						board:Destroy(); projectile(new, ref, hit)
						
					elseif hit.CanCollide and not hume then board:Destroy()
							
					elseif hume and not hitdb[targ] and isAlive(targ) and isTangible(targ)
						and not ac then hitdb[targ] = true
							
						if checkStat(targ, "Reflect") then 
							local new = cfn(board.Position, board.Position + board.CFrame.lookVector * -1)
							board:Destroy(); projectile(new, targ, hit)
								
						else local loc = hit.Parent:FindFirstChild("Torso") or hrp
							local p = loc.Position * v3(1, 0, 1)
							
							hitfx.slow = {targ = targ, amt = 100, dur = 1.5}
							hitfx.sound = {id = 160432334, v = 1, pos = loc}
							
							bjunc(targ, board.CFrame.p, key, f, dmg, hitfx, 3)
						end
					end
				end
			end)
			
			con = reflect.OnClientEvent:connect(function(k, ref)
				if k == key then con:disconnect()
					local new = cfn(board.Position, board.Position + board.CFrame.lookVector * -1)
					board:Destroy(); projectile(new, ref)
				end
			end)
			
			board.AncestryChanged:connect(function()
				con:disconnect(); effect("clear", key)
			end)
			
			game:GetService("Debris"):AddItem(board, lt)
			effect("surfprojectile", {board = prop, cf = board.CFrame, d = v.unit, s = speed, lt = lt, key = key})
		end
		
		flying = false; usedalt = true; hume.HipHeight = 0
		
		if canCast(this) then debuff(char, "SORCPSV"); gainCritical(-25)
			local cf = (hrp.CFrame + hrp.CFrame.lookVector * 4) - v3(0, 2.5, 0)
			
			anim2:Play()
		
			jump = i_n("BodyVelocity", hrp)
			jump.MaxForce = v3(0, 100000, 0)
			jump.Velocity = hrp.Velocity/3
				
			local bonus = (hrp.Velocity * v3(1, .5, 1)).magnitude/2
			bonus = math.min(bonus, 35); hrp.Velocity = hrp.Velocity * v3(1, 0, 1) + v3(0, bonus + 55, 0)
			jump.Velocity = hrp.Velocity
		
			projectile(cf, char)
			
			debuff(char, "SORCAB2")
			cooldown(aData.AB2, 50)
		end
		
	else flying = false; wait()
	end
end

function cast.CRT()
	local hitfx = {}
	
	local dmg = 9
	local size = v3(8, 11, 0.8)
	local speed = 80
	local lt = 0.4
	
	local vol = sqr(size.X * size.Y * size.Z) * 2

	local function projectile(cf, owner, ignore)
		local p = game.Players:GetPlayerFromCharacter(owner)
		local key = generateKey(6)
		
		local con = nil; local hit = nil
		local hitdb = {}
		
		local shot = newPart(cam, "Bullet", size.X, size.Y, size.Z, 1, 0, false, false)
		shot.CFrame = cf
			
		if showBoxes then shot.Material = Enum.Material.Neon
			shot.BrickColor = bcn("Really red"); shot.Transparency = .5 
		end
			
		local o = shot.CFrame.p
		local v = (shot.CFrame.lookVector * speed) - v3(0, 4, 0)
			
		local bv = i_n("BodyVelocity")
		bv.MaxForce = v3(math.huge, math.huge, math.huge)
		bv.Velocity = v; bv.Parent = shot
		
		pjadd:FireServer(key, o, v.unit, speed)
		owner = owner or char
			
		shot.Touched:connect(function(hit)
			local targ = hit.Parent
			local hume = targ:FindFirstChild("Humanoid")
			
			local ac = (p and isAlly(targ, p.TeamColor, false))
				
			local f = vol + (pms/20)
			f = math.min(f, vol * 1.5)
				
			if not (hit:IsDescendantOf(owner) or hit:IsDescendantOf(cam)) and hit ~= ignore then
				if hit.Name:lower() == "reflector" then local ref = hit:FindFirstChildWhichIsA("ObjectValue")
					if ref then ref = ref.Value; else ref = hit end
						
					local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
					shot:Destroy(); projectile(new, ref, hit)
						
				elseif hume and not hitdb[targ] and isAlive(targ) and isTangible(targ)
					and not ac then hitdb[targ] = true
						
					if checkStat(targ, "Reflect") then 
						local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
						shot:Destroy(); projectile(new, targ, hit)
							
					else local loc = hit.Parent:FindFirstChild("Torso") or hrp
						hitfx.sound = {id = 160432334, v = 1, pos = loc}
						hitfx.disable = {targ = targ, amt = 100, dur = 2}
						bjunc(targ, shot.CFrame.p, key, f, dmg, hitfx, 3) 
					end
				end
			end
		end)
			
		con = reflect.OnClientEvent:connect(function(k, ref)
			if k == key then con:disconnect()
				local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
				shot:Destroy(); projectile(new, ref)
			end
		end)
		
		shot.AncestryChanged:connect(function()
			con:disconnect(); effect("clear", key)
		end)
			
		game:GetService("Debris"):AddItem(shot, lt)
		effect("wave", {cf = shot.CFrame, size = size; col = tCol, d = v.unit, s = speed, lt = lt, key = key})
		common("sound", {id = 260433768, v = 1, pos = shot})
	end

	if crit.Value >= 100 then gainCritical(-100)
		common("sound", {id = 163621622, pos = hrp, v = 1, s = 12})
		common("flash", {targ = char, color = tCol, t = 5, ontop = true})
		
		local count = 5; local max = 45
		local angle = (max/5)
		
		for i = 1, count do
			local cframe = hrp.CFrame * cfa(0, math.rad((-angle * 2) + (angle * (i-1))), 0)
			cframe = cframe + cframe.LookVector * 4
			projectile(cframe, char)
		end
		
		summon:Play()
		
	else common("sound", {id = 184734960, pos = plr, v = 1}, false)
	end
	
	wait(.5)
end
--

function rawCast(key)
	local a = aData[key]
	
	if a and key ~= "PSV" and not usingEmote() then
		if canUse(key) and canCast(key) then
			if a.free then 
				if not antibounce[key] then antibounce[key] = true
					cast[key](); antibounce[key] = false
				end
						
			elseif not active then active = true
				cast[key](); active = false
							
				for k,v in pairs(aData) do
					if checkInput(v) then
						rawCast(k)
					end
				end
			end
		end
	end
end

-- REMOTES
table.insert(cons, keygen.OnClientEvent:connect(function(key)
	FIRE_KEY = key
end))

table.insert(cons, updateC.OnClientEvent:connect(wideUpdate))
table.insert(cons, updateV.OnClientEvent:connect(visualUpdate))

table.insert(cons, adjustcd.OnClientEvent:connect(function(a, perc)
	if a:lower() == "all" then
		for k,v in pairs(aData) do
			v.ccd = math.max(v.ccd * perc, 0)
		end
		
		else a = aData[a]; if a then
			a.ccd = math.max(a.ccd * perc, 0)
		end
	end
end))

table.insert(cons, behavior.OnClientEvent:connect(function(c, v)
	if v then cond[#cond+1] = c; visualUpdate()
		v.AncestryChanged:connect(function()
			if not v.Parent then removeFromTable(cond, c); visualUpdate() end
		end)
	end
end))

-- INPUT
table.insert(cons, uis.InputBegan:connect(function(input, proc)
	if not dead and ready and not proc then visualUpdate()
		local k = input.KeyCode
		
		if toolMode then
			if k == kc.One then switchTo(aData.ATK)
				elseif k == kc.Two then switchTo(aData.AB1)
				elseif k == kc.Three then switchTo(aData.AB2)
				elseif k == kc.Four then switchTo(aData.CRT)
			end
		end
			
		for key,v in pairs(aData) do
			if checkInput(v) then rawCast(key) end
		end
	end
end))

for key,v in pairs(aData) do
	v.button.MouseButton1Down:connect(function()
		pressed[v.button] = true
		
		if toolMode then switchTo(v)
		else rawCast(key)
		end
	end)
	
	v.button.MouseButton1Up:connect(function()
		pressed[v.button] = false
	end)
end
-- TRIGGERS

for _,a in pairs(aData) do
	a.button.MouseEnter:connect(function()
		showData(a)
	end)
	
	a.button.MouseLeave:connect(function()
		ui_tt.Visible = false; ui_at.Visible = false
		pressed[a.button] = false
	end)
	
	a.button.SelectionGained:connect(function()
		showData(a)
	end)
	
	a.button.SelectionLost:connect(function()
		ui_tt.Visible = false
		ui_at.Visible = false
	end)
end

table.insert(cons, char.AncestryChanged:Connect(function()
	for _, con in pairs(cons) do con:Disconnect() end
end))

crit.Changed:connect(function(amt)
	critToggle(amt >= 100)
end)

hume.Died:connect(function()
	dead = true
end)

-- PING SUBROUTINE

spawn(function()
	while char.Parent and wait(1) do
		local now = tick()
		ping:FireServer(); ping.OnClientEvent:wait()
		pms = (tick()-now) * 1000
	end
end)

--


keygen:FireServer()
keygen.OnClientEvent:wait()
ready = true

cam:ClearAllChildren()
ui.Parent = plr.PlayerGui
wideUpdate(); visualUpdate()
makeIcons(); critToggle(crit.Value >= 100)
armorfix()