wait(1)
--By Rufus14
mouse = game.Players.LocalPlayer:GetMouse()
local rhandclone = game.Players.LocalPlayer.Character.Torso["Right Shoulder"]:Clone()
game.Players.LocalPlayer.Character.Torso["Right Shoulder"]:Remove()
local rhandweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
rhandweld.Part0 = game.Players.LocalPlayer.Character.Torso
rhandweld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
local lhandclone = game.Players.LocalPlayer.Character.Torso["Left Shoulder"]:Clone()
game.Players.LocalPlayer.Character.Torso["Left Shoulder"]:Remove()
local lhandweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
lhandweld.Part0 = game.Players.LocalPlayer.Character.Torso
lhandweld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
local llegclone = game.Players.LocalPlayer.Character.Torso["Left Hip"]:Clone()
game.Players.LocalPlayer.Character.Torso["Left Hip"]:Remove()
local llegweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
llegweld.Part0 = game.Players.LocalPlayer.Character.Torso
llegweld.Part1 = game.Players.LocalPlayer.Character["Left Leg"]
llegweld.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local rlegclone = game.Players.LocalPlayer.Character.Torso["Right Hip"]:Clone()
game.Players.LocalPlayer.Character.Torso["Right Hip"]:Remove()
local rlegweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
rlegweld.Part0 = game.Players.LocalPlayer.Character.Torso
rlegweld.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
rlegweld.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local rootjointclone = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint:Clone()
game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint:Remove()
local humanoidrootpart = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
humanoidrootpart.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
humanoidrootpart.Part1 = game.Players.LocalPlayer.Character.Torso
local heed = game.Players.LocalPlayer.Character.Torso["Neck"]:Clone()
local headweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
headweld.Part0 = game.Players.LocalPlayer.Character.Torso
headweld.Part1 = game.Players.LocalPlayer.Character.Head
headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
game.Players.LocalPlayer.Character.Torso.Neck:Remove()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
Sound0 = Instance.new("Sound")
Sound0.Volume = 5
Sound0.Parent = game.Players.LocalPlayer.Character.Head
Sound0.SoundId = "rbxassetid://173987372"
Sound0.Looped = true
Sound0:Play()
canwalk = true
howmuch = 0
hittd = false
function change(key)
    if key == "w" or key == "a" or key == "s" or key == "d" then
        howmuch = howmuch + 1
    end
end
function otherchange(key)
    if key == "w" or key == "a" or key == "s" or key == "d" then
        howmuch = howmuch - 1
    end
end
mouse.KeyDown:connect(change)
mouse.KeyUp:connect(otherchange)
--By Rufus14
mouse = game.Players.LocalPlayer:GetMouse()
using = false
hittd = false
--Converted with ttyyuu12345's model to script plugin v4
local txtfag = Instance.new("BillboardGui", game.Players.LocalPlayer.Character.Head)
txtfag.Adornee = suckadick
txtfag.Name = "kys nigga"
txtfag.Size = UDim2.new(2, 0, 1.2, 0)
txtfag.StudsOffset = Vector3.new(-5, 3, 0)
local textfag = Instance.new("TextLabel", txtfag)
textfag.Size = UDim2.new(6, 0, 1, 0)
textfag.FontSize = "Size8"
textfag.TextScaled = true
textfag.TextTransparency = 0
textfag.BackgroundTransparency = 1
textfag.TextTransparency = 0
textfag.TextStrokeTransparency = 0
textfag.Font = "Cartoon"
textfag.TextStrokeColor3 = Color3.new(0, 1, 0)
v = Instance.new("Part")
v.Name = "ColorBrick"
v.Parent = part
v.FormFactor = "Symmetric"
v.Anchored = true
v.CanCollide = false
v.BottomSurface = "Smooth"
v.TopSurface = "Smooth"
v.Size = Vector3.new(10, 5, 3)
v.Transparency = 0.7
v.BrickColor = game.Players.LocalPlayer.Character.Torso.BrickColor
v.Transparency = 1
textfag.TextColor3 = v.BrickColor.Color
textfag.TextStrokeColor3 = Color3.new(0, 0, 0)
v.Shape = "Block"
textfag.Text = "Script By Rufus14"
wait(2)
textfag.Text = "lol"
wait(0.3)
textfag.Text = game.Players.LocalPlayer.Character.Name.." The Brutal Anti-Furry and anti-skid"
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
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Weld2 = Instance.new("Weld")
Part3 = Instance.new("Part")
Decal4 = Instance.new("Decal")
Decal5 = Instance.new("Decal")
Model0.Name = "Flagloldiefurshits"
Model0.Parent = mas
Part1.Name = "Stick"
Part1.Parent = Model0
Part1.Material = Enum.Material.Wood
Part1.BrickColor = BrickColor.new("Dark orange")
Part1.Rotation = Vector3.new(0, 0, 126)
Part1.Shape = Enum.PartType.Cylinder
Part1.Size = Vector3.new(5.71999931, 0.319999993, 0.839999914)
Part1.CFrame = CFrame.new(-11.7340431, 3.40531874, -51.7842827, -0.58777535, -0.809025586, 0, 0.809025586, -0.58777535, 0, 0, 0, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.627451, 0.372549, 0.207843)
Part1.Position = Vector3.new(-11.7340431, 3.40531874, -51.7842827)
Part1.Orientation = Vector3.new(0, 0, 126)
Part1.Color = Color3.new(0.627451, 0.372549, 0.207843)
Weld2.Parent = Part1
Weld2.C0 = CFrame.new(1.73310661, 1.69616222, 0.00998687744, -2.56299973e-06, 1.00000119, 0, -1.00000119, -2.56299973e-06, 0, 0, 0, 1)
Weld2.Part0 = Part1
Weld2.Part1 = Part3
Part3.Name = "Flag"
Part3.Parent = Model0
Part3.BrickColor = BrickColor.new("Really black")
Part3.Rotation = Vector3.new(0, 0, 36)
Part3.Size = Vector3.new(3.32999945, 2.10000038, 0.0700000003)
Part3.CFrame = CFrame.new(-14.124959, 3.81048417, -51.7742958, 0.809026122, -0.587772548, 0, 0.587772548, 0.809026122, 0, 0, 0, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.Color = Color3.new(0, 0, 0)
Part3.Position = Vector3.new(-14.124959, 3.81048417, -51.7742958)
Part3.Orientation = Vector3.new(0, 0, 36)
Part3.Color = Color3.new(0, 0, 0)
Decal4.Parent = Part3
Decal4.Texture = "rbxassetid://1150731665"
Decal5.Name = "Decal1"
Decal5.Parent = Part3
Decal5.Texture = "rbxassetid://1150731665"
Decal5.Face = Enum.NormalId.Back
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
weld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
weld.Part0 = game.Players.LocalPlayer.Character.Torso
weld.Part1 = Part1
weld.C0 = CFrame.new(-0.244045258, 0.405305624, 0.555713654, -0.58777535, -0.809025586, -5.23747954e-22, 0.809025586, -0.58777535, 3.13253081e-22, -5.61275872e-22, -2.39603033e-22, 1)
local punch = Instance.new("Sound", game.Players.LocalPlayer.Character["Right Arm"])
punch.Volume = 3
punch.SoundId = "rbxassetid://131237241"
punch.TimePosition = 0
local FILTHYPRANK = Instance.new("Sound", game.Players.LocalPlayer.Character["Head"])
FILTHYPRANK.Volume = 10
FILTHYPRANK.SoundId = "rbxassetid://676845644"
FILTHYPRANK.TimePosition = 3.6
local thunder = Instance.new("Sound", game.Players.LocalPlayer.Character["Right Arm"])
thunder.Volume = 3
thunder.SoundId = "rbxassetid://949916584"
thunder.TimePosition = 0.4
local meme = Instance.new("Sound", game.Players.LocalPlayer.Character["Right Arm"])
meme.Volume = 3
meme.SoundId = "rbxassetid://949916584"
local gore = Instance.new("Sound", game.Players.LocalPlayer.Character["Right Arm"])
gore.Volume = 4
gore.SoundId = "rbxassetid://429400881"
gore.TimePosition = 0
canbefps = false
function switchfps(key)
	key = key:lower()
	if key == "z" then
		if canbefps then
			canbefps = false
		else
			canbefps = true
		end
	end
end
mouse.KeyDown:connect(switchfps)
function fps()
	if canbefps then
		workspace.CurrentCamera.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0,0,-0.9)
	end
end
game:GetService("RunService").RenderStepped:connect(fps)
function tentaclekick(key)
	if key == "f" and not using then
		using = true
		canwalk = false
		for i = 0,0.7 , 0.05 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.97511852, -0.684444427, 1, 7.09343726e-27, -1.96394811e-26, -1.65597681e-26, 0.829041839, -0.55919075, 1.19149551e-26, 0.55919075, 0.829041839),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.69545364, 1.02498245, 1, 8.33037116e-27, -8.30512761e-27, 1.84277907e-27, 0.587786973, 0.809019029, 1.17634938e-26, -0.809019029, 0.587786973),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50000048, 0.150976658, -0.603237152, 1, -3.70407732e-22, -4.55732897e-22, -2.65674116e-22, 0.406738937, -0.913547099, 5.23749266e-22, 0.913547099, 0.406738907),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0.150976658, -0.603237152, 1, -3.70407732e-22, -4.55732897e-22, -2.65674116e-22, 0.406738937, -0.913547099, 5.23749266e-22, 0.913547099, 0.406738907),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, 1.80491375e-26, -5.65455497e-27, -1.84277907e-26, 0.866028428, -0.499996245, -4.08945493e-27, 0.499996245, 0.866028428):inverse(),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		FILTHYPRANK.TimePosition = 3.8
		FILTHYPRANK:Play()
		wait(0.6)
		local sensoryee = Instance.new("Part", game.Players.LocalPlayer.Character["Right Leg"])
		sensoryee.Size = Vector3.new(1,1,1)
		sensoryee.CanCollide = false
		sensoryee.Transparency = 0
		sensoryee:BreakJoints()
		local weldsensor = Instance.new("Weld", sensoryee)
		weldsensor.Part0 = game.Players.LocalPlayer.Character["Right Leg"]
		weldsensor.Part1 = sensoryee
		weldsensor.C0 = weldsensor.C0 * CFrame.new(0,-0.5,0)
		local function tentacleshot(part)
			sensoryee:destroy()
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid then
				local canscan = true
				for i,v in pairs(humanoid.Parent:GetChildren()) do
					if v.ClassName == "Hat" or v.ClassName == "Accessory" then
						if v:findFirstChild("Handle") then
							if v.Handle:findFirstChild("Mesh") then
								if canscan and v.Handle.Mesh.MeshId == "rbxassetid://188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=170939831" or v.Handle.Mesh.MeshId == "rbxassetid://170939831" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=135446047" or v.Handle.Mesh.MeshId == "rbxassetid://135446047" or v.Handle.Mesh.MeshId == "rbxassetid://335037790" or v.Handle.Mesh.MeshId == "rbxassetid://361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=1374148" or v.Handle.Mesh.MeshId == "rbxassetid://1374148" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Handle.Mesh.MeshId == "rbxassetid://112495973" or v.Name == "FoxTail" or v.Name == "Zootopia_FoxEars" or v.Name == "FurryCatTail" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Name == "ArcticFoxHead" then
									canscan = false
									hittd = true
									local furfaggrowl = Instance.new("Sound", humanoid.Parent.Head)
									furfaggrowl.SoundId = "rbxassetid://534269232"
									furfaggrowl.Volume = 7
									furfaggrowl:Play()
									punch:Play()
									local rhandclone = humanoid.Parent.Torso["Right Shoulder"]:Clone()
									local rhandweld = Instance.new("Weld", humanoid.Parent.Torso)
									rhandweld.Part0 = humanoid.Parent.Torso
									rhandweld.Part1 = humanoid.Parent["Right Arm"]
									rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
									local lhandweld = Instance.new("Weld", humanoid.Parent.Torso)
									lhandweld.Part0 = humanoid.Parent.Torso
									lhandweld.Part1 = humanoid.Parent["Left Arm"]
									lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
									local llegclone = humanoid.Parent.Torso["Left Hip"]:Clone()
									local llegweld = Instance.new("Weld", humanoid.Parent.Torso)
									llegweld.Part0 = humanoid.Parent.Torso
									llegweld.Part1 = humanoid.Parent["Left Leg"]
									llegweld.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
									local rlegclone = humanoid.Parent.Torso["Right Hip"]:Clone()
									local rlegweld = Instance.new("Weld", humanoid.Parent.Torso)
									rlegweld.Part0 = humanoid.Parent.Torso
									rlegweld.Part1 = humanoid.Parent["Right Leg"]
									rlegweld.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
									local rootjointclone = humanoid.Parent.HumanoidRootPart.RootJoint:Clone()
									local humanoidrootpart = Instance.new("Weld", humanoid.Parent.Torso)
									humanoidrootpart.Part0 = humanoid.Parent.HumanoidRootPart
									humanoidrootpart.Part1 = humanoid.Parent.Torso
									local heed = humanoid.Parent.Torso["Neck"]:Clone()
									local headweld = Instance.new("Weld", humanoid.Parent.Torso)
									headweld.Part0 = humanoid.Parent.Torso
									headweld.Part1 = humanoid.Parent.Head
									headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
									for i = 0,0.7 , 0.07 do
										headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.44868422, -0.453197479, 1, -1.21169035e-27, -1.77209714e-26, 9.14779977e-27, 0.898803353, 0.438370585, 1.58529488e-26, -0.438370407, 0.898803115),i)
										llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.74549341, -0.405010223, 1, 9.08231085e-23, -5.80211714e-22, -2.65675327e-22, 0.951063275, -0.309020281, 5.23751791e-22, 0.309020311, 0.951063037),i)
										rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -2.04146266, 0.317977905, 1, 2.83790199e-22, -5.14157122e-22, -2.65675327e-22, 0.999398291, 0.0348992832, 5.23751791e-22, -0.0348991863, 0.999398053),i)
										lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-0.610451698, -0.249120951, -0.451892853, 0.743151546, -0.374165177, -0.554731011, 2.00528552e-06, 0.82904911, -0.559189737, 0.669127941, 0.415561259, 0.616110206),i)
										rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(0.849339485, -0.124854803, -0.655277252, 0.559177101, 0.337202102, 0.757374227, 0.0866425484, 0.884781837, -0.457896292, -0.824514329, 0.321665913, 0.465533555),i)
										humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, -1.90734863e-06, 0, 1, 3.5038046e-26, -5.8766982e-26, -1.03372333e-26, 0.927190065, 0.374597758, 6.76022241e-26, -0.374597758, 0.927190006),i)
										game:GetService("RunService").RenderStepped:wait()
									end
									wait(6)
									humanoid.Parent:BreakJoints()
								end
							end
						end
					end
				end
			end
		end
		sensoryee.Touched:connect(tentacleshot)
		for i = 0,0.7 , 0.07 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.84595358, 0.746810913, 1, -6.61380983e-27, 1.04154883e-25, -4.31315925e-26, 0.882951677, 0.469469398, -9.49662312e-26, -0.469469309, 0.882951558),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.43540072, -1.26526642, 1, 2.01948392e-28, -3.07592644e-26, -2.91971503e-26, 0.309028178, -0.951055586, 9.39060022e-27, 0.951055467, 0.309028089),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50000048, 0.15097785, 0.536071777, 1, 5.85133651e-22, 5.01299648e-23, -2.65674166e-22, 0.374605715, 0.927186906, 5.23749266e-22, -0.927186787, 0.374605745),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0.15097785, 0.536071777, 1, 5.85133651e-22, 5.01299648e-23, -2.65674166e-22, 0.374605715, 0.927186906, 5.23749266e-22, -0.927186787, 0.374605745),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, -1.90734863e-06, 0, 1, 3.5038046e-26, -5.8766982e-26, -1.03372333e-26, 0.927190065, 0.374597758, 6.76022241e-26, -0.374597758, 0.927190006):inverse(),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		wait(0.2)
		sensoryee:destroy()
		FILTHYPRANK:Stop()
		canwalk = true
		using = false
	end
end
mouse.KeyDown:connect(tentaclekick)
function attacc(key)
	key = key:lower()
	if key == "r" and not using then
		using = true
		canwalk = false
		for i = 0,1 , 0.02 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.72260725, 0.385421276, 0, 0.865490794, 0.500013113, 0.0302087422, 0.499708682, -0.866017878, 0.0174446627, 0.0348838717, -2.62477647e-06, -0.999391317),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.34390306, 0.174765587, -0.502760172, 0.953806698, 0.298583031, 0.0331806801, -0.0622573979, 0.304501295, -0.950475156, -0.293899328, 0.904503822, 0.309024394),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		canwalk = false
		armcanattack = true
		for i = 0,1 , 0.1 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.14573121, 0.310893774, -0.014090538, -0.173835039, 0.984309137, 0.0302081201, 0.984702349, 0.173369259, 0.0174435899, 0.0119327214, 0.0327783301, -0.999389052),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.96523237, 0.455781698, -0.50786829, 0.481259376, -0.872816563, -0.0810915679, -0.0850538537, 0.0455768034, -0.995333314, 0.872439504, 0.485910654, -0.0523021407),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.309020996, -9.73868278e-27, 0.951055288, -1.41867004e-26, 1, 1.48494745e-26, -0.951055288, -1.80811326e-26, 0.309020996),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207920238, 1.15615454e-26, -0.978142679, -1.08547261e-27, 1, 9.90178208e-27, 0.978142679, -2.77679039e-27, 0.207920238),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		local function touched(part)
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid and armcanattack then
				canwalk = false
				hittd = true
				punch:Play()
				armcanattack = false
				humanoid.WalkSpeed = 0
				humanoid.JumpPower = 0
				for i = 1,5 do
					canwalk = false
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
					for i = 0,1 , 0.2 do
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.14573121, 0.310893774, -0.014090538, -0.173835039, 0.984309137, 0.0302081201, 0.984702349, 0.173369259, 0.0174435899, 0.0119327214, 0.0327783301, -0.999389052),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.96523237, 0.455781698, -0.50786829, 0.481259376, -0.872816563, -0.0810915679, -0.0850538537, 0.0455768034, -0.995333314, 0.872439504, 0.485910654, -0.0523021407),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.309020996, -9.73868278e-27, 0.951055288, -1.41867004e-26, 1, 1.48494745e-26, -0.951055288, -1.80811326e-26, 0.309020996),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207920238, 1.15615454e-26, -0.978142679, -1.08547261e-27, 1, 9.90178208e-27, 0.978142679, -2.77679039e-27, 0.207920238),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
					for i = 0,1 , 0.2 do
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.17093325, 0.566676855, -0.588714123, 0.326090425, 0.945334494, 0.00191744766, 0.0820002183, -0.0262649618, -0.996286333, -0.941772997, 0.325036645, -0.0860823616),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.03311968, 0.461995363, -0.38648963, 0.618004739, -0.781325519, -0.0871556699, 0.618887961, 0.551870644, -0.558942437, 0.484814674, 0.291489393, 0.824611425),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
				end
				for i = 1,5 do
					canwalk = false
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
					for i = 0,1 , 0.35 do
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.14573121, 0.310893774, -0.014090538, -0.173835039, 0.984309137, 0.0302081201, 0.984702349, 0.173369259, 0.0174435899, 0.0119327214, 0.0327783301, -0.999389052),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.96523237, 0.455781698, -0.50786829, 0.481259376, -0.872816563, -0.0810915679, -0.0850538537, 0.0455768034, -0.995333314, 0.872439504, 0.485910654, -0.0523021407),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.309020996, -9.73868278e-27, 0.951055288, -1.41867004e-26, 1, 1.48494745e-26, -0.951055288, -1.80811326e-26, 0.309020996),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207920238, 1.15615454e-26, -0.978142679, -1.08547261e-27, 1, 9.90178208e-27, 0.978142679, -2.77679039e-27, 0.207920238),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
					for i = 0,1 , 0.35 do
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.17093325, 0.566676855, -0.588714123, 0.326090425, 0.945334494, 0.00191744766, 0.0820002183, -0.0262649618, -0.996286333, -0.941772997, 0.325036645, -0.0860823616),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.03311968, 0.461995363, -0.38648963, 0.618004739, -0.781325519, -0.0871556699, 0.618887961, 0.551870644, -0.558942437, 0.484814674, 0.291489393, 0.824611425),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
				end
				for i = 1,5 do
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
					for i = 0,1 , 0.4 do
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.14573121, 0.310893774, -0.014090538, -0.173835039, 0.984309137, 0.0302081201, 0.984702349, 0.173369259, 0.0174435899, 0.0119327214, 0.0327783301, -0.999389052),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.96523237, 0.455781698, -0.50786829, 0.481259376, -0.872816563, -0.0810915679, -0.0850538537, 0.0455768034, -0.995333314, 0.872439504, 0.485910654, -0.0523021407),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.309020996, -9.73868278e-27, 0.951055288, -1.41867004e-26, 1, 1.48494745e-26, -0.951055288, -1.80811326e-26, 0.309020996),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207920238, 1.15615454e-26, -0.978142679, -1.08547261e-27, 1, 9.90178208e-27, 0.978142679, -2.77679039e-27, 0.207920238),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
					for i = 0,1 , 0.4 do
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.17093325, 0.566676855, -0.588714123, 0.326090425, 0.945334494, 0.00191744766, 0.0820002183, -0.0262649618, -0.996286333, -0.941772997, 0.325036645, -0.0860823616),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.03311968, 0.461995363, -0.38648963, 0.618004739, -0.781325519, -0.0871556699, 0.618887961, 0.551870644, -0.558942437, 0.484814674, 0.291489393, 0.824611425),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
				end
				for i = 1,20 do
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
					for i = 0,1 , 0.4 do
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.14573121, 0.310893774, -0.014090538, -0.173835039, 0.984309137, 0.0302081201, 0.984702349, 0.173369259, 0.0174435899, 0.0119327214, 0.0327783301, -0.999389052),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.96523237, 0.455781698, -0.50786829, 0.481259376, -0.872816563, -0.0810915679, -0.0850538537, 0.0455768034, -0.995333314, 0.872439504, 0.485910654, -0.0523021407),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.309020996, -9.73868278e-27, 0.951055288, -1.41867004e-26, 1, 1.48494745e-26, -0.951055288, -1.80811326e-26, 0.309020996),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207920238, 1.15615454e-26, -0.978142679, -1.08547261e-27, 1, 9.90178208e-27, 0.978142679, -2.77679039e-27, 0.207920238),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
					for i = 0,1 , 0.4 do
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.17093325, 0.566676855, -0.588714123, 0.326090425, 0.945334494, 0.00191744766, 0.0820002183, -0.0262649618, -0.996286333, -0.941772997, 0.325036645, -0.0860823616),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.03311968, 0.461995363, -0.38648963, 0.618004739, -0.781325519, -0.0871556699, 0.618887961, 0.551870644, -0.558942437, 0.484814674, 0.291489393, 0.824611425),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
						game:GetService("RunService").RenderStepped:wait()
					end
					local punchclone = punch:Clone()
					punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
					punchclone:Play()
					 
				end
				armcanattack = false
				canwalk = true
				using = false
				humanoid.Parent:BreakJoints()
				local boom = Instance.new("Explosion", workspace)
				boom.Position = humanoid.Parent.Torso.Position
				boom.BlastRadius = 0.5
				local hitoof = Instance.new("Sound", humanoid.Parent.Head)
				hitoof.SoundId = "rbxassetid://771324077"
				hitoof.Volume = 3
				hitoof.TimePosition = 5.1
				hitoof:Play()
				local explosion = Instance.new("Sound", humanoid.Parent.Head)
				explosion.SoundId = "rbxassetid://130803364"
				explosion.Volume = 10
				explosion:Play()
				wait(1.5)
				explosion:Stop()
				hitoof:Stop()
			end
		end
		game.Players.LocalPlayer.Character["Right Arm"].Touched:connect(touched)
		armcanattack = false
		canwalk = true
		using = false
	end
end
mouse.KeyDown:connect(attacc)
function kickthefurfag(key)
	if key == "g" and not using then
		using = true
		canwalk = false
		hittd = false
		local sensoryee1 = Instance.new("Part", game.Players.LocalPlayer.Character["Right Leg"])
		sensoryee1.Size = Vector3.new(1,1,1)
		sensoryee1.CanCollide = false
		sensoryee1.Transparency = 0
		sensoryee1:BreakJoints()
		local weldsensor = Instance.new("Weld", sensoryee1)
		weldsensor.Part0 = game.Players.LocalPlayer.Character["Right Leg"]
		weldsensor.Part1 = sensoryee1
		weldsensor.C0 = weldsensor.C0 * CFrame.new(0,-0.5,0)
		local function kicked(part)
			sensoryee1:destroy()
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid then
				--canbefps = true
				hittd = true
				humanoid.WalkSpeed = 0
				humanoid.JumpPower = 0
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
				punch:Play()
				wait(0.5)
				for i = 0,1 , 0.05 do
					headweld.C0 = headweld.C0:lerp(CFrame.new(0.0192918777, 1.54277778, -0.552471161, 0.999394238, 0.0267358776, -0.0224312302, -2.599965e-06, 0.642803192, 0.766039133, 0.0348992571, -0.765574396, 0.642409086),i)
					llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.97511852, -0.684444427, 1, 7.09343726e-27, -1.96394811e-26, -1.65597681e-26, 0.829041839, -0.55919075, 1.19149551e-26, 0.55919075, 0.829041839),i)
					rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.69545364, 1.02498245, 1, 8.33037116e-27, -8.30512761e-27, 1.84277907e-27, 0.587786973, 0.809019029, 1.17634938e-26, -0.809019029, 0.587786973),i)
					lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50000048, 0.150976658, -0.603237152, 1, -3.70407732e-22, -4.55732897e-22, -2.65674116e-22, 0.406738937, -0.913547099, 5.23749266e-22, 0.913547099, 0.406738907),i)
					rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0.150976658, -0.603237152, 1, -3.70407732e-22, -4.55732897e-22, -2.65674116e-22, 0.406738937, -0.913547099, 5.23749266e-22, 0.913547099, 0.406738907),i)
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, 1.80491375e-26, -5.65455497e-27, -1.84277907e-26, 0.866028428, -0.499996245, -4.08945493e-27, 0.499996245, 0.866028428):inverse(),i)
					game:GetService("RunService").RenderStepped:wait()
				end
				humanoid.Parent.Torso.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-3)
				humanoid.Parent.Torso.CFrame = CFrame.new(humanoid.Parent.Torso.Position,game.Players.LocalPlayer.Character.Torso.Position)
				wait(0.3)
				for i = 0,1 , 0.07 do
					headweld.C0 = headweld.C0:lerp(CFrame.new(0.0192918777, 1.54277778, -0.552471161, 0.999394238, 0.0267358776, -0.0224312302, -2.599965e-06, 0.642803192, 0.766039133, 0.0348992571, -0.765574396, 0.642409086),i)
					llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.84595358, 0.746810913, 1, -6.61380983e-27, 1.04154883e-25, -4.31315925e-26, 0.882951677, 0.469469398, -9.49662312e-26, -0.469469309, 0.882951558),i)
					rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.43540072, -1.26526642, 1, 2.01948392e-28, -3.07592644e-26, -2.91971503e-26, 0.309028178, -0.951055586, 9.39060022e-27, 0.951055467, 0.309028089),i)
					lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50000048, 0.15097785, 0.536071777, 1, 5.85133651e-22, 5.01299648e-23, -2.65674166e-22, 0.374605715, 0.927186906, 5.23749266e-22, -0.927186787, 0.374605745),i)
					rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0.15097785, 0.536071777, 1, 5.85133651e-22, 5.01299648e-23, -2.65674166e-22, 0.374605715, 0.927186906, 5.23749266e-22, -0.927186787, 0.374605745),i)
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, -1.90734863e-06, 0, 1, 3.5038046e-26, -5.8766982e-26, -1.03372333e-26, 0.927190065, 0.374597758, 6.76022241e-26, -0.374597758, 0.927190006):inverse(),i)
					game:GetService("RunService").RenderStepped:wait()
				end
				humanoid.Parent.Torso.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-4)
				humanoid.Parent.Torso.CFrame = CFrame.new(humanoid.Parent.Torso.Position,game.Players.LocalPlayer.Character.Torso.Position)
				--local rhandclonefur = humanoid.Parent.Torso["Right Shoulder"]:Clone()
									local rhandweldfur = Instance.new("Weld", humanoid.Parent.Torso)
									rhandweldfur.Part0 = humanoid.Parent.Torso
									rhandweldfur.Part1 = humanoid.Parent["Right Arm"]
									rhandweldfur.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
									local lhandweldfur = Instance.new("Weld", humanoid.Parent.Torso)
									lhandweldfur.Part0 = humanoid.Parent.Torso
									lhandweldfur.Part1 = humanoid.Parent["Left Arm"]
									lhandweldfur.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
									--local llegclone = humanoid.Parent.Torso["Left Hip"]:Clone()
									local llegweldfur = Instance.new("Weld", humanoid.Parent.Torso)
									llegweldfur.Part0 = humanoid.Parent.Torso
									llegweldfur.Part1 = humanoid.Parent["Left Leg"]
									llegweldfur.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
									--local rlegclone = humanoid.Parent.Torso["Right Hip"]:Clone()
									local rlegweldfur = Instance.new("Weld", humanoid.Parent.Torso)
									rlegweldfur.Part0 = humanoid.Parent.Torso
									rlegweldfur.Part1 = humanoid.Parent["Right Leg"]
									rlegweldfur.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
									--local rootjointclone = humanoid.Parent.HumanoidRootPart.RootJoint:Clone()
									local humanoidrootpartfur = Instance.new("Weld", humanoid.Parent.Torso)
									humanoidrootpartfur.Part0 = humanoid.Parent.HumanoidRootPart
									humanoidrootpartfur.Part1 = humanoid.Parent.Torso
									--local heed = humanoid.Parent.Torso["Neck"]:Clone()
									local headweldfur = Instance.new("Weld", humanoid.Parent.Torso)
									headweldfur.Part0 = humanoid.Parent.Torso
									headweldfur.Part1 = humanoid.Parent.Head
									headweldfur.C0 = headweld.C0 * CFrame.new(0,1.5,0)
									for i = 0,0.7 , 0.07 do
										headweldfur.C0 = headweldfur.C0:lerp(CFrame.new(0, 1.44868422, -0.453197479, 1, -1.21169035e-27, -1.77209714e-26, 9.14779977e-27, 0.898803353, 0.438370585, 1.58529488e-26, -0.438370407, 0.898803115),i)
										llegweldfur.C0 = llegweldfur.C0:lerp(CFrame.new(-0.5, -1.74549341, -0.405010223, 1, 9.08231085e-23, -5.80211714e-22, -2.65675327e-22, 0.951063275, -0.309020281, 5.23751791e-22, 0.309020311, 0.951063037),i)
										rlegweldfur.C0 = rlegweldfur.C0:lerp(CFrame.new(0.5, -2.04146266, 0.317977905, 1, 2.83790199e-22, -5.14157122e-22, -2.65675327e-22, 0.999398291, 0.0348992832, 5.23751791e-22, -0.0348991863, 0.999398053),i)
										lhandweldfur.C0 = lhandweldfur.C0:lerp(CFrame.new(-0.610451698, -0.249120951, -0.451892853, 0.743151546, -0.374165177, -0.554731011, 2.00528552e-06, 0.82904911, -0.559189737, 0.669127941, 0.415561259, 0.616110206),i)
										rhandweldfur.C0 = rhandweldfur.C0:lerp(CFrame.new(0.849339485, -0.124854803, -0.655277252, 0.559177101, 0.337202102, 0.757374227, 0.0866425484, 0.884781837, -0.457896292, -0.824514329, 0.321665913, 0.465533555),i)
										humanoidrootpartfur.C0 = humanoidrootpartfur.C0:lerp(CFrame.new(0, -1.90734863e-06, 0, 1, 3.5038046e-26, -5.8766982e-26, -1.03372333e-26, 0.927190065, 0.374597758, 6.76022241e-26, -0.374597758, 0.927190006),i)
										game:GetService("RunService").RenderStepped:wait()
									end
				for i = 0,1 , 0.04 do
					llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
					rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
					lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.72260725, 0.385421276, 0, 0.865490794, 0.500013113, 0.0302087422, 0.499708682, -0.866017878, 0.0174446627, 0.0348838717, -2.62477647e-06, -0.999391317),i)
					rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.34390306, 0.174765587, -0.502760172, 0.953806698, 0.298583031, 0.0331806801, -0.0622573979, 0.304501295, -0.950475156, -0.293899328, 0.904503822, 0.309024394),i)
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
					headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
					game:GetService("RunService").RenderStepped:wait()
				end
				for i = 0,0.8 , 0.1 do
					llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
					rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
					lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.14573121, 0.310893774, -0.014090538, -0.173835039, 0.984309137, 0.0302081201, 0.984702349, 0.173369259, 0.0174435899, 0.0119327214, 0.0327783301, -0.999389052),i)
					rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.96523237, 0.455781698, -0.50786829, 0.481259376, -0.872816563, -0.0810915679, -0.0850538537, 0.0455768034, -0.995333314, 0.872439504, 0.485910654, -0.0523021407),i)
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.309020996, -9.73868278e-27, 0.951055288, -1.41867004e-26, 1, 1.48494745e-26, -0.951055288, -1.80811326e-26, 0.309020996),i)
					headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207920238, 1.15615454e-26, -0.978142679, -1.08547261e-27, 1, 9.90178208e-27, 0.978142679, -2.77679039e-27, 0.207920238),i)
					game:GetService("RunService").RenderStepped:wait()
				end
				punch:Play()
				for i = 0,0.7 , 0.07 do
					headweldfur.C0 = headweldfur.C0:lerp(CFrame.new(0, 1.50000215, 0, 0.766045749, -1.161559e-06, -0.642787516, 0.219843611, 0.939695835, 0.261998117, 0.60402292, -0.342014879, 0.719850183),i)
					llegweldfur.C0 = llegweldfur.C0:lerp(CFrame.new(-0.5, -1.74549341, -0.405010223, 1, 9.08231085e-23, -5.80211714e-22, -2.65675327e-22, 0.951063275, -0.309020281, 5.23751791e-22, 0.309020311, 0.951063037),i)
					rlegweldfur.C0 = rlegweldfur.C0:lerp(CFrame.new(0.5, -2.04146266, 0.317977905, 1, 2.83790199e-22, -5.14157122e-22, -2.65675327e-22, 0.999398291, 0.0348992832, 5.23751791e-22, -0.0348991863, 0.999398053),i)
					lhandweldfur.C0 = lhandweldfur.C0:lerp(CFrame.new(-0.610451698, -0.249120951, -0.451892853, 0.743151546, -0.374165177, -0.554731011, 2.00528552e-06, 0.82904911, -0.559189737, 0.669127941, 0.415561259, 0.616110206),i)
					rhandweldfur.C0 = rhandweldfur.C0:lerp(CFrame.new(0.849339485, -0.124854803, -0.655277252, 0.559177101, 0.337202102, 0.757374227, 0.0866425484, 0.884781837, -0.457896292, -0.824514329, 0.321665913, 0.465533555),i)
					humanoidrootpartfur.C0 = humanoidrootpartfur.C0:lerp(CFrame.new(0, 0, 0, 0.829042554, -2.76325771e-08, 0.559185505, 0.116260171, 0.978148758, -0.172366142, -0.546966553, 0.207909778, 0.810926855):inverse(),i)
					game:GetService("RunService").RenderStepped:wait()
				end		
				for i = 0,1 , 0.04 do
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0),i)
					headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.48563504, -0.102214813, 1, 6.31088724e-30, -1.00974196e-28, -2.5243549e-29, 0.990270674, 0.139171436, -5.04870979e-29, -0.139171436, 0.990270674),i)
		            llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.606146812, -2.0409379, 0.23392868, 0.994522691, 0.104527831, 4.48272353e-09, -0.10395515, 0.989075184, 0.104526937, 0.0109259691, -0.103954434, 0.994521797),i)
		            lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.56223869, 0.00435209274, 0, 0.997564316, 0.0697554871, 0, -0.0697554871, 0.997564316, 0, 0, 2.5243549e-29, 1),i)
		            rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.589343071, -2.06024575, -0.139556885, 0.997564077, -0.0693742931, 0.0072911568, 0.0697562397, 0.992102206, -0.104268931, 1.75914945e-08, 0.104523741, 0.994524658),i)
		            rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.61233902, 0.0157878399, 0, 0.990270674, -0.139171436, 5.04870979e-29, 0.139171436, 0.990270674, 2.01948392e-28, 1.00974196e-28, 2.27191941e-28, 1),i)
					game:GetService("RunService").RenderStepped:wait()
				end
				--Converted with ttyyuu12345's model to script plugin v4
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
				Part0 = Instance.new("Part")
				SpecialMesh1 = Instance.new("SpecialMesh")
				Part0.Parent = mas
				Part0.Rotation = Vector3.new(0, -90, 0)
				Part0.Size = Vector3.new(1.77999985, 0.590000093, 0.520000041)
				Part0.CFrame = CFrame.new(8.2007246, 1.93281543, 34.3707199, -5.06630215e-07, -4.61939294e-07, -1.00000072, -2.38420171e-07, 1.00000286, -5.51347796e-07, 1.00000191, -2.38416533e-07, 1.99676788e-06)
				Part0.Position = Vector3.new(8.2007246, 1.93281543, 34.3707199)
				Part0.Orientation = Vector3.new(0, -90, 0)
				Part0.CanCollide = false
				SpecialMesh1.Parent = Part0
				SpecialMesh1.MeshId = "rbxassetid://442337985"
				SpecialMesh1.Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012)
				SpecialMesh1.TextureId = "rbxassetid://442337993"
				SpecialMesh1.MeshType = Enum.MeshType.FileMesh
				SpecialMesh1.Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012)
				for i,v in pairs(mas:GetChildren()) do
					v.Parent = game:GetService("Players").LocalPlayer.Character
					pcall(function() v:MakeJoints() end)
				end
				mas:Destroy()
				for i,v in pairs(cors) do
					spawn(function()
						pcall(v)
					end)
				end
				Part0:BreakJoints()
				local welddl = Instance.new("Weld", Part0)
				welddl.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
				welddl.Part1 = Part0
				welddl.C0 = CFrame.new(-0.039276123, -1.06721604, -1.0592804, 1.19219067e-07, -4.84290979e-07, -1.00000036, -1.19210583e-07, 1.00000143, -5.28995145e-07, 1.00000095, -1.19207265e-07, 1.3709174e-06)
				for i = 0,1 , 0.02 do
					llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
					rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
					--lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.72260725, 0.385421276, 0, 0.865490794, 0.500013113, 0.0302087422, 0.499708682, -0.866017878, 0.0174446627, 0.0348838717, -2.62477647e-06, -0.999391317),i)
					rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.34390306, 0.174765587, -0.502760172, 0.953806698, 0.298583031, 0.0331806801, -0.0622573979, 0.304501295, -0.950475156, -0.293899328, 0.904503822, 0.309024394),i)
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
					headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
					game:GetService("RunService").RenderStepped:wait()
				end
				for i = 0,0.8 , 0.1 do
					welddl.C0 = welddl.C0:lerp(CFrame.new(0.149496078, -1.75397778, -0.0924315453, -0.0348965228, -0.999374568, -0.00571133196, 0.99939096, -0.0348971486, 3.4943223e-06, -0.000202797353, -0.00570772588, 0.999983847),i)
					llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
					rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
					lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.14573121, 0.310893774, -0.014090538, -0.173835039, 0.984309137, 0.0302081201, 0.984702349, 0.173369259, 0.0174435899, 0.0119327214, 0.0327783301, -0.999389052),i)
					rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.00869942, 0.777726173, -0.51766777, 0.524389982, -0.809043169, 0.265451282, 0.020352006, -0.299755126, -0.953799188, 0.851234913, 0.505565226, -0.14072293),i)
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.309020996, -9.73868278e-27, 0.951055288, -1.41867004e-26, 1, 1.48494745e-26, -0.951055288, -1.80811326e-26, 0.309020996),i)
					headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207920238, 1.15615454e-26, -0.978142679, -1.08547261e-27, 1, 9.90178208e-27, 0.978142679, -2.77679039e-27, 0.207920238),i)
					game:GetService("RunService").RenderStepped:wait()
				end
				humanoid.PlatformStand = true
				humanoid.JumpPower = 0
				humanoid.WalkSpeed = 0
				for i,v in pairs(humanoid.Parent.Torso:GetChildren()) do
					if v.ClassName == "Weld" then
						v:destroy()
					end
				end
				canwalk = true
				canbefps = false
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
				using = false
				Part0:Destroy()
				if humanoid.Parent:findFirstChild("Health") then
                            humanoid.Parent.Health:Remove()
                            humanoid.Health = 0.001
                            for i,v in pairs(humanoid.Parent:GetChildren()) do
                                if v.ClassName == "Part" then
                                    for q,w in pairs(v:GetChildren()) do
                                        if w.ClassName == "Part" then
                                            w:destroy()
                                        end
                                    end
                                end
                            end
                        end
                        if humanoid.Parent:findFirstChild("Torso") then
                            humanoid.Parent.Torso.Velocity = mouse.Hit.lookVector * 35
                            for i,v in pairs(humanoid.Parent.Torso:GetChildren()) do
                                if v.ClassName == "Motor6D" then
                                    if v.Name == "Neck" then
                                       
                                    else
                                        v:destroy()
                                    end
                                end
                            end
                        end
                        humanoid.WalkSpeed = 0
                        humanoid.JumpPower = 0
                        humanoid.Health = 0
                        if humanoid.Parent:findFirstChild("Right Arm") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Torso)
                            attachment.Position = Vector3.new(1, 1, 0)
                            local ball = Instance.new("BallSocketConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent["Right Arm"].RightShoulderAttachment
                            ball.Attachment1 = attachment
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.8,1.4,0.8)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = humanoid.Parent["Right Arm"]
                            weeld.Part1 = collidepartofleftleg
                            weeld.C0 = weeld.C0 * CFrame.new(0,-0.3,0)
                        end
                        if humanoid.Parent:findFirstChild("Left Arm") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Torso)
                            attachment.Position = Vector3.new(1, 1, 0)
                            local ball = Instance.new("BallSocketConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent.Torso.LeftCollarAttachment
                            ball.Attachment1 = humanoid.Parent["Left Arm"].LeftShoulderAttachment
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.8,1.4,0.8)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = humanoid.Parent["Left Arm"]
                            weeld.Part1 = collidepartofleftleg
                            weeld.C0 = weeld.C0 * CFrame.new(0,-0.3,0)
                        end
                        if humanoid.Parent:findFirstChild("Right Leg") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Torso)
                            attachment.Position = Vector3.new(0.5, -1, 0)
                            local ball = Instance.new("BallSocketConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent["Right Leg"].RightFootAttachment
                            ball.Attachment1 = attachment
                            humanoid.Parent["Right Leg"].RightFootAttachment.Position = Vector3.new(0, 1, 0)
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.8,1.4,0.8)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = humanoid.Parent["Right Leg"]
                            weeld.Part1 = collidepartofleftleg
                            weeld.C0 = weeld.C0 * CFrame.new(0,-0.3,0)
                        end
                        if humanoid.Parent:findFirstChild("Left Leg") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Torso)
                            attachment.Position = Vector3.new(-0.5, -1, 0)
                            local ball = Instance.new("BallSocketConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent["Left Leg"].LeftFootAttachment
                            ball.Attachment1 = attachment
                            humanoid.Parent["Left Leg"].LeftFootAttachment.Position = Vector3.new(0, 1, 0)
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.8,1.4,0.8)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 =  humanoid.Parent["Left Leg"]
                            weeld.Part1 = collidepartofleftleg
                            weeld.C0 = weeld.C0 * CFrame.new(0,-0.3,0)
                        end
						if humanoid.Parent:findFirstChild("Head") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Head)
                            attachment.Position = Vector3.new(0, -0.5, 0)
                            humanoid.Parent.Torso.NeckAttachment.Visible = false
                            humanoid.Parent.Torso.NeckAttachment.Position = humanoid.Parent.Torso.NeckAttachment.Position + Vector3.new(0,0,0)
                            local ball = Instance.new("HingeConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent.Torso.NeckAttachment
                            ball.Attachment1 = attachment
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.5,0.3,0.5)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = collidepartofleftleg
                            weeld.Part1 = humanoid.Parent["Head"]
							if humanoid.Parent.Torso:findFirstChild("Neck") then
								humanoid.Parent.Torso.Neck:destroy()
							end
						end
			end
		end
		sensoryee1.Touched:connect(kicked)
		for i = 0,1 , 0.08 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.906621933, -1.96817839, 3.81469727e-06, 0.939697921, 0.342017353, -1.15483999e-07, -0.342018157, 0.939700484, -1.54780309e-06, 4.20854008e-07, -1.4939601e-06, 1.00000584),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(2.04675007, -0.901816607, 3.81469727e-06, -0.241916299, -0.970304012, -1.15483999e-07, 0.970306754, -0.241916746, -1.54780309e-06, -1.47389744e-06, 4.86491388e-07, 1.00000584),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.78488255, 0.126835346, 0, 0.913546026, 0.406735331, 1.15483552e-07, -0.406735331, 0.913546026, 1.54779377e-06, 5.24042946e-07, -1.46095226e-06, 1),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.92161179, 0.407135487, 0, -0.694653988, -0.719348252, -1.15483999e-07, 0.719350696, -0.694655538, -1.54780309e-06, -1.03318553e-06, 1.1582564e-06, 1.00000584),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.0323647447, 0.374601871, -0.926624477, -0.013075971, 0.927188933, 0.374372125, 0.999392211, 5.49364394e-08, 0.0349063426):inverse(),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.50000882, 0, 0.0349099413, 5.30404058e-08, -0.999393761, -1.5450081e-06, 1.00000596, -1.07041799e-07, 0.999396384, -1.54780309e-06, 0.0349102654),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		wait(0.2)
		sensoryee1:destroy()
		if not hittd then
			using = false
			canwalk = true
		end
	end
end
mouse.KeyDown:connect(kickthefurfag)
function begone(key)
	key = key:lower()
	if key == "y" and not using then
		using = true
		canwalk = false
		local fuckingnormies = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
		fuckingnormies.SoundId = "rbxassetid://854345294"
		fuckingnormies.TimePosition = 2
		fuckingnormies.Volume = 10
		fuckingnormies:Play()
		for i = 0,1 , 0.02 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.72260725, 0.385421276, 0, 0.865490794, 0.500013113, 0.0302087422, 0.499708682, -0.866017878, 0.0174446627, 0.0348838717, -2.62477647e-06, -0.999391317),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.34390306, 0.174765587, -0.502760172, 0.953806698, 0.298583031, 0.0331806801, -0.0622573979, 0.304501295, -0.950475156, -0.293899328, 0.904503822, 0.309024394),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.139189512, 1.09557003e-26, -0.990273237, -1.2369339e-27, 1, 1.11828922e-26, 0.990273237, 9.87653853e-28, 0.139189512),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.469474792, 3.65180045e-27, 0.882945895, -1.41359339e-27, 1, -3.38430072e-27, -0.882945895, 3.40717422e-28, 0.469474792),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		wait(1)
		for i = 0,1 , 0.1 do
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.976385951, -2.07911205, 0, 0.994522691, 0.104521893, -2.48146847e-24, -0.1045219, 0.994522572, -6.61724926e-24, 0, 0, 1),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.706693888, -2.04811049, 0, 0.98480922, -0.173640087, 7.03582031e-15, 0.173640057, 0.984809279, 1.01514464e-15, -7.10520713e-15, 2.21976022e-16, 1),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.14573121, 0.310893774, -0.014090538, -0.173835039, 0.984309137, 0.0302081201, 0.984702349, 0.173369259, 0.0174435899, 0.0119327214, 0.0327783301, -0.999389052),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.96523237, 0.455781698, -0.50786829, 0.481259376, -0.872816563, -0.0810915679, -0.0850538537, 0.0455768034, -0.995333314, 0.872439504, 0.485910654, -0.0523021407),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.309020996, -9.73868278e-27, 0.951055288, -1.41867004e-26, 1, 1.48494745e-26, -0.951055288, -1.80811326e-26, 0.309020996),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.207920238, 1.15615454e-26, -0.978142679, -1.08547261e-27, 1, 9.90178208e-27, 0.978142679, -2.77679039e-27, 0.207920238),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		meme:Play()
		meme.Volume = 6
		thunder.TimePosition = 0.4
		thunder:Play()
		thunder.Volume = 6
		--Converted with ttyyuu12345's model to script plugin v4
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
		Model0 = Instance.new("Model")
		Part1 = Instance.new("Part")
		Part2 = Instance.new("Part")
		Model0.Name = "Beam"
		Model0.Parent = mas
		Part1.Name = "beemblue"
		Part1.Parent = Model0
		Part1.Material = Enum.Material.Neon
		Part1.BrickColor = BrickColor.new("Cyan")
		Part1.Transparency = 0
		Part1.Shape = Enum.PartType.Cylinder
		Part1.Size = Vector3.new(0.0500000007, 3.96000385, 3.96000171)
		Part1.CFrame = CFrame.new(40.7978516, 2.43296385, 64.2700119, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part1.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Part1.Position = Vector3.new(40.7978516, 2.43296385, 64.2700119)
		Part1.Color = Color3.new(0.0156863, 0.686275, 0.92549)
		Part2.Name = "beem"
		Part2.Parent = Model0
		Part2.Material = Enum.Material.Neon
		Part2.BrickColor = BrickColor.new("Institutional white")
		Part2.Transparency = 0
		Part2.Shape = Enum.PartType.Cylinder
		Part2.Size = Vector3.new(0.0500000007, 3.96000385, 3.96000171)
		Part2.CFrame = CFrame.new(40.7682838, 2.43296385, 64.2700119, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part2.Color = Color3.new(0.972549, 0.972549, 0.972549)
		Part2.Position = Vector3.new(40.7682838, 2.43296385, 64.2700119)
		Part2.Color = Color3.new(0.972549, 0.972549, 0.972549)
		for i,v in pairs(mas:GetChildren()) do
			v.Parent = game:GetService("Players").LocalPlayer.Character
			pcall(function() v:MakeJoints() end)
		end
		mas:Destroy()
		for i,v in pairs(cors) do
			spawn(function()
				pcall(v)
			end)
		end
		Part1.Anchored = true
		Part2.Anchored = true
		Part1.CanCollide = false
		Part2.CanCollide = false
		local canrag = true
		Part1.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0,0,-5) * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
		local function ragdolldafurfag(part)
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			local ragdolled = part.Parent:findFirstChild("ragdolled")
			if humanoid then
				if humanoid.Parent.Name == game.Players.LocalPlayer.Name then
					--nothing
				else
					if ragdolled then
						--nothing again
					else
						local raggd = Instance.new("BoolValue", humanoid.Parent)
						raggd.Name = "ragdolled"
						humanoid.Name = "memes"
						humanoid.PlatformStand = true
						humanoid.JumpPower = 0
						humanoid.WalkSpeed = 0
						local findlefthip = humanoid.Parent.Torso:findFirstChild("Left Hip")
                        if findlefthip then
                            findlefthip:Remove()
                            local glue = Instance.new("Glue",  humanoid.Parent.Torso)
                            glue.Part0 = humanoid.Parent.Torso
                            glue.Part1 = humanoid.Parent["Left Leg"]
                            glue.Name = "Left leg"
                            local collider = Instance.new("Part",  humanoid.Parent["Left Leg"])
                            collider.Position = Vector3.new(0,999,0)
                            collider.Size = Vector3.new(1.5, 1, 1)
                            collider.Shape = "Cylinder"
                            local weld = Instance.new("Weld", collider)
                            weld.Part0 =  humanoid.Parent["Left Leg"]
                            weld.Part1 = collider
                            weld.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
                            collider.TopSurface = "Smooth"
                            collider.BottomSurface = "Smooth"
                            collider.formFactor = "Symmetric"
                            glue.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                            glue.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                            collider.Transparency = 1
                        end
                        --
                        local findrighthip = humanoid.Parent.Torso:findFirstChild("Right Hip")
                        if findrighthip then
                            findrighthip:Remove()
                            local glue = Instance.new("Glue",  humanoid.Parent.Torso)
                            glue.Part0 = humanoid.Parent.Torso
                            glue.Part1 = humanoid.Parent["Right Leg"]
                            glue.Name = "Right leg"
                            local collider = Instance.new("Part",  humanoid.Parent["Right Leg"])
                            collider.Position = Vector3.new(0,999,0)
                            collider.Size = Vector3.new(1.5, 1, 1)
                            collider.Shape = "Cylinder"
                            local weld = Instance.new("Weld", collider)
                            weld.Part0 =  humanoid.Parent["Right Leg"]
                            weld.Part1 = collider
                            weld.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
                            collider.TopSurface = "Smooth"
                            collider.BottomSurface = "Smooth"
                            collider.formFactor = "Symmetric"
                            glue.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                            glue.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                            collider.Transparency = 1
                        end
                        --
                        local findrightshoulder = humanoid.Parent.Torso:findFirstChild("Right Shoulder")
                        if findrightshoulder then
                            findrightshoulder:Remove()
                            local glue = Instance.new("Glue",  humanoid.Parent.Torso)
                            glue.Part0 = humanoid.Parent.Torso
                            glue.Part1 = humanoid.Parent["Right Arm"]
                            glue.Name = "Right arm"
                            local collider = Instance.new("Part",  humanoid.Parent["Right Arm"])
                            collider.Position = Vector3.new(0,999,0)
                            collider.Size = Vector3.new(1.5, 1, 1)
                            collider.Shape = "Cylinder"
                            local weld = Instance.new("Weld", collider)
                            weld.Part0 =  humanoid.Parent["Right Arm"]
                            weld.Part1 = collider
                            weld.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
                            collider.TopSurface = "Smooth"
                            collider.BottomSurface = "Smooth"
                            collider.formFactor = "Symmetric"
                            glue.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                            glue.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                            collider.Transparency = 1
                        end
                        --
                        local findleftshoulder = humanoid.Parent.Torso:findFirstChild("Left Shoulder")
                        if findleftshoulder then
                            findleftshoulder:Remove()
                            local glue = Instance.new("Glue",  humanoid.Parent.Torso)
                            glue.Part0 = humanoid.Parent.Torso
                            glue.Part1 = humanoid.Parent["Left Arm"]
                            glue.Name = "Left arm"
                            local collider = Instance.new("Part",  humanoid.Parent["Left Arm"])
                            collider.Position = Vector3.new(0,999,0)
                            collider.Size = Vector3.new(1.5, 1, 1)
                            collider.Shape = "Cylinder"
                            local weld = Instance.new("Weld", collider)
                            weld.Part0 =  humanoid.Parent["Left Arm"]
                            weld.Part1 = collider
                            weld.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
                            collider.TopSurface = "Smooth"
                            collider.BottomSurface = "Smooth"
                            collider.formFactor = "Symmetric"
                            glue.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                            glue.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                            collider.Transparency = 1
                        end
						if humanoid.Parent:findFirstChild("Head") then
                            local attachment = Instance.new("Attachment", humanoid.Parent.Head)
                            attachment.Position = Vector3.new(0, -0.5, 0)
                            humanoid.Parent.Torso.NeckAttachment.Visible = false
                            humanoid.Parent.Torso.NeckAttachment.Position = humanoid.Parent.Torso.NeckAttachment.Position + Vector3.new(0,0,0)
                            local ball = Instance.new("HingeConstraint", humanoid.Parent)
                            ball.Attachment0 = humanoid.Parent.Torso.NeckAttachment
                            ball.Attachment1 = attachment
                            local collidepartofleftleg = Instance.new("Part", humanoid.Parent.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.5,0.3,0.5)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = collidepartofleftleg
                            weeld.Part1 = humanoid.Parent["Head"]
							if humanoid.Parent.Torso:findFirstChild("Neck") then
								humanoid.Parent.Torso.Neck:destroy()
							end
                        end
					end
				end
			end
		end
		Part1.Touched:connect(ragdolldafurfag)
		local function changeposandsize()
			for i = 1,200 do
				Part1.Size = Part1.Size + Vector3.new(0.9,0.2,0.1)
				Part2.Size = Part2.Size + Vector3.new(0.9,0.2,0.1)
				Part1.CFrame = Part1.CFrame * CFrame.new(0.7,0,0)
				Part2.CFrame = Part1.CFrame * CFrame.new(0.7,0,0)
				Part1.Transparency = Part1.Transparency + 0.007
				Part2.Transparency = Part2.Transparency + 0.007
				game:GetService("RunService").RenderStepped:wait()
			end
			Model0:destroy()
		end
		changeposandsize()
		armcanattack = false
		canwalk = true
		using = false
	end
end
mouse.KeyDown:connect(begone)
--Converted with ttyyuu12345's model to script plugin v4
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
Soundo0 = Instance.new("Sound")
Soundo0.Parent = mas
Soundo0.SoundId = "rbxassetid://1206917308"
Soundo0.Volume = 10
Soundo0.PlaybackSpeed = 1
Soundo0.Looped = true
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character.Torso
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
function kysfurshit(key)
	key = key:lower()
	if key == "q" and not using then
		using = true
		hittd = false
		canwalk = false
		local canscan = true
		textfag.Text = "fox and skidz dums"
		for i = 0,1 , 0.04 do
	       humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.241932347, -1.21926342e-26, -0.970292151, 6.1341824e-27, 1, -2.5243549e-27, 0.970292151, -3.11126741e-27, 0.241932347),i)
		   headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5222218, -0.102214813, 0.0349053368, -8.60723958e-07, 0.999392927, -0.139084309, 0.990273297, 0.00485882163, -0.989666522, -0.139170289, 0.0345666632),i)
	       lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.00984383, 0.0977787971, 0, 0.500008941, 0.866028607, -2.82727748e-27, -0.866028607, 0.500008941, -2.3224065e-27, -2.57484199e-27, 2.3224065e-27, 1),i)
	       rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.0187254, 0.622524977, -0.477272034, 0.499353766, -0.855162203, 0.139084026, 0.0396689773, -0.137795925, -0.989666998, 0.865489781, 0.499711245, -0.0348855592),i)
	       game:GetService("RunService").RenderStepped:wait()
		end
		local sensoryee = Instance.new("Part", game.Players.LocalPlayer.Character["Right Arm"])
		sensoryee.Size = Vector3.new(1,1,1)
		sensoryee.CanCollide = false
		sensoryee.Transparency = 0
		sensoryee:BreakJoints()
		local weldsensor = Instance.new("Weld", sensoryee)
		weldsensor.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
		weldsensor.Part1 = sensoryee
		weldsensor.C0 = weldsensor.C0 * CFrame.new(0,-0.5,0)
		local function hagotem(part)
			sensoryee:destroy()
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid then
				local canscan = true
				for i,v in pairs(humanoid.Parent:GetChildren()) do
					if v.ClassName == "Hat" or v.ClassName == "Accessory" then
						if v:findFirstChild("Handle") then
							if v.Handle:findFirstChild("Mesh") then
								if canscan and v.Handle.Mesh.MeshId == "rbxassetid://188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=170939831" or v.Handle.Mesh.MeshId == "rbxassetid://170939831" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=135446047" or v.Handle.Mesh.MeshId == "rbxassetid://135446047" or v.Handle.Mesh.MeshId == "rbxassetid://335037790" or v.Handle.Mesh.MeshId == "rbxassetid://361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=1374148" or v.Handle.Mesh.MeshId == "rbxassetid://1374148" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Handle.Mesh.MeshId == "rbxassetid://112495973" or v.Name == "FoxTail" or v.Name == "Zootopia_FoxEars" or v.Name == "FurryCatTail" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Name == "ArcticFoxHead" then
									canscan = false
									hittd = true
									--canbefps = true
									local furfaggrowl = Instance.new("Sound", humanoid.Parent.Head)
									furfaggrowl.SoundId = "rbxassetid://133322522"
									furfaggrowl.Volume = 10
									local rip = Instance.new("Sound", humanoid.Parent.Head)
									rip.SoundId = "rbxassetid://132514715"
									rip.Volume = 10
									if humanoid.Parent:findFirstChild("HumanoidRootPart") then
										humanoid.Parent.HumanoidRootPart:destroy()
										humanoid.WalkSpeed = 0
										humanoid.JumpPower = 0
									else
										humanoid.PlatformStand = true
										humanoid.JumpPower = 0
										humanoid.WalkSpeed = 0
									end
									textfag.Text = "die from cancer"
									local headfurfagweld = Instance.new("Weld", game.Players.LocalPlayer.Character["Right Arm"])
									headfurfagweld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
									headfurfagweld.Part1 = humanoid.Parent.Head
									headfurfagweld.C0 = CFrame.new(0.00057220459, -1.29444742, -0.873190403, -0.996955156, -0.0485438928, 0.0610030033, -0.0641870201, 0.0669786036, -0.995689929, 0.0442487523, -0.996576011, -0.0698903799)
									furfaggrowl:Play()
									furfaggrowl.TimePosition = 1
									wait(1)
									for i = 0,1 , 0.04 do
								       rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.09488106, 0.667919636, 0.0639152527, 0.0739268959, -0.95855093, 0.275169909, -0.02475233, -0.277602971, -0.960379243, 0.996955395, 0.0641870052, -0.044248756),i)
								       game:GetService("RunService").RenderStepped:wait()
									end
									wait(1.4)
									for i = 1,6 do
										wait(0.1)
										for i = 0,1 , 0.15 do
											rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.589343071, -2.06024575, -0.139556885, 0.997564077, -0.0693742931, 0.0072911568, 0.0697562397, 0.992102206, -0.104268931, 1.75914945e-08, 0.104523741, 0.994524658),i)
									       humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0),i)
										   headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.4344244, 0.102565765, 1.00000012, -1.10566744e-26, 3.04815854e-27, 1.14353277e-26, 0.970295191, -0.241921842, -2.61223027e-28, 0.241921738, 0.970297754),i)
											llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.606146812, -2.0409379, 0.23392868, 0.994522691, 0.104527831, 4.48272353e-09, -0.10395515, 0.989075184, 0.104526937, 0.0109259691, -0.103954434, 0.994521797),i)									       
											lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50013542, -0.0218527317, 0.298622131, 1, 2.38743288e-22, 1.16448315e-22, -2.65628601e-22, 0.898784995, 0.438389838, 6.26162773e-28, -0.438389868, 0.898784935),i)
									       rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.541605, 1.54031897, -0.202716827, 0.99939096, -0.0331876501, -0.0107830577, -0.0348742045, -0.960688651, -0.275429219, -0.00121831207, 0.275637507, -0.961260855),i)
									       game:GetService("RunService").RenderStepped:wait()
										end
										for i = 0,1 , 0.15 do
									       humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, -1.90734863e-06, 1.00069809, 0.999390602, 6.40860435e-07, -0.0349101759, -0.0242511462, 0.71933949, -0.694235682, 0.0251118187, 0.694659173, 0.718900979):inverse(),i)
											rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.18236089, -0.21427536, 1.00000012, 1.51461294e-27, 4.19042913e-27, -4.41762107e-27, 0.499996245, 0.866027534, -7.79938216e-28, -0.866027653, 0.499996305),i)
										   llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.18106127, -0.0497360229, 1.00000012, 1.98161859e-27, -5.80601626e-27, -9.08767763e-27, 0.500005603, 0.866032362, -3.82406602e-27, -0.866032481, 0.500005662),i)
											headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.53122997, -0.198875427, 1.00000012, -1.209166e-26, -3.76759968e-27, 1.21169035e-26, 0.927188694, 0.374603868, -1.64222563e-27, -0.374603897, 0.927188814),i)
									       lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50013542, -0.0218527317, 0.298622131, 1, 2.38743288e-22, 1.16448315e-22, -2.65628601e-22, 0.898784995, 0.438389838, 6.26162773e-28, -0.438389868, 0.898784935),i)
									       rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.4887104, 0.0502290726, -0.938224792, 0.999392748, 0.0233488977, -0.025931986, -0.0348734297, 0.642351151, -0.765616715, -0.00121889159, 0.766055882, 0.642774582),i)
									       game:GetService("RunService").RenderStepped:wait()
										end
										local punchclone = punch:Clone()
										punchclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
										punchclone:Play()
									end
									local goreclone = gore:Clone()
									goreclone.Parent = game.Players.LocalPlayer.Character["Right Arm"]
									goreclone:Play()
									for i,v in pairs(humanoid.Parent:GetChildren()) do
				                        if v.ClassName == "Hat" or v.ClassName == "Accessory" then
				                            v:destroy()
				                        end
				                        if v.Name == "Head" then
				                            v.Transparency = 1
				                        end
				                    end
				                    if humanoid.Parent.Head:findFirstChild("face") then
				                        humanoid.Parent.Head.face.Transparency = 1
				                    end
									for i = 1,math.random(10,15) do
			                            --Converted with ttyyuu12345's model to script plugin v4
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
										local Part0 = Instance.new("Part")
										Part0.Name = "bl00d"
										Part0.Parent = mas
										Part0.Material = Enum.Material.SmoothPlastic
										Part0.BrickColor = BrickColor.new("Maroon")
										Part0.Size = Vector3.new(1.16000009, 0.0500000007, 1.12000048)
										Part0.CFrame = CFrame.new(17.569994, 1.14527643, 34.9399986, 1, 0, 0, 0, 1, 0, 0, 0, 1)
										Part0.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
										Part0.TopSurface = Enum.SurfaceType.SmoothNoOutlines
										Part0.Color = Color3.new(0.458824, 0, 0)
										Part0.Position = Vector3.new(17.569994, 1.14527643, 34.9399986)
										Part0.Color = Color3.new(0.458824, 0, 0)
										Part0.CFrame = humanoid.Parent.Head.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
										Part0:BreakJoints()
										for i,v in pairs(mas:GetChildren()) do
											v.Parent = humanoid.Parent
											pcall(function() v:MakeJoints() end)
										end
										mas:Destroy()
										for i,v in pairs(cors) do
											spawn(function()
												pcall(v)
											end)
										end
									end
									wait(1)
									for i = 0,1 , 0.05 do
										llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.606146812, -2.0409379, 0.23392868, 0.994522691, 0.104527831, 4.48272353e-09, -0.10395515, 0.989075184, 0.104526937, 0.0109259691, -0.103954434, 0.994521797),i)									       
											lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50013542, -0.0218527317, 0.298622131, 1, 2.38743288e-22, 1.16448315e-22, -2.65628601e-22, 0.898784995, 0.438389838, 6.26162773e-28, -0.438389868, 0.898784935),i)
								       humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.241932347, -1.21926342e-26, -0.970292151, 6.1341824e-27, 1, -2.5243549e-27, 0.970292151, -3.11126741e-27, 0.241932347),i)
									   headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5222218, -0.102214813, 0.0349053368, -8.60723958e-07, 0.999392927, -0.139084309, 0.990273297, 0.00485882163, -0.989666522, -0.139170289, 0.0345666632),i)
								       lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.00984383, 0.0977787971, 0, 0.500008941, 0.866028607, -2.82727748e-27, -0.866028607, 0.500008941, -2.3224065e-27, -2.57484199e-27, 2.3224065e-27, 1),i)
								       rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.0187254, 0.622524977, -0.477272034, 0.499353766, -0.855162203, 0.139084026, 0.0396689773, -0.137795925, -0.989666998, 0.865489781, 0.499711245, -0.0348855592),i)
								       game:GetService("RunService").RenderStepped:wait()
									end
									wait(0.2)
									furfaggrowl:destroy()
									headfurfagweld:destroy()
									local vel = Instance.new("BodyVelocity", humanoid.Parent.Torso)
									vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
									vel.Velocity = game.Players.LocalPlayer.Character.Torso.CFrame.rightVector * -math.random(400,469) + Vector3.new(0,2,0)
									rip:Play()
									for i = 0,1 , 0.06 do
								       humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.469489127, 5.58134868e-26, 0.882937074, 6.51283563e-26, 1, -8.06026519e-26, -0.882937074, 1.03650012e-25, 0.469489127),i)
									   headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5222218, -0.102214813, 0.469437033, 6.2015107e-07, -0.882963717, 0.122883834, 0.99026978, 0.0653332844, 0.874373734, -0.139172658, 0.464868218),i)
								       lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.04339027, 0.288009644, 0, 0.17366755, 0.984804034, 6.07514039e-13, -0.984804392, 0.173667595, 1.61679779e-13, 5.32907052e-14, -6.27053964e-13, 0.999999762),i)
								       rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.66837502, 0.581873178, -0.720844269, 0.932209134, -0.33412677, 0.139085978, 0.118962891, -0.080060333, -0.989665747, 0.341809034, 0.939121604, -0.0348842852),i)
								       game:GetService("RunService").RenderStepped:wait()
									end
									wait(1)
									for i = 0,0.3 , 0.004 do
								       humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0),i)
										headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.48563504, -0.102214813, 1, 6.31088724e-30, -1.00974196e-28, -2.5243549e-29, 0.990270674, 0.139171436, -5.04870979e-29, -0.139171436, 0.990270674),i)
								        llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.606146812, -2.0409379, 0.23392868, 0.994522691, 0.104527831, 4.48272353e-09, -0.10395515, 0.989075184, 0.104526937, 0.0109259691, -0.103954434, 0.994521797),i)
								        lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.56223869, 0.00435209274, 0, 0.997564316, 0.0697554871, 0, -0.0697554871, 0.997564316, 0, 0, 2.5243549e-29, 1),i)
								        rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.589343071, -2.06024575, -0.139556885, 0.997564077, -0.0693742931, 0.0072911568, 0.0697562397, 0.992102206, -0.104268931, 1.75914945e-08, 0.104523741, 0.994524658),i)
								        rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.61233902, 0.0157878399, 0, 0.990270674, -0.139171436, 5.04870979e-29, 0.139171436, 0.990270674, 2.01948392e-28, 1.00974196e-28, 2.27191941e-28, 1),i)
								        game:GetService("RunService").RenderStepped:wait()
									end
									using = false
									canwalk = true
								end
							end
						end
					end
				end
			end
		end
		sensoryee.Touched:connect(hagotem)
		for i = 0,1 , 0.04 do
	       humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.469489127, 5.58134868e-26, 0.882937074, 6.51283563e-26, 1, -8.06026519e-26, -0.882937074, 1.03650012e-25, 0.469489127),i)
		   headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5222218, -0.102214813, 0.469437033, 6.2015107e-07, -0.882963717, 0.122883834, 0.99026978, 0.0653332844, 0.874373734, -0.139172658, 0.464868218),i)
	       lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.04339027, 0.288009644, 0, 0.17366755, 0.984804034, 6.07514039e-13, -0.984804392, 0.173667595, 1.61679779e-13, 5.32907052e-14, -6.27053964e-13, 0.999999762),i)
	       rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.66837502, 0.581873178, -0.720844269, 0.932209134, -0.33412677, 0.139085978, 0.118962891, -0.080060333, -0.989665747, 0.341809034, 0.939121604, -0.0348842852),i)
	       game:GetService("RunService").RenderStepped:wait()
		end
		sensoryee:destroy()
		if not hittd then
			for i = 0,0.3 , 0.004 do
				if canwalk and howmuch < 1 then
		            humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0),i)
					headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.48563504, -0.102214813, 1, 6.31088724e-30, -1.00974196e-28, -2.5243549e-29, 0.990270674, 0.139171436, -5.04870979e-29, -0.139171436, 0.990270674),i)
		            llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.606146812, -2.0409379, 0.23392868, 0.994522691, 0.104527831, 4.48272353e-09, -0.10395515, 0.989075184, 0.104526937, 0.0109259691, -0.103954434, 0.994521797),i)
		            lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.56223869, 0.00435209274, 0, 0.997564316, 0.0697554871, 0, -0.0697554871, 0.997564316, 0, 0, 2.5243549e-29, 1),i)
		            rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.589343071, -2.06024575, -0.139556885, 0.997564077, -0.0693742931, 0.0072911568, 0.0697562397, 0.992102206, -0.104268931, 1.75914945e-08, 0.104523741, 0.994524658),i)
		            rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.61233902, 0.0157878399, 0, 0.990270674, -0.139171436, 5.04870979e-29, 0.139171436, 0.990270674, 2.01948392e-28, 1.00974196e-28, 2.27191941e-28, 1),i)
		            game:GetService("RunService").RenderStepped:wait()
				end
			end
			using = false
			canwalk = true
		end
		textfag.Text = game.Players.LocalPlayer.Character.Name.." The Brutal Anti-Furry and anti-Skid."
	end
end
mouse.KeyDown:connect(kysfurshit)

dancing = false
function switch(key)
	key = key:lower()
	if key == "m" then
		if not dancing then
			dancing = true
			canwalk = false
			Sound0:Stop()
			Soundo0:Play()
			while dancing do
				for i = 0.3,0.46 , 0.015 do
					if dancing then
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.48587704, 0.117996216, 1, 0, 0, 0, 0.971754849, -0.235992551, 0, 0.235992551, 0.971754849),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.965696573, 0.259673119, 0, -0.259673119, 0.965696573),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.95006418, -0.312054634, 1, 0, 0, 0, 0.950064242, -0.312054634, 0, 0.312054634, 0.950064301),i)
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.96244073, -0.271492958, 1, 0, 0, 0, 0.962440372, -0.271492869, 0, 0.271492898, 0.962440431),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.5, 0.905787945, -0.292123914, 1, 0, 0, 0, -0.811575294, -0.584247589, 0, 0.584247708, -0.811575413),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0.902326107, -0.296873212, 1, 0, 0, 0, -0.804652274, -0.593746305, 0, 0.593746424, -0.804652333),i)
						game:GetService("RunService").RenderStepped:wait()
					end
				end
				for i = 0.35,0.4 , 0.025 do
					if dancing then
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.49878788, -0.0347967446, 1, 0, 0, 0, 0.997575462, 0.0695933998, 0, -0.0695933998, 0.997575462),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.996428847, -0.0844366103, 0, 0.0844366103, 0.996428847),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.9939127, 0.110167503, 1, 0, 0, 0, 0.993912935, 0.110167526, 0, -0.110167533, 0.993912995),i)
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.99822259, 0.0595921576, 1, 0, 0, 0, 0.998222768, 0.0595921502, 0, -0.0595921502, 0.998222828),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.5, 0.276759148, -0.447396159, 1, 0, 0, 0, 0.44648236, -0.894792259, 0, 0.894792318, 0.44648239),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0.278767586, -0.448392987, 1, 0, 0, 0, 0.442464471, -0.896785915, 0, 0.896785975, 0.44246453),i)
						game:GetService("RunService").RenderStepped:wait()
					end
				end
				for i = 0.3,0.46 , 0.015 do
					if dancing then
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.49145174, -0.0920622349, 1, 0, 0, 0, 0.982902825, 0.18412438, 0, -0.18412438, 0.982902825),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.980066657, -0.198668674, 0, 0.198668674, 0.980066657),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.97351623, 0.228617132, 1, 0, 0, 0, 0.973516226, 0.228617072, 0, -0.228617072, 0.973516285),i)
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.97264862, 0.232279897, 1, 0, 0, 0, 0.972648799, 0.232279852, 0, -0.232279852, 0.972648919),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.5, 0.0977592468, 0.296988964, 1, 0, 0, 0, 0.804481149, 0.593977869, 0, -0.593977928, 0.804481208),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0.0882134438, 0.283605695, 1, 0, 0, 0, 0.823572338, 0.567211032, 0, -0.567211092, 0.823572397),i)
						game:GetService("RunService").RenderStepped:wait()
					end
				end
				for i = 0.35,0.4 , 0.025 do
					if dancing then
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.49878788, -0.0347967446, 1, 0, 0, 0, 0.997575462, 0.0695933998, 0, -0.0695933998, 0.997575462),i)
						humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.996428847, -0.0844366103, 0, 0.0844366103, 0.996428847),i)
						rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.9939127, 0.110167503, 1, 0, 0, 0, 0.993912935, 0.110167526, 0, -0.110167533, 0.993912995),i)
						llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.99822259, 0.0595921576, 1, 0, 0, 0, 0.998222768, 0.0595921502, 0, -0.0595921502, 0.998222828),i)
						lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.5, 0.276759148, -0.447396159, 1, 0, 0, 0, 0.44648236, -0.894792259, 0, 0.894792318, 0.44648239),i)
						rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0.278767586, -0.448392987, 1, 0, 0, 0, 0.442464471, -0.896785915, 0, 0.896785975, 0.44246453),i)
						game:GetService("RunService").RenderStepped:wait()
					end
				end
			end
		else
			Soundo0:Stop()
			Sound0:Play()
			dancing = false
			canwalk = true
		end
	end
end
mouse.KeyDown:connect(switch)
function dontremove()
	if Soundo0.Parent == nil then
		Soundo0.Parent = game.Players.LocalPlayer.Character.Torso
	end
end
game:GetService("RunService").RenderStepped:connect(dontremove)
function cancerify()
	local hum = mouse.Target.Parent:findFirstChild("Humanoid")
	if hum then
		if hum.Parent.Name == "Rufus14" then
			
		else
			textfag.Text = "get cancer"
			--Converted with ttyyuu12345's model to script plugin v4
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
			local Accessory0 = Instance.new("Accessory")
			Part1 = Instance.new("Part")
			local SpecialMesh2 = Instance.new("SpecialMesh")
			Accessory0.Name = "Cancer"
			Accessory0.Parent = mas
			Part1.Name = "Handle"
			Part1.Parent = Accessory0
			Part1.Rotation = Vector3.new(0, 0, 0.0199999996)
			Part1.FormFactor = Enum.FormFactor.Custom
			Part1.Size = Vector3.new(1.25000024, 1.12999988, 1.1400001)
			Part1.CFrame = CFrame.new(113.104767, 31.6558571, -259.307831, 1, -0.000407999993, 0, 0.000407999993, 1, 0, 0, 0, 1)
			Part1.BottomSurface = Enum.SurfaceType.Smooth
			Part1.TopSurface = Enum.SurfaceType.Smooth
			Part1.Position = Vector3.new(113.104767, 31.6558571, -259.307831)
			Part1.Orientation = Vector3.new(0, 0, 0.0199999996)
			SpecialMesh2.Parent = Part1
			SpecialMesh2.MeshId = "rbxassetid://361948302"
			SpecialMesh2.Scale = Vector3.new(0.5, 0.5, 0.5)
			SpecialMesh2.TextureId = "http://www.roblox.com/asset/?id=361948503 "
			SpecialMesh2.MeshType = Enum.MeshType.FileMesh
			SpecialMesh2.Scale = Vector3.new(0.5, 0.5, 0.5)
			for i,v in pairs(mas:GetChildren()) do
				v.Parent = hum.Parent
				pcall(function() v:MakeJoints() end)
			end
			mas:Destroy()
			for i,v in pairs(cors) do
				spawn(function()
					pcall(v)
				end)
			end
			wait(1.5)
			textfag.Text = game.Players.LocalPlayer.Character.Name.." The Brutal Anti-Furry and anti-skid"
		end
	end
end
mouse.Button1Down:connect(cancerify)
function attackflag(key)
	if key == "e" and not using then
		using = true
		canwalk = false
		textfag.Text = "go back to ur ugli place furry and skid"
		local sensoryee2 = Instance.new("Part", game.Players.LocalPlayer.Character["Right Arm"])
		sensoryee2.Size = Vector3.new(1, 1, 1)
		sensoryee2.CanCollide = false
		sensoryee2.Transparency = 0
		sensoryee2:BreakJoints()
		local weldsensor = Instance.new("Weld", sensoryee2)
		weldsensor.Part0 = sensoryee2
		weldsensor.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
		weldsensor.C0 = CFrame.new(0,0.5,0)
		local function hagotem1(part)
			sensoryee2:destroy()
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid then
				local canscan = true
				for i,v in pairs(humanoid.Parent:GetChildren()) do
					if v.ClassName == "Hat" or v.ClassName == "Accessory" then
						if v:findFirstChild("Handle") then
							if v.Handle:findFirstChild("Mesh") then
								if canscan and v.Handle.Mesh.MeshId == "rbxassetid://188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=170939831" or v.Handle.Mesh.MeshId == "rbxassetid://170939831" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=135446047" or v.Handle.Mesh.MeshId == "rbxassetid://135446047" or v.Handle.Mesh.MeshId == "rbxassetid://335037790" or v.Handle.Mesh.MeshId == "rbxassetid://361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=1374148" or v.Handle.Mesh.MeshId == "rbxassetid://1374148" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Handle.Mesh.MeshId == "rbxassetid://112495973" or v.Name == "FoxTail" or v.Name == "Zootopia_FoxEars" or v.Name == "FurryCatTail" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Name == "ArcticFoxHead" then
									canscan = false
									for i = 0,1 , 0.05 do
										humanoid.Parent.Torso.CFrame = humanoid.Parent.Torso.CFrame:lerp(CFrame.new(game.Players.LocalPlayer.Character.Torso.CFrame.x + 1,0,game.Players.LocalPlayer.Character.Torso.CFrame.z + 1) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0),i)
										game:GetService("RunService").RenderStepped:wait()
									end
									humanoid.Parent.Torso.Anchored = true
									for q,w in pairs(humanoid.Parent:GetChildren()) do
										if w.ClassName == "Part" then
											w.Anchored = true
										end
									end
								end
							end
						end
					end
				end
			end
		end
		sensoryee2.Touched:connect(hagotem1)
		for i = 0,1 , 0.04 do
	       humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.469489127, 5.58134868e-26, 0.882937074, 6.51283563e-26, 1, -8.06026519e-26, -0.882937074, 1.03650012e-25, 0.469489127),i)
		   --headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5222218, -0.102214813, 0.469437033, 6.2015107e-07, -0.882963717, 0.122883834, 0.99026978, 0.0653332844, 0.874373734, -0.139172658, 0.464868218),i)
	       lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.04339027, 0.288009644, 0, 0.17366755, 0.984804034, 6.07514039e-13, -0.984804392, 0.173667595, 1.61679779e-13, 5.32907052e-14, -6.27053964e-13, 0.999999762),i)
	       rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.66837502, 0.581873178, -0.720844269, 0.932209134, -0.33412677, 0.139085978, 0.118962891, -0.080060333, -0.989665747, 0.341809034, 0.939121604, -0.0348842852),i)
	       game:GetService("RunService").RenderStepped:wait()
		end
		for i = 1,5 do
		for i = 0,1 , 0.05 do
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, -1.48936939e-27, 1.31266455e-27, 1.1359597e-27, 0.9702968, 0.241918504, -1.61558713e-27, -0.241918504, 0.9702968):inverse(),i)
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -2, 0, 1, 1.26217745e-29, 8.58280665e-28, -1.76704843e-28, 0.961263537, 0.275633663, -5.04870979e-28, -0.275633663, 0.961263537),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50000048, 0, 0.298294067, 1, 4.14517148e-22, -4.16016716e-22, -2.65673535e-22, 0.951056898, 0.30901596, 5.23747954e-22, -0.30901596, 0.951056898),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -0.7634058, -0.96099472, 1, 1.14858148e-27, -1.71656133e-27, -1.38839519e-27, 0.951060057, -0.309013367, 1.31266455e-27, 0.309013367, 0.951060057),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0, 0.298294067, 1, 4.14517148e-22, -4.16016716e-22, -2.65673535e-22, 0.951056898, 0.30901596, 5.23747954e-22, -0.30901596, 0.951056898),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		local sensoryee = Instance.new("Part", game.Players.LocalPlayer.Character["Right Arm"])
		sensoryee.Size = Vector3.new(1, 1, 1)
		sensoryee.CanCollide = false
		sensoryee.Transparency = 0
		sensoryee:BreakJoints()
		local weldsensor = Instance.new("Weld", sensoryee)
		weldsensor.Part0 = sensoryee
		weldsensor.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
		weldsensor.C0 = CFrame.new(0,0.5,0)
		local function hagotem(part)
			sensoryee:destroy()
			local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
			if humanoid then
				local canscan = true
				for i,v in pairs(humanoid.Parent:GetChildren()) do
					if v.ClassName == "Hat" or v.ClassName == "Accessory" then
						if v:findFirstChild("Handle") then
							if v.Handle:findFirstChild("Mesh") then
								if canscan and v.Handle.Mesh.MeshId == "rbxassetid://188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=170939831" or v.Handle.Mesh.MeshId == "rbxassetid://170939831" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=135446047" or v.Handle.Mesh.MeshId == "rbxassetid://135446047" or v.Handle.Mesh.MeshId == "rbxassetid://335037790" or v.Handle.Mesh.MeshId == "rbxassetid://361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=1374148" or v.Handle.Mesh.MeshId == "rbxassetid://1374148" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Handle.Mesh.MeshId == "rbxassetid://112495973" or v.Name == "FoxTail" or v.Name == "Zootopia_FoxEars" or v.Name == "FurryCatTail" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Name == "ArcticFoxHead" then
									canscan = false
									hittd = true
									humanoid.Health = humanoid.Health - math.random(20,25)
									local furfaggrowl = Instance.new("Sound", humanoid.Parent.Head)
									furfaggrowl.SoundId = "rbxassetid://146163534"
									furfaggrowl.Volume = 10
									furfaggrowl:Play()
									local rip = Instance.new("Sound", humanoid.Parent.Head)
									rip.SoundId = "rbxassetid://132514715"
									rip.Volume = 10
									textfag.Text = "kaboom"
									punch:Play()
									for i = 1,math.random(2,3) do
			                            --Converted with ttyyuu12345's model to script plugin v4
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
										local Part0 = Instance.new("Part")
										Part0.Name = "bl00d"
										Part0.Parent = mas
										Part0.Material = Enum.Material.SmoothPlastic
										Part0.BrickColor = BrickColor.new("Maroon")
										Part0.Size = Vector3.new(1.16000009, 0.0500000007, 1.12000048)
										Part0.CFrame = CFrame.new(17.569994, 1.14527643, 34.9399986, 1, 0, 0, 0, 1, 0, 0, 0, 1)
										Part0.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
										Part0.TopSurface = Enum.SurfaceType.SmoothNoOutlines
										Part0.Color = Color3.new(0.458824, 0, 0)
										Part0.Position = Vector3.new(17.569994, 1.14527643, 34.9399986)
										Part0.Color = Color3.new(0.458824, 0, 0)
										Part0.CFrame = humanoid.Parent.Head.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
										Part0:BreakJoints()
										for i,v in pairs(mas:GetChildren()) do
											v.Parent = humanoid.Parent
											pcall(function() v:MakeJoints() end)
										end
										mas:Destroy()
										for i,v in pairs(cors) do
											spawn(function()
												pcall(v)
											end)
										end
									end
								end
							end
						end
					end
				end
			end
		end
		sensoryee.Touched:connect(hagotem)
		for i = 0,1 , 0.1 do
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, 1.80491375e-26, -5.65455497e-27, -1.84277907e-26, 0.866028428, -0.499996245, -4.08945493e-27, 0.499996245, 0.866028428):inverse(),i)
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -2, 0, 1, 1.26217745e-29, 8.58280665e-28, -1.76704843e-28, 0.961263537, 0.275633663, -5.04870979e-28, -0.275633663, 0.961263537),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50000048, 0, 0.298294067, 1, 4.14517148e-22, -4.16016716e-22, -2.65673535e-22, 0.951056898, 0.30901596, 5.23747954e-22, -0.30901596, 0.951056898),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.82702696, -0.937412262, 1, -8.83524214e-28, 3.00398233e-27, 2.27191941e-27, 0.788023472, -0.615659177, -2.27191941e-27, 0.615659177, 0.788023472),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0, 0.298294067, 1, 4.14517148e-22, -4.16016716e-22, -2.65673535e-22, 0.951056898, 0.30901596, 5.23747954e-22, -0.30901596, 0.951056898),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		sensoryee:destroy()
		sensoryee2:destroy()
		end
		for i = 0,1 , 0.05 do
		   humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.48563504, -0.102214813, 1, 6.31088724e-30, -1.00974196e-28, -2.5243549e-29, 0.990270674, 0.139171436, -5.04870979e-29, -0.139171436, 0.990270674),i)
	            llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.606146812, -2.0409379, 0.23392868, 0.994522691, 0.104527831, 4.48272353e-09, -0.10395515, 0.989075184, 0.104526937, 0.0109259691, -0.103954434, 0.994521797),i)
	            lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.56223869, 0.00435209274, 0, 0.997564316, 0.0697554871, 0, -0.0697554871, 0.997564316, 0, 0, 2.5243549e-29, 1),i)
	            rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.589343071, -2.06024575, -0.139556885, 0.997564077, -0.0693742931, 0.0072911568, 0.0697562397, 0.992102206, -0.104268931, 1.75914945e-08, 0.104523741, 0.994524658),i)
	            rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.61233902, 0.0157878399, 0, 0.990270674, -0.139171436, 5.04870979e-29, 0.139171436, 0.990270674, 2.01948392e-28, 1.00974196e-28, 2.27191941e-28, 1),i)
	       game:GetService("RunService").RenderStepped:wait()
		end
textfag.Text = game.Players.LocalPlayer.Character.Name.." The Brutal Anti-Furry and anti-skid"
		canwalk = true
		using = false
	end
end
mouse.KeyDown:connect(attackflag)
function attackflag1(key)
	if key == "t" and not using then
		using = true
		canwalk = false
		textfag.Text = "lol keep cri"
		local sensoryee2 = Instance.new("Part", game.Players.LocalPlayer.Character["Right Arm"])
		sensoryee2.Size = Vector3.new(1, 1, 1)
		sensoryee2.CanCollide = false
		sensoryee2.Transparency = 0
		sensoryee2:BreakJoints()
		local weldsensor = Instance.new("Weld", sensoryee2)
		weldsensor.Part0 = sensoryee2
		weldsensor.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
		weldsensor.C0 = CFrame.new(0,0.5,0)
		local function hagotem1(part)
			sensoryee2:destroy()
			humanoidfurshit = part.Parent:findFirstChild("Humanoid")
			if humanoidfurshit then
				local canscan = true
				for i,v in pairs(humanoidfurshit.Parent:GetChildren()) do
					if v.ClassName == "Hat" or v.ClassName == "Accessory" then
						if v:findFirstChild("Handle") then
							if v.Handle:findFirstChild("Mesh") then
								if canscan and v.Handle.Mesh.MeshId == "rbxassetid://188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=170939831" or v.Handle.Mesh.MeshId == "rbxassetid://170939831" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=135446047" or v.Handle.Mesh.MeshId == "rbxassetid://135446047" or v.Handle.Mesh.MeshId == "rbxassetid://335037790" or v.Handle.Mesh.MeshId == "rbxassetid://361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=1374148" or v.Handle.Mesh.MeshId == "rbxassetid://1374148" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Handle.Mesh.MeshId == "rbxassetid://112495973" or v.Name == "FoxTail" or v.Name == "Zootopia_FoxEars" or v.Name == "FurryCatTail" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Name == "ArcticFoxHead" then
									canscan = false
									for i = 0,1 , 0.05 do
										humanoidfurshit.Parent.Torso.CFrame = humanoidfurshit.Parent.Torso.CFrame:lerp(CFrame.new(game.Players.LocalPlayer.Character.Torso.CFrame.x + 1,0,game.Players.LocalPlayer.Character.Torso.CFrame.z + -1) * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0),i)
										game:GetService("RunService").RenderStepped:wait()
									end
									humanoidfurshit.Parent.Torso.Anchored = true
									for q,w in pairs(humanoidfurshit.Parent:GetChildren()) do
										if w.ClassName == "Part" then
											w.Anchored = true
										end
									end
								end
							end
						end
					end
				end
			end
		end
		sensoryee2.Touched:connect(hagotem1)
		for i = 0,1 , 0.04 do
	       humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.469489127, 5.58134868e-26, 0.882937074, 6.51283563e-26, 1, -8.06026519e-26, -0.882937074, 1.03650012e-25, 0.469489127),i)
		   --headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5222218, -0.102214813, 0.469437033, 6.2015107e-07, -0.882963717, 0.122883834, 0.99026978, 0.0653332844, 0.874373734, -0.139172658, 0.464868218),i)
	       lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.04339027, 0.288009644, 0, 0.17366755, 0.984804034, 6.07514039e-13, -0.984804392, 0.173667595, 1.61679779e-13, 5.32907052e-14, -6.27053964e-13, 0.999999762),i)
	       rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.66837502, 0.581873178, -0.720844269, 0.932209134, -0.33412677, 0.139085978, 0.118962891, -0.080060333, -0.989665747, 0.341809034, 0.939121604, -0.0348842852),i)
	       game:GetService("RunService").RenderStepped:wait()
		end
		wait(0.3)
		for i = 0,1 , 0.1 do
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, -1.48936939e-27, 1.31266455e-27, 1.1359597e-27, 0.9702968, 0.241918504, -1.61558713e-27, -0.241918504, 0.9702968):inverse(),i)
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -2, 0, 1, 1.26217745e-29, 8.58280665e-28, -1.76704843e-28, 0.961263537, 0.275633663, -5.04870979e-28, -0.275633663, 0.961263537),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50000048, 0, 0.298294067, 1, 4.14517148e-22, -4.16016716e-22, -2.65673535e-22, 0.951056898, 0.30901596, 5.23747954e-22, -0.30901596, 0.951056898),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -0.7634058, -0.96099472, 1, 1.14858148e-27, -1.71656133e-27, -1.38839519e-27, 0.951060057, -0.309013367, 1.31266455e-27, 0.309013367, 0.951060057),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0, 0.298294067, 1, 4.14517148e-22, -4.16016716e-22, -2.65673535e-22, 0.951056898, 0.30901596, 5.23747954e-22, -0.30901596, 0.951056898),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		local function hagotem(part)
			if humanoidfurshit then
				local canscan = true
				for i,v in pairs(humanoidfurshit.Parent:GetChildren()) do
					if v.ClassName == "Hat" or v.ClassName == "Accessory" then
						if v:findFirstChild("Handle") then
							if v.Handle:findFirstChild("Mesh") then
								if canscan and v.Handle.Mesh.MeshId == "rbxassetid://188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=188699722" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=170939831" or v.Handle.Mesh.MeshId == "rbxassetid://170939831" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=135446047" or v.Handle.Mesh.MeshId == "rbxassetid://135446047" or v.Handle.Mesh.MeshId == "rbxassetid://335037790" or v.Handle.Mesh.MeshId == "rbxassetid://361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=361948302" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=1374148" or v.Handle.Mesh.MeshId == "rbxassetid://1374148" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Handle.Mesh.MeshId == "rbxassetid://112495973" or v.Name == "FoxTail" or v.Name == "Zootopia_FoxEars" or v.Name == "FurryCatTail" or v.Handle.Mesh.MeshId == "http://www.roblox.com/asset/?id=112495973" or v.Name == "ArcticFoxHead" then
									canscan = false
									hittd = true
									humanoidfurshit.Parent:BreakJoints()
									textfag.Text = "kaboom"
									gore:Play()
									for i,v in pairs(humanoidfurshit.Parent:GetChildren()) do
				                        if v.ClassName == "Hat" or v.ClassName == "Accessory" then
				                            v:destroy()
				                        end
				                        if v.Name == "Head" then
				                            v.Transparency = 1
				                        end
				                    end
				                    if humanoidfurshit.Parent.Head:findFirstChild("face") then
				                        humanoidfurshit.Parent.Head.face.Transparency = 1
				                    end
									for i = 1,math.random(15,20) do
			                            --Converted with ttyyuu12345's model to script plugin v4
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
										local Part0 = Instance.new("Part")
										Part0.Name = "bl00d"
										Part0.Parent = mas
										Part0.Material = Enum.Material.SmoothPlastic
										Part0.BrickColor = BrickColor.new("Maroon")
										Part0.Size = Vector3.new(1.16000009, 0.0500000007, 1.12000048)
										Part0.CFrame = CFrame.new(17.569994, 1.14527643, 34.9399986, 1, 0, 0, 0, 1, 0, 0, 0, 1)
										Part0.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
										Part0.TopSurface = Enum.SurfaceType.SmoothNoOutlines
										Part0.Color = Color3.new(0.458824, 0, 0)
										Part0.Position = Vector3.new(17.569994, 1.14527643, 34.9399986)
										Part0.Color = Color3.new(0.458824, 0, 0)
										Part0.CFrame = humanoidfurshit.Parent.Head.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
										Part0:BreakJoints()
										for i,v in pairs(mas:GetChildren()) do
											v.Parent = humanoidfurshit.Parent
											pcall(function() v:MakeJoints() end)
										end
										mas:Destroy()
										for i,v in pairs(cors) do
											spawn(function()
												pcall(v)
											end)
										end
									end
								end
							end
						end
					end
				end
			end
		end
		hagotem()
		for i = 0,1 , 0.1 do
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1, 1.80491375e-26, -5.65455497e-27, -1.84277907e-26, 0.866028428, -0.499996245, -4.08945493e-27, 0.499996245, 0.866028428):inverse(),i)
			llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -2, 0, 1, 1.26217745e-29, 8.58280665e-28, -1.76704843e-28, 0.961263537, 0.275633663, -5.04870979e-28, -0.275633663, 0.961263537),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50000048, 0, 0.298294067, 1, 4.14517148e-22, -4.16016716e-22, -2.65673535e-22, 0.951056898, 0.30901596, 5.23747954e-22, -0.30901596, 0.951056898),i)
			rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.82702696, -0.937412262, 1, -8.83524214e-28, 3.00398233e-27, 2.27191941e-27, 0.788023472, -0.615659177, -2.27191941e-27, 0.615659177, 0.788023472),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5, 0, 0.298294067, 1, 4.14517148e-22, -4.16016716e-22, -2.65673535e-22, 0.951056898, 0.30901596, 5.23747954e-22, -0.30901596, 0.951056898),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		sensoryee2:destroy()
		for i = 0,1 , 0.05 do
		   humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.48563504, -0.102214813, 1, 6.31088724e-30, -1.00974196e-28, -2.5243549e-29, 0.990270674, 0.139171436, -5.04870979e-29, -0.139171436, 0.990270674),i)
	            llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.606146812, -2.0409379, 0.23392868, 0.994522691, 0.104527831, 4.48272353e-09, -0.10395515, 0.989075184, 0.104526937, 0.0109259691, -0.103954434, 0.994521797),i)
	            lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.56223869, 0.00435209274, 0, 0.997564316, 0.0697554871, 0, -0.0697554871, 0.997564316, 0, 0, 2.5243549e-29, 1),i)
	            rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.589343071, -2.06024575, -0.139556885, 0.997564077, -0.0693742931, 0.0072911568, 0.0697562397, 0.992102206, -0.104268931, 1.75914945e-08, 0.104523741, 0.994524658),i)
	            rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.61233902, 0.0157878399, 0, 0.990270674, -0.139171436, 5.04870979e-29, 0.139171436, 0.990270674, 2.01948392e-28, 1.00974196e-28, 2.27191941e-28, 1),i)
	       game:GetService("RunService").RenderStepped:wait()
		end
textfag.Text = game.Players.LocalPlayer.Character.Name.." The EXTREMELY BRUTAL Anti-Furry and Anti-Skid"
		canwalk = true
		using = false
	end
end
mouse.KeyDown:connect(attackflag1)
while true do
    if howmuch <= -1 then
        howmuch = 0
    end
    if howmuch >= 4 then
        howmuch = 0
    end
    if canwalk and howmuch < 1 then
        for i = 0,1 , 0.01 do
			if canwalk and howmuch < 1 then
				
	            humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.48563504, -0.102214813, 1, 6.31088724e-30, -1.00974196e-28, -2.5243549e-29, 0.990270674, 0.139171436, -5.04870979e-29, -0.139171436, 0.990270674),i)
	            llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.606146812, -2.0409379, 0.23392868, 0.994522691, 0.104527831, 4.48272353e-09, -0.10395515, 0.989075184, 0.104526937, 0.0109259691, -0.103954434, 0.994521797),i)
	            lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.56223869, 0.00435209274, 0, 0.997564316, 0.0697554871, 0, -0.0697554871, 0.997564316, 0, 0, 2.5243549e-29, 1),i)
	            rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.589343071, -2.06024575, -0.139556885, 0.997564077, -0.0693742931, 0.0072911568, 0.0697562397, 0.992102206, -0.104268931, 1.75914945e-08, 0.104523741, 0.994524658),i)
	            rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.61233902, 0.0157878399, 0, 0.990270674, -0.139171436, 5.04870979e-29, 0.139171436, 0.990270674, 2.01948392e-28, 1.00974196e-28, 2.27191941e-28, 1),i)
	            game:GetService("RunService").RenderStepped:wait()
			end
        end
		for i = 0,0.3 , 0.004 do
			if canwalk and howmuch < 1 then
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5222218, -0.102214813, 1, 6.31088724e-30, -1.00974196e-28, -2.5243549e-29, 0.990270674, 0.139171436, -5.04870979e-29, -0.139171436, 0.990270674),i)
	            llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.606146812, -2.0409379, 0.23392868, 0.994522691, 0.104527831, 4.48272353e-09, -0.10395515, 0.989075184, 0.104526937, 0.0109259691, -0.103954434, 0.994521797),i)
	            lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.56223869, 0.0409388542, 0, 0.997564316, 0.0697554871, 0, -0.0697554871, 0.997564316, 0, 0, 2.5243549e-29, 1),i)
	            rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.589343071, -2.06024575, -0.139556885, 0.997564077, -0.0693742931, 0.0072911568, 0.0697562397, 0.992102206, -0.104268931, 1.75914945e-08, 0.104523741, 0.994524658),i)
	            rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.61233902, 0.0523746014, 0, 0.990270674, -0.139171436, 5.04870979e-29, 0.139171436, 0.990270674, 2.01948392e-28, 1.00974196e-28, 2.27191941e-28, 1),i)
	            game:GetService("RunService").RenderStepped:wait()
			end
        end
    end
    if canwalk and howmuch >= 1 then
        if canwalk then
            for i = 0,0.5 , 0.05 do
				if canwalk and howmuch >= 1 then
					
					headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 1, -4.22829445e-28, 5.04870979e-28, -4.7962743e-28, 0.98481518, -0.173646927, 4.54383881e-28, 0.173646927, 0.98481518),i)
			 	   humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, -0.0218505859, -0.207862854, 1, -2.65673535e-22, 5.23747954e-22, 1.5097504e-22, 0.978147745, 0.207910955, -5.67539301e-22, -0.207910955, 0.978147745),i)
		           llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.35635376, 0.984832764, 1, -1.46412584e-27, -1.17303617e-26, 1.15615454e-26, -0.0348859876, 0.999391198, -1.61558713e-27, -0.999391198, -0.0348859876),i)
		           lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50004387, 0.396968603, -0.897594452, 1, -2.59686077e-27, 2.57052452e-26, 2.58237777e-26, 0.0697625875, -0.99756366, 7.97269708e-28, 0.99756366, 0.069762595),i)
		           rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.81869507, -0.922622681, 1, -1.72713825e-22, -5.61306619e-22, -2.65673535e-22, 0.719345152, -0.694654465, 5.23747954e-22, 0.694656253, 0.719344676),i)
		           rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.49791718, 0.365714312, 0.961071014, 0.9993909, -0.00121776958, -0.0348753184, 0.0348965712, 0.0348958485, 0.998781562, 7.18205513e-07, -0.999390185, 0.0349170938),i)
		           game:GetService("RunService").RenderStepped:wait()
				end
            end
        end
        if canwalk then
            for i = 0,0.5 , 0.05 do
				if canwalk and howmuch >= 1 then
					
					headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 1, -4.22829445e-28, 5.04870979e-28, -4.7962743e-28, 0.98481518, -0.173646927, 4.54383881e-28, 0.173646927, 0.98481518),i)
			 	   humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, -0.0218505859, -0.00492095947, 1, -2.65673535e-22, 5.23747954e-22, 1.5097504e-22, 0.978147686, 0.20791094, -5.67539301e-22, -0.20791094, 0.978147686),i)
		           llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.5, -1.86941528, -0.882217407, 1, -6.4421537e-26, 9.04728795e-26, 1.09784194e-25, 0.694650829, -0.71934706, -1.64587939e-26, 0.71934706, 0.694650829),i)
		           lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.50009155, 0.335239649, 1.03072357, 1, 3.69729388e-23, 2.6307918e-22, -2.65664548e-22, 0.139171526, 0.99026835, 0, -0.99026829, 0.139171541),i)
		           rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.35365295, 1.16508484, 1, 5.03939593e-22, 3.01560673e-22, -2.65673358e-22, -0.0697558299, 0.997564077, 5.237476e-22, -0.997564077, -0.0697558299),i)
		           rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.49795914, 0.313182116, -0.842372894, 0.9993909, 0.00364707294, -0.034706641, -0.0348764732, 0.0696690381, -0.996960342, -0.00121800881, 0.997563541, 0.0697537959),i)
		           game:GetService("RunService").RenderStepped:wait()
				end
            end
        end
    end
    game:GetService("RunService").RenderStepped:wait()
end