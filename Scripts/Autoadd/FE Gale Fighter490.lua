getgenv().GelatekReanimateConfig = {
    ["AnimationsDisabled"] = false,
    ["R15ToR6"] = true,
    ["PermanentDeath"] = true,
    ["TorsoFling"] = false,
    ["BulletEnabled"] = true,
    ["LoadLibrary"] = false,
    ["NewVelocityMethod"] = false,
    ["DontBreakHairWelds"] = false,
    ["TeleportBackWhenVoided"] = false,
    ["MoreAccurateOffsets"] = false,
    ["DetailedCredits"] = false,
    ["Headless"] = false,
    ["BulletConfig"] = {
        ["RunAfterReanimate"] = true,
        ["LockBulletOnTorso"] = false,
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/StrokeThePea/GelatekReanimate/main/Main.lua"))()
wait(8)
getgenv().LoadLibrary = function(lib) return loadstring(game:HttpGet("https://raw.githubusercontent.com/Roblox/Core-Scripts/master/CoreScriptsRoot/Libraries/" .. lib .. ".lua"))() end
--[[ Name : Gale Fighter ]]--
-------------------------------------------------------
--A Collaboration Between makhail07 and KillerDarkness0105

--Base Animaion by makhail07, attacks by KillerDarkness0105
-------------------------------------------------------


local FavIDs = {
	340106355, --Nefl Crystals
	927529620, --Dimension
	876981900, --Fantasy
	398987889, --Ordinary Days
	1117396305, --Oh wait, it's you.
	885996042, --Action Winter Journey
	919231299, --Sprawling Idiot Effigy
	743466274, --Good Day Sunshine
	727411183, --Knife Fight
	1402748531, --The Earth Is Counting On You!
	595230126 --Robot Language
	}



--The reality of my life isn't real but a Universe -makhail07
wait(0.2)
local plr = game:service'Players'.LocalPlayer
print('Local User is '..plr.Name)
print('Gale Fighter Loaded')
print('The Fighter that is as fast as wind, a true Fighter')
local char = plr.Character
local hum = char.Humanoid
local hed = char.Head
local root = char.HumanoidRootPart
local rootj = root.RootJoint
local tors = char.Torso
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local neck = tors["Neck"]
local mouse = plr:GetMouse()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("Institutional white")
hum.MaxHealth = 200
hum.Health = 200

-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
cam = game.Workspace.CurrentCamera
CF = CFrame.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil 
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
RH = tors["Right Hip"]
LH = tors["Left Hip"]
RSH = tors["Right Shoulder"] 
LSH = tors["Left Shoulder"] 
RSH.Parent = nil 
LSH.Parent = nil 
RW.Name = "RW"
RW.Part0 = tors 
RW.C0 = CF(1.5, 0.5, 0)
RW.C1 = CF(0, 0.5, 0) 
RW.Part1 = ra
RW.Parent = tors 
LW.Name = "LW"
LW.Part0 = tors 
LW.C0 = CF(-1.5, 0.5, 0)
LW.C1 = CF(0, 0.5, 0) 
LW.Part1 = la
LW.Parent = tors
vt = Vector3.new
Effects = {}
-------------------------------------------------------
--Start HeartBeat--
-------------------------------------------------------
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 90
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------



-------------------------------------------------------
--Start Combo Function--
-------------------------------------------------------
local comboing = false
local combohits = 0
local combotime = 0
local maxtime = 65



function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
comboframe = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
Frame2 = Instance.new("Frame")
TextLabel3 = Instance.new("TextLabel")
comboframe.Name = "combinserter"
comboframe.Parent = mas
Frame1.Name = "combtimegui"
Frame1.Parent = comboframe
Frame1.Size = UDim2.new(0, 300, 0, 14)
Frame1.Position = UDim2.new(0, 900, 0.629999971, 0)
Frame1.BackgroundColor3 = Color3.new(0, 0, 0)
Frame1.BorderColor3 = Color3.new(0.0313726, 0.0470588, 0.0627451)
Frame1.BorderSizePixel = 5
Frame2.Name = "combtimeoverlay"
Frame2.Parent = Frame1
Frame2.Size = UDim2.new(0, 0, 0, 14)
Frame2.BackgroundColor3 = Color3.new(0, 1, 0)
Frame2.ZIndex = 2
TextLabel3.Parent = Frame2
TextLabel3.Transparency = 0
TextLabel3.Size = UDim2.new(0, 300, 0, 50)
TextLabel3.Text ="Hits:  "..combohits
TextLabel3.Position = UDim2.new(0, 0, -5.5999999, 0)
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Font = Enum.Font.Bodoni
TextLabel3.FontSize = Enum.FontSize.Size60
TextLabel3.TextColor3 = Color3.new(0, 1, 0)
TextLabel3.TextStrokeTransparency = 0
gui = game:GetService("Players").LocalPlayer.PlayerGui
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end





coroutine.resume(coroutine.create(function()
	while true do
		wait()
		
		
		if combotime>65 then
		    combotime = 65
	    end
	    
	    
	    
	    
	    
		if combotime>.1 and comboing == true then
		    TextLabel3.Transparency = 0
		    TextLabel3.TextStrokeTransparency = 0
		    TextLabel3.BackgroundTransparency = 1
		    Frame1.Transparency = 0
		    Frame2.Transparency = 0
		       TextLabel3.Text ="Hits:  "..combohits
		    combotime = combotime - .34
Frame2.Size = Frame2.Size:lerp(UDim2.new(0, combotime/maxtime*300, 0, 14),0.42)
    end
    
    
    
    
	    if combotime<.1 then
	        		    TextLabel3.BackgroundTransparency = 1
	        		    TextLabel3.Transparency = 1
		    TextLabel3.TextStrokeTransparency = 1

Frame2.Size = UDim2.new(0, 0, 0, 14)
	        combotime = 0
	        comboing = false
	       		    Frame1.Transparency = 1
		    Frame2.Transparency = 1
		   combohits = 0 
	        
	        end
end
end))



-------------------------------------------------------
--End Combo Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Important Functions--
-------------------------------------------------------
function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
function thread(f)
	coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((1 - t) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / Sin(theta)
		startInterp = Sin((t - 1) * theta) * invSinTheta
		finishInterp = Sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
         if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
	
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end

	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
         if insta == true then
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					swait()
					Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
				end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Create("ObjectValue"){
			Name = "creator",
			Value = Player,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
	end
end




	kDamagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                kshowDamage(hit.Parent,Damage,.5,BrickColor.new("White"))
                else
                h.Health=h.Health-(Damage/2)
                kshowDamage(hit.Parent,Damage/2,.5,BrickColor.new("White"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500,500,500)
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
            elseif Type=="Up" then
                hit.Parent.Humanoid.PlatformStand = true
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,15,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
rl.AngularVelocity = Vector3.new(2000,2000,2000)
rl.MaxTorque = Vector3.new(40000,40000,40000)
                rl.Parent=hit
                hit.Parent.Humanoid.PlatformStand = false
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
            elseif Type=="Float" then
                hit.Parent.Humanoid.PlatformStand = true
                                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=400
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position+vt(0,35,24)
                                bp.Parent=hit.Parent.Torso
                	
local	rl=Instance.new("BodyAngularVelocity",hit.Parent.Torso)
rl.P=377705
rl.maxTorque=Vector3.new(1,1,1)*500
rl.angularvelocity=Vector3.new(math.random(-3,3),math.random(-6,6),math.random(-3,3))

 local BF = Instance.new("BodyForce",hit.Parent.Torso)
            BF.force = Vector3.new(0, workspace.Gravity/1.10, 0)
                game:GetService("Debris"):AddItem(bp,5)
game:GetService("Debris"):AddItem(BF,5)
game:GetService("Debris"):AddItem(rl,5)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and char.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
                comboing = true
                combohits = combohits+1
                combotime = combotime+3.4


                
                if hitfloor == nil then
                    
    local velo=Instance.new("BodyVelocity")
                velo.velocity=vt(0,5.5,0)
                velo.P=8000
                velo.maxForce=Vector3.new(math.huge, math.huge, math.huge)
                velo.Parent=root
                game:GetService("Debris"):AddItem(velo,0.06)
                
                                   local hitvelo=Instance.new("BodyVelocity")
                hitvelo.velocity=vt(0,5.5,0)
                hitvelo.P=8000
                hitvelo.maxForce=Vector3.new(math.huge, math.huge, math.huge)
                hitvelo.Parent=hit
                             game:GetService("Debris"):AddItem(hitvelo,0.06)
                             
                                                          coroutine.resume(coroutine.create(function()
                                 for i = 0,3.7,0.1 do
   swait()
         hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,0,-2.4)
        root.Velocity = root.CFrame.lookVector*0
        hit.Velocity = hit.CFrame.lookVector*130
end
end))
         coroutine.resume(coroutine.create(function()
             while ultra == true do
                 swait()
                 hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,0,-2.4)
             end
             end))
                             
                
                end
                
                
        end
end
 
kshowDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.Material = "Neon"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=220
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
    
end

-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Damage Function Customization--
-------------------------------------------------------
function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Bodoni",
		TextColor3 = Color,
		TextScaled = true,
		TextStrokeColor3 = Color3.fromRGB(0,0,0),
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end
-------------------------------------------------------
--End Damage Function Customization--
-------------------------------------------------------

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= plr.Name then
          Damage(head, head, mindam, maxdam, knock, Type, root, 0.1, "http://www.roblox.com/asset/?id=0", 1.2)
        end
      end
    end
  end
end


CFuncs = {
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end
	},
	Sound = {
		Create = function(id, par, vol, pit)
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound")({
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace
				})
				wait()
				S:play()
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end
	},
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter")({
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread
			})
			return fp
		end
	}
}
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part")({
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material
	})
	RemoveOutlines(Part)
	return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh)({
		Parent = Part,
		Offset = OffSet,
		Scale = Scale
	})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld")({
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1
	})
	return Weld
end


-------------------------------------------------------
--Start Effect Function--
-------------------------------------------------------
EffectModel = Instance.new("Model", char)
Effects = {
  Block = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      if Type == 1 or Type == nil then
        table.insert(Effects, {
          prt,
          "Block1",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      elseif Type == 2 then
        table.insert(Effects, {
          prt,
          "Block2",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      else
        table.insert(Effects, {
          prt,
          "Block3",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    end
  },
  Sphere = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Cylinder = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Wave = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3 / 60,
        y3 / 60,
        z3 / 60,
        msh
      })
    end
  },
  Ring = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Break = {
    Create = function(brickcolor, cframe, x1, y1, z1)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
      prt.Anchored = true
      prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      local num = math.random(10, 50) / 1000
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Shatter",
        num,
        prt.CFrame,
        math.random() - math.random(),
        0,
        math.random(50, 100) / 100
      })
    end
  },
Spiral = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
Push = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  }
}
function part(formfactor ,parent, reflectance, transparency, brickcolor, name, size)
	local fp = IT("Part")
	fp.formFactor = formfactor 
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false 
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = tors.Position 
	RemoveOutlines(fp)
	fp.Material = "SmoothPlastic"
	fp:BreakJoints()
	return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh = IT(Mesh) 
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
	if meshid ~= "nil" then
		mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
		end
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

function Magic(bonuspeed, type, pos, scale, value, color, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function Eviscerate(dude)
	if dude.Name ~= char then
		local bgf = IT("BodyGyro", dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
		local val = IT("BoolValue", dude)
		val.Name = "IsHit"
		local ds = coroutine.wrap(function()
			dude:WaitForChild("Head"):BreakJoints()
			wait(0.5)
			target = nil
			coroutine.resume(coroutine.create(function()
				for i, v in pairs(dude:GetChildren()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
					if v:IsA("Humanoid") then
						v:Destroy()
					end
					if v:IsA("CharacterMesh") then
						v:Destroy()
					end
					if v:IsA("Model") then
						v:Destroy()
					end
					if v:IsA("Part") or v:IsA("MeshPart") then
						for x, o in pairs(v:GetChildren()) do
							if o:IsA("Decal") then
								o:Destroy()
							end
						end
						coroutine.resume(coroutine.create(function()
							v.Material = "Neon"
							v.CanCollide = false
							local PartEmmit1 = IT("ParticleEmitter", v)
							PartEmmit1.LightEmission = 1
							PartEmmit1.Texture = "rbxassetid://284205403"
							PartEmmit1.Color = ColorSequence.new(maincolor.Color)
							PartEmmit1.Rate = 150
							PartEmmit1.Lifetime = NumberRange.new(1)
							PartEmmit1.Size = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0.75, 0),
								NumberSequenceKeypoint.new(1, 0, 0)
							})
							PartEmmit1.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0, 0),
								NumberSequenceKeypoint.new(1, 1, 0)
							})
							PartEmmit1.Speed = NumberRange.new(0, 0)
							PartEmmit1.VelocitySpread = 30000
							PartEmmit1.Rotation = NumberRange.new(-500, 500)
							PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
							local BodPoss = IT("BodyPosition", v)
							BodPoss.P = 3000
							BodPoss.D = 1000
							BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
							BodPoss.position = v.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
							v.Color = maincolor.Color
							coroutine.resume(coroutine.create(function()
								for i = 0, 49 do
									swait(1)
									v.Transparency = v.Transparency + 0.08
								end
								wait(0.5)
								PartEmmit1.Enabled = false
								wait(3)
								v:Destroy()
								dude:Destroy()
							end))
						end))
					end
				end
			end))
		end)
		ds()
	end
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end

function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

function SoulSteal(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",dude)
soul.Size = Vector3.new(1,1,1)
soul.CanCollide = false
soul.Anchored = false
soul.Position = torso.Position
soul.Transparency = 1
local PartEmmit1 = IT("ParticleEmitter", soul)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://569507414"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 250
PartEmmit1.Lifetime = NumberRange.new(1.6)
PartEmmit1.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-360, 360)
PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
local BodPoss = IT("BodyPosition", soul)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
wait(1.6)
soul.Touched:connect(function(hit)
	if hit.Parent == char then
	soul:Destroy()
	end
end)
wait(1.2)
while soul do
	swait()
	PartEmmit1.Color = ColorSequence.new(maincolor.Color)
	BodPoss.Position = tors.Position
end
end)
	soulst()
	end
end




--killer's effects





		function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
		
		
		
function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {
			prt,
			"Block1",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	elseif Type == 2 then
		table.insert(Effects, {
			prt,
			"Block2",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	end
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt=CreatePart(workspace,"Neon",0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end


function MoonEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://259403370", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function HeadEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Shatter",
		num,
		prt.CFrame,
		math.random() - math.random(),
		0,
		math.random(50, 100) / 100
	})
end





						       so = function(id,par,vol,pit)
		coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound",par or workspace)
		sou.Volume=vol
		sou.Pitch=pit or 1
		sou.SoundId=id
		sou:play()
		game:GetService("Debris"):AddItem(sou,8)
		end))
		end


--end of killer's effects


function FaceMouse()
local	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------
function Cso(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = IT("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
function CameraEnshaking(Length, Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			hum.CameraOffset = Vector3.new(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)))
			cam.CFrame = cam.CFrame * CF(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity))) * Euler(Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM)
		end
		hum.CameraOffset = Vector3.new(0, 0, 0)
	end))
end
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------


-------------------------------------------------------
--Start Customization--
-------------------------------------------------------
local Player_Size = 1
if Player_Size ~= 1 then
root.Size = root.Size * Player_Size
tors.Size = tors.Size * Player_Size
hed.Size = hed.Size * Player_Size
ra.Size = ra.Size * Player_Size
la.Size = la.Size * Player_Size
rl.Size = rl.Size * Player_Size
ll.Size = ll.Size * Player_Size
----------------------------------------------------------------------------------
rootj.Parent = root
neck.Parent = tors
RW.Parent = tors
LW.Parent = tors
RH.Parent = tors
LH.Parent = tors
----------------------------------------------------------------------------------
rootj.C0 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
rootj.C1 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
neck.C0 = necko * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0))
neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * angles(Rad(-90), Rad(0), Rad(180))
RW.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* RIGHTSHOULDERC0
LW.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* LEFTSHOULDERC0
----------------------------------------------------------------------------------
RH.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
RH.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
--hat.Parent = Character
end
----------------------------------------------------------------------------------
local SONG = 900817147 --900817147
local SONG2 = 0
local Music = Instance.new("Sound",tors)
Music.Volume = 0.7
Music.Looped = true
Music.Pitch = 1 --Pitcher
----------------------------------------------------------------------------------
local equipped = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
local sine = 0
local Sit = 1
local attacktype = 1
local attackdebounce = false
local euler = CFrame.fromEulerAnglesXYZ
local cankick = false
----------------------------------------------------------------------------------
hum.WalkSpeed = 8
hum.JumpPower = 57
--[[
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
]]
local ANIMATOR = hum.Animator
local ANIMATE = char.Animate
ANIMATE.Parent = nil
ANIMATOR.Parent = nil
-------------------------------------------------------
--End Customization--
-------------------------------------------------------


-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------

--pls be proud mak i did my best



function attackone()
    
    attack = true
    
          for i = 0, 1.35, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-4-2*i), math.rad(4+2*i), math.rad(-40-11*i)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(40+11*i)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.6, 0.2) * angles(math.rad(90+4*i), math.rad(-43), math.rad(16+6*i)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-43)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.7, 0) * RHCF * angles(math.rad(-34), math.rad(0), math.rad(-17)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, -0.2) * LHCF * angles(math.rad(-24), math.rad(0), math.rad(0)), 0.2)
      end
      
      so("http://roblox.com/asset/?id=1340545854",ra,1,math.random(0.7,1))


con5=ra.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  

kDamagefunc(hit,3,4,math.random(2,3),"Normal",root,0,1)

so("http://roblox.com/asset/?id=636494529",ra,2,1)
 
 RingEffect(BrickColor.new("White"),ra.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),ra.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),ra.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)


coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8)),0.24)
end
end))


      wait(0.34)
attackdebounce = false

end
end
end)
                for i = 0, 1.12, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.9, -0) * angles(math.rad(14), math.rad(6), math.rad(23)), 0.35)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-4), math.rad(0), math.rad(-23)), 0.35)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.8) * angles(math.rad(110), math.rad(23), math.rad(2)), 0.4)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.2) * angles(math.rad(-37), math.rad(0), math.rad(-13)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.3) * RHCF * angles(math.rad(-4), math.rad(0), math.rad(6)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.05) * LHCF * angles(math.rad(-22), math.rad(0), math.rad(23)), 0.3)
      end
      
      con5:Disconnect()
          attack = false
          
      end












function attacktwo()
    
    attack = true
    
          for i = 0, 1.35, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-4), math.rad(-4), math.rad(40)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(46)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.6, 0.2) * angles(math.rad(90), math.rad(23), math.rad(6)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.7, -0.2) * RHCF * angles(math.rad(-34), math.rad(0), math.rad(-17)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-24), math.rad(0), math.rad(0)), 0.2)
      end
      
      so("http://roblox.com/asset/?id=1340545854",la,1,math.random(0.7,1))


con5=la.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  

kDamagefunc(hit,3,4,math.random(2,3),"Normal",root,0,1)

so("http://roblox.com/asset/?id=636494529",la,2,1)
 
 RingEffect(BrickColor.new("White"),la.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),la.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),la.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)


coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8)),0.24)
end
end))


      wait(0.34)
attackdebounce = false

end
end
end)




                for i = 0, 1.12, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.9, -0) * angles(math.rad(14), math.rad(-6), math.rad(-27)), 0.35)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-4), math.rad(0), math.rad(27)), 0.35)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.16) * angles(math.rad(-33), math.rad(0), math.rad(23)), 0.4)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.67, -0.9) * angles(math.rad(116), math.rad(-28), math.rad(1)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.05) * RHCF * angles(math.rad(-22), math.rad(0), math.rad(-18)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -0.3) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(4)), 0.3)
      end
      
      con5:Disconnect()
attack = false
          
      end





function attackthree()
    
    attack = true
    
    
              for i = 0, 1.14, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-4), math.rad(-4), math.rad(40)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-46)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.6, 0.2) * angles(math.rad(90), math.rad(23), math.rad(36)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.7, -0.2) * RHCF * angles(math.rad(-34), math.rad(0), math.rad(-17)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-12), math.rad(0), math.rad(34)), 0.2)
      end
    
    con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  

kDamagefunc(hit,4,5,math.random(3,4),"Normal",root,0,1)
so("http://roblox.com/asset/?id=636494529",ll,2,1)
 
 RingEffect(BrickColor.new("White"),ll.CFrame*CF(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),ll.CFrame*CF(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),ll.CFrame*CF(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)


coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8)),0.24)
end
end))

    
          wait(0.34)
attackdebounce = false

end
end
end)

        so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
          for i = 0, 9.14, 0.3 do
        swait()
        BlockEffect(BrickColor.new("White"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(8), math.rad(8), math.rad(0-54*i)), 0.35)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-7*i), math.rad(0), math.rad(0-9*i)), 0.35)
      end
      attack = false
      con5:disconnect()
end



function attackfour()
    
    attack = true
            so("http://www.roblox.com/asset/?id=1452040709", RightLeg, 3, 1)
     WaveEffect(BrickColor.new("White"), root.CFrame * CFrame.new(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
              for i = 0, 5.14, 0.1 do
        swait()
        SphereEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.8) * angles(math.rad(24+4*i), math.rad(0), math.rad(0)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0+11*i), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0-6*i), math.rad(0), math.rad(36+4*i)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0-6*i), math.rad(0), math.rad(-36-4*i)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.6, -0.3) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-28+4*i)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.2, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-34-4*i)), 0.2)
      end
              so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
       local velo=Instance.new("BodyVelocity")
                velo.velocity=vt(0,25,0)
                velo.P=8000
                velo.maxForce=Vector3.new(math.huge, math.huge, math.huge)
                velo.Parent=root
                game:GetService("Debris"):AddItem(velo,0.7)



con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  
coroutine.resume(coroutine.create(function()
    for i = 0,1.5,0.1 do
        swait()
 hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.6,-1.8)
end
end))
kDamagefunc(hit,3,4,math.random(0,0),"Normal",root,0,1)
so("http://roblox.com/asset/?id=636494529",rl,2,1)
 RingEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)



coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.75*1.8,0.75*1.8),math.random(-0.75*1.8,0.75*1.8),math.random(-0.75*1.8,0.75*1.8)),0.44)
end
end))


      wait(0.14)
attackdebounce = false
end
end
end)

                    for i = 0, 5.11, 0.15 do
        swait()
        BlockEffect(BrickColor.new("White"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, 0.1+0.2*i) * angles(math.rad(-10-80*i), math.rad(0), math.rad(0)), 0.42)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-43), math.rad(0), math.rad(0)), 0.42)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-8), math.rad(0), math.rad(60)), 0.35)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-8), math.rad(0), math.rad(-60)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20+10*i)), 0.42)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.5, -0.4) * LHCF * angles(math.rad(0), math.rad(0), math.rad(24)), 0.42)
      end


      attack = false
      con5:disconnect()
    end





local cooldown = false
function quickkick()
    attack = true
    
    
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  

coroutine.resume(coroutine.create(function()
    for i = 0,1.5,0.1 do
        swait()
 hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.3,-1.8)
end
end))

kDamagefunc(hit,1,2,math.random(0,0),"Normal",root,0,1)
so("http://roblox.com/asset/?id=636494529",rl,2,1)
 RingEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)



coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.8*1.8,0.8*1.8),math.random(-0.8*1.8,0.8*1.8),math.random(-0.8*1.8,0.8*1.8)),0.44)
end
end))


      wait(0.08)
attackdebounce = false
end
end
end)

        so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
          for i = 0, 11.14, 0.3 do
        swait()
        root.Velocity = root.CFrame.lookVector * 30
        BlockEffect(BrickColor.new("White"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(-21-30*i), math.rad(8+10*i), math.rad(0-90*i)), 0.35)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-2*i), math.rad(0), math.rad(0-9*i)), 0.35)
      end
      attack = false
      con5:disconnect()
end

    
    
    
    
    
    
    
function Taunt()
	attack = true
	hum.WalkSpeed = 0
	Cso("1535995570", hed, 8.45, 1)
	for i = 0, 8.2, 0.1 do
		swait()
		hum.WalkSpeed = 0
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 12)) * angles(Rad(0), Rad(0), Rad(0)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25), Rad(0), Rad(16 * Cos(sine / 12))), 0.2)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.1)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.1* Player_Size, 0.5 + 0.05 * Sin(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(180), Rad(6), Rad(-56)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.1 + 0.05 * Sin(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(45), Rad(6), Rad(86)), 0.1)
	end
	attack = false
	hum.WalkSpeed = 8
end
    
    





function Hyperkickcombo()
    
    attack = true
            so("http://www.roblox.com/asset/?id=1452040709", RightLeg, 3, 1)
     WaveEffect(BrickColor.new("White"), root.CFrame * CFrame.new(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
      for i = 0, 7.14, 0.1 do
        swait()
        SphereEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.8) * angles(math.rad(24), math.rad(0), math.rad(0)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(36)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-36)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.6, -0.3) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-28)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.2, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-34)), 0.2)
      end
local Cracking = Cso("292536356", tors, 10, 1)
 for i = 0, 7.14, 0.1 do
        swait()
		hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
		Aura(5, 0.15, "Add" , root.CFrame * CF(Mrandom(-12, 12), -6, Mrandom(-12, 12)) * angles(Rad(90 + Mrandom(-12, 12)), 0, 0), 1.5, 1.5, 10, -0.015, BrickC"Lime green", 0, "Sphere")
		WaveEffect(BrickColor.new("Lime green"), root.CFrame * CFrame.new(0, -6, 0) * euler(0, math.random(-25, 25), 0), 1, 1, 1, 1, 0.2, 1, 0.05)
        SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
		SphereEffect(BrickColor.new("Lime green"),ll.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.8) * angles(math.rad(24), math.rad(0), math.rad(0)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(36)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-36)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.6, -0.3) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-28)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.2, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-34)), 0.2)
      end
      Cracking.Playing = false
      so("http://www.roblox.com/asset/?id=197161452", char, 3, 0.8)
              so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
              SphereEffect(BrickColor.new("Lime green"),tors.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,38,38,38,0.08)
       local velo=Instance.new("BodyVelocity")
                velo.velocity=vt(0,27,0)
                velo.P=11000
                velo.maxForce=Vector3.new(math.huge, math.huge, math.huge)
                velo.Parent=root
                game:GetService("Debris"):AddItem(velo,1.24)



con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  
coroutine.resume(coroutine.create(function()
    for i = 0,1.5,0.1 do
        swait()
 hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,3.4,-1.8)
end
end))
kDamagefunc(hit,2,3,math.random(0,0),"Normal",root,0,1)
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
 RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)



coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))


      wait(0.09)
attackdebounce = false
end
end
end)

                    for i = 0, 9.11, 0.2 do
        swait()
        BlockEffect(BrickColor.new("Lime green"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, 0.1+0.12*i) * angles(math.rad(-10-95*i), math.rad(0), math.rad(0)), 0.42)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-43), math.rad(0), math.rad(0)), 0.42)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-8), math.rad(0), math.rad(60)), 0.35)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-8), math.rad(0), math.rad(-60)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20+10*i)), 0.42)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.5, -0.4) * LHCF * angles(math.rad(0), math.rad(0), math.rad(24)), 0.42)
      end




      con5:disconnect()
      
      
      
      
      
      
      con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  
coroutine.resume(coroutine.create(function()
    for i = 0,1.5,0.1 do
        swait()
 hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
kDamagefunc(hit,3,4,math.random(0,0),"Normal",root,0,1)
                       
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
 RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)



coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))


      wait(0.08)
attackdebounce = false
end
end
end)
      
      
      
        so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
          for i = 0, 9.14, 0.3 do
        swait()
               root.Velocity = root.CFrame.lookVector * 20
        BlockEffect(BrickColor.new("Lime green"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(53), math.rad(8), math.rad(0-54*i)), 0.35)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-7*i), math.rad(0), math.rad(0-9*i)), 0.35)
      end
      
      
      
            con5:disconnect()
      
      
      
      con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  
coroutine.resume(coroutine.create(function()
    for i = 0,1.5,0.1 do
        swait()
 hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
kDamagefunc(hit,3,4,math.random(0,0),"Normal",root,0,1)
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
 RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)



coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))


      wait(0.05)
attackdebounce = false
end
end
end)
      
      
              so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
          for i = 0, 15.14, 0.32 do
        swait()
        root.Velocity = root.CFrame.lookVector * 20
        BlockEffect(BrickColor.new("Lime green"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(-21-50*i), math.rad(8+20*i), math.rad(0-90*i)), 0.35)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-2*i), math.rad(0), math.rad(0-4*i)), 0.35)
      end
      
      attack = false
      con5:disconnect()
      
    end





local ultra = false

function Galekicks()
    
    attack = true
                so("http://www.roblox.com/asset/?id=1452040709", RightLeg, 3, 1)
          for i = 0, 1.65, 0.1 do
        swait()
        root.Velocity = root.CFrame.lookVector * 0
        SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
      end


for i = 1, 17 do
    
          con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  
coroutine.resume(coroutine.create(function()
    for i = 0,1.5,0.1 do
        swait()
 hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
kDamagefunc(hit,1,2,math.random(0,0),"Normal",root,0,1)
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
 RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)



coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))


      wait(0.05)
attackdebounce = false
end
end
end)
    
          for i = 0, .1, 0.2 do
        swait()
                BlockEffect(BrickColor.new("Lime green"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 1.5, 1.5, 1.5, 0.03)
                root.Velocity = root.CFrame.lookVector * 10
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, -0.3) * angles(math.rad(-44), math.rad(-2), math.rad(90)), 0.7)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-24), math.rad(-90)), 0.7)
        RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.7)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.7)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -.6 , 0) * RHCF * angles(math.rad(math.random(-100,-10)), math.rad(0), math.rad(2)), 0.7)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-34), math.rad(0), math.rad(0)), 0.7)
      end

      so("http://roblox.com/asset/?id=1340545854",rl,1,math.random(0.7,1))
      
          for i = 0, 0.4, 0.2 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
      end
      con5:disconnect()
end

          		    		    
        u =   mouse.KeyDown:connect(function(key)
          	if key == 'r' and combohits >= 150 then
		    ultra = true
		    SphereEffect(BrickColor.new("Really red"),tors.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,15,15,15,0.04)
		    end
          end)
          wait(0.3)
         if ultra == true then 
combohits = 0
wait(0.1)
 for i = 0, 1.65, 0.1 do
        swait()
        root.Velocity = root.CFrame.lookVector * 0
        SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
      end


so("http://roblox.com/asset/?id=146094803",hed,1,1.2)

for i = 1, 65 do
    --Aura(5, 0.15, "Add" , root.CFrame * CF(Mrandom(-12, 12), -6, Mrandom(-12, 12)) * angles(Rad(90 + Mrandom(-12, 12)), 0, 0), 1.5, 1.5, 10, -0.015, BrickC"Really red", 0, "Brick")
          con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  
coroutine.resume(coroutine.create(function()
    for i = 0,1.5,0.1 do
        swait()
 hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
kDamagefunc(hit,1,2,math.random(0,0),"Normal",root,0,1)

            
            
            
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
 RingEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)



coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))


      wait(0.05)
attackdebounce = false
end
end
end)
    
          for i = 0, .03, 0.1 do
        swait()
                BlockEffect(BrickColor.new("Really red"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 1.5, 1.5, 1.5, 0.03)
                root.Velocity = root.CFrame.lookVector * 10
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, -0.3) * angles(math.rad(-44), math.rad(-2), math.rad(90)), 0.7)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-24), math.rad(-90)), 0.7)
        RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.7)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.7)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -.6 , 0) * RHCF * angles(math.rad(math.random(-100,-10)), math.rad(0), math.rad(2)), 0.7)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-34), math.rad(0), math.rad(0)), 0.7)
      end

      so("http://roblox.com/asset/?id=1340545854",rl,1,math.random(0.7,1))
      
          for i = 0, 0.07, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
      end
      con5:disconnect()
end

for i = 0, 1.65, 0.1 do
        swait()
        root.Velocity = root.CFrame.lookVector * 0
        SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
      end

con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  
coroutine.resume(coroutine.create(function()
    for i = 0,1.5,0.1 do
        swait()
 --hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
kDamagefunc(hit, 1, 3, 0,"Normal",root,0,1)
so("http://roblox.com/asset/?id=636494529",rl,2,.63)
 RingEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)


coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))


      wait(0.05)
attackdebounce = false
end
end
end)

              so("http://www.roblox.com/asset/?id=1452040709", RightLeg, 1, 1.4)
          SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,38,38,38,0.08)
   
  for i = 0, 2, 0.1 do
        swait()
		--BlockEffect(BrickColor.new("Really red"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 1.5, 1.5, 1.5, 0.03)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -.6 , 0.2) * RHCF * angles(math.rad(-50), math.rad(0), math.rad(2)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
      end
        SphereEffect(BrickColor.new("Really red"),tors.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,8,8,8,0.04)
        
        wait(0.25)
        con5:Disconnect() 
   

        
        
        con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true  

kDamagefunc(hit,1,2,math.random(0,0),"Normal",root,0,1)
so("http://roblox.com/asset/?id=565207203",ll,7,0.63)
 
 RingEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,2.2,6,2.2,0.04)
RingEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,2.2,6,2.2,0.04)
SphereEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,8,8,8,0.04)
SpecialEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,8,8,8,0.04)
SphereEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,5,18,5,0.04)
WaveEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,1.5,16,1.5,0.04)

coroutine.resume(coroutine.create(function()
    for i = 0,1,0.1 do
        swait()
        hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8)),0.24)
end
end))
    
          wait(0.06)
attackdebounce = false

end
end
end)

coroutine.resume(coroutine.create(function()
    while ultra == true do
        swait()
        root.CFrame = root.CFrame*CFrame.new(math.random(-3,3),math.random(-2,2),math.random(-3,3))
    end
    end))


        so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
        for i = 1,3 do
          for i = 0, 9.14, 0.45 do
        swait()
                root.Velocity = root.CFrame.lookVector * 30
        BlockEffect(BrickColor.new("Really red"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(8), math.rad(8), math.rad(0-94*i)), 0.35)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-7*i), math.rad(0), math.rad(0-9*i)), 0.35)
      end
      end
    
    
    for i = 1,3 do
              for i = 0, 11.14, 0.45 do
        swait()
        root.Velocity = root.CFrame.lookVector * 30
        BlockEffect(BrickColor.new("Really red"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(-21-30*i), math.rad(8+10*i), math.rad(0-110*i)), 0.35)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(27), math.rad(0), math.rad(74)), 0.35)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-34-2*i), math.rad(0), math.rad(0-9*i)), 0.35)
      end
      
      
      
    end
     so("http://www.roblox.com/asset/?id=197161452", char, 0.5, 0.8)
    con5:disconnect()
     
     
  end -- combo hit end
            attack = false
          ultra = false
  u:disconnect()
          
      end




-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 48 then
        Swing = 2
        hum.WalkSpeed = 24.82
	end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 48 then
        Swing = 1
        hum.WalkSpeed = 8
	end
end)

 





mouse.Button1Down:connect(function()
 if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        attackone()
                elseif attacktype==2 then
                        attack=true
                        attacktype=3
                        attacktwo()
                elseif attacktype==3 then
                        attack=true
                        attacktype=4
                        attackthree()
                elseif attacktype==4 then
                        attack=true
                        attacktype=1
                        attackfour()
                end
        end
end)




		  mouse.KeyDown:connect(function(key)
		if key == 'e' and attack == false and cankick == true and cooldown == false then
quickkick()
cooldown = true

coroutine.resume(coroutine.create(function()
    wait(2)
cooldown = false
end))



		end
		end)








mouse.KeyDown:connect(function(key)
	if attack == false then
		if key == 't' then
			Taunt()
		elseif key == 'f' then
			Hyperkickcombo()
					elseif key == 'r' then
			Galekicks()
		end
	end
end)

-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
print("By Makhail07 and KillerDarkness0105")
print("Basic Animations by Makhail07")
print("Attack Animations by KillerDarkness0105")
print("This is pretty much our final script together")
print("--------------------------------")
print("Attacks")
print("E in air: Quick Kicks")
print("Left Mouse: 4 click combo")
print("F: Hyper Kicks")
print("R: Gale Kicks, Spam R if your combo is over 150 to do an ultra combo")
print("--------------------------------")
while true do
	swait()
	sine = sine + change
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = root.Velocity.y
	hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4* Player_Size, char)
	
	if hitfloor == nil then
	    cankick = true
    else
        cankick = false
        end
	
	
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if 1 < root.Velocity.y and hitfloor == nil then
			Anim = "Jump"
			if attack == false then
			    hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(-16), Rad(0), Rad(0)), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -.2 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif -1 > root.Velocity.y and hitfloor == nil then
			Anim = "Fall"
			if attack == false then
			    hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(24), Rad(0), Rad(0)), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * LHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = 1
			if attack == false then
			    hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 12)) * angles(Rad(0), Rad(0), Rad(20)), 0.1)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-6.5 * Sin(sine / 12)), Rad(0), Rad(-20)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-12.5), Rad(0), Rad(0)), 0.1)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(-65), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(6)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.2 + 0.05 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(110), Rad(6 + 6.5 * Sin(sine / 12)), Rad(25)), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.3* Player_Size, 0.2 + 0.05 * Sin(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(110), Rad(6 - 6.5 * Sin(sine / 12)), Rad(25)), 0.1)
			end
		elseif torvel > 2 and torvel < 22 and hitfloor ~= nil then
			Anim = "Walk"
			change = 1
			if attack == false then
			    hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-1), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.15)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size)  * angles(Rad(-15 - 15 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 10 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 + 15 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 10 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(56)  * Cos(sine / 7) , Rad(10 * Cos(sine / 7)), Rad(6) - ra.RotVelocity.Y / 75), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(-56)  * Cos(sine / 7) , Rad(10 * Cos(sine / 7)) ,	Rad(-6) + la.RotVelocity.Y / 75), 0.1)
			end
		elseif torvel >= 22 and hitfloor ~= nil then
			Anim = "Sprint"
			change = 1.35
			if attack == false then
			    hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(26 - 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-8.5 - 2 * Sin(sine / 20)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.15)
			RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.925 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.7 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 - 55 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         	LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.925 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.7 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 + 55 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, 0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(-65) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
			LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, -0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(-65)  , Rad(0) ,	Rad(-13) + la.RotVelocity.Y / 75), 0.15)
			end
		end
	end
	Music.SoundId = "rbxassetid://"..SONG
	Music.Looped = true
	Music.Pitch = 1
	Music.Volume = 0.7
	Music.Parent = tors
	Music:Resume()
	if 0 < #Effects then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if 1 >= Thing[1].Transparency then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end
-------------------------------------------------------
--End Animations And Script--
-------------------------------------------------------