local SytroWaterMark = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local TextLabel_2 = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

SytroWaterMark.Name = "SytroWaterMark"
SytroWaterMark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SytroWaterMark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SytroWaterMark.ResetOnSpawn = false

TextLabel.Parent = SytroWaterMark
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.000772226602, 0, 0.0343558267, 0)
TextLabel.Size = UDim2.new(0.170134634, 0, 0.0700389072, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "JN HH Gaming Hub"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 28.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.MouseButton1Down:Connect(function()
	print("Everthing its made by me, yes exactly jn")
end)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(126, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 0, 0))}
UIGradient.Parent = TextLabel

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.000772226602, 0, 0.67410934, 0)
TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "V7"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 24.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(126, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 0, 0))}
UIGradient_2.Parent = TextLabel_2

UITextSizeConstraint.Parent = TextLabel_2
UITextSizeConstraint.MaxTextSize = 24

UITextSizeConstraint_2.Parent = TextLabel
UITextSizeConstraint_2.MaxTextSize = 27


local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Bedwars OP Script";
    Text = "Source Code Leaked by Pama"; -- what the text says (ofc)
    Duration = 30;
})
wait(1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Enjoy";
    Text = "Don't Forget to Dislike JN HH Gaming"; -- what the text says (ofc)
    Duration = 30;
})





local players = game:GetService("Players")
local lplr = players.LocalPlayer
local oldchar = lplr.Character
local cam = workspace.CurrentCamera
local uis = game:GetService("UserInputService")
local KnitClient = debug.getupvalue(require(game.Players.LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
local InventoryUtil = require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil
local itemstuff = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.item["item-meta"]).getItemMeta, 1)
local RenderStepTable = {}
local StepTable = {}
local connectioninfjump
local killauraswing = {["Enabled"] = true}
local killaurasound = {["Enabled"] = true}
local killaurahitdelay = {["Value"] = 2}
local killaurasoundval = {["Value"] = 1}
local speedval = {["Value"] = 1}
local testtogttt = {["Value"] = 20}
local ACC1
local ACC2
local antivoidtransparent = {["Value"] = 50}
local antivoidcolor = {["Hue"] = 0.93, ["Sat"] = 1, ["Value"] = 1}
local reachval = {["Value"] = 18}
local autoclick = {["Enabled"] = true}
local origC0 = game.ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0
local killaurafirstpersonanim = {["Value"] = true}
local killauraanimval = {["Value"] = "Cool"}

local SprintCont = KnitClient.Controllers.SprintController
local SwordCont = KnitClient.Controllers.SwordController
local KnockbackTable = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)
local ClientHandler = Client

local function GetURL(scripturl)
	return game:HttpGet("https://raw.githubusercontent.com/7GrandLittleBrother/SytroNight4ROBLOX/main/"..scripturl, true)
end

local function isAlive(plr)
	if plr then
		return plr and plr.Character and plr.Character.Parent ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Head") and plr.Character:FindFirstChild("Humanoid")
	end
	return lplr and lplr.Character and lplr.Character.Parent ~= nil and lplr.Character:FindFirstChild("HumanoidRootPart") and lplr.Character:FindFirstChild("Head") and lplr.Character:FindFirstChild("Humanoid")
end

local function runcode(func)
	func()
end

local function playsound(id, volume) 
	local sound = Instance.new("Sound")
	sound.Parent = workspace
	sound.SoundId = id
	sound.PlayOnRemove = true 
	if volume then 
		sound.Volume = volume
	end
	sound:Destroy()
end

local function playanimation(id) 
	if isAlive() then 
		local animation = Instance.new("Animation")
		animation.AnimationId = id
		local animatior = lplr.Character.Humanoid.Animator
		animatior:LoadAnimation(animation):Play()
	end
end

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end

function getinv(plr)
	local plr = plr or lplr
	local thingy, thingytwo = pcall(function() return InventoryUtil.getInventory(plr) end)
	return (thingy and thingytwo or {
		items = {},
		armor = {},
		hand = nil
	})
end

function getsword()
	local sd
	local higherdamage
	local swordslots
	local swords = getinv().items
	for i, v in pairs(swords) do
		if v.itemType:lower():find("sword") or v.itemType:lower():find("blade") then
			if higherdamage == nil or itemstuff[v.itemType].sword.damage > higherdamage then
				sd = v
				higherdamage = itemstuff[v.itemType].sword.damage
				swordslots = i
			end
		end
	end
	return sd, swordslots
end

local function getremote(tab)
	for i,v in pairs(tab) do
		if v == "Client" then
			return tab[i + 1]
		end
	end
	return ""
end

local function hvFunc(cock)
	return {hashedval = cock}
end

local function targetCheck(plr, check)
	return (check and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("ForceField") == nil or check == false)
end

local function isPlayerTargetable(plr, target)
	return plr ~= lplr and plr and isAlive(plr) and targetCheck(plr, target)
end

local function GetAllNearestHumanoidToPosition(distance, amount)
	local returnedplayer = {}
	local currentamount = 0
	if entity.isAlive then -- alive check
		for i, v in pairs(game.Players:GetChildren()) do -- loop through players
			if isPlayerTargetable((v), true, true, v.Character ~= nil) and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") and currentamount < amount then -- checks
				local mag = (lplr.Character.HumanoidRootPart.Position - v.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
				if mag <= distance then -- mag check
					table.insert(returnedplayer, v)
					currentamount = currentamount + 1
				end
			end
		end
		for i2,v2 in pairs(game:GetService("CollectionService"):GetTagged("Monster")) do -- monsters
			if v2:FindFirstChild("HumanoidRootPart") and currentamount < amount and v2.Name ~= "Duck" then -- no duck
				local mag = 
(lplr.Character.HumanoidRootPart.Position - v.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
				if mag <= distance then -- mag check
					table.insert(returnedplayer, v)
					currentamount = currentamount + 1
				end
			end
		end
		for i2,v2 in pairs(game:GetService("CollectionService"):GetTagged("Monster")) do -- monsters
			if v2:FindFirstChild("HumanoidRootPart") and currentamount < amount and v2.Name ~= "Duck" then -- no duck
				local mag = (lplr.Character.HumanoidRootPart.Position - v2.HumanoidRootPart.Position).magnitude
				if mag <= distance then -- magcheck
					table.insert(returnedplayer, {Name = (v2 and v2.Name or "Monster"), UserId = 1443379645, Character = v2}) -- monsters are npcs so I have to create a fake player for target info
					currentamount = currentamount + 1
				end
			end
		end
	end
	return returnedplayer -- table of attackable entities
end

local function BindToRenderStep(name, num, func)
	if RenderStepTable[name] == nil then
		RenderStepTable[name] = game:GetService("RunService").RenderStepped:connect(func)
	end
end
local function UnbindFromRenderStep(name)
	if RenderStepTable[name] then
		RenderStepTable[name]:Disconnect()
		RenderStepTable[name] = nil
	end
end

local function BindToStepped(name, num, func)
	if StepTable[name] == nil then
		StepTable[name] = game:GetService("RunService").Stepped:connect(func)
	end
end
local function UnbindFromStepped(name)
	if StepTable[name] then
		StepTable[name]:Disconnect()
		StepTable[name] = nil
	end
end

local attackentitycont = Client:Get(getremote(debug.getconstants(getmetatable(KnitClient.Controllers.SwordController)["attackEntity"])))
local rgfejd = false
local DistVal = {["Value"] = 18}
function KillauraRemote()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
			local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if mag <= DistVal["Value"] and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.Health > 0 then
					rgfejd = true
					local GBW = getsword()
					local selfPosition = lplr.Character.HumanoidRootPart.Position + (DistVal["Value"] > 14 and (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude > 14 and (CFrame.lookAt(lplr.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position).lookVector * 4) or Vector3.new(0, 0, 0))
					local Entity = v.Character
					local target = v.Character:GetPrimaryPartCFrame().Position
					attackentitycont:CallServer({
						["chargedAttack"] = {["chargeRatio"] = 1},
						["weapon"] = GBW ~= nil and GBW.tool,
						["entityInstance"] = Entity,
						["validate"] = {["targetPosition"] = {["value"] = target,
							["hash"] = hvFunc(target)},
						["raycast"] = {
							["cameraPosition"] = hvFunc(cam.CFrame.Position), 
							["cursorDirection"] = hvFunc(Ray.new(cam.CFrame.Position, v.Character:GetPrimaryPartCFrame().Position).Unit.Direction)
						},
						["selfPosition"] = {["value"] = selfPosition,
							["hash"] = hvFunc(selfPosition)
						}
						}
					})
					if killaurasound["Enabled"] then
						playsound("rbxassetid://6760544639", killaurasoundval["Value"])
					end
					if killauraswing["Enabled"] then
						playanimation("rbxassetid://4947108314")
					end
				end
			else
				rgfejd = false
			end
		end
	end
end

local itemtab = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.item["item-meta"]).getItemMeta, 1)
local CombatConstant = require(game:GetService("ReplicatedStorage").TS.combat["combat-constant"]).CombatConstant
local function getEquipped()
	local typetext = ""
	local obj = (entity.isAlive and lplr.Character:FindFirstChild("HandInvItem") and lplr.Character.HandInvItem.Value or nil)
	if obj then
		if obj.Name:find("sword") or obj.Name:find("blade") or obj.Name:find("baguette") or obj.Name:find("scythe") or obj.Name:find("dao") then
			typetext = "sword"
		end
		if obj.Name:find("wool") or itemtab[obj.Name]["block"] then
			typetext = "block"
		end
		if obj.Name:find("bow") then
			typetext = "bow"
		end
	end
	return {["Object"] = obj, ["Type"] = typetext}
end


function getbeds()
	local beds = {}
	local blocks = game:GetService("Workspace").Map.Blocks
	for _,Block in pairs(blocks:GetChildren()) do
		if Block.Name == "bed" and Block.Covers.BrickColor ~= game.Players.LocalPlayer.Team.TeamColor then
			table.insert(beds,Block)
		end
	end
	return beds
end

function getbedsblocks()
	local blockstb = {}
	local blocks = game:GetService("Workspace").Map.Blocks
	for i,v in pairs(blocks:GetChildren()) do
		if v:IsA("Part") then
			table.insert(blockstb,v)
		end
	end
	return blockstb
end

function blocks(bed)
	local aboveblocks = 0
	local Blocks = getbedsblocks()
	for _,Block in pairs(Blocks) do
		if Block.Position.X == bed.X and Block.Position.Z == bed.Z and Block.Name ~= "bed" and (Block.Position.Y - bed.Y) <= 9 and Block.Position.Y > bed.Y then
			aboveblocks = aboveblocks + 1
		end
	end
	return aboveblocks
end

function nuker()
	local beds = getbeds()
	for _,bed in pairs(beds) do
		local bedmagnitude = (bed.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude
		if bedmagnitude < 27 then
			local upnum = blocks(bed.Position)
			local x = math.round(bed.Position.X/3)
			local y = math.round(bed.Position.Y/3) + upnum
			local z = math.round(bed.Position.Z/3)
			game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.DamageBlock:InvokeServer({
				["blockRef"] = {
					["blockPosition"] = Vector3.new(x,y,z)
				},
				["hitPosition"] = Vector3.new(x,y,z),
				["hitNormal"] = Vector3.new(x,y,z),
			})
		end
	end
end










local kavoUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/PrototypeHub/SytroNight4ROBLOX/main/libraries/kavo.lua"))()
local window = kavoUi.CreateLib("JN HH Gaming Hub (Source Code) V7", "BloodTheme")
local entity = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/Libraries/entityHandler.lua", true))()

do
	local oldcharacteradded = entity.characterAdded
	entity.characterAdded = function(plr, char, localcheck)
		return oldcharacteradded(plr, char, localcheck, function() end)
	end
	entity.fullEntityRefresh()
end

local colorbox
local function makeRainbowText(text)
	spawn(function()
		colorbox = Color3.fromRGB(170,0,170)
		local x = 0
		while wait() do
			colorbox = Color3.fromHSV(x,1,1)
			x = x + 4.5/255
			if x >= 1 then
				x = 0
			end
		end
	end)
	spawn(function()
		repeat
			wait()
			text.TextColor3 = colorbox
		until true == false
	end)
end
-- Tab

local Tab1 = window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Bedwars")
local Tab2 = window:NewTab("Other Scripts")
local Tab2Section = Tab2:NewSection("Other Scripts")
local Tab3 = window:NewTab("Auto Toxic")
local Tab3Section = Tab3:NewSection("If you turn on Once You Can't Off It")
local Tab4 = window:NewTab("Fun")
local Tab4Section = Tab4 :NewSection("Everyone Can See (Fe)")
local Tab5 = window:NewTab("Credits (Dont Care)")
local Tab5Section = Tab5:NewSection("Source Code Leaked By Pama")
local Tab5Section = Tab5:NewSection("Super Helper - Snick")
local Tab5Section = Tab5:NewSection(" Main Helpers - Darlux,NTD,Gaming Scripter")
local Tab5Section = Tab5:NewSection("Helpers - YzHacker,7GrandDad,Vamp")
local Tab5Section =Tab5:NewSection("Brother - JN HH Gaming Gameplay")
 
-- Buttons
Tab1Section:NewToggle("CFrame", "", function(state)
	if state then
		BindToStepped("CFrameWalkSpeed", 1, function(time, delta)
			if entity.isAlive then
				local newpos = (lplr.Character.Humanoid.MoveDirection  * (speedval["Value"] - lplr.Character.Humanoid.WalkSpeed)) * delta

				local raycastparameters = RaycastParams.new()
				raycastparameters.FilterDescendantsInstances = {lplr.Character}
				local ray = workspace:Raycast(lplr.Character.HumanoidRootPart.Position, newpos, raycastparameters)
				if ray then newpos = (ray.Position - lplr.Character.HumanoidRootPart.Position) end
				lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + newpos
			end
		end)
	else
		UnbindFromStepped("CFrameWalkSpeed")
	end
end)

Tab1Section:NewSlider("Speed 1-42", "Adjust CFrame speed", 42, 1, function(s)
	speedval["Value"] = s
end)

Tab1Section:NewToggle("KillAura", "Autoswing the sword if someone is near you", function(state)
	if state then
		BindToStepped("Killaura", 1, function()
			if entity.isAlive then
				KillauraRemote()
			end
		end)
	else
		UnbindFromStepped("Killaura")
	end
end)

Tab1Section:NewSlider("Distance 1-20", "Increase killaura distance", 20, 1, function(val)
	DistVal["Value"] = val
end)

Tab1Section:NewToggle("No Swing", "Disable killaura swing", function(state)
	if state then
		if killauraswing["Enabled"] == true then
			killauraswing["Enabled"] = false
		end
	else
		if killauraswing["Enabled"] == false then
			killauraswing["Enabled"] = true
		end
	end
end)

Tab1Section:NewSlider("Sound 1-0", "Adjust killaura sound", 1, 0, function(val)
	killaurasoundval["Value"] = val
end)
	

Tab1Section:NewToggle("Bed Nuker", "Auto break bed and covers", function(state)
	if state then
		BindToStepped("BedNuker", 1, function()
			nuker()
		end)
	else
		UnbindFromStepped("BedNuker")
	end
end)

Tab1Section:NewButton("Keyboard", "Opens Keyboard", function()
loadstring(game:HttpGet("https://pastebin.com/raw/kC3dAMvt"))()
end)


Tab1Section:NewToggle("No Fall Damage", "Opens No Fall Damage", function(callback)
    local nofall = true
    if callback then
        if nofall then
            spawn(function()
                repeat
                    wait()
                    if nofall == false then
                        return end

                        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.GroundHit:FireServer()
                    until nofall == false
                end)
            end
    else
        local nofall = false
    end
end)

Tab2Section:NewButton("Vape","Opens Vape",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Error-virus/holy-arceus-x-working-vape-v4/main/vape%20v4%20fixed%20version.lua", true))()
end)

Tab2Section:NewButton("Rise","Opens Rise",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/RiseForRoblox/main/main.lua", true))()
end)

Tab3Section:NewButton("Spam" , "Opens Spam",function()
while true do wait(1) 

local A_1 = "Dislike To JN HH Gaming" local A_2 = "All" 
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) end
end)

Tab3Section:NewButton("AutoToxic (Kids)" , " Opens AutoToxic (Kids)",function()
loadstring(game:HttpGet("https://pastebin.com/raw/LZAuYBzF",true))()
end)

Tab3Section:NewButton("AutoToxic (VeryToxic)" , " Opens AutoToxic (VeryToxic)",function()
loadstring(game:HttpGet("https://pastebin.com/raw/9xeUZLNT",true))()
end)

Tab3Section:NewButton("Auto Toxic (Ultra Toxic)" , "Opens Auto Toxic",function()
local choosePlayer = false --set true if you want to insult one person only
local chosenPlayer = "" --if chosePlayer = true, type playername in quotes



local Taunts = { --add as many as you wish
  "Imagine Not Being Able To Exploit",
  "No dad?",
  "No Beaches?",
  "Get Lost Loser",
  "Imagine Being So Bad, Couldn't be me",
"Go cry about it like fr even your dad left u because you cry",
"L+Bozo+No Dad + No beaches + cope + didn't ask",
"Get Exploits ",
"How are you so bad at the game lol",
"Cope harder",
"I got beaches and you don't, go cry like a baby L",
"Imagine not having synapse, couldn't be me",
"L + Bozo + Idiot",
"Dislike To Jn HH Gaming and hit the bell or else im gonna destroy you",

}

local Remote = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

local function Insult()
   local players = game.Players:GetChildren()
   local howManyPlayers = #players
   
   local ran = math.random(1,howManyPlayers)
   local chosenOne = players[ran]
   local chance = math.random(1,20)
   
   if choosePlayer == true then
       Remote:FireServer(chosenPlayer.." " ..Taunts[math.random(1,#Taunts)],"All")
   elseif chance <= 5 then
       Remote:FireServer(chosenOne.Name.." " ..Taunts[math.random(1,#Taunts)],"All")
   else
       Remote:FireServer(Taunts[math.random(1,#Taunts)],"All")
   end
end

local randTime = math.random(5,15)

while true and wait(randTime) do
   Insult()
end
end)

Tab3Section:NewButton("Make Server Leave","Opens Make Server Leave",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming123/JN-HH-Gaming-AutoToxic1/main/README.md",true))()
end)

Tab4Section:NewButton("Zombie Animation" , "Plays Zombie Animation",function()
loadstring(game:HttpGet("https://pastebin.com/raw/t3yTSPRn",true))()
end)

Tab4Section:NewButton("Ninja Animation","Plays Ninja Animation",function()
loadstring(game:HttpGet("https://pastebin.com/raw/bwGLPVV7",true))()
end)

Tab4Section:NewButton("Robot Animation","Plays Robot Animation",function()
local Animate =
game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
end)

Tab4Section:NewButton("Toy Animation","Opens Toy Animation",function()
local Animate =
game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
end)

local Tab4Section = Tab4:NewSection("Effects")

Tab4Section:NewButton("Light","Opens Light",function()
loadstring(game:HttpGet("https://pastebin.com/raw/QSR8pjFn",true))()
end)

Tab4Section:NewButton("Make You Feel Angry","Opens Make You Feel Angry",function()
loadstring(game:HttpGet("https://pastebin.com/raw/0W2VG7DZ",true))()
end)

Tab4Section:NewButton("Make You Feel Cool","Opens Make You Feel Cool",function()
print("HI")
loadstring(game:HttpGet("https://pastebin.com/raw/MSZPFVfE",true))()
end)

local Tab4Section = Tab4:NewSection("Cape")

Tab4Section:NewButton("JN Cape", "Opens JN Cape", function()
local player = game:GetService("Players")
local lplr = player.LocalPlayer
if lplr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
      if lplr.Character:FindFirstChild("Torso") then
        torso = lplr.Character.Torso
      else
        torso = lplr.Character.UpperTorso
      end
      local CapeP = Instance.new("Part", torso.Parent)
      CapeP.Name = "Cape"
      CapeP.Anchored = false
      CapeP.CanCollide = false
      CapeP.TopSurface = 0
      CapeP.BottomSurface = 0
      CapeP.Color = Color3.fromRGB(34,34,34)
      CapeP.FormFactor = "Custom"
      CapeP.Size = Vector3.new(0.2,0.2,0.2)
      local decal = Instance.new("Decal", CapeP)
      decal.Texture = "http://www.roblox.com/asset/?id=9685546949"
      decal.Face = "Back"
      local msh = Instance.new("BlockMesh", CapeP)
      msh.Scale = Vector3.new(9,17.5,0.5)
      local motor = Instance.new("Motor", CapeP)
      motor.Part0 = CapeP
      motor.Part1 = torso
      motor.MaxVelocity = 0.01
      motor.C0 = CFrame.new(0,1.75,0) * CFrame.Angles(0,math.rad(90),0)
      motor.C1 = CFrame.new(0,1,0.45) * CFrame.Angles(0,math.rad(90),0)
      local wave = false
      repeat wait(1/44)
        decal.Transparency = torso.Transparency
        local ang = 0.1
        local oldmag = torso.Velocity.magnitude
        local mv = 0.002
        if wave then
          ang = ang + ((torso.Velocity.magnitude/10) * 0.05) + 0.05
          wave = false
        else
          wave = true
        end
        ang = ang + math.min(torso.Velocity.magnitude/11, 0.5)
        motor.MaxVelocity = math.min((torso.Velocity.magnitude/111), 0.04) + mv
        motor.DesiredAngle = -ang
        if motor.CurrentAngle < -0.2 and motor.DesiredAngle > -0.2 then
          motor.MaxVelocity = 0.04
        end
        repeat wait() until motor.CurrentAngle == motor.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag) >= (torso.Velocity.magnitude/10) + 1
        if torso.Velocity.magnitude < 0.1 then
          wait(0.1)
        end
      until not CapeP or CapeP.Parent ~= torso.Parent
    end
end)
Tab4Section:NewButton("NightBed Cape","Opens NightBed Cape",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NTDCore/CapePACK/main/Nightbed.Cape%3F.lua",true))()
end)

Tab4Section:NewButton("Cape", "Opens Cape", function()
local player = game:GetService("Players")

local lplr = player.LocalPlayer

if lplr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then

      if lplr.Character:FindFirstChild("Torso") then

        torso = lplr.Character.Torso

      else

        torso = lplr.Character.UpperTorso

      end

      local CapeP = Instance.new("Part", torso.Parent)

      CapeP.Name = "Cape"

      CapeP.Anchored = false

      CapeP.CanCollide = false

      CapeP.TopSurface = 0

      CapeP.BottomSurface = 0

      CapeP.Color = Color3.fromRGB(0,0,0)

      CapeP.FormFactor = "Custom"

      CapeP.Size = Vector3.new(0.2,0.2,0.2)

      local decal = Instance.new("Decal", CapeP)

      decal.Texture = "http://www.roblox.com/asset/?id=9608953346"

      decal.Face = "Back"

      local msh = Instance.new("BlockMesh", CapeP)

      msh.Scale = Vector3.new(9,17.5,0.5)

      local motor = Instance.new("Motor", CapeP)

      motor.Part0 = CapeP

      motor.Part1 = torso

      motor.MaxVelocity = 0.01

      motor.C0 = CFrame.new(0,1.75,0) * CFrame.Angles(0,math.rad(90),0)

      motor.C1 = CFrame.new(0,1,0.45) * CFrame.Angles(0,math.rad(90),0)

      local wave = false

      repeat wait(1/44)

        decal.Transparency = torso.Transparency

        local ang = 0.1

        local oldmag = torso.Velocity.magnitude

        local mv = 0.002

        if wave then

          ang = ang + ((torso.Velocity.magnitude/10) * 0.05) + 0.05

          wave = false

        else

          wave = true

        end

        ang = ang + math.min(torso.Velocity.magnitude/11, 0.5)

        motor.MaxVelocity = math.min((torso.Velocity.magnitude/111), 0.04) + mv

        motor.DesiredAngle = -ang

        if motor.CurrentAngle < -0.2 and motor.DesiredAngle > -0.2 then

          motor.MaxVelocity = 0.04

        end

        repeat wait() until motor.CurrentAngle == motor.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag) >= (torso.Velocity.magnitude/10) + 1

        if torso.Velocity.magnitude < 0.1 then

          wait(0.1)

        end

      until not CapeP or CapeP.Parent ~= torso.Parent

    end
end)

Tab1Section:NewButton("FixCam", "fix camera bug on mobile", function()
	cam.CameraType = Enum.CameraType.Fixed
	cam.CameraType = Enum.CameraType.Custom
end)

Tab2Section:NewButton("Future", "e", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/Future/main/loadstring.lua', true))()
end)