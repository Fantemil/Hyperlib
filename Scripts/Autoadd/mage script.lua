--mage script 1
--made by your dad
function generateKey(num)
	script = getsenv(game.Players.LocalPlayer.Backpack.Core.Client).generateKey(num)
	return script
end
local remote = game.ReplicatedStorage.Remotes.RequestKey
remote.OnClientEvent:Connect(function(v)
    keys = v
end)
remote:FireServer()
wait(1)
--variables
function wfc(p, o)
	return p[o]
end
local class = game.Players.LocalPlayer.Backpack.Core
local rs = game:GetService("ReplicatedStorage")
local remotes = wfc(rs, "Remotes")
local modules = wfc(rs, "Modules")
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
local tCol = Color3.new(1, 1, 1)
local sqr = math.sqrt
local pms = 20.0
local cfn = CFrame.new
local ray = Ray.new
print(tostring((keys)))
print("start---------------------")
--functions
function effect(name, arglist, rep)
	local func = ofx[name]
	
	if rep == nil then rep = true end
	
	if func then func(arglist)
		if rep then spoof:FireServer(name, arglist, visuals) end
	end
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


lplr = game.Players.LocalPlayer


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()



bind = "r"
mouse.KeyDown:connect(function(key)
    if key == bind then
        local balls = 25
         for i = 1, 15 do
            local origin = lplr.Character.HumanoidRootPart.CFrame.p + lplr.Character.HumanoidRootPart.CFrame.lookVector * balls
             spawn(function()
                explode(15,15,Color3.new(0, 0, 0),cfn(origin),lplr.Character);
             end)
             task.wait(0.1)
             balls = balls + 25
         end
    end
end)

bind2 = "t"

mouse.KeyDown:connect(function(key)
    if key == bind2 then
        projectile(25,v3(25, 250, 9),100,50,Color3.new(1, 1, 1),lplr.Character.HumanoidRootPart.CFrame, lplr.Character);
    end
end)

bind3 = "y"

mouse.KeyDown:connect(function(key)
    if key == bind3 then
        projectile(15,v3(250, 25, 9),100,50,Color3.new(0, 0, 0),lplr.Character.HumanoidRootPart.CFrame, lplr.Character);
    end
end)

bind4 = "g"

mouse.KeyDown:connect(function(key)
    if key == bind4 then
        projectile(50,v3(250, 250, 250),100,50,Color3.new(1, 0, 0),lplr.Character.HumanoidRootPart.CFrame, lplr.Character);
    end
end)

bind5 = "v"
mouse.KeyDown:connect(function(key)
    if key == bind5 then
        local plr = game.Players.LocalPlayer
        local mouse = plr:GetMouse()
        local hi = mouse.Hit
        explode(50,35,Color3.new(1, 0, 0),cfn(hi.p),lplr.Character);
    end
end)

bind6 = "b"
mouse.KeyDown:connect(function(key)
    if key == bind6 then
        local plr = game.Players.LocalPlayer
        local mouse = plr:GetMouse()
        local hi = mouse.Hit
        explode(15,16,Color3.new(1, 1, 0),cfn(hi.p),lplr.Character);
    end
end)

--anticheat

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
print("ok")