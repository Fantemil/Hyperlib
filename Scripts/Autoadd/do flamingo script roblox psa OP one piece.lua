--join discord if u want for future updates or votes  https://discord.gg/k73Tpsbr 
--made by your dad and me

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

local hst = Enum.HumanoidStateType
local uit = Enum.UserInputType
local kc = Enum.KeyCode

--
local cs = game:GetService("CollectionService")
local uis = game:GetService("UserInputService")
local rs = game:GetService("ReplicatedStorage")
local ps = game:GetService("PhysicsService")

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
local damage = wfc(remotes, "Damage")
local junction = wfc(remotes, "HitJunction")
local bullet = wfc(remotes, "BulletJunction")
local pjadd = wfc(remotes, "AddProjectile")
local reflect = wfc(remotes, "ReflectProjectile")
local knockback = wfc(remotes, "Knockback")
local dpopup = wfc(remotes, "DmgPopup")
local cleanse = wfc(remotes, "ClearState")

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
local shootA = newAnim(4219907690, "ShootA")
local shootB = newAnim(4576172648, "ShootB")

local scope = newAnim(4576153220, "Scope")
local throw = newAnim(4219900044, "Throw")

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
		tooltip = "i forgot to make a psv :skull:",
		maxcd = 0,
		ccd = 0,
	},
	ATK = {
		button = wfc(ui_m, "ATK"),
		tooltip = "[ATK]: Pentachromatic strings (0.5s) - slash forward using 5 strings.",
		altip = "ITS NOT THE FUFCKING GAY FLAG ITS PENTACHROMATIC STRINGS!!!",
		maxcd = 6,
		ccd = 0,
		key = uit.MouseButton1,
		pad = kc.ButtonR2,
		free = false
	},
	AB1 = {
		button = wfc(ui_m, "AB1"),
		tooltip = "[AB1]: Overheat (2s) - shoot forward with a burning string.",
		maxcd = 20,
		ccd = 0,
		key = kc.Q,
		pad = kc.ButtonX,
		free = false
	},
	AB2 = {
		button = wfc(ui_m, "AB2"),
		tooltip = "[AB2]: Fallbright (2s) - attack an area with strings coming from the sky.",
		maxcd = 20,
		ccd = 0,
		key = kc.E,
		pad = kc.ButtonY,
		free = false
	},
	CRT = {
		button = wfc(ui_m, "CRT"),
		tooltip = "[CRT]: string barrage - self explanatory.",
		altip = "i got lazy with this one",
		maxcd = 0,
		ccd = 0,
		key = kc.F,
		pad = kc.ButtonB,
		free = false
	},
}

local sData = {
	{icon = 638325684, col = newC3(150, 0, 0), tooltip = "Break - Target receives 50% more direct damage."},
	{icon = 4496046038, col = newC3(130, 130, 130), tooltip = "Blind - Target's sight radius is reduced to 40 studs."}
}

local padImages = {
	ButtonA = 3191469144,
	ButtonB = 3191469445,
	ButtonX = 3191469669,
	ButtonY = 3191469881,
--
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
local fsboost = 20
local snipe = false
local aim = false
local chain = false

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

local function clearStatus(targ, name)
	cleanse:FireServer(targ, name)
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

function popup(pos, text, col1, col2, scale, t, typ)
	dpopup:FireServer(pos, text, col1, col2, scale, t, typ)
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
function confirmPosition(targ, pos, f)
	return confirm:InvokeServer(targ, pos, f)
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
	
		box.Parent = workspace.CurrentCamera
		game:GetService("Debris"):AddItem(box, 1)
	end
	
	local region = rotR3.new(cf, size)
	local parts = region:cast(ignore, maxParts or 100)
	targets = filterTargets(parts, field)
	
	return targets
end

local function magBox(cf, size, field)
	local targets = {}; field = field or 1
	
	local orb = newPart(nil, "Orb", size*2, size*2, size*2, 1, 0, true, false)
	orb.TopSurface = Enum.SurfaceType.Smooth; orb.BottomSurface = orb.TopSurface
	orb.Material = Enum.Material.Neon; orb.CFrame = cf; orb.Parent = cam
	
	orb.Touched:Connect(function()
		return
	end)
	
	game:GetService("Debris"):AddItem(orb, 1)
	
	if showBoxes then
		local m = i_n("SpecialMesh", orb)
		m.MeshType = Enum.MeshType.Sphere
		
		if field == 2 then orb.BrickColor = bcn("Bright blue")
		elseif field > 2 then orb.BrickColor = bcn("New Yeller")
		else orb.BrickColor = bcn("Bright red")
		end
		
		orb.Transparency = .6
	end
	
	targets = filterTargets(orb:GetTouchingParts(), field)
	
	return targets
end

--
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

--
function first_strike(amt, targ)
	local php = checkStat(char, "HP")
	local pmhp = checkStat(char, "MaxHP")
	if targ and php >= pmhp * 0.75 and not targ:FindFirstChild("FSDebounce") then
		local hp = checkStat(targ, "HP")
		local mhp = checkStat(targ, "MaxHP")
		local sh = checkStat(targ, "Shield")
		local nv = amt + fsboost
		
		if sh < nv then local tag = i_n("ObjectValue", targ)
			tag.Name = "FSDebounce"; game.Debris:AddItem(tag, math.min(pms + .5, 2)) end
		
		if hp and mhp and hp >= mhp then return nv
			else return amt end 
	else return amt end 
end


local function snipe(lt,cf, owner, dmg,col1,size)
    local hitfx = {}
    local size 
    local speed = 300
    if size ~= nil then
        size = size
    elseif size == nil then
        size = v3(.5, .5, 6)
    end
    local vol = 5 + sqr(size.X * size.Y * size.Z) * 3
    local p = game.Players:GetPlayerFromCharacter(owner)
    local key = generateKey(6)
        
    local hitdb = {}
    local con = nil
        
    amt = tonumber(dmg)
    -- local function newPart(p, n, x, y, z, t, r, anc, cc)
    --     local part = i_n("Part")
    --     part.Name = n; part.Size = v3(x, y, z)
    --     part.Transparency = t; part.Reflectance = r
    --     part.Anchored = anc; part.CanCollide = cc
    --     part.TopSurface = Enum.SurfaceType.Smooth
    --     part.BottomSurface = part.TopSurface
    --     part.Parent = p; return part
    -- end

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
    
    -----------

    owner = owner or char
    
    local hashit = false
            
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
                    --first_strike(math.clamp(ceil(checkStat(targ, "HP") * 0.8), 50, 500), targ)
                    local p = loc.Position * v3(1, 0, 1)
                    hitfx.deshield = {targ = targ}
                    hitfx.sound = {id = 296102734, v = 2, pos = loc}
                    if hit.Name == "Head" then hitfx.decap = {targ = targ} end
                    
                    if hashit and checkStat(targ, "HP") - amt <= 0 then
                        common("sound", {id = 136597504, pos = hrp, v = 1})
                    end if checkStat(targ, "HP") - amt <= 0 then hashit = true end
                    
                    bjunc(targ, shot.CFrame.p, key, f, amt, hitfx, 3, true, true)
                end
            end
        end
    end)
            
    game:GetService("Debris"):AddItem(shot, lt)
    effect("shot2", {cf = shot.CFrame, size = size; col = col1, d = v.unit, s = speed, lt = lt, key = key})
    return shot
end
local function fallbright(lt,cf, owner, dmg,col1,size)
    local hitfx = {}
    local size 
    local speed = 500
    if size ~= nil then
        size = size
    elseif size == nil then
        size = v3(.5, .5, 6)
    end
    local vol = 5 + sqr(size.X * size.Y * size.Z) * 3
    local p = game.Players:GetPlayerFromCharacter(owner)
    local key = generateKey(6)
        
    local hitdb = {}
    local con = nil
        
    amt = tonumber(dmg)
    -- local function newPart(p, n, x, y, z, t, r, anc, cc)
    --     local part = i_n("Part")
    --     part.Name = n; part.Size = v3(x, y, z)
    --     part.Transparency = t; part.Reflectance = r
    --     part.Anchored = anc; part.CanCollide = cc
    --     part.TopSurface = Enum.SurfaceType.Smooth
    --     part.BottomSurface = part.TopSurface
    --     part.Parent = p; return part
    -- end

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
    
    -----------

    owner = owner or char
    
    local hashit = false
            
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
                    --first_strike(math.clamp(ceil(checkStat(targ, "HP") * 0.8), 50, 500), targ)
                    local p = loc.Position * v3(1, 0, 1)
                    hitfx.deshield = {targ = targ}
                    hitfx.sound = {id = 296102734, v = 2, pos = loc}
                    if hit.Name == "Head" then hitfx.decap = {targ = targ} end
                    
                    if hashit and checkStat(targ, "HP") - amt <= 0 then
                        common("sound", {id = 136597504, pos = hrp, v = 1})
                    end if checkStat(targ, "HP") - amt <= 0 then hashit = true end
                    
                    bjunc(targ, shot.CFrame.p, key, f, amt, hitfx, 3, true, true)
                end
            end
        end
    end)
            
    game:GetService("Debris"):AddItem(shot, lt)
    effect("shot2", {cf = shot.CFrame, size = size; col = col1, d = v.unit, s = speed, lt = lt, key = key})
    return shot
end
local orange = Color3.fromRGB(219, 70, 44)
local function overheat(lt,cf, owner, dmg,col1)
    local hitfx = {}
    local speed = 500

    local size = v3(2, 2, 6)
    local vol = 5 + sqr(size.X * size.Y * size.Z) * 3
    local p = game.Players:GetPlayerFromCharacter(owner)
    local key = generateKey(6)
        
    local hitdb = {}
    local con = nil
        
    amt = tonumber(dmg)
    -- local function newPart(p, n, x, y, z, t, r, anc, cc)
    --     local part = i_n("Part")
    --     part.Name = n; part.Size = v3(x, y, z)
    --     part.Transparency = t; part.Reflectance = r
    --     part.Anchored = anc; part.CanCollide = cc
    --     part.TopSurface = Enum.SurfaceType.Smooth
    --     part.BottomSurface = part.TopSurface
    --     part.Parent = p; return part
    -- end

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
    
    -----------

    owner = owner or char
    
    local hashit = false
            
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
                    --first_strike(math.clamp(ceil(checkStat(targ, "HP") * 0.8), 50, 500), targ)
                    local p = loc.Position * v3(1, 0, 1)
                    hitfx.deshield = {targ = targ}
                    hitfx.sound = {id = 296102734, v = 2, pos = loc}
                    if hit.Name == "Head" then hitfx.decap = {targ = targ} end
                    
                    if hashit and checkStat(targ, "HP") - amt <= 0 then
                        common("sound", {id = 136597504, pos = hrp, v = 1})
                    end if checkStat(targ, "HP") - amt <= 0 then hashit = true end
                    
                    bjunc(targ, shot.CFrame.p, key, f, amt, hitfx, 3, true, true)
                end
            end
        end
    end)
            
    game:GetService("Debris"):AddItem(shot, lt)

    effect("shot2", {cf = shot.CFrame, size = size; col = orange, d = v.unit, s = speed, lt = lt, key = key})
    return shot
end

-- local attack1 = newAnim(4219920674, "attack1")
-- local attack2 = newAnim(4219918376, "attack2")
local attack1 = newAnim(4392502574, "slashA")
local attack2 = newAnim(4392547161, "slashB")
local twin = newAnim(4220026917, "Twinfire")
local shoot = newAnim(4219884864, "Shoot")
local smite = newAnim(4493014765, "Smite")
local atkmode = 1
function cast.ATK()
    if atkmode == 1 then
        local anim = attack1
        local height = -2
        local color4
        anim:Play();
        for i = 1, 5 do
            if i == 1 then
                color4 = Color3.new(237, 62, 114)
            elseif i == 2 then
                color4 = Color3.new(221, 227, 52)
            elseif i == 3 then
                color4 = Color3.new(89, 224, 52)
            elseif i == 4 then
                color4 = Color3.new(60, 232, 215)
            else
                color4 = Color3.new(232, 60, 232)
            end
            snipe(0.05,hrp.CFrame * cfn(15,height,-8) * cfa(0, math.pi/2, 0),plr.Character,10,color4,nil)
            height = height + 1
        end
        atkmode = 2
    elseif atkmode == 2 then
        local anim = attack2
        local height = -2
        local color2
        anim:Play();
        for i = 1, 5 do
            if i == 1 then
                color2 = Color3.new(237, 62, 114)
            elseif i == 2 then
                color2 = Color3.new(221, 227, 52)
            elseif i == 3 then
                color2 = Color3.new(89, 224, 52)
            elseif i == 4 then
                color2 = Color3.new(60, 232, 215)
            else
                color2 = Color3.new(232, 60, 232)
            end
            snipe(0.05,hrp.CFrame * cfn(-15,height,-8) * cfa(0, math.pi/-2, 0),plr.Character,10,color2,nil)
            height = height + 1
        end
        atkmode = 1
    end
	cooldown(aData.ATK, 5)
end

function cast.AB1()
    local anim = shoot
    local size = v3(2, 2, 6)
	local ccd = aData.AB1.maxcd
	local WHYWWONTTHISFFUCKINGCHANGE = Color3.new(219, 70, 44)
    common("sound", {id = 163621622, pos = hrp, v = 1, s = 12})
	common("flash", {targ = char, color = tCol, t = 5, ontop = true})
    buff(char, "Speed", math.huge, "x", 0, "SNIPE2")
	buff(char, "JumpHeight", math.huge, "x", 0, "SNIPE2")
    anim:Play();
    wait(0.5)
    local WHYWWONTTHISFFUCKINGCHANGE = Color3.new(219, 70, 44)
	overheat(1,hrp.CFrame,plr.Character,25,WHYWWONTTHISFFUCKINGCHANGE,size)
    debuff(char, "SNIPE2")
	cooldown(aData.AB1, ccd)
end

function cast.AB2()
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()

    local anim = smite
    smite:Play();
    hit = anim:GetMarkerReachedSignal("Hit"):connect(function()
        for i = 1, 12 do
            local cf = mouse.hit.p
            local a1 = cfn(cf) * CFrame.new(math.random(-5,5),150,math.random(-5,5))
            local a2 = cfn(cf) * CFrame.new(math.random(-5,5),0,math.random(-5,5))
            local a3 = CFrame.lookAt(a1.p,a2.p)
            fallbright(0.5,a3,plr.Character,10,nil,nil)
        end
        hit:disconnect()
    end)
    cooldown(aData.AB2)
end

function cast.CRT()
    local anim = twin
	if crit.Value >= 100 then
		gainCritical(-100) 
		for i = 1, 25 do
            anim:Play();
            local a1 = hrp.CFrame * CFrame.new(math.random(-10,10),-2,math.random(-5,5))
            local a2 = hrp.CFrame * CFrame.new(0,5,-100)
            local a3 = CFrame.lookAt(a1.p,a2.p)
            fallbright(0.5,a3,plr.Character,10,nil,nil)
            task.wait(0.1)
        end
	else if not aim then common("sound", {id = 184734960, pos = plr, v = 1}, false) end
		wait(.5)
	end
end
--

function rawCast(key)
	local a = aData[key]
	
	if a and key ~= "PSV" then
		if canUse(key) and canCast(key) then
			if a.free then 
				if not antibounce[key] then antibounce[key] = true
					cast[key](); antibounce[key] = false
				end
				
			elseif (key == "ATK" or key == "AB2") and snipe then chain = true; cast[key]()
				chain = false; active = false
						
			elseif not active then active = true
				cast[key](); if not chain then active = false end
							
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
-- local old = plr.PlayerGui:FindFirstChild("UI")
-- if old then old:Destroy()
-- 	for _,v in pairs(hume:GetPlayingAnimationTracks()) do 
-- 		if not v.Animation.Parent:IsDescendantOf(char) then v:Stop() end
-- 	end
-- end

keygen:FireServer()
keygen.OnClientEvent:wait()
ready = true

cam:ClearAllChildren()
ui.Parent = plr.PlayerGui
wideUpdate(); visualUpdate()
makeIcons(); critToggle(crit.Value >= 100)

--
rkey = generateKey(6)