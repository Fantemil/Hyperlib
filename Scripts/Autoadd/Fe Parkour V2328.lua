--Emetimex
plr = game.Players.LocalPlayer
local colormansup = 255
local sliding = false

if plr:WaitForChild("PlayerScripts"):FindFirstChild("Player Stuff") then

	plr:WaitForChild("PlayerScripts"):FindFirstChild("Player Stuff"):Destroy()

	end

local camerakill = false
mobile = false
local downeddel= false
local walkingmode = false
char  = plr.Character
if char:FindFirstChild("ClientInputHandler") then
	char:FindFirstChild("ClientInputHandler"):Destroy()
end
if plr:FindFirstChild("Status") then
	plr:FindFirstChild("Status"):Destroy()
end
if game.Workspace:FindFirstChild("Remote") then
if game.Workspace:FindFirstChild("Remote"):FindFirstChild("TeamEvent") then
Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end
end
local downed = false
local combatmusic = Instance.new("Sound",char)
combatmusic.Volume = 0
combatmusic.PlaybackSpeed = 1
combatmusic.Looped = true



local ambience = Instance.new("Sound",char)
ambience.Volume = 0.5
ambience.PlaybackSpeed = 1
ambience.Looped = true

local winder = Instance.new("Sound",char)
winder.SoundId = "rbxassetid://337604103"
winder.Volume = 0
winder.PlaybackSpeed = 1
winder.Looped = true
winder:Play()
local windercloth = Instance.new("Sound",char)
windercloth.SoundId = "rbxassetid://195879271"
windercloth.Volume = 0
windercloth.PlaybackSpeed = 1
windercloth.Looped = true
windercloth:Play()
local explorationmusic = Instance.new("Sound",char)
explorationmusic.Volume = 0
explorationmusic.PlaybackSpeed = 1
explorationmusic.Looped = true

local rannum = math.random(1,11)
if rannum == 1 then
   combatmusic.SoundId = "rbxassetid://4842424057"
explorationmusic.SoundId = "rbxassetid://6092889291"
ambience.SoundId = "rbxassetid://4842514147" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 2 then
   combatmusic.SoundId = "rbxassetid://5167357719"
explorationmusic.SoundId = "rbxassetid://5136807172"
ambience.SoundId = "rbxassetid://5136807172" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 3 then
   combatmusic.SoundId = "rbxassetid://5355007603"
explorationmusic.SoundId = "rbxassetid://5192956194"
ambience.SoundId = "rbxassetid://5192956194" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 4 then
   combatmusic.SoundId = "rbxassetid://1591306349"
explorationmusic.SoundId = "rbxassetid://5246801658"
ambience.SoundId = "rbxassetid://5167384455" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 5 then
   combatmusic.SoundId = "rbxassetid://5356631522"
explorationmusic.SoundId = "rbxassetid://4502246491"
ambience.SoundId = "rbxassetid://4502246491" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 6 then
   combatmusic.SoundId = "rbxassetid://5183689299"
explorationmusic.SoundId = "rbxassetid://538850338"
ambience.SoundId = "rbxassetid://538850338" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 7 then
   combatmusic.SoundId = "rbxassetid://5258344366"
explorationmusic.SoundId = "rbxassetid://5079119831"
ambience.SoundId = "rbxassetid://5079119831" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 8 then
   combatmusic.SoundId = "rbxassetid://5995057631"
explorationmusic.SoundId = "rbxassetid://477207390"
ambience.SoundId = "rbxassetid://477207390" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 9 then
   combatmusic.SoundId = "rbxassetid://4841933336"
explorationmusic.SoundId = "rbxassetid://5114418235"
ambience.SoundId = "rbxassetid://5114418235" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 10 then
   combatmusic.SoundId = "rbxassetid://5132571388"
explorationmusic.SoundId = "rbxassetid://5995060646"
ambience.SoundId = "rbxassetid://5995060646" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end
if rannum == 11 then
   combatmusic.SoundId = "rbxassetid://5433879104"
explorationmusic.SoundId = "rbxassetid://4692224051"
ambience.SoundId = "rbxassetid://4692224051" 
 ambience:Play()
 explorationmusic:Play()
 combatmusic:Play()
end

local tricksinarow = 0
local tricktime = 0
local timestanding = 0
local combattime = 0



root = char:WaitForChild("HumanoidRootPart")

local slidingsound = Instance.new("Sound",root)
slidingsound.SoundId = "rbxassetid://4086205029"
slidingsound.PlaybackSpeed = 1.25
slidingsound.Looped = true
slidingsound.Volume = 0.75

local wallrunningsound = Instance.new("Sound",root)
wallrunningsound.SoundId = "rbxassetid://401049343"
wallrunningsound.PlaybackSpeed = 1
wallrunningsound.Looped = true
wallrunningsound.Volume = 0.75


function randomclothrollsound(truth)
	coroutine.resume(coroutine.create(function()
	    if truth ~= nil then
	         local s = Instance.new("Sound",root)
	    s.Volume = 0.8 +math.random(1,6)*0.05
	     s.PlaybackSpeed = 0.8 +math.random(1,6)*0.05
	    
	     local rannum = math.random(1,5)
	     if rannum == 1 then 
	         s.SoundId = "rbxassetid://4086203738"
	         elseif rannum == 2 then
	         s.SoundId = "rbxassetid://4086203442"
	         elseif rannum == 3 then
	             s.SoundId = "rbxassetid://4086203142"
	         elseif rannum == 4 then
                 s.SoundId = "rbxassetid://4086203973"
                 else
	         s.SoundId = "rbxassetid://4307029050"
	         end
	    
	    
	    s:Play()
	     game:GetService("Debris"):AddItem(s,4)
	        else
	         local s = Instance.new("Sound",root)
	    s.Volume = 0.25 +math.random(1,6)*0.05
	     s.PlaybackSpeed = 0.8 +math.random(1,6)*0.05
	    
	     local rannum = math.random(1,7)
	     if rannum == 1 then 
	         s.SoundId = "rbxassetid://3929467229"
	         elseif rannum == 2 then
	         s.SoundId = "rbxassetid://3929467449"
	         elseif rannum == 3 then
	             s.SoundId = "rbxassetid://3929467655"
	         elseif rannum == 4 then
                 s.SoundId = "rbxassetid://3929467888"
                 	         elseif rannum == 5 then
                 s.SoundId = "rbxassetid://4458760046"
                 	         elseif rannum == 6 then
                 s.SoundId = "rbxassetid://4458760518"
                 else
	         s.SoundId = "rbxassetid://4458759938"
	         end
	    
	    
	    s:Play()
	     game:GetService("Debris"):AddItem(s,4)
	        end
	   
	end))
    
    end


local rollingsound = Instance.new("Sound",root)
rollingsound.SoundId = "rbxassetid://2985734522"
rollingsound.PlaybackSpeed = 1
rollingsound.Volume = 0.75

local bodymovesound = Instance.new("Sound",root)
bodymovesound.SoundId = "rbxassetid://152206206"
bodymovesound.PlaybackSpeed = 0.945
bodymovesound.Volume = 2.35


local downedsound = Instance.new("Sound",root)
downedsound.SoundId = "rbxassetid://178088040"
downedsound.PlaybackSpeed = 1
downedsound.Volume = 3



local jumplandsoundthingy = Instance.new("Sound",root)
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
jumplandsoundthingy.PlaybackSpeed = 0.785
jumplandsoundthingy.Volume = 2

hum = char:WaitForChild("Humanoid")
hum.JumpPower = 50
	local colorparkourkill = Instance.new("ColorCorrectionEffect",game.Lighting)
	colorparkourkill.Saturation = 0
	colorparkourkill.TintColor = Color3.new(1,1,1)
if game.Lighting:FindFirstChild("COLORPARKOURKILL") then
	game.Lighting:FindFirstChild("COLORPARKOURKILL"):Destroy()


end
torso = char:WaitForChild("Torso")
local gyro = Instance.new("BodyGyro",torso)
gyro.D = 200
gyro.P = 1800
local cameratilterman = 0
local springjumpdel  =false
local gobackroll = false
local befpower = gyro.P
gyro.P = befpower
gyro.MaxTorque = Vector3.new(0,0,0)
local runvel = Instance.new("BodyVelocity",root)
runvel.MaxForce = Vector3.new(0,0,0)
runvel.P = 9999999999999999999999
hum.WalkSpeed =20

local flowmax = 35
local flowmin = 16
local dodgedel = false
local crouchspeed = 8
local flow = flowmin
for i,v in pairs(workspace:GetDescendants()) do
	if v.ClassName == "Part" or v.ClassName == "UnionOperation" or v.ClassName == "MeshPart" then
		if v.ClassName == "UnionOperation" then
			v.CollisionFidelity = Enum.CollisionFidelity.PreciseConvexDecomposition
		end
		if v.Transparency == 1 then
			v.CanCollide = false
		end

	end

end
floorpositiony = 0
local UIS = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

if UIS.TouchEnabled and not UIS.KeyboardEnabled and not UIS.MouseEnabled
	and not UIS.GamepadEnabled and not GuiService:IsTenFootInterface() then

	mobile = true
	jb = plr.PlayerGui:WaitForChild("TouchGui"):WaitForChild("TouchControlFrame"):WaitForChild("JumpButton")
	jb.MouseButton1Down:Connect(function()
		wallrunabletrue()
		wallruncheck()
	end)
end
local leftwallrunanim = Instance.new("Animation",char)
leftwallrunanim.AnimationId = "rbxassetid://180426354"
local leftwallrunanimplay = hum:LoadAnimation(leftwallrunanim)


local downedanim1 = Instance.new("Animation",char)
downedanim1.AnimationId = "rbxassetid://282574440"
local downedanim1play = hum:LoadAnimation(downedanim1)




local rightwallrunanim = Instance.new("Animation",char)
rightwallrunanim.AnimationId = "rbxassetid://180426354"
local rightwallrunanimplay = hum:LoadAnimation(rightwallrunanim)


local verticalwallrunanim = Instance.new("Animation",char)
verticalwallrunanim.AnimationId = "rbxassetid://180426354"
local verticalwallrunanimplay = hum:LoadAnimation(verticalwallrunanim)

local roll = Instance.new("Animation",char)
roll.AnimationId = "rbxassetid://180612465"
local rollplay = hum:LoadAnimation(roll)


local crouching = Instance.new("Animation",char)
crouching.AnimationId = "rbxassetid://287325678"
local crouchingplay = hum:LoadAnimation(crouching)

local springjump = Instance.new("Animation",char)
springjump.AnimationId = "rbxassetid://287325678"
local springjumpplay = hum:LoadAnimation(springjump)


local dodging = Instance.new("Animation",char)
dodging.AnimationId = "rbxassetid://287325678"
local dodgingplay = hum:LoadAnimation(dodging)

local slidinganim = Instance.new("Animation",char)
slidinganim.AnimationId = "rbxassetid://132546884"
local slidingplay = hum:LoadAnimation(slidinganim)
local rollering = false


hum.Died:Connect(function()
if game.Workspace:FindFirstChild("Remote") then
if game.Workspace:FindFirstChild("Remote"):FindFirstChild("TeamEvent") then
Workspace.Remote.TeamEvent:FireServer("Bright orange") 

end
end
	camerakill = true
	colorparkourkill:Destroy()
	for i = 20,1,-1 do
wait()
combatmusic.PlaybackSpeed = combatmusic.PlaybackSpeed-0.05
ambience.PlaybackSpeed = ambience.PlaybackSpeed-0.05
explorationmusic.PlaybackSpeed = explorationmusic.PlaybackSpeed-0.05
end

end)

local tappeda = false
local tappeds = false
local tappedd = false
local tappedw = false
UIS.InputEnded:Connect(function(input,gamestuff)
	if input.KeyCode == Enum.KeyCode.S then
		if gamestuff then return end

		gobackroll  = false
	end
end)


UIS.InputBegan:Connect(function(input,gamestuff)
        	if input.KeyCode == Enum.KeyCode.N then
		if gamestuff then return end

if walkingmode == false then
walkingmode = true
else
walkingmode = false
end
	end
        	if input.KeyCode == Enum.KeyCode.M then
		if gamestuff then return end
		if ambience.PlaybackSpeed ~= 0 then
		    ambience.PlaybackSpeed  = 0
		     combatmusic.PlaybackSpeed  = 0
		      explorationmusic.PlaybackSpeed  = 0
		      else
		      		    ambience.PlaybackSpeed  = 1
		     combatmusic.PlaybackSpeed  = 1
		      explorationmusic.PlaybackSpeed  = 1
		    end
		
		end
    

	if input.KeyCode == Enum.KeyCode.S then
		if gamestuff then return end

		gobackroll  = true
	end
		if downed == true then return end
	if sliding == true then return end
	if input.KeyCode == Enum.KeyCode.A then
		if hitfloor == false then return end
		if gamestuff then return end
		if tappeda == false then
			tappeda = true
			wait(0.25)
			tappeda = false
		else
			if dodgedel == false then
				dodgedel = true
				dodgingplay:Play()
				randomclothrollsound()
				local bv = Instance.new("BodyVelocity",char:WaitForChild("Head"))
				bv.Velocity = root.CFrame.RightVector*-flow*2+Vector3.new(0,flow/2,0)
				bv.MaxForce = Vector3.new(99999,99999,99999)
				bv.P = 99999999999999
				wait(0.1)
				bv:Destroy()
				wait(0.2)
				dodgingplay:Stop()
				dodgedel = false
			end

		end

	end
	if input.KeyCode == Enum.KeyCode.S then
		if hitfloor == false then return end
		if gamestuff then return end
		if tappeds == false then
			tappeds = true
			wait(0.25)
			tappeds = false
		else
			if dodgedel == false then
				dodgedel = true
				dodgingplay:Play()
					randomclothrollsound()
				local bv = Instance.new("BodyVelocity",char:WaitForChild("Head"))
				bv.Velocity = root.CFrame.LookVector*-flow*2+Vector3.new(0,flow/2,0)
				bv.MaxForce = Vector3.new(99999,99999,99999)
				bv.P = 99999999999999
				wait(0.1)
				bv:Destroy()
				wait(0.2)
				dodgingplay:Stop()
				dodgedel = false
			end

		end

	end
	if input.KeyCode == Enum.KeyCode.D then
		if hitfloor == false then return end
		if gamestuff then return end
		if tappedd == false then
			tappedd = true
			wait(0.25)
			tappedd = false
		else
			if dodgedel == false then
				dodgedel = true
				dodgingplay:Play()
					randomclothrollsound()
				local bv = Instance.new("BodyVelocity",char:WaitForChild("Head"))
				bv.Velocity = root.CFrame.RightVector*flow*2+Vector3.new(0,flow/2,0)
				bv.MaxForce = Vector3.new(99999,99999,99999)
				bv.P = 99999999999999
				wait(0.1)
				bv:Destroy()
				wait(0.2)
				dodgingplay:Stop()
				dodgedel = false
			end

		end

	end
	if input.KeyCode == Enum.KeyCode.W then
		if gamestuff then return end
		if hitfloor == false then return end
		if tappedw == false then
			tappedw = true
			wait(0.25)
			tappedw = false
		else
			if dodgedel == false then
				dodgedel = true
				dodgingplay:Play()
					randomclothrollsound()
				local bv = Instance.new("BodyVelocity",char:WaitForChild("Head"))
				bv.Velocity = root.CFrame.LookVector*flow*2+Vector3.new(0,flow/2,0)
				bv.MaxForce = Vector3.new(99999,99999,99999)
				bv.P = 99999999999999
				wait(0.1)
				bv:Destroy()
				wait(0.2)
				dodgingplay:Stop()
				dodgedel = false
			end

		end

	end
end)

hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)

--rollplay:AdjustSpeed(0)
--rollplay.TimePosition = 1

local player = game.Players.LocalPlayer
local character = player.Character
local hum = character:FindFirstChild("Humanoid")
if not character or not character.Parent then
	character = player.CharacterAdded:wait()
	  if camerakill == true then return end
end
local torso = character:WaitForChild("Torso")
local rightShoulder = torso:WaitForChild("Right Shoulder")
local leftShoulder = torso:WaitForChild("Left Shoulder")
local camera = game.Workspace.CurrentCamera

updateSpeed = 0.5/2


local plr = game.Players.LocalPlayer
local char = plr.Character
	local ignorelist = {plr.Character}
	for i,v in pairs(workspace:GetDescendants()) do
	    if v.ClassName == "Part" or v.ClassName == "MeshPart" or v.ClassName == "UnionOperation" then
	        if v.CanCollide == false or v.Transparency == 1 then 
	            
	            ignorelist[#ignorelist+1] = v
	            end
	        end
	    end
leftarm = char:WaitForChild("Left Arm")
rightarm = char:WaitForChild("Right Arm")
leftleg = char:WaitForChild("Left Leg")
if char:FindFirstChild("Head"):FindFirstChild("BillboardGui") then
	char:FindFirstChild("Head"):FindFirstChild("BillboardGui"):Destroy()
end
local flowermax = flowmax-flowmin
local killermancamfov = 0
rightleg = char:WaitForChild("Right Leg")
local hum = char:WaitForChild("Humanoid")

local rootpart,head = char:WaitForChild("HumanoidRootPart"),char:WaitForChild("Head")

game:GetService("RunService"):BindToRenderStep("CameraOffset",Enum.RenderPriority.Character.Value+1,function()
	local offsetman = 1.5	
	if sliding == true then
		offsetman = 0


	end
	if hum.Health == 0 then script:Destroy() end
	local distance = (character.Head.Position - camera.CoordinateFrame.p).magnitude
	if distance <= 1 then
		rightShoulder.C0 = rightShoulder.C0:lerp((camera.CoordinateFrame * CFrame.new(1, -1, 0)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, math.pi/2, 0), updateSpeed)
		leftShoulder.C0 = leftShoulder.C0:lerp((camera.CoordinateFrame * CFrame.new(-1, -1, 0)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, -math.pi/2, 0), updateSpeed)
	else
		rightShoulder.C0 = rightShoulder.C0:lerp(CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.pi/2, 0),updateSpeed)
		leftShoulder.C0 = leftShoulder.C0:lerp(CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, -math.pi/2, 0),updateSpeed)
	end
	hum.CameraOffset = (rootpart.CFrame+Vector3.new(0,offsetman,0)):pointToObjectSpace(head.CFrame.p)
	rightarm.LocalTransparencyModifier = rightarm.Transparency+0.5
	leftarm.LocalTransparencyModifier = leftarm.Transparency+0.5
	leftleg.LocalTransparencyModifier = leftleg.Transparency+0.5
	rightleg.LocalTransparencyModifier = rightleg.Transparency+0.5
	if camerakill == false then
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
		killermancamfov = 20*(flow/flowermax)
		colorparkourkill.TintColor = Color3.new(1,colormansup/255,colormansup/255)
		colormansup = colormansup+5
		if colormansup> 255 then
			colormansup = 255
		end
		cam.FieldOfView = 50+killermancamfov
		cam.CFrame = cam.CFrame*CFrame.Angles(0,0,math.rad(cameratilterman))

	end
end)
local befh = hum.Health




local function round(number, decimalPlaces)
	number = math.round(number * 10^decimalPlaces) * 10^-decimalPlaces
end
local humdowner = false

function downer()
    
     flow = flow-flowmax/10
					        downedanim1play:Play()
					        colormansup = colormansup-60
					        downedsound:play()
					        	randomclothrollsound(true)
					        		randomclothrollsound(true)
					        			randomclothrollsound()
					        			randomclothrollsound()
					        			randomclothrollsound()
downed = true
hum.JumpPower =0
downeddel = true
coroutine.resume(coroutine.create(function()
						
					
					local tiltnumb = 0
					local rannum = math.random(1,4)
					
					if rannum == 1 then
						tiltnumb = 80
						elseif rannum == 2 then
						tiltnumb = 50
					elseif rannum == 3 then
						tiltnumb = -80
						else
						tiltnumb = -50
					end
	
					local cameratilterman2 =tiltnumb*0.2
					



					local cameratiltermax = cameratilterman2
					
					local sinnerman = 1
					local sinnerman2 = 0
					for i = 20,1,-1 do
						game:GetService("RunService").RenderStepped:Wait()
						  if camerakill == true then return end
						sinnerman = sinnerman-0.05
						sinnerman2 = math.sin(sinnerman*1.25)
						print(sinnerman .. " I AM SIN")
						cameratilterman2 = cameratiltermax*sinnerman2
						
						cam.CFrame = cam.CFrame*CFrame.Angles(0,0,math.rad(cameratilterman2))
					end
	wait(1)
				downeddel = false

end))
    end

hum.HealthChanged:Connect(function()
	colorparkourkill.Saturation = -1+hum.Health/hum.MaxHealth
	if hum.Health/hum.MaxHealth < 0.25 then
	    
	    if humdowner == false then
	        humdowner = true
	         downer()
	        end
	    end
	
	
	if hum.Health < befh then
	    combattime = 18
		local damagetiltmax = befh - hum.Health
		round(damagetiltmax,1)
		colormansup = colormansup-damagetiltmax*4.25
		local cameratilterman2 = math.random(damagetiltmax*-20,damagetiltmax*20)
		cameratilterman2 =     cameratilterman2 *0.05

		local cameratilterman3 = math.random(damagetiltmax*-20,damagetiltmax*20)
		cameratilterman3 =     cameratilterman3 *0.0008675


		local cameratiltermax = cameratilterman2
		local cameratiltermax2 = cameratilterman3
		local sinnerman = 1
		local sinnerman2 = 0
		for i = 10,1,-1 do
			game:GetService("RunService").RenderStepped:Wait()
			  
			sinnerman = sinnerman-0.1
			sinnerman2 = math.sin(sinnerman*1.25)
			print(sinnerman .. " I AM SIN")
			cameratilterman2 = cameratiltermax*sinnerman2
			cameratilterman3 = cameratiltermax2*sinnerman2
			cam.CFrame = cam.CFrame*CFrame.Angles(math.rad(cameratilterman3),0,math.rad(cameratilterman2))
		end


	end

	befh = hum.Health        

end)

function tilterepic(maxnumbman,slideringman)
	coroutine.resume(coroutine.create(function()

		if maxnumbman ~= 0 then
			local sinnerman = 0
			local slidingtruth = false
			if slideringman ~= nil then
				if slideringman == true then
					slidingtruth = true
				end
			end
			for i = 20,1,-1 do
				if slidingtruth == false then
					if wallrunning == false then return end      
				end

				if slidingtruth == true then
					if sliding == false then return end
				end

				game:GetService("RunService").RenderStepped:Wait()
				  if camerakill == true then return end
				sinnerman = sinnerman+0.05
				sinnerman = math.sin(sinnerman*1.25)
				print(sinnerman .. " I AM SIN2")
				cameratilterman = maxnumbman*sinnerman
			end
		else
			print("I AM ZERO BOYO")
			local cameratiltermax = cameratilterman

			local sinnerman = 1
			local sinnerman2 = 0
			for i = 10,1,-1 do
				game:GetService("RunService").RenderStepped:Wait()
				  if camerakill == true then return end
				sinnerman = sinnerman-0.1
				sinnerman2 = math.sin(sinnerman*1.25)
				print(sinnerman .. " I AM SIN")
				cameratilterman = cameratiltermax*sinnerman2
			end
			wait()
			cameratilterman = 0
		end
	end))
end


local rolldel =false
function roll()
    
	if sliding == true then return end
	if hitfloor == false then return end
	if wallrunning == true then return end
	if rolldel == true then return end
	rolldel = true
	randomclothrollsound(true)
	rollingsound.TimePosition = 0.3
	rollingsound:Play()
	root.Velocity = Vector3.new(0,0,0)
	local x, y, z = root.CFrame:ToEulerAnglesYXZ()
	rollering = true
tricksinarow = tricksinarow+1
	local rollmancf = CFrame.new(Vector3.new(root.Position.X,floorpositiony+1.5,root.Position.Z))*CFrame.Angles(0, y, 0)

	root.CFrame = rollmancf

	wait()
	root.Velocity = Vector3.new(0,0,0)


	flow  = flow+(flowmax-flowmin)/8
	runvel.Velocity = (root.CFrame.LookVector*hum.WalkSpeed)
	local bp = Instance.new("BodyPosition",torso)
	bp.Position = Vector3.new(0,floorpositiony,0)
	bp.MaxForce = Vector3.new(0,999999999,0)
	bp.P = 25000
	hum.PlatformStand = true
	runvel.MaxForce = Vector3.new(99999,99999,99999)
	gyro.CFrame = rollmancf
	gyro.P = 99999
	gyro.MaxTorque = Vector3.new(99999,99999,99999)
	rollplay:Play()
	local lookcfog = cam.CFrame
	local angle = 0
	rollplay:AdjustSpeed(0)
	rollplay.TimePosition = 1
local rotatenumb = -18
if gobackroll == true then
rotatenumb = 18
end

	for i = 20,1,-1 do
		rs.Heartbeat:Wait()
		  if camerakill == true then return end
runvel.MaxForce = Vector3.new(99999,99999,99999)
runvel.Velocity = rollmancf.LookVector*-rotatenumb*3
		gyro.CFrame =	gyro.CFrame*CFrame.Angles(math.rad(rotatenumb),0,0)
		root.CFrame = gyro.CFrame
	end
runvel.MaxForce = Vector3.new(0,0,0)
	rollplay:Stop()
	hum.PlatformStand = false
	rollering = false
	bp:Destroy()
	gyro.P = befpower
	runvel.MaxForce = Vector3.new(0,0,0)
	gyro.MaxTorque = Vector3.new(0,0,0)
	root.Velocity = Vector3.new(0,0,0)
	root.Velocity = Vector3.new(0,0,0)
	rolldel = false
if rotatenumb  == 18 then
cam.CFrame = lookcfog 
end
	wait()

end


local cdown = false

UIS.InputBegan:Connect(function(input,g)

	if input.KeyCode == Enum.KeyCode.C then
		if g then return end
		cdown = true

	end
	if input.KeyCode == Enum.KeyCode.P then
	    if g then return end
		hum:TakeDamage(1)
	end
end)

UIS.InputEnded:Connect(function(input,g)
	if input.KeyCode == Enum.KeyCode.C then
		if g then return end
		cdown = false
	end
end)

wallrunable = false

wallrunning = false
hitfloor = false
leftwallrunning = false
rightwallrunning = false
onfloor = false
frontwallrunning = false
fronthit = false
rs = game:GetService("RunService")
cam = workspace.CurrentCamera


UIS.InputBegan:Connect(function(input,gamestuff)
	if input.KeyCode == Enum.KeyCode.X then
		if camerakill == true then return end
		if gamestuff then return end
		if camerakill == false then
			for i = 5,1,-1 do
				rs.RenderStepped:Wait()
				  if camerakill == true then return end
				cam.CFrame = cam.CFrame*CFrame.Angles(0,math.rad(35),0)
			end
		end
	end
end)
local rollering = false
coroutine.resume(coroutine.create(function()

	while true do
	      if camerakill == true then return end
		rs.RenderStepped:Wait()

if combattime > 0.05 then
if combatmusic.Volume ~= 0.5 then 
    combatmusic.Volume = 0.5
    ambience.Volume = 0
    explorationmusic.Volume = 0
    combatmusic:Play()
end
combattime = combattime-0.01
else
    combattime = 0
    if combatmusic.Volume == 0.5 then 
    combatmusic.Volume = 0
    ambience.Volume = 0.5
  
    explorationmusic.Volume = 0
end
    end
		if rolldel == true or downed == true  then
if camerakill == true then return end
			cam.CFrame = char:WaitForChild("Head").CFrame

		end
	if camerakill == false then
	    winder.Volume = root.Velocity.Magnitude*0.015
	    if winder.Volume > 5 then
	        winder.Volume = 5
	        end
	    winder.PlaybackSpeed = root.Velocity.Magnitude*0.015
	      if winder.PlaybackSpeed > 4 then
	        winder.PlaybackSpeed = 4
	      end
	    windercloth.Volume = root.Velocity.Magnitude*0.015
	    if windercloth.Volume > 5 then
	        windercloth.Volume = 5
	        end
	    windercloth.PlaybackSpeed = root.Velocity.Magnitude*0.015
	      if windercloth.PlaybackSpeed > 2 then
	        windercloth.PlaybackSpeed = 2
	        end
	    end


		if rolldel == false and wallrunning == false and sliding == false and  downed == false and holding == false then
			hum.AutoRotate = true
			if slidingsound.IsPlaying == true then 
			    slidingsound:Stop()
			end
		    if wallrunningsound.IsPlaying == true then
		        wallrunningsound:Stop()
		        end
		else
			hum.AutoRotate = false
			if wallrunning == true then
			     if wallrunningsound.IsPlaying == false then
		        wallrunningsound:Play()
		        end
			    else
			     if wallrunningsound.IsPlaying == true then
		        wallrunningsound:Stop()
		        end
			    end
			
			
			if sliding == true then
			    		if slidingsound.IsPlaying == false then 
			    slidingsound:Play()
			    		end
		    else
		        			if slidingsound.IsPlaying == true then 
			    slidingsound:Stop()
			    end
			    end
		end

	end

end))
function wallrunabletrue()
	coroutine.resume(coroutine.create(function()
		if hitfloor == true then return end
		wallrunable = true
		wait(0.05)
		wallrunable = false
	end))
end


wallrundel = false
function verticalwallrun(grav2)
	coroutine.resume(coroutine.create(function()
		if wallrundel == true then return end
		if wallrunning == true then return end
		if downed == true then return end
		if cdown == true then return end
		if wallrunable == false then return end

		if fronthit then

			print("Made it 1")
			local rr = Ray.new(root.Position,root.CFrame.LookVector*5)
			local rhit,ray,rpoint = workspace:FindPartOnRayWithIgnoreList(rr,ignorelist)
			if rhit then
				if rhit then
					wallrunning = false
					wait()
					tilterepic(0)
					tricksinarow = tricksinarow+1
					wallrunning = true
					gyro.CFrame = CFrame.new(root.Position,root.Position+rpoint)*CFrame.Angles(math.rad(-22),math.rad(180),0)
					gyro.MaxTorque = Vector3.new(99999,99999,99999)


					local grav = grav2-11
					runvel.Velocity = Vector3.new(0,grav,0)
					print("Made it 2")
					runvel.MaxForce = Vector3.new(99999,99999,99999)
					wallrunable = false
					hum.PlatformStand = true
						randomclothrollsound()
					verticalwallrunanimplay:Play()
					while wallrunning == true do
						rs.RenderStepped:Wait()
						  if camerakill == true then return end

						grav = grav-0.8
						local r2 = Ray.new(root.Position,root.CFrame.LookVector*5)
						local hit,ray,point = workspace:FindPartOnRayWithIgnoreList(r2,ignorelist)
						if hit then
							print("Made it 3")
							if hitfloor then wallrunning = false end
							if cdown == true then wallrunning = false end
							if hit then
								gyro.CFrame = CFrame.new((ray+root.CFrame.LookVector*-2),(ray+root.CFrame.LookVector*-2)+point)*CFrame.Angles(math.rad(-22),math.rad(180),0)
								runvel.Velocity = Vector3.new(0,grav,0)
								gyro.P = befpower
								if wallrunable == true then

									wallrunning = false
									gyro.MaxTorque = Vector3.new(0,0,0)
									hum.PlatformStand = false
									print("Jump")
									randomclothrollsound()
										jumplandsoundthingy:Play()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
							bodymovesound:Play()
									hum.PlatformStand = false
									runvel.velocity = root.CFrame.LookVector*-hum.WalkSpeed+Vector3.new(0,30,0)
									wait(0.22)
								end

							else

								wallrunning = false

							end
						else

							wallrunning = false


						end
					end
					hum.PlatformStand = false
					verticalwallrunanimplay:Stop()
					gyro.MaxTorque = Vector3.new(0,0,0)
					print("Wall run ended")

					runvel.MaxForce = Vector3.new(0,0,0)
					hum:ChangeState(Enum.HumanoidStateType.Jumping)
					return
				end




			end

		end
	end))
end



function wallruncheck()
    	if downed == true then 
    	    if rolldel == false and downeddel == false then
    	        downedanim1play:Stop()
    	          downed = false
    	          hum.JumpPower = 50
    	        roll()
    	      return
    	        end
    	    
    	     end
	if sliding == true then return end
	if cdown == true then
		if hitfloor == true then
			roll()
		end
	end
	if wallrundel == true then return end
	if wallrunning == true then return end
	if wallrunable == false then return end
	if cdown == true then return end
	if dodgedel == true then return end
	wallrunable = false
	local rr = Ray.new(root.Position,root.CFrame.RightVector*3.5)
	local rhit,ray,rpoint = workspace:FindPartOnRayWithIgnoreList(rr,ignorelist)
	if rhit then
		if rhit then

			wallrunning = true
			gyro.CFrame = CFrame.new(root.Position,root.Position+rpoint)*CFrame.Angles(0,math.rad(-90),math.rad(20))
			gyro.MaxTorque = Vector3.new(99999,99999,99999)
			hum.PlatformStand = true

			local grav = 20
			runvel.Velocity = gyro.CFrame.LookVector*30+Vector3.new(0,grav,0)
			runvel.Velocity = runvel.Velocity + gyro.CFrame.RightVector*5
			runvel.MaxForce = Vector3.new(99999,99999,99999)
			rightwallrunanimplay:Play()
				randomclothrollsound()
			tricksinarow = tricksinarow+1
			tilterepic(35)
			while wallrunning == true do
			    if camerakill == true then return end
				rs.RenderStepped:Wait()
 
				grav = grav-0.95
				local r2 = Ray.new(root.Position,root.CFrame.RightVector*5)
				local hit,ray,point = workspace:FindPartOnRayWithIgnoreList(r2,ignorelist)
				if hit then

					if hitfloor then wallrunning = false end
					if cdown == true then wallrunning = false end
					if fronthit == true then print("Face died") tilterepic(0) wallrunning = false  rightwallrunanimplay:Stop()	gyro.MaxTorque = Vector3.new(0,0,0)
						print("Wall run end")

						runvel.MaxForce = Vector3.new(0,0,0)wallrunable = true verticalwallrun(grav+hum.WalkSpeed)  return end
					if hit then
						gyro.CFrame = CFrame.new((ray+root.CFrame.RightVector*-2),(ray+root.CFrame.RightVector*-2)+point)*CFrame.Angles(0,math.rad(-90),math.rad(20))
						runvel.Velocity = gyro.CFrame.LookVector*hum.WalkSpeed+Vector3.new(0,grav,0)
						gyro.P = befpower
						if wallrunable == true then
							tilterepic(0)
							wallrunning = false
							rightwallrunanimplay:Stop()
							gyro.MaxTorque = Vector3.new(0,0,0)
							hum.PlatformStand = false
										jumplandsoundthingy:Play()
											randomclothrollsound()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
							bodymovesound:Play()
							runvel.velocity = cam.CFrame.LookVector*hum.WalkSpeed+Vector3.new(0,30,0)
							wait(0.22)
						end

					else

						wallrunning = false

					end
				else

					wallrunning = false


				end
			end
			tilterepic(0)
			hum.PlatformStand = false
			rightwallrunanimplay:Stop()
			gyro.MaxTorque = Vector3.new(0,0,0)
			print("Wall run end")
			runvel.MaxForce = Vector3.new(0,0,0)
			return
		end




	end

	local rl = Ray.new(root.Position,root.CFrame.RightVector*-3.5)
	local lhit,ray,rpoint = workspace:FindPartOnRayWithIgnoreList(rl,ignorelist)
	if lhit then
		if lhit then

			wallrunning = true

			gyro.CFrame = CFrame.new(root.Position,root.Position+rpoint)*CFrame.Angles(0,math.rad(90),math.rad(-20))
			gyro.MaxTorque = Vector3.new(99999,99999,99999)
			gyro.P = 250
			local grav = 20
			runvel.Velocity = (gyro.CFrame.LookVector*30+Vector3.new(0,grav,0))
			runvel.Velocity = runvel.Velocity + gyro.CFrame.RightVector*-5
			hum.PlatformStand = true


			leftwallrunanimplay:Play()
				randomclothrollsound()
			tilterepic(-35)
			tricksinarow = tricksinarow+1
			runvel.MaxForce = Vector3.new(99999,99999,99999)
			
			while wallrunning == true do
  if camerakill == true then return end
				rs.RenderStepped:Wait()

				if hitfloor then wallrunning = false end
				if fronthit == true then print("Face died") 	tilterepic(0) wallrunning = false leftwallrunanimplay:Stop() 	gyro.MaxTorque = Vector3.new(0,0,0)
					print("Wall run end")
					runvel.MaxForce = Vector3.new(0,0,0) wallrunable= true verticalwallrun(grav+hum.WalkSpeed) return end
				rs.RenderStepped:Wait()
				  if camerakill == true then return end
				grav = grav-0.95
				local r2 = Ray.new(root.Position,root.CFrame.RightVector*-5)
				local hit,ray,point = workspace:FindPartOnRayWithIgnoreList(r2,ignorelist)
				if hit then

					if cdown == true then wallrunning = false end
					if hit then
						gyro.CFrame = CFrame.new((ray+root.CFrame.RightVector*2),(ray+root.CFrame.RightVector*2)+point)*CFrame.Angles(0,math.rad(90),math.rad(-20))
						runvel.Velocity = gyro.CFrame.LookVector*hum.WalkSpeed+Vector3.new(0,grav,0)
						gyro.P = befpower

						if wallrunable == true then

							wallrunning = false
							tilterepic(0)
							leftwallrunanimplay:Stop()
							gyro.MaxTorque = Vector3.new(0,0,0)
							hum.PlatformStand = false
										jumplandsoundthingy:Play()
											randomclothrollsound()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
							bodymovesound:Play()
							runvel.velocity = cam.CFrame.LookVector*hum.WalkSpeed+Vector3.new(0,30,0)
							wait(0.22)
						end

					else

						wallrunning = false

					end
				else

					wallrunning = false


				end
			end
			hum.PlatformStand = false
			leftwallrunanimplay:Stop()
			tilterepic(0)
			gyro.MaxTorque = Vector3.new(0,0,0)
			print("Wall run end")
			runvel.MaxForce = Vector3.new(0,0,0)
			return
		end




	end
	wallrunable = true
	verticalwallrun(hum.WalkSpeed+20)

end






local spacedown = false
local backjumpdel = false
local backhit = false
UIS.InputBegan:Connect(function(inpt,gamestuff)
	if inpt.KeyCode == Enum.KeyCode.Space then
		if gamestuff then return end
				if wallrunning == false then
		    
		    if sliding == false then
		        if backhit == true then
		            if hitfloor == false then
		            	jumplandsoundthingy:Play()
		            randomclothrollsound(false)
		            root.Velocity = root.CFrame.LookVector*120+Vector3.new(0,40,0)
		            end
		            end
		        end
		    
		    end
		wallrunabletrue()
		wallruncheck()
		if sliding == true then

			spacedown = true
			wait(0.1)
			spacedown = false
		end

		wait(0.1)
		if wallrunning == false then
			if rolldel == false then

				if backjumpdel == false then
				    

				end

			end

		end
	end



end)




function slide()
	coroutine.resume(coroutine.create(function()
	    	if downed == true then return end
		if sliding == true then return end
		sliding = true
		randomclothrollsound()
		tilterepic(-15,true)
		hum.PlatformStand = true
		gyro.MaxTorque = Vector3.new(99999,99999,99999)
		gyro.P = befpower*3

		runvel.MaxForce = Vector3.new(99999,99999,99999)
		local ogcf = root.CFrame
		local befrooty = root.Position.Y
		local ogcf = root.CFrame
		gyro.CFrame = ogcf*CFrame.Angles(math.rad(80),0,0)
		print("BEGINSLIDE")
		tricksinarow = tricksinarow+1
		while sliding == true do 
			rs.RenderStepped:Wait()
			  if camerakill == true then return end
			runvel.Velocity = (ogcf.LookVector*flow*1.45)+Vector3.new(0,-70,0)

			slidingplay:Play()
			slidingplay:AdjustSpeed(0)
			if root.Position.Y+0.05 < befrooty then
				flow = flow+flowmax/70
			end

			befrooty = root.Position.Y



			if root.Velocity.Magnitude < 20 then
				sliding = false
				slidingplay:Stop()
				tilterepic(0,true)
				cdown = false
				break
			end

			if cdown == false then
				sliding = false
				slidingplay:Stop()
				tilterepic(0,true)
				break
			else

			end

			flow = flow-flowmax/100



			if spacedown == true then
				sliding = false
				cdown = false
				slidingplay:Stop()
				tilterepic(0,true)
				break
		
			end


			if flow < flowmin+5 then
				sliding = false
				flow = flowmin
				slidingplay:Stop()
				tilterepic(0,true)
				break
			end

		end


		gyro.MaxTorque = Vector3.new(0,0,0)
		gyro.P = befpower

		runvel.MaxForce = Vector3.new(0,0,0)
		hum.PlatformStand = false
		if spacedown == true  and flow < flowmax then
			hum.PlatformStand = true
			sliding = false
			tilterepic(0,true)
			slidingplay:Stop()
			local x, y, z = cam.CFrame:ToEulerAnglesYXZ()
			rollering = true

			root.CFrame = CFrame.new(root.Position)*CFrame.Angles(0, y, 0)
			bodymovesound:Play()
			
			roll()
			return
				
				elseif spacedown == true and flowmax+3 < flow then
			hum.PlatformStand = false
			sliding = false
			tilterepic(0,true)
			slidingplay:Stop()
			runvel.MaxForce = Vector3.new(99999,99999,99999)
			bodymovesound:Play()
			jumplandsoundthingy:Play()
				randomclothrollsound()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
			runvel.velocity = cam.CFrame.LookVector*flow*2+Vector3.new(0,flow,0)
			coroutine.resume(coroutine.create(function()


				local tiltnumb = 0
				local rannum = math.random(1,4)

				if rannum == 1 then
					tiltnumb = 40
				elseif rannum == 2 then
					tiltnumb = 20
				elseif rannum == 3 then
					tiltnumb = -40
				else
					tiltnumb = -20
				end

				local cameratilterman2 =tiltnumb*0.2




				local cameratiltermax = cameratilterman2

				local sinnerman = 1
				local sinnerman2 = 0
				for i = 10,1,-1 do
					game:GetService("RunService").RenderStepped:Wait()
					  if camerakill == true then return end
					sinnerman = sinnerman-0.1
					sinnerman2 = math.sin(sinnerman*1.25)
					print(sinnerman .. " I AM SIN")
					cameratilterman2 = cameratiltermax*sinnerman2

					cam.CFrame = cam.CFrame*CFrame.Angles(0,0,math.rad(cameratilterman2))
				end


			end))
			wait(0.25)
			runvel.MaxForce = Vector3.new(0,0,0)
			return
				
				else
			hum.PlatformStand = false
			sliding = false
		
			return
		end

	end))
	
end

local sliding = false
local rppos = Vector3.new(0,0,0)
local landed = false
local pressspacebeforeland = false
local landdel = false
local beforelandy = 0
function landdeler()
	coroutine.resume(coroutine.create(function()
		landdel = true
		wait(0.2)
		landdel = false
		pressspacebeforeland = false
		beforelandy = root.Position.Y
	end))
end

UIS.InputBegan:Connect(function(input,gamestuff)
	if springjumpdel == true then return end
	if input.KeyCode == Enum.KeyCode.Space then
		if gamestuff == true then return end
		if hitfloor == true then
			if pressspacebeforeland == false then
				pressspacebeforeland = true
				else
				if root.Position.Y > beforelandy+2 then
					runvel.MaxForce = Vector3.new(99999,99999,99999)
					runvel.Velocity = cam.CFrame.LookVector*flow*2+Vector3.new(0,flow/2,0)
					springjumpdel = true
														randomclothrollsound()
										jumplandsoundthingy:Play()
			local rannum = math.random(1,3)
if rannum == 1 then
jumplandsoundthingy.SoundId = "rbxassetid://6079433272"
elseif rannum == 2 then
jumplandsoundthingy.SoundId = "rbxassetid://6079432684"
else
jumplandsoundthingy.SoundId = "rbxassetid://6079431954"
end
							bodymovesound:Play()
					pressspacebeforeland = false
					springjumpplay:Play()
					tricksinarow = tricksinarow+1
					coroutine.resume(coroutine.create(function()
						
					
					local tiltnumb = 0
					local rannum = math.random(1,4)
					
					if rannum == 1 then
						tiltnumb = 40
						elseif rannum == 2 then
						tiltnumb = 20
					elseif rannum == 3 then
						tiltnumb = -40
						else
						tiltnumb = -20
					end
	
					local cameratilterman2 =tiltnumb*0.2
					



					local cameratiltermax = cameratilterman2
					
					local sinnerman = 1
					local sinnerman2 = 0
					for i = 10,1,-1 do
						game:GetService("RunService").RenderStepped:Wait()
						  if camerakill == true then return end
						sinnerman = sinnerman-0.1
						sinnerman2 = math.sin(sinnerman*1.25)
						print(sinnerman .. " I AM SIN")
						cameratilterman2 = cameratiltermax*sinnerman2
						
						cam.CFrame = cam.CFrame*CFrame.Angles(0,0,math.rad(cameratilterman2))
					end


					end))

			      
					
					wait(0.2)
					springjumpplay:Stop()
					runvel.MaxForce = Vector3.new(0,0,0)
					wait(0.2)
					springjumpdel = false
				end
			end
		
			
		end
	end
end)


local plr = game.Players.LocalPlayer
local Character = plr.Character or plr.CharacterAdded:Wait()
local Root = Character:WaitForChild("HumanoidRootPart")
local Head = Character:WaitForChild("Head")
local Hum = Character:WaitForChild("Humanoid")
local holdingon = Instance.new("Animation",hum)
holdingon.AnimationId = "rbxassetid://148831003"
local climbingstuffs = Instance.new("Animation",hum)
climbingstuffs.AnimationId = "rbxassetid://125750702"
local CA = Hum:LoadAnimation(climbingstuffs)
local HA = Hum:LoadAnimation(holdingon)
local TouchGui = plr:WaitForChild("PlayerGui"):FindFirstChild("TouchGui")
local UIS = game:GetService("UserInputService")

ledgeavailable = true
holding = false




	function climb()
		local Vele = Instance.new("BodyVelocity",Head)
		Root.Anchored = false
		Vele.MaxForce = Vector3.new(1,1,1) * math.huge
		Vele.Velocity = Root.CFrame.LookVector * 10 + Vector3.new(0,30,0)
		HA:Stop() CA:Play()
		game.Debris:AddItem(Vele,.15)
		holding = false
		wait(.0)
		ledgeavailable = true
	end
	
	UIS.InputBegan:Connect(function(Key,Chat)
		if not holding then return end 
		if Key.KeyCode == Enum.KeyCode.Space and not Chat then
			climb()
		end
	end)
	
	if TouchGui then
		TouchGui:WaitForChild("TouchControlFrame"):WaitForChild("JumpButton").MouseButton1Click:Connect(function()
			if not holding then return end climb()
		end)
	end




while true do
	repeat rs.RenderStepped:Wait() until sliding == false
	rs.RenderStepped:Wait()
	local r = Ray.new(root.Position,root.CFrame.LookVector*-6)
	local hit,ray = workspace:FindPartOnRayWithIgnoreList(r,ignorelist)
		if hit then
		backhit = true
	
	else
		backhit = false
	end
	
	  if camerakill == true then return end
	if hum.FloorMaterial == Enum.Material.Air then
		if landed == true then
			landed = false
		end
		else
		if landed == false then
			landed = true
			
			landdeler()
		end
		
	end
	local killx,killy,killz = root.CFrame:ToEulerAnglesYXZ()
	local nobadcf = CFrame.new(root.Position)*CFrame.Angles(0,killy,0)
	local rclimber = Ray.new(Head.CFrame.p, nobadcf.LookVector * 6)
	
	local killclimberray =  Ray.new(Head.CFrame.p+Vector3.new(0,0.5,0), nobadcf.LookVector * 9)
	
	local killmansraypart,killmansposition workspace:FindPartOnRayWithIgnoreList(killclimberray,ignorelist)
	
	local part,position = workspace:FindPartOnRayWithIgnoreList(rclimber,ignorelist)
	if not killmansraypart then
	    
	    
	if part and ledgeavailable and not holding and not killmansraypart  then
		if part.Size.Y >= 4 and part.CanCollide == true and killmansraypart == nil and  part.Transparency ~= 1  then
			if Head.Position.Y >= (part.Position.Y + (part.Size.Y / 2)) - 1 and Head.Position.Y <= part.Position.Y + (part.Size.Y / 2) and Hum.FloorMaterial == Enum.Material.Air and sliding == false and downed == false and wallrunning == true then
			if HA.IsPlaying == false then
			    wallrunning = false
			    root.CFrame = nobadcf
			    randomclothrollsound(false)
			    HA:Play() 
			    wallrunning = false
			    HA:AdjustSpeed(0)
			    HA.TimePosition = 1.3
			end
		    
				Root.Anchored = true holding = true ledgeavailable = false
			end
		end
	end
	end
	local r = Ray.new(root.Position,Vector3.new(0,1,0).Unit*-5.5)
	local hit,ray = workspace:FindPartOnRayWithIgnoreList(r,ignorelist)
	if hit then
		floorpositiony = ray.Y
		if	hitfloor == false then
			hitfloor = true
			if root.Velocity.Y < -60 then
				if cdown == true then
					root.Velocity = Vector3.new(root.Velocity.X,-10,root.Velocity.Z)
					cdown = false

					roll()
					else
					    if root.Velocity.Y < -90  then
					       downer()
			
					        end

				end
			end
		end

	else
		if	hitfloor == true then
			hitfloor = false
		end
	end
	local r = Ray.new(root.Position,root.CFrame.LookVector*1.8)
	local hit,ray,rp = workspace:FindPartOnRayWithIgnoreList(r,ignorelist)
	if hit then
		fronthit = true
		rppos = rp
	else
		fronthit = false
	end
	if hitfloor == true then

		if cdown == true then
			if flow < flowmin+5 then

				if flow ~= crouchspeed then
					flow = crouchspeed
				end
				if crouchingplay.IsPlaying == false then
					crouchingplay:Play()
					randomclothrollsound()
				end
			else
				if landed == true then
					slide()	
				end
				
			end
		end

	end
	if cdown == false then
		if crouchingplay.IsPlaying == true then
			crouchingplay:Stop()
		end
		if walkingmode == false  and hum.MoveDirection ~= Vector3.new(0,0,0)  or wallrunning == true then
			flow = flow+flowmax/70
		
			
			if tricksinarow > 8 then
			    			if combatmusic.Volume ~= 0.5 then
			    combatmusic.Volume = 0
			    ambience.Volume = 0
			    explorationmusic.Volume =0.5
			    end
			    end
			
			if timestanding ~= 0 then
			    timestanding = 0
			    end
			if flow > flowmax then
				flow = flowmax
			end
		else
			flow = flow-flowmax/23
			if combatmusic.Volume ~= 0.5 then
			    timestanding = timestanding+0.05
			end
		   
			if timestanding > 18 then
			    timestanding = 0
			    tricksinarow = 0
			   if combatmusic.Volume ~= 0.5 then
			       if ambience.Volume ~= 0.5 then
			           ambience.Volume = 0.5
			           explorationmusic.Volume = 0
			           combatmusic.Volume = 0
			           
			           end
			       
			       end
			    end
			if flow < flowmin then
				flow = flowmin
			end
		end



	end
	if downed == false then
	    	hum.WalkSpeed = flow
	    	else
	    	    hum.WalkSpeed = 1
	    end

end