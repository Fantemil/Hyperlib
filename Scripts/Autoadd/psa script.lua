--priest script
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
local remote = game.ReplicatedStorage.Remotes.RequestKey
remote.OnClientEvent:Connect(function(v)
    keys = v
end)
remote:FireServer()
print("firing")
wait(1)
--variables
function wfc(p, o)
	return p[o]
end
local class = game.Players.LocalPlayer.Backpack.Core
local rs = game:GetService("ReplicatedStorage")
local remotes = wfc(rs, "Remotes")
local modules = wfc(rs, "Modules")
local rotR3 = wfc(modules, "RotatedRegion3")
local rotR3 = require(rotR3)
local pjadd = wfc(remotes, "AddProjectile")
local spoof = wfc(remotes, "EffectSpoof")
local visuals = wfc(class, "FXModule")
local bullet = wfc(remotes, "BulletJunction")
local junction = wfc(remotes, "HitJunction")
local showBoxes = false
local plr = game.Players.LocalPlayer
local char = plr.Character
local inflict = wfc(remotes, "ApplyStatus")
local hume = wfc(char, "Humanoid")
local hrp = wfc(char, "HumanoidRootPart")
--commmonn
local common = wfc(modules, "CommonEffects")
local cfx = require(common)
local ofx = require(visuals)
--stuff
local i_n = Instance.new
local bcn = BrickColor.new
local cam = workspace.CurrentCamera
local v3 = Vector3.new
local tCol = Color3.new(1, 0, 0)
local sqr = math.sqrt
local pms = 20.0
local cfn = CFrame.new
local ray = Ray.new
print("start---------------------")
--functions
function effect(name, arglist, rep)
	local func = ofx[name]
	
	if rep == nil then rep = true end
	
	if func then func(arglist)
		if rep then spoof:FireServer(name, arglist, visuals) end
	end
end
local damage = wfc(remotes, "Damage")
function hurt(targ, amt, hitfx, typ, scale, pierce, absolute, show)
	damage:FireServer(targ, amt, hitfx, typ, scale, pierce, absolute, show, keys)
end
local function newPart(p, n, x, y, z, t, r, anc, cc)
	local part = i_n("Part")
	part.Name = n; part.Size = v3(x, y, z)
	part.Transparency = t; part.Reflectance = r
	part.Anchored = anc; part.CanCollide = cc
	part.TopSurface = Enum.SurfaceType.Smooth
	part.BottomSurface = part.TopSurface
	part.Parent = p; return part
end
function isAlly(targ, color, isSelf)
	local p = game.Players:GetPlayerFromCharacter(targ)
	local tV = targ:FindFirstChild("AllyFlag")
	if isSelf == nil then isSelf = true end
	
	return (p and p.TeamColor == color and not p.Neutral)
	or (tV and tV:IsA("ObjectValue")) or (isSelf and targ == char)
end
function common(name, arglist, rep)
	local func = cfx[name]
	
	if rep == nil then rep = true end
	
	if func then func(arglist)
		if rep then spoof:FireServer(name, arglist, common) end
	end
end
function swait(n)
    if not n then game:GetService("RunService").RenderStepped:wait() else local t = time()
        repeat game:GetService("RunService").RenderStepped:wait() until time()-t >= n/60
    end
end
function isAlive(targ)
	local p = game.Players:GetPlayerFromCharacter(targ)
	
	if p then local aV = p:FindFirstChildWhichIsA("BoolValue")
	if aV and aV.Name:lower()=="alive" then return aV.Value end
	end
	
	return true
end
function checkStat(char, stat)
	local sf = char:FindFirstChild("Stats")
	if sf and sf:IsA("Folder") then
		local val = sf:FindFirstChild(stat)
		if val then return val.Value end
	end

	return nil
end
function roll(num)
	return math.random(1, 100) < num
end
function bjunc(targ, p, id, f, amt, hitfx, typ, scale, pierce, absolute, show)
	bullet:FireServer(targ, p, id, f, amt, hitfx, typ, scale, pierce, absolute, show, tostring(keys))
end
function junc(targ, pos, f, amt, hitfx, typ, scale, pierce, absolute, show)
    
	junction:FireServer(targ, pos, f, amt, hitfx, typ, scale, pierce, absolute, show, tostring(keys))
end
function findHuman(part)
	local hume = part.Parent:FindFirstChildWhichIsA("Humanoid")
	local hp = checkStat(part.Parent, "HP")
	
	if hume and hp and hp > 0 then return part.Parent end 
	return nil
end
function findInTable(list, obj)
	for _,ind in pairs(list) do
		if obj == ind then return true end
	end
	
	return false
end
function isTangible(targ)
	local v = targ:FindFirstChildWhichIsA("ObjectValue")
	if v and v.Name:lower()=="notarget" then 
		return false
	end
	
	return true
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

function applyStatus(targ, name, amt, dur, list)
	inflict:FireServer(targ, name, amt, dur, list, tostring(keys))
    --applyStatus(targ, "Haste", 100, 1, {fac = 1.4}
end
local function newAnim(id, n)
	local new = i_n("Animation", class)
	new.Name = n or "CoreAnim"
	
	new.AnimationId = "rbxassetid://"..id
	new = hume:LoadAnimation(new)
	
	return new
end
castB = newAnim(4219806578, "castB")


function shot2(cf,size,col,d,s,lt,key)
	local cf = cf or cfn()
	local size = size or v3(.5, .5, 2)
	
	local bullet = newPart(cam, key or "Shot", size.X, size.Y, size.Z, 0, 0, false, false)
	bullet.Material = Enum.Material.Neon; bullet.Color = col or newC3(255, 255, 255)
	bullet.CFrame = cf
	
	bullet.RotVelocity = cf.lookVector * -50
	
	local bv = i_n("BodyVelocity", bullet)
	bv.MaxForce = v3(math.huge, math.huge, math.huge)
	bv.Velocity = (d or cf.lookVector) * (s or 10)
	
	local li = i_n("PointLight", bullet)
	li.Color = col or newC3(255, 255, 255)
	li.Brightness = 2; li.Range = 6
	
	game:GetService("Debris"):AddItem(bullet, lt or 1)
	
	spawn(function()
		local oldpos = bullet.Position - cf.lookVector * (size.Z + 5)
		while bullet.Parent do swait()
			local dist = (oldpos - bullet.Position).magnitude
			local trail = newPart(cam, "Trail", size.X, size.Y, dist, 0, 0, true, false)
			trail.Material = Enum.Material.Neon; trail.Color = col or newC3(255, 255, 255)
			trail.CFrame = cfn((oldpos + bullet.Position)/2, bullet.Position); game.Debris:AddItem(trail, 1)
			local m = i_n("BlockMesh", trail)
			spawn(function()
				swait(30)
				for index = 1, 15 do swait(2)
					trail.Transparency = trail.Transparency + 1/15
					m.Scale = m.Scale * v3(0.9, 0.9, 1)
				end
			end) oldpos = bullet.Position
		end
	end)
end


local hitfx = {}

local size = v3(25, 250, 9)
local vol = 6 + sqr(size.X * size.Y * size.Z)
local speed = 100

local dmg = 50
local min = 2
local mdist = 50
local lt = 20

local anim = castC
local hit = nil

local function projectile(dmg,size,speed,duration,color,cf, owner, ignore)
	local p = game.Players:GetPlayerFromCharacter(owner)
	local key = generateKey(6)
	
	local hitdb = {}
	local con = nil
	
	local shot = newPart(cam, "Supernova", size.X, size.Y, size.Z, 1, 0, false, false)
	shot.CFrame = cf
		
	if showBoxes then shot.Material = Enum.Material.Neon
		shot.BrickColor = bcn("Really red"); shot.Transparency = .5 
	end
		
	local o = shot.CFrame.p
	local v = (shot.CFrame.lookVector * speed)
		
	local bv = i_n("BodyVelocity")
	bv.MaxForce = v3(math.huge, math.huge, math.huge)
	bv.Velocity = v; bv.Parent = shot
	
	pjadd:FireServer(key, o, v.unit, speed)
	owner = owner or char
		
	shot.Touched:connect(function(hit)
		local targ = hit.Parent
		local hume = targ:FindFirstChild("Humanoid")
		
		local ac = (p and isAlly(targ, p.TeamColor, false))
			
		local f = 2 + vol + (pms/20)
		f = math.min(f, vol * 1.5)
			
		if not (hit:IsDescendantOf(owner) or hit:IsDescendantOf(cam)) and hit ~= ignore then
			if hit.Name:lower() == "reflector" then local ref = hit:FindFirstChildWhichIsA("ObjectValue")
				if ref then ref = ref.Value; else ref = hit end
					
				local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
				shot:Destroy(); projectile(new, ref, hit)
					
			elseif hume and not hitdb[targ] and isAlive(targ) and not ac then hitdb[targ] = true
				if checkStat(targ, "Reflect") then 
					local new = cfn(shot.Position, shot.Position + shot.CFrame.lookVector * -1)
					shot:Destroy(); projectile(new, targ, hit)
						
				else local loc = hit.Parent:FindFirstChild("Torso") or hrp
					local amt = math.clamp(dmg * ((cf.p - shot.Position).magnitude/mdist), min, dmg)
					hitfx.sound = {id = 160432334, v = 1, pos = loc}; hitfx.killcrit = {targ = targ, amt = 50}
					hitfx.disintegrate = {targ = targ, v = shot.CFrame.lookVector * 3 + v3(0, 3, 0)}
					bjunc(targ, shot.CFrame.p, key, f, amt, hitfx, 3)
				end
			end
		end
	end)
	
	spawn(function()
		while shot.Parent ~= nil do
			common("sound", {id = 444667824, pos = shot.Position})
			effect("blast", {size = v3(13, 5, 13), cf = shot.CFrame + v3(0, -size.Y/2 + 2.5, 0), col = color})
			swait(5)
		end
	end)
	
	game:GetService("Debris"):AddItem(shot, lt)
	common("sound", {id = 260433721, v = 1, p = .8, pos = hrp})
	effect("supernova", {cf = shot.CFrame, size = size; col = color, d = v.unit, s = speed, lt = lt, key = key})
	
	if roll(5) then 
		common("sound", {id = 135581154, v = 1, s = 15, pos = shot})
	end
end

--ab2 setttings

local bCol = Color3.new(0, 0, 0)

local function explode(radius,dmg,color,cf,owner)
    local hitdb = {}
    
    local f = 4 + radius + (pms/20)
    f = math.min(f, 2 + radius * 1.5)
    
    for _,targ in pairs(magBox(cf, radius, 3)) do
        if targ and not hitdb[targ] then hitdb[targ] = true
            local ac = isAlly(targ, plr.TeamColor, true)
            local loc = targ:FindFirstChild("Torso") or hrp
            
            if ac then applyStatus(targ, "Haste", 100, 1, {fac = 1.4})
            else hitfx.sound = {id = 160432334, v = 1, pos = loc}
                common("sound", {id = 260433655, pos = loc})
                hitfx.disintegrate = {targ = targ, v = cfn(cf.p, loc.Position).lookVector * 3 + v3(0, 3, 0)}
                junc(targ, cf.p, f, dmg, hitfx, 2)
            end
        end
    end
    
    effect("lightningboom", {cf = cf, size = v3(radius * 2, radius * 2, radius * 2), col = color})
    common("sound", {id = 131300621, v = 1, s = 15, pos = cf.p})
    common("sound", {id = 821439273, v = 1, s = 15, pos = cf.p})
    common("sound", {id = 2648563122, v = 1, s = 18, pos = cf.p})
end

local function bigLaser(pos,rad,dmg)
    local cf = cfn(pos)
    local f = rad + (pms/20); f = math.min(f, rad * 1.2)
    
    common("sound", {id = 1202657035, pos = pos, v = 1, s = 30})
    common("sound", {id = 255679373, pos = pos, v = 1, s = 30})
    
    effect("laser3", {pos = pos, col = tCol, len = 100, rate = v3(4, 4, 4)})
    effect("boom", {cf = cf, col = tCol, size = v3(rad*2, rad*2, rad*2), rate = v3(1, 1, 1)})
    
    for _,targ in pairs(magBox(cf, rad, 1)) do
        local loc = targ:FindFirstChild("Torso") or hrp
        
        if loc then 
            hitfx.shock = {targ = targ, amt = 100, dur = 1}
            hitfx.sound = {id = 160432334, v = 1, pos = loc}
            hitfx.disintegrate = {targ = targ, v = cfn(pos, loc.Position).lookVector * 3 }
            junc(targ, cf.p, f, dmg, hitfx, 2)
        end
    end
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
function checkState(char, name)
	local hume = char:FindFirstChild("Humanoid")
	if hume then local v = hume:FindFirstChild(name)
		if v and v:IsA("NumberValue") then
			return v
		end
	end
	
	return nil
end
local confirm = wfc(remotes, "ConfirmPosition")
function confirmPosition(targ, pos, f)
	return confirm:InvokeServer(targ, pos, f)
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



function lasers(cf,dmg,rad)
        local offset = cfn(0, 0, 0)
        local len = 1000
        local hitfx = {}; local hitdb = {}
        local c = cfn()
        -- local cf = hrp.CFrame * offset
        local ignore = {char, cam}
        for _,s in pairs(getArmor()) do ignore[#ignore+1] = s end
        
        repeat local legal = false
            local wr = ray(cf.p, cf.lookVector * len)
            local hit, pos = workspace:FindPartOnRayWithIgnoreList(wr, ignore)
            c = cfn(pos, pos + cf.lookVector)
            
            local targ = nil
            local hume = nil
        
            if hit then targ = hit.Parent
                hume = targ:FindFirstChild("Humanoid")
                or targ.Parent:FindFirstChild("Humanoid")
            end
            
            if targ and checkState(targ, "Evasion") then table.insert(ignore, targ)
            else legal = (hume and confirmPosition(hume.Parent, pos, 8)) or (hit and not hume) or not hit
            end
            
        until legal or not canCast(this)
                
        local f = 2 + rad + (pms/20)
        f = math.min(f, rad * 1.2)
                
        effect("boom2", {cf = c, col = tCol, col2 = sCol, size = v3(rad*2, rad*2, rad*2), rate = v3(.5, .5, .5)})
        common("sound", {id = 255679373, v = 1, p = .8, s = 15, pos = c.p})
        len = (c.p - cf.p).magnitude
                
        local scf = cf + cf.lookVector * (len/2 - rad/2)
                
        local size = v3(3, 3, len - rad)
        local f2 = 4 + (pms/20)
        
        for _,targ in pairs(magBox(c, rad, 1)) do
            if targ and not hitdb[targ] then hitdb[targ] = true
                local loc = targ:FindFirstChild("Torso") or hrp
                hitfx.sound = {id = 160432334, v = 1, pos = loc}
                hitfx.disintegrate = {targ = targ, v = hrp.CFrame.lookVector * 3 + v3(0,3,0)}
                junc(targ, c.p, f, dmg, hitfx, 2)
            end
        end
                
        for _,targ in pairs(hitBox(scf, size, 1, 200)) do
            local loc = targ:FindFirstChild("Torso") or hrp
            if loc and not hitdb[targ] then hitdb[targ] = true
                hitfx.sound = {id = 160432334, v = 1, pos = loc}
                hitfx.disintegrate = {targ = targ, v = hrp.CFrame.lookVector + v3(0,10,0)}
                junc(targ, loc.Position, f2, ceil(dmg/2), hitfx, 2)
            end
        end
                
        common("sound", {id = 1231332924, pos = hrp, v = 1, s = 18})
        local tcol = Color3.new(0,0,0)
        local scol = Color3.new(1,1,1)
        effect("laser2", {len = len, cf = cf, col = tCol, col2 = sCol, time = .6, owner = char})
end

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

local anim = scope
local size = v3(.5, .5, 6)
local speed = 450

local vol = 5 + sqr(size.X * size.Y * size.Z) * 3

function smite(cf1,dmg1,rad1,dur1)
	
	local hitfx = {}
	
	local badstuff = {
		"Bleed", "Burning", "Curse", "Break", "Slow", "Dance",
		"Stun", "Shock", "Stagger", "Cripple", "Bind", "Sleep",
		"Freeze", "Stop", "Disable"
	}
	
	local dmg = dmg1; local heal = 10
	local rad = rad1; local size = v3(rad, 70, rad)
	local v = sqr(size.X * size.Y * size.Z)
	
	local anim = smite
	
	local hit = nil
	local connect = false
	
	hitfx.critgen = {amt = math.ceil(dmg * .5)}
	
	-- if not condition("bind") then
	-- 	buff(char, "Speed", 2, "x", 1.25, "NECAB2")
	-- end
	
	common("sound", {id = 137463716, v = .4, p = 1.1, pos = workspace})
	
		local cf = cfn(cf1)
		
		local f = v/10 + (pms/20)
		f = math.min(f, v * 1.5)
		
		effect("circle", {cf = cf - v3(0, 2.5, 0), rad = rad, col = tCol})
		effect("column", {cf = cf - v3(0, 2.5, 0), rad = rad, height = size.Y, col = tCol})
		
		common("sound", {id = 331888892, v = 1, s = 15, pos = workspace})
		common("sound", {id = 168586586, v = 1, s = 15, pos = workspace})
		effect("healfield", {cf = cf, size = size, lt = 3, col = tCol})
		for _,targ in pairs(hitBox(cf, size, 3, 200)) do
			if targ ~= char then local ac = isAlly(targ, plr.TeamColor)
				local loc = targ:FindFirstChild("HumanoidRootPart") or hrp
				
				if ac then junc(targ, cf.p, f, -heal, nil, 2)
					
					for _,n in pairs(badstuff) do
						if checkState(targ, n) then
							clearStatus(targ, n)
						end
					end
					
					applyStatus(targ, "Favor", 100, 5, {fac = 1.5})
					common("sound", {id = 260421433, v = 1, pos = workspace})
					gainCritical(heal)
					
				else hitfx.sound = {id = 160432334, v = 1, pos = loc}
                dmg1 = tonumber(dmg)
                    hurt(targ, dmg1, nil, 0, false, true, true)
                    --print("targ",targ,"dmg",dmg)
                    -- hurt(targ,dmg)
					-- junc(targ, cf.p, f, dmg, hitfx, 2)
				end
				
				connect = true
			end
		end
		
		if connect then
			applyStatus(char, "Favor", 100, 5, {fac = 1.5})
		end


end



local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local plr = game:GetService("Players").LocalPlayer
local cclosure = syn_newcclosure or newcclosure
local oldNamecall
oldNamecall =
    hookmetamethod(
    game,
    "__namecall",
    cclosure(
        function(self, ...)
            local NamecallMethod = getnamecallmethod()
            local args = {...}
            if NamecallMethod:lower() == "kick" and not checkcaller() then     
                if #args > 1 then
                    return oldNamecall(self, ...)
                end
                if self ~= plr then
                    return oldNamecall(self, ...)
                end
                return
            end
            return oldNamecall(self, ...)   
        end
    )
)

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

-- local b = snipe(0.1,hrp.CFrame,plr.Character)
-- wait(0.1)
-- print(b1)
-- snipe(0.1,CFrame.lookAt(b1.CFrame.p,hrp.CFrame.p),plr.Character)
-- local num = 1
-- for i = 1, 10 do
--     i = tostring(i)
--     local i = snipe(0.1,hrp.CFrame,plr.Character)
--     wait(0.1)
--     print(b1)
--     local b = tostring(num)
--     snipe(0.1,CFrame.lookAt(i.CFrame.p,hrp.CFrame.p),plr.Character)
--     num = num + 1
-- end
-- CFrame.Angles(math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)), 0)




local function getclosest(cf)
    local Closest = nil
    local ClosestNum = 50
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            if tonumber((cf - v.Character.HumanoidRootPart.Position).magnitude) < tonumber(ClosestNum) then
                Closest = tostring(v)
                Kills = v
            end
        end
    end
    return Closest
end
-- cf = char.HumanoidRootPart.CFrame
-- local size = v3(50, 4, 50)
-- effect("healfield", {cf = cf, size = size, lt = 5, col = tCol})

bind2 = "t"
mouse.KeyDown:connect(function(key)
    if key == bind2 then
        local plr = game.Players.LocalPlayer
        local mouse = plr:GetMouse()
        local hi = mouse.Hit
        local rad = 150
        size = v3(rad, 0, rad)
        local pcf = mouse.hit
		local c2 = CFrame.new(pcf.p)
        effect("healfield", {cf = c2, size = size, lt = 3, col = tCol})
        wait(3)
        local m = pcf.p
        smite(m,40,rad,3)
    end
end)