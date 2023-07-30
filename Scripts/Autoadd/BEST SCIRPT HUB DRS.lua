local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Doors Loader", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local DoorsTab = Window:MakeTab({
	Name = "Lots of Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

DoorsTab:AddButton({
	Name = "Zooaphilics Gui",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/zoophiliaphobic/POOPDOORS/main/script.lua'))()
      		print("button pressed")
  	end    
})

OrionLib:MakeNotification({
	Name = "Welcome",
	Content = "Have fun exploiting",
	Image = "rbxassetid://4483345998",
	Time = 5
})

DoorsTab:AddButton({
	Name = "Vitamins Tool",
	Callback = function()
		getgenv().CustomVitamins = {
			SpeedBoost = 7,
			EffectDuration = 25
		}
		loadstring(game:HttpGet("https://pastebin.com/raw/qH9PEhfQ"))()
      		print("button pressed")
  	end    
})

DoorsTab:AddButton({
	Name = "Unlock Hardcore Mode",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript'))()
      		print("button pressed")
  	end    
})

DoorsTab:AddButton({
	Name = "Tablet",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/bucRxAMi'))()
      		print("button pressed")
  	end    
})

local Section = DoorsTab:AddSection({
	Name = "Tablet Spawns in room 1"
})

local DoorsTab = Window:MakeTab({
	Name = "Screech Morph",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

DoorsTab:AddButton({
	Name = "Screech Morph",
	Callback = function()
		local Screech = game:GetService("ReplicatedStorage").Entities.Screech:Clone()
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Screech" then
        v:Destroy()
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("MeshPart") then
        v.Transparency = 1
    end
    if v:IsA("Part") then
        v.Transparency = 1
    end
    if v:IsA("Accessory") then
        v:Destroy()
    end
    game.Players.LocalPlayer.Character.Head.face.Transparency = 1
end
Screech.Parent = game.Workspace
game:GetService("RunService").RenderStepped:Connect(function()
   Screech:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.2, -1.25))
end)
Screech.AnimationController:LoadAnimation(Screech.Animations.Idle):Play()
      		print("button pressed")
  	end    
})

DoorsTab:AddButton({
	Name = "Ambush Morph",
	Callback = function()
		local Ambush = game:GetObjects("rbxassetid://12227536887")[1]
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Ambush" then
        v:Destroy()
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("MeshPart") then
        v.Transparency = 1
    end
    if v:IsA("Part") then
        v.Transparency = 1
    end
    if v:IsA("Accessory") then
        v:Destroy()
    end
    game.Players.LocalPlayer.Character.Head.face.Transparency = 1
end
Ambush.Parent = game.Workspace
Ambush.Torso.Anchored = true
game:GetService("RunService").RenderStepped:Connect(function()
    Ambush:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0))
    game.Workspace.CurrentCamera.CFrame = (game.Players.LocalPlayer.Character.Head.CFrame * CFrame.Angles(math.rad(-30),0,0)) * CFrame.new(0,0.5,10)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 75
end)
      		print("button pressed")
  	end    
})

DoorsTab:AddButton({
	Name = "Terminal Vibes",
	Callback = function()
        -- Leave a like if you enjoyed!
loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/loadstring.lua"))()

      		print("button pressed")
  	end    
})

DoorsTab:AddButton({
	Name = "Banna Gun",
	Callback = function()
        getgenv().BananaGunSettings = {
            BananaSpeed = 100,
            BananaAmount = 1
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MasterOogway6147/Scripts/main/Doors/Kardin%20Hong/Banana%20Gun/Banana%20Gun.lua"))()
      		print("button pressed")
  	end    
})

DoorsTab:AddButton({
	Name = "Plaemen Entity Spawner",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/UtilitiesHub/main/UtilitiesGUI'))()

      		print("button pressed")
  	end    
})

DoorsTab:AddButton({
	Name = "Crucifix",
	Callback = function()
        


--// Tweakable values

_G.Uses = 1
_G.Range = 50.5

local Uses = _G.Uses

--// haha define stuff

local tweensv = game:GetService("TweenService")
local Player = game.Players.LocalPlayer
local Character = Player.Character
local Hum = Character.Humanoid

local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom

local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
	camara.CFrame = camara.CFrame * shakeCf
end)
	
camShake:Start()

--// main code

local ToolFunctions = {
     OnClick = function() end,
     OnEquip = function() end,
     OnUnequipped = function() end,
}

local MainModels = game:GetObjects("rbxassetid://12424097714")[1]
MainModels.Parent = game.ReplicatedStorage

local Tool_obj = MainModels.Crucifix
local ToolHandle = Tool_obj:WaitForChild("Handle",5)

local Portal = MainModels.Repentance


ToolHandle.Anchored = false

local Cooldown = false
local Equipped = false

--// Tool events

ToolFunctions.OnClick = function()
	
end

ToolFunctions.OnEquip = function()

	Equipped = true
	

	
	--make it so you can hell entities
	
	
	spawn(function()
	repeat
	task.wait(.1)
		local thing,_D = entity_check()
	
		if thing and not thing:GetAttribute("BeingSentToBrazil") and _D < _G.Range and Equipped then
			
			camShake:Start()
			camShake:ShakeOnce(10,30,0.7,0.5)
			
			local Haw = ToolHandle:Clone()
			Haw.Parent = workspace

			
			if Uses == 1 then
				Equipped = false
				
				Tool_obj:Destroy()
			else
			
				Tool_obj.Parent = Player.Backpack
				
				Equipped = false
				
				Uses -= 1
			end
			
			thing:SetAttribute("StopMovement",true)
			thing:SetAttribute("BeingSentToBrazil",true)
			
			hell(thing)
		end
	until Equipped == false
end)
	
	
	Player:SetAttribute("Hidden",true)
	
	
	
end

ToolFunctions.OnUnequipped = function()
	Equipped = false
	
	Player:SetAttribute("Hidden",false)
end




Tool_obj.Equipped:Connect(function()
	ToolFunctions.OnEquip()
end)

Tool_obj.Activated:Connect(function()
	ToolFunctions.OnClick()
end)

Tool_obj.Unequipped:Connect(function()
	ToolFunctions.OnUnequipped()
end)


function entity_check()
	local closestDistance, closestObject = math.huge, nil
		for _, part in ipairs(workspace:GetDescendants()) do
			if part:IsA("Model") then
				local part1 = part:GetAttribute("IsCustomEntity")
				if part1 then
					local distance = game.Players.LocalPlayer:DistanceFromCharacter(part.PrimaryPart.Position)
						if distance < closestDistance then
						closestDistance = distance
						closestObject = part
					end
					
				end
			end
		end
	return closestObject, closestDistance
end


function hell(oldentity)
	local entity
	

	entity = oldentity:Clone()
	entity.Parent = workspace
	entity.Name = "Fake"..oldentity.Name
	
	oldentity:Destroy()

	
	local primary = entity.PrimaryPart or entity:FindFirstChildOfClass("Part")

	--CAST A RAY
	
	local params = RaycastParams.new()
	params.FilterType = Enum.RaycastFilterType.Blacklist
	params.FilterDescendantsInstances = { Character, entity }
		
	local ray = workspace:Raycast(primary.Position, Vector3.new(0,-1,0) * 20, params)
		

	
	
	local gate = Portal:Clone()
	gate.Parent = workspace
	
	local pentagram = gate.Pentagram

	if ray then
		local part = Instance.new("Part")
		part.Anchored = true
		part.Position = ray.Position + Vector3.new(0, 1, 0)
		
		gate:PivotTo(part.CFrame * CFrame.new(0, -0.5, 0) * CFrame.Angles(0, 0, 0))
		
		part:Destroy()
	end
	
	--Spinning


	local spinrate = 2
	local crucifix_spin = Instance.new("NumberValue")
	local spinrate_changed = Instance.new("NumberValue")
	
	local gate_spin = game:GetService("RunService").Heartbeat:Connect(function()
		pentagram.RingAddonA.Orientation += Vector3.new(0, spinrate, 0)
		pentagram.RingAddonB.Orientation += Vector3.new(0, -spinrate, 0)
		pentagram.RingAddonC.Orientation += Vector3.new(0, spinrate * 0.8, 0)
		pentagram.Base.Orientation += Vector3.new(0, -spinrate * 0.5, 0)
		
		gate.Crucifix.Glow.Orientation += Vector3.new(0, crucifix_spin.Value, 0)
	end)
	
	spinrate_changed.Changed:Connect(function(V)
		spinrate = V
	end)
	
	for _,v in pairs(entity:GetDescendants()) do
		if v:IsA("BasePart") then 
			v.Anchored = true
			--v.Position = gate.Entity.Position + Vector3.new(0, 2, 0)
		end
	end
	
	local Stored = gate.Crucifix.Glow.CFrame  
	
	gate.Crucifix.Glow.Sound.TimePosition = 0
	gate.Crucifix.Glow.SoundFail.TimePosition = 0
	
	gate.Crucifix.Glow.Sound.SoundId = "rbxassetid://6555668806"
	gate.Crucifix.Glow.SoundFail.SoundId = "rbxassetid://6555668806"
	
	gate.Crucifix.Glow.Sound:Play()
	
	gate.Crucifix.Glow.CFrame = ToolHandle.CFrame
	
	local C = Player.Character
	local NewPos = C.HumanoidRootPart.CFrame * CFrame.new(0, 3.5, -6)
	
	spawn(function()
		
		tweensv:Create(gate.Crucifix.Glow, TweenInfo.new(1.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			--CFrame = Stored,
			CFrame = NewPos,
		}):Play()
		
		task.wait(.6)
		
		tweensv:Create(crucifix_spin, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
				Value = 50,
			}):Play()
	end)
	
	spawn(function()
		
		task.wait(1)
		
		tweensv:Create(gate.Crucifix.Glow.Light, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
			Range = 15,
			Brightness = 3
		}):Play()
	end)
	

	tweensv:Create(pentagram.Circle, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
		Position = pentagram.Circle.Position - Vector3.new(0, 10, 0),
	}):Play()

	camShake:ShakeOnce(10,15,4,5)

	tweensv:Create(spinrate_changed, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			Value = 5,
		}):Play()

	--[[
	
	tweensv:Create(crucifix_spin, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			Value = 50,
		}):Play()
		
	]]
	
	local function move(part)
		tweensv:Create(gate.Entity, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
			Position = gate.Entity.Position + Vector3.new(0,5,0),
		}):Play()
		
		tweensv:Create(part, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
			Position = part.Position + Vector3.new(0,5,0),
		}):Play()
		
		tweensv:Create(pentagram.Base.LightAttach.Light, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
			Range = 60,
			Brightness = 5
		}):Play()
	
		task.wait(3)
	
		tweensv:Create(part, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			Position = part.Position - Vector3.new(0,50,0),
		}):Play()
		
		
		tweensv:Create(gate.Entity, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			Position = gate.Entity.Position - Vector3.new(0,50,0),
		}):Play()
		
		
		
		
		--Sound fade
		
		for _,v in pairs(entity:GetDescendants()) do
			if v:IsA("Sound") then
				tweensv:Create(v, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Volume = 0,
				}):Play()
			elseif v:IsA("Light") then
				tweensv:Create(v, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Range = 0,
				}):Play()
			end
		end
		
		task.wait(1)
		
		tweensv:Create(gate.Crucifix.Glow.Light, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Brightness = 25,
			Range = 30,
		}):Play()
		
		tweensv:Create(pentagram.Base.LightAttach.Light, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
			Range = 0,
			Brightness = 2
		}):Play()
		
		--Gate
		
		tweensv:Create(spinrate_changed, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			Value = 0,
		}):Play()
		
		for _,v in pairs(pentagram:GetChildren()) do
			if v.Name == "BeamFlat" then
				spawn(function()
					if v:GetAttribute("Delay") ~= 0 then
						task.wait(v:GetAttribute("Delay"))
					end
					
					tweensv:Create(v, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
							Brightness = 0,
						}):Play()
					
				end)
			end
		end
		
		
	
	end
	
	--Entity fix

	for _,v in pairs(entity:GetDescendants()) do
		if v:IsA("BasePart") then
			spawn(function()
				move(v)
			end)
		end	
	end
	
	
	
	
	
	--Portal closing
	
	spawn(function()
		
		task.wait(5)
	
		tweensv:Create(crucifix_spin, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			Value = 0,
		}):Play()
		
		task.wait(1.5)

		--Crucifix
		
		tweensv:Create(gate.Crucifix.Glow.Light, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Brightness = 0,
			Range = 60,
		}):Play()
		
		camShake:ShakeOnce(3,10,0.7,0.5)
		
		gate.Crucifix.Glow.ExplodeParticle:Emit(50)
		
		tweensv:Create(gate.Crucifix.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = gate.Crucifix.Glow.Size * 4,
		}):Play()
		
		tweensv:Create(gate.Crucifix.Glow, TweenInfo.new(1.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Transparency = 1,
		}):Play()
		
		task.wait(5)
		
		gate:Destroy()
	
		gate_spin:Disconnect()
	end)
	
	
	task.wait(10)
	
	
	entity:Destroy()
end



Tool_obj.Parent = Player.Backpack
      		print("button pressed")
  	end    
})

DoorsTab:AddButton({
	Name = "Morph Gui",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/RmdComunnityScriptsProvider/AngryHub/main/DoorsMorphScript.lua'))()
      		print("button pressed")
  	end    
})











OrionLib:Init()