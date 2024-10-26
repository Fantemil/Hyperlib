local Settings = {
    ["Autorun Commands"] = {"antikick","antiservercrash","antiabuse","antikill","removeobby","fixvelocity","antivoid","antifly","autogod","platform","antigrav",","antispeed","dontleakitmethod","blacklistgear DaggerOfShatteredDimensions;BlackHoleSword;AzureDragonMagicSlayerSword;RageTable;IvoryPeriastron;SubspaceTripmine;AnAlpacaYouKnow;BodySwapPotion;OrinthianSwordAndShield;PaintBucket","UltimateDriveSpeedster","BodySwapPotion","RainbowPeriastronOmega"}, -- Commands to run automatically
    ["Default Whitelisted"] = {"noobdude1025"}, -- People whitelisted by default
    ["Default Banned"] = {}, -- People banned by default [Buggy]
    ["Default Softlocked"] = {}, -- People softlocked by Default
    ["Player Crash Settings"] = {["Vampire"] = false, ["Players"] = {}}, -- Automatically crashes server if one of these players are in it
    ["Prefix"] = ".", -- Prefix used for running commands
    ["Person299's Admin"] = true, -- If you do not own Person299's Admin, some commands will be fixed appropriately
    ["Legacy Serverlock"] = true, -- Softlocks players instead of crashing
    ["Punish Based Softlock"] = true, -- Uses punishing for softlocking instead of sizing and sending to heaven info
    ["Script Name"] = "Chaos", -- Change the name of the script, default "Chaos"
    ["Welcome Message"] = "Successfully Loaded.", -- Change the message that is shown when running the script, default "Successfully ran."
    ["Custom Color"] = Color3.new(0.5, 0, 0.5), -- Custom color for stuff like platform, disable using nil
    
    ["Auto Crasher"] = { -- Automatically serverhop and crash servers
	["Enabled"] = false,
	["Message"] = "guns. lol / worIdwide", -- Message to send upon before crashing, set to nil if no message
	["Serverhop Time"] = 10, -- Serverhops after specified amount of time
	["Skip Crashed Servers"] = false, -- Uses savehop instead of serverhop
	["Timeout"] = 10, -- Gives up on joining a server after a specified amount of time
	["Commands"] = {"music 6853070044",".timepositionmusic 7"}, -- Commands to run on join
	["Command Delay"] = -1, -- Delay between commands, -1 is none
	["Ignore Autorun Commands"] = true, -- Skips the autorun commands
	["Time Before Crash"] = .5, -- Time before crashing server, -1 is instant
	["Crash"] = false, -- If true, it will crash
	["Vampire"] = false, -- Use Vampire Vanquisher to crash the servers
	["Whitelisted Players"] = {"ripcxo","Dekryptionite","atprog","4jayAltXx","whatveudone","whatveidone"}, -- Do not crash servers with these players in it
	["Targetted Players"] = { -- Automatically attempts to join players and crash their server
	    ["Enabled"] = false,
	    ["Use Join Player"] = false, -- Uses the joinplayer command, which is very unstable
	    ["Ignore Whitelisted"] = true, -- Crashes even if a whitelisted player is in the server
	    ["Players"] = {} -- Players that get targetted
	}
    },
    
    ["Player Autorun Commands"] = { -- Automatically runs commands when these players are detected
	["itspavvv"] = "characteradded itspavvv runcommand hat itspavvv 17401056338"
    }
}

task.spawn(function()
	if Settings["Auto Crasher"]["Enabled"] then
		task.wait(Settings["Auto Crasher"]["Timeout"])
		if not game:IsLoaded() then
			if Settings["Auto Crasher"]["Skip Crashed Servers"] then
				function GetOldServers()
					if isfile("PreviousServers.txt") then
						return readfile("PreviousServers.txt"):split(";")
					else
						return {}
					end
				end
				
				function WriteOldServers(Data)
					if isfile("PreviousServers.txt") then
						appendfile("PreviousServers.txt",";"..Data)
					else
						writefile("PreviousServers.txt",Data)
					end
				end
				
				function Savehop()
					local OldServers = GetOldServers()
					local Servers = {}
					for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100")).data) do
						if type(v)=="table" and v.maxPlayers>v.playing and v.id~=game.JobId and not table.find(OldServers,game.JobId) then
							table.insert(Servers,v.id)
						end
					end
					
					if not table.find(OldServers,game.JobId) then
						WriteOldServers(game.JobId)
					end
					if #Servers~=0 then
						game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, Servers[math.random(1,#Servers)])
					else
						print("No servers found, retrying in 10 seconds")
						spawn(function()
							wait(10)
							Savehop()
						end)
					end
				end
				
				Savehop()
				game:GetService("TeleportService").TeleportInitFailed:Connect(Savehop)
			else
				function Serverhop()
					local Servers = {}
					for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100")).data) do
						if type(v)=="table" and v.maxPlayers>v.playing and v.id~=game.JobId then
							table.insert(Servers,v.id)
						end
					end
					
					if #Servers~=0 then
						game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, Servers[math.random(1,#Servers)])
					else
						game:GetService("TeleportService"):Teleport(game.PlaceId)
					end
				end
		
				Serverhop()
				game:GetService("TeleportService").TeleportInitFailed:Connect(Serverhop)
			end
		end
	end
end)

repeat wait() until game:IsLoaded()
if game.PlaceId ~= 112420803 then return end

local loadtime = os.clock()
local owner = game.Players.LocalPlayer
local player = owner
local localplayer = owner
local lp = owner
local plr = owner
local chr = owner.Character
local character = owner.Character
local char = owner.Character
local consoleOn = true
local running = true
local prefix = Settings["Prefix"]
local ScriptName = Settings["Script Name"]
local HttpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request;
local GUI = {}
local commandlist = {}
local Connections = {}
local Loops = {}
local Toolbans = {}
local ServerLockedProtection = {}
local Whitelisted = Settings["Default Whitelisted"]
local Banned = Settings["Default Banned"]
local DefaultSoftlocked = Settings["Default Softlocked"]
local PlayerCrash = Settings["Player Crash Settings"]["Players"]
local PlayerCrashMode = Settings["Player Crash Settings"]["Vampire"]
local PersonsAdmin = Settings["Person299's Admin"]
local LegacyKick = false
local OldServerLock = Settings["Legacy Serverlock"]
local PunishSoftlock = Settings["Punish Based Softlock"]
local ServerLocked = false
local ServerLockedSoundEnabled = false
local ServerLockedSound = ""
local BanSoundsEnabled = false
local BanSound = ""
local CommandBar = nil
local CurrentWebsocket = nil
local WsPerExecutor = (syn and syn.websocket) or WebSocket
local CustomColor = Settings["Custom Color"]

Connections["_CharacterUpdater"] = game:GetService("RunService").RenderStepped:Connect(function()
    chr=owner.Character
    character=owner.Character
    char=owner.Character
end)

local lettersStringFormat=[[abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()_+={}|[]\;',./<>?:`~-]]
local lettersTableFormat={}
for i=1,#lettersStringFormat do
    table.insert(lettersTableFormat,lettersStringFormat:sub(i,i))
end

function GUI:SendMessage(name,text)
    if PersonsAdmin then
        game.Players:Chat("h/"..string.rep("\n",34).."["..name.."]")
        game.Players:Chat("h/"..string.rep("\n",36)..text)
    else
        game.Players:Chat("h "..string.rep("\n",34).."["..name.."]")
        game.Players:Chat("h "..string.rep("\n",36)..text)
    end
end

function GUI:SendMessageNoBrackets(name,text)
    if PersonsAdmin then
        game.Players:Chat("h/"..string.rep("\n",34)..name)
        game.Players:Chat("h/"..string.rep("\n",36)..text)
    else
        game.Players:Chat("h "..string.rep("\n",34)..name)
        game.Players:Chat("h "..string.rep("\n",36)..text)
    end
end

function GetPlayers(jjk)
local boss = lp
local fat = {}
if jjk:lower() == "me" then 
return {boss} 

elseif jjk:lower() == "all" or jjk:lower() == "*" then 
return game:GetService("Players"):GetChildren() 

elseif jjk:lower() == "others" then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= boss.Name then
table.insert(fat,v)
end
end
return fat

elseif jjk:lower() == "random" then
return {game:GetService("Players"):GetChildren()[math.random(1,#game:GetService("Players"):GetChildren())]}

else
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.Name:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.DisplayName:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
return fat
end

end

--friend notification

local function onPlayerAdded(player)
    local localPlayer = game.Players.LocalPlayer

    if localPlayer:IsFriendsWith(player.UserId) then
        local response = Instance.new("BindableFunction")
        response.OnInvoke = function(answer)
            if answer == "Bring" then
                game.Players:Chat("tp " .. player.Name .. " me")
            elseif answer == "To" then
                game.Players:Chat("tp me ".. player.Name)
            end
        end

        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "CHAOS RW",
            Text = "Your friend has joined the game. Choose an action:",
            Duration = 5,
            Callback = response,
            Button1 = "Bring",
            Button2 = "To"
        })
    end
end

local function Speak(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

game.Players.PlayerAdded:Connect(onPlayerAdded)

--These are the functions used for playing music and sounds
function GetGuitar()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("GuitarSword") then
        return game.Players.LocalPlayer.Character:FindFirstChild("GuitarSword")
    else
        game.Players:Chat("gear me 60357982")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("GuitarSword")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetDrum()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("DrumKit") then
        return game.Players.LocalPlayer.Character:FindFirstChild("DrumKit")
    else
        game.Players:Chat("gear me 33866728")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("DrumKit")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetBongo()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("BongoDrums") then
        return game.Players.LocalPlayer.Character:FindFirstChild("BongoDrums")
    else
        game.Players:Chat("gear me 57902997")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("BongoDrums")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetPaint()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("PaintBucket") then
        return game.Players.LocalPlayer.Character:FindFirstChild("PaintBucket")
    else
        game.Players:Chat("gear me 18474459")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("PaintBucket")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetBoombox()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("SuperFlyGoldBoombox") then
        return game.Players.LocalPlayer.Character:FindFirstChild("SuperFlyGoldBoombox")
    else
        game.Players:Chat("gear me 212641536")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
        tool.Parent = game.Players.LocalPlayer.Character
        return tool
    end
end
function GetNewBoombox()
    game.Players:Chat("gear me 212641536")
    repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("SuperFlyGoldBoombox")
    tool.Parent = game.Players.LocalPlayer.Character
    return tool
end
function PlaySound(SoundId,Looping)
    spawn(function()
        local Boombox = GetNewBoombox()
        Boombox.Remote:FireServer("PlaySong",SoundId)
        if not Looping then
            repeat wait() until Boombox.Handle.Sound.IsLoaded and Boombox.Handle.Sound.Playing
            wait(Boombox.Handle.Sound.TimeLength)
            Boombox.Handle.Sound:Stop()
            Boombox.Handle:Destroy()
        end
    end)
end
function PlayNote(Note)
    local Tool = GetGuitar()
    Tool.Handle:FindFirstChild(Note):Play()
end
function PlayDrum(Sound)
    local Tool = GetDrum()
    Tool.Handle:FindFirstChild(Sound):Play()
end
function PlayBongo(Sound)
    local Tool = GetBongo()
    Tool.Handle:FindFirstChild(Sound):Play()
end

function checkGamepass(Target,ID)
    local data = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync('https://inventory.roblox.com/v1/users/'..Target.UserId..'/items/GamePass/'..ID)).data
    
    if data then
        if #data > 0 then
            return "200"
        else
            return "403"
        end
    else
        print("Request to "..Target.Name.." for "..ID.." failed")
        return "404"
    end
end

function dropRock(Position)
	spawn(function()
		game.Players:Chat('gear me 90718686')
		repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("ConjurorsFist")
		local wand = game.Players.LocalPlayer.Backpack:FindFirstChild("ConjurorsFist")
		wand.Parent = game.Players.LocalPlayer.Character
		wait(0.25)
		wand.Client.Disabled = true
		function wand.MouseLoc.OnClientInvoke()
			return Position
		end
		wand:Activate()
		wait(3.5)
		wand:Destroy()
		game.Players:Chat("removetools me")
	end)
end

function checkIsCrashed()
	local Ping1 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        task.wait(1)
        local Ping2 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    
        if Ping1 == Ping2 then return true else return false end
end

function stringToBool(str)
	return (str == "true")
end

function moveObject(target,wawawaa)
    function equipivory()
    	if lp.Backpack:FindFirstChild("IvoryPeriastron") then
    		lp.Backpack.IvoryPeriastron.Parent = lp.Character
    	else
    	    if not lp.Character:FindFirstChild("IvoryPeriastron") then
        	    game.Players:Chat("gear me 108158379")
        	    repeat wait() until lp.Backpack:FindFirstChild("IvoryPeriastron")
        	    lp.Backpack.IvoryPeriastron.Parent = lp.Character
        	end
    	end
    end
    equipivory()
	if lp.Character:FindFirstChild("IvoryPeriastron") then
		local cf = lp.Character.HumanoidRootPart
		local setdadamncframe = true
		local thedollar = wawawaa
		spawn(function()
        repeat game:GetService("RunService").RenderStepped:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = thedollar
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
        until not setdadamncframe
        end)
		wait(0.2)
        setdadamncframe = false
		lp.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
		cf.Anchored = false
		local looping = true
		local thedollarsecondary = Instance.new("Part",cf.Parent)
		thedollarsecondary.Anchored = true
		thedollarsecondary.Size = Vector3.new(10,1,10)
		thedollarsecondary.CFrame = (target.CFrame * CFrame.new(-1*(target.Size.X/2)-(lp.Character['Torso'].Size.X/2), 0, 0)) * CFrame.new(0,-3.5,0)
		spawn(function()
			while true do
				game:GetService('RunService').Heartbeat:wait()
				game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
				target.RotVelocity = Vector3.new(0,0,0)
		                target.Velocity = Vector3.new(0,0,0)
		                cf.Velocity = Vector3.new(0,0,0)
		                cf.RotVelocity = Vector3.new(0,0,0)
			    cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(lp.Character['Torso'].Size.X/2), 0, 0)
				if not looping then break end
			end
		end)
		spawn(function() while looping do game:GetService('RunService').Heartbeat:wait() game:GetService("Players"):Chat('unpunish me') end end)
		wait(0.3)
		looping = false
		lp.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
		wait(0.3)
		game:GetService("Players"):Chat("respawn me")
		
	end
end

function getSoundId(githubLink,fileName)
    if not isfolder("LocalMusic") then makefolder("LocalMusic") end
    if not isfile("LocalMusic/"..tostring(fileName)..".mp3") then
        writefile("LocalMusic/"..tostring(fileName)..".mp3",HttpRequest({Url=githubLink, Method='GET'}).Body)
    end
    return getcustomasset("LocalMusic/"..tostring(fileName)..".mp3")
end

function fixNet() -- vekco again with jove
	setsimulationradius(999.999,math.huge)
	settings().Physics.AllowSleep = false
	settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 999.999)
	sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
end

function splitPart(part) -- vekco with love
	local currentSize = part.Size
	local splits = Vector3.new(
		math.ceil(currentSize.X / 10),
		math.ceil(currentSize.Y / 10),
		math.ceil(currentSize.Z / 10)
	)
	local splitCount = splits.X * splits.Y * splits.Z
	local originalCFrame = part.CFrame
	local newParts = {}
	local offsetX = currentSize.X / splits.X
	local offsetY = currentSize.Y / splits.Y
	local offsetZ = currentSize.Z / splits.Z
	local startOffset = CFrame.new(
		(-currentSize.X / 2) + (offsetX / 2),
		(-currentSize.Y / 2) + (offsetY / 2),
		(-currentSize.Z / 2) + (offsetZ / 2)
	)
	for x = 1, splits.X do
		for y = 1, splits.Y do
			for z = 1, splits.Z do
				local splitPart = part:Clone()
				local newSizeX = math.min(offsetX, currentSize.X - (x - 1) * offsetX)
				local newSizeY = math.min(offsetY, currentSize.Y - (y - 1) * offsetY)
				local newSizeZ = math.min(offsetZ, currentSize.Z - (z - 1) * offsetZ)
				splitPart.Size = Vector3.new(newSizeX, newSizeY, newSizeZ)
				local positionOffset = startOffset * CFrame.new((x - 1) * offsetX, (y - 1) * offsetY, (z - 1) * offsetZ)
				splitPart.CFrame = originalCFrame * positionOffset
				splitPart.Parent = workspace
				table.insert(newParts, splitPart)
			end
		end
	end
	part:Destroy()

	return newParts, splitCount
end

function addCommand(name,args,func)
    table.insert(commandlist,{name,args,func})
end

function runCommand(param1,specargs)
    for i,asdfuhiswuejfniuserf in pairs(commandlist) do
        if prefix..asdfuhiswuejfniuserf[1] == param1 and running then
            if #specargs > #asdfuhiswuejfniuserf[2]-1 then
		pcall(function()
            local s,f = pcall(asdfuhiswuejfniuserf[3](specargs))
            if not s then if consoleOn then print(f) end end
end)
            return
            else
                local lister = prefix..asdfuhiswuejfniuserf[1].." "
                for i,d in pairs(asdfuhiswuejfniuserf[2]) do lister = lister..d.." " end
            end
        end
    end
end

function getCommand(param1)
    local fat={}
    for i,v in pairs(commandlist) do
        if param1:lower() == v[1]:lower():sub(1,#param1) and not table.find(fat,v) then
        table.insert(fat,v)
        end
        end
    return fat
end

addCommand("cmds",{},function()
    if consoleOn then print("-:COMMANDS ["..tostring(#commandlist).."]:-") end
    for i,v in pairs(commandlist) do
        local lister = ""
        for i,d in pairs(v[2]) do lister = lister..d.." " end
        if consoleOn then print(v[1].." "..lister)end
    end
                print("Chaos.")
		game.StarterGui:SetCore("SendNotification", {
                                               Title = "CHAOS RW";
                                               Text = "Check the developer console for commands!";
                                               Duration = 4;
})
end)

addCommand("altcmds",{},function()
    game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\naltcmds - To load the commands on your screen\nsilc - Silently crashes the server\nvg - Crashes the server\nspam/unspam - Spams a command/Unspams the command\nprefix - Changes the prefix of the script\nrkick - Rocket kicks a player\nlock/unlock - Locks a player\Unlocks a player\nblackscreen - Crashes server with a dark screen")
end)

addCommand("run",{"script"},function(args)
    local s,f=pcall(function()
    local fixer = [[local owner = game.Players.LocalPlayer
local player = owner
local localplayer = owner
local lp = owner
local plr = owner
local chr,character,char = owner.Character
local consoleOn = true
game:GetService("RunService").RenderStepped:Connect(function()
    chr=owner.Character
end)
function GetPlayers(jjk)
local boss = lp
local fat = {}
if jjk:lower() == "me" then 
return {boss} 

elseif jjk:lower() == "all" or jjk:lower() == "*" then 
return game:GetService("Players"):GetChildren() 

elseif jjk:lower() == "others" then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= boss.Name then
table.insert(fat,v)
end
end
return fat

elseif jjk:lower() == "random" then
return {game:GetService("Players"):GetChildren()[math.random(1,#game:GetService("Players"):GetChildren())]}

else
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.Name:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if jjk:lower() == v.DisplayName:lower():sub(1,#jjk) and not table.find(fat,v) then
table.insert(fat,v)
end
end
return fat
end

end
]]
    fixer = fixer..args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
    loadstring(fixer)()
    end)if not s then print(f)end
end)



addCommand("prefix",{"newprefix"},function(args)
    prefix = args[1]
    game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[Chaos]\nPrefix set to "..prefix..".")
end)

addCommand("rkick",{"player"},function(args)
	if PersonsAdmin then
	local cacheAntiAbuse = Loops.antiabuse
	if cacheAntiAbuse then runCommand(prefix.."unantiabuse",{}) end
	for i,v in pairs(GetPlayers(args[1])) do
		local a = true
	    for i=1,200 do
	    	if a then
	    		game.Players:Chat("rocket/me/me/me")
 	   	else
  	  		game.Players:Chat("rocket/"..v.Name.."/"..v.Name.."/"..v.Name)
  	  	end
  	  	a=not a
 	   end
  	  wait(0.333)
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(6)
	game.Players.LocalPlayer.Character.Animate:Destroy()
	for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do v:Stop()end
	game.Players:Chat("respawn "..v.Name)
 	   local timer = os.clock()
local a = true
 	   repeat game:GetService("RunService").RenderStepped:Wait()
		spawn(function()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "Rocket" then v.CanCollide = false end
		end
		for i,v in pairs(v.Character:GetChildren()) do
			if v.Name == "Rocket" then v.CanCollide = false end
		end
 	   	--game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,1)*CFrame.Angles(0,math.rad(math.random(0,360)),0) * CFrame.new(0,0,-1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,0,-2)
		for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			pcall(function()
				v.Velocity = Vector3.new(0,0,0)
				v.RotVelocity = Vector3.new(0,0,0)
			end)
		end
		if a then
	    		game.Players:Chat("rocket/me/me/me")
 	   	else
  	  		game.Players:Chat("rocket/"..v.Name.."/"..v.Name.."/"..v.Name)
  	  	end
  	  	a=not a
		end)
 	   until os.clock()-timer>30 or not v
		game.Players:Chat("respawn me")
		wait(0.333)
	end
	if cacheAntiAbuse then runCommand(prefix.."antiabuse",{}) end
	else
		GUI:SendMessage(ScriptName, "This command does not work without Person's Admin.")
	end
end)

addCommand("silc",{},function()
	    game.Players:Chat("fogcolor 0 0 0")
		game.Players:Chat("time 0")
	for i=1,5 do
		game.Players:Chat("size all .3")
	end
	for i=1,13 do
		game.Players:Chat("rocket/all all all")
		game.Players:Chat("freeze all all all")
		game.Players:Chat("dog all all all")
	end
	for i=1,5 do
		game.Players:Chat("size all 10")
	end
	for i=1,200 do
		game.Players:Chat("clone all all all")
	end
end)

addCommand("crash",{},function()
    game.Players:Chat("fogcolor 0 0 0")
    game.Players:Chat("music 6823597327")
	game.Players:Chat("time 0")
    runCommand(prefix.."vgc",{})
    spawn(function()
        wait(0.5)
        runCommand(prefix.."silcrash",{})
    end)
end)

addCommand("vgc",{},function()
	if Loops.antiservercrash then Loops.antiservercrash = false spawn(function()wait(3)runCommand(prefix.."antiservercrash",{})end)end
    game.Players:Chat("gear me 94794847")
    repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher")
    game.Players.LocalPlayer.Backpack:FindFirstChild("VampireVanquisher").Parent = game.Players.LocalPlayer.Character
    repeat wait() until not game.Players.LocalPlayer.Character.VampireVanquisher:FindFirstChild("Coffin")
    repeat wait() until game.Players.LocalPlayer.Character.VampireVanquisher:FindFirstChild("Remote")
    game.Players.LocalPlayer.Character.VampireVanquisher.Remote:FireServer(Enum.KeyCode.Q)
    for i=1,5 do
        game.Players:Chat("unsize me me me")
    end
end)

addCommand("blackscreen",{},function()
    game.Players:Chat("respawn all")
	game.Players:Chat("music 0000000000000000000007266001792")
       game.Players:Chat("name all      ")
    game.Players:Chat("time 0")
    game.Players:Chat("fogcolor 0 0 0")
    game.Players:Chat("fogend 0")
    runCommand(prefix.."vgc",{})
    spawn(function()
        wait(0.5)
        runCommand(prefix.."silcrash",{})
    end)
end)

addCommand("idiot",{},function()
game.Players:Chat("music 0000000000000000000007266001792")

game.Players:Chat("h n\n\n\n\n\n\n\n\n\nYoU ArE an\nI\nD\nI\nO")
game.Players:Chat("h n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\T")
wait(1)

game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
wait(0.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
wait(0.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
wait(0.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHAH")
wait(0.1)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYouAreAn\nI\nD\nI\nO")
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nT\n\n.exe\nLoaded")
wait(2)

game.Players:Chat("gear me 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000178076749")

wait(0.1)
   
game.Players.LocalPlayer.Backpack:WaitForChild("Emerald Knights of the Seventh Sanctum Sword and Shield").Parent = game.Players.LocalPlayer.Character
wait(0.2)
for i=1,100 do
game.Players:Chat("dog all all all")
end
for i=1,1000 do
game.Players:Chat("clone all all all")
    end
end)

addCommand("lock",{"player"},function(args)
    for i,v in pairs(GetPlayers(args[1])) do
	Connections["_SOFTLOCK"..v.Name] = game:GetService("RunService").RenderStepped:Connect(function()
        	if not v then Connections["_SOFTLOCK"..v.Name]:Disconnect() error("Break") end
        	pcall(function()
			if PunishSoftlock then
				if v and v.Character and v.Character.Parent ~= game.Lighting then
					game.Players:Chat("clone "..v.Name.." fuck")
                                                          game.Players:Chat("refresh "..v.Name.." fuck")
                                                             game.Players:Chat("trip "..v.Name.." fuck")
                                                 game.Players:Chat("setgrav "..v.Name.." -10000000")
					v.Character.Parent = game.Lighting
				end
			else
        		if v.Character.HumanoidRootPart.Position.Y < 500 then
        			game.Players:Chat("skydive "..v.Name)
        			game.Players:Chat("fling "..v.Name)
        			v.Character.HumanoidRootPart.Position = v.Character.HumanoidRootPart.Position+Vector3.new(0,999,0)
        		end
        		if not v.Character:FindFirstChildOfClass("Model") then
            			game.Players:Chat("pm "..v.Name.." [Chaos]\nYou have been locked from this game.")
        		end
        		if v:DistanceFromCharacter(v.Character.Torso.Position)>1 then
            			game.Players:Chat("size "..v.Name.." 0.3")
        		end
			end
        	end)
    	end)
    end
end)

addCommand("unlock",{"player"},function(args)
    for i,v in pairs(GetPlayers(args[1])) do
	pcall(function()
		Connections["_SOFTLOCK"..v.Name]:Disconnect()
		if PunishSoftlock then
			game.Players:Chat("respawn "..v.Name)
		end
	end)
    end
end)

addCommand("spam",{"delay","command"},function(args)
                Loops.spamcommand = true
                repeat
                    local message = args[2]
                for i=3, #args do
                        if args[i]=="<%RANDOMSTRING%>" then
                            local asuhdyuasd=""
                            for i=1,25 do
                            asuhdyuasd=asuhdyuasd..lettersTableFormat[math.random(#lettersTableFormat)]
                            end
                            
                            message = message.." "..asuhdyuasd
                        elseif args[i]==[[\n]] then
                        message = message.." ".."\n"
                        else
                        message = message.." "..args[i]
                        end
                end
                    for i,v in pairs(message:split("|")) do
                        game.Players:Chat(v)
                        wait(tonumber(args[1]))
                    end
until not Loops.spamcommand
end)

addCommand("unspam",{},function()
    Loops.spamcommand = false
end)

addCommand("iy",{},function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

addCommand("hammer",{},function(args)
		game.StarterGui:SetCore("SendNotification", {
                                               Title = "Chaos";
                                               Text = "Ban Hammer Has Executed";
                                               Duration = 3;
})
    loadstring(game:HttpGet("https://gist.githubusercontent.com/iiDk-the-actual/c22667e1601001c347aa8da41622aaed/raw/0714ef377dc50262e8fc6645089c03effe77ad56/KAH-BanHammer"))()
end)

addCommand("slogs",{},function()
    for i=1,50 do
        game.Players:Chat([[ff NIGGERS <3]])
    end
end)

addCommand("ungearwhitelist,{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        Toolbans[v.Name] = v.Backpack.ChildAdded:Connect(function()
            game.Players:Chat("removetools "..v.Name)
        end)
    end
end)

addCommand("gearwhilelist",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        pcall(function()
            Toolbans[v.Name]:Disconnect()
        end)
    end
end)

addCommand("findgear",{"gear-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.."%20"..args[i]
    end
    local request = HttpRequest({
        Url="https://catalog.roblox.com/v1/search/items/details?Category=11&Subcategory=5&Limit=10&CreatorName=Roblox&Keyword="..fixer,
        Method=GET
    })
    local decode = game:GetService("HttpService"):JSONDecode(request.Body)
    game.Players:Chat("gear me "..tostring(decode["data"][1]["id"]))
end)

addCommand("findshirt",{"shirt-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.."%20"..args[i]
    end
    local request = HttpRequest({
        Url="https://catalog.roblox.com/v1/search/items/details?Category=11&Subcategory=5&Limit=10&CreatorName=Roblox&Keyword="..fixer,
        Method=GET
    })
    local decode = game:GetService("HttpService"):JSONDecode(request.Body)
    game.Players:Chat("shirt me "..tostring(decode["data"][1]["id"]))
end)

addCommand("findpants",{"pants-name"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.."%20"..args[i]
    end
    local request = HttpRequest({
        Url="https://catalog.roblox.com/v1/search/items/details?Category=11&Subcategory=5&Limit=10&CreatorName=Roblox&Keyword="..fixer,
        Method=GET
    })
    local decode = game:GetService("HttpService"):JSONDecode(request.Body)
    game.Players:Chat("pants me "..tostring(decode["data"][1]["id"]))
end)


addCommand("regen",{},function()
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
end)

addCommand("findregen",{},function()
    moveObject(game:GetService("Workspace").Terrain["_Game"].Admin.Regen,CFrame.new(-7.16500044, 5.42999268, 91.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0))
end)

addCommand("fixbp",{},function()
    moveObject(workspace.Terrain["_Game"].Workspace.Baseplate,CFrame.new(-501, 0.100000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end)

addCommand("to",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("tp me "..v.Name.." (Chaos)")
    end
end)

addCommand("bring",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("tp "..v.Name.." me")
    end
end)

addCommand("char",{"player"},function(args)
for i,v in pairs(GetPlayers(args[1])) do
        local charname = args[2]
        local circus = game.Players:GetUserIdFromNameAsync(charname)
        game.Players:Chat(":char "..v.Name.." "..circus)
end
end)

addCommand("cat",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("hat "..v.Name.." 6077364164")
        wait()
        game.Players:Chat("hat "..v.Name.." 18292362512")
        wait()
        game.Players:Chat("hat "..v.Name.." 14826781593")
    end
end)

addCommand("slenderman",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
	    game.Players:Chat("fogend 123")
		wait()
		game.Players:Chat("time 0")
		wait()
		game.Players:Chat("fogcolor 0 0 12")
		game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"..v.DisplayName.."\nCollect the pages..")
  wait()
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"..v.DisplayName.."\nCollect the pages..")
wait(0.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"..v.DisplayName.."\nCollect the pages..")
wait(0.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"..v.DisplayName.."\nCollect the pages..")
wait(0.5)
game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"..v.DisplayName.."\nCollect the pages..")
		wait()
		game.Players:Chat("hat "..v.Name.." 17401056338")
		wait(5.5)
		game.Players:Chat("reset "..v.Name.." fuck")
		wait()
		game.Players:Chat("fix")
    end
end)

addCommand("funny",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("char "..v.Name.." 18")
		wait(0.5)
		game.Players:Chat("paint "..v.Name.." Institutional white")
		wait()
		game.Players:Chat("hat "..v.Name.." 12101418657")
		wait()
		game.Players:Chat("hat "..v.Name.." 18367644870")
		wait()
		game.Players:Chat("hat "..v.Name.." 6133262085")
		wait()
		game.Players:Chat("hat "..v.Name.." 8107902065")
		wait()
		game.Players:Chat("shirt "..v.Name.." 159269845")
		wait()
		game.Players:Chat("pants "..v.Name.." 2674612356")
    end
end)

addCommand("kick",{"player"},function(args)
    local Player = GetPlayers(args[1])
    for i,v in pairs(Player) do
        game.Players:Chat("respawn "..v.Name.." fuck")
		wait(0.3)
		game.Players:Chat("trip "..v.Name.." fuck")
		wait()
		game.Players:Chat("trip "..v.Name.." fuck")
		wait()
		game.Players:Chat("size "..v.Name.." 2")
		wait()
                       game.Players:Chat("setgrav "..v.Name.." -256")
                       wait()
                       game.Players:Chat("fly "..v.Name.." shit")
                       wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018131548964")
		wait()
		game.Players:Chat("hat "..v.Name.." 000000000000000000000000000000000018137588505")
    end
end)

addCommand("rj",{},function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.jobId)
end)

addCommand("hop",{},function()
	function Serverhop()
		local Servers = {}
		for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v)=="table" and v.maxPlayers>v.playing and v.id~=game.JobId then
				table.insert(Servers,v.id)
			end
		end
		
		if #Servers~=0 then
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, Servers[math.random(1,#Servers)])
		else
			game:GetService("TeleportService"):Teleport(game.PlaceId)
		end
	end
	
	Serverhop()
	game:GetService("TeleportService").TeleportInitFailed:Connect(Serverhop)
end)

addCommand("removedisplaynames",{},function()
    local function characterAdded(charass)
        spawn(function()
            repeat wait() until charass and charass.Humanoid
            charass.Humanoid.DisplayName = charass.Humanoid.DisplayName.."\n(@"..charass.Name..")"
        end)
    end
    for _,v in pairs(game.Players:GetChildren()) do
        pcall(function()
        v.DisplayName = v.DisplayName.." (@"..v.Name..")"
        if v.Character and v.Character.Parent ~= nil then
            characterAdded(v.Character)
        end
        Connections["RDN"..v.Name]=v.CharacterAdded:Connect(characterAdded)
        end)
    end
    Connections.removedisplaynames = game.Players.PlayerAdded:Connect(function(player) pcall(function()
    player.DisplayName = player.DisplayName.." (@"..player.Name..")"
    if player.Character and player.Character.Parent ~= nil then
        characterAdded(player.Character)
    end
    Connections["RDN"..player.Name]=player.CharacterAdded:Connect(characterAdded)
    end) end)
end)

addCommand("fixdisplaynames",{},function()
    Connections.removedisplaynames:Disconnect()
    for i,v in pairs(Connections) do
        if i:sub(1,3)=="RDN" then Connections[i]:Disconnect() end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
        v.DisplayName = v.DisplayName:split(" ")[1]
        pcall(function()
            if v and v.Character and v.Character.Parent ~= nil and v.Character.Humanoid then
                v.Character.Humanoid.DisplayName = v.DisplayName
            end
        end)
    end
end)

addCommand("goldall",{},function()
    local Bloxy = nil
    if game.Players.LocalPlayer.Backpack:FindFirstChild("2017BloxyAward") then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("2017BloxyAward")
        tool.Parent = game.Players.LocalPlayer.Character
        Bloxy = tool
    elseif game.Players.LocalPlayer.Character:FindFirstChild("2017BloxyAward") then
        Bloxy = tool
    else
        game.Players:Chat("gear me 549914888")
        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("2017BloxyAward")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("2017BloxyAward")
        tool.Parent = game.Players.LocalPlayer.Character
        Bloxy = tool
    end
    wait(0.2)
    Bloxy:Activate()
    wait(0.2)
    for i,v in pairs(game:GetService("Workspace").Terrain["_Game"]:GetDescendants()) do
        if v:IsA("BasePart") then
            firetouchinterest(v,Bloxy.Handle,0)
            firetouchinterest(v,Bloxy.Handle,1)
        end
    end
end)

addCommand("clean",{},function()
	game.Players:Chat("clr")
	game.Players:Chat("unpaint all")
	game.Players:Chat("fix")
	runCommand(prefix.."fixpaint",{})
end)

addCommand("fixpaint",{},function()
    local ObbyDestroyed = false
    spawn(function()
    if game.Chat:FindFirstChild("Obby") then ObbyDestroyed = true runCommand(prefix.."localaddobby",{}) end
    end)
    spawn(function()
function transformToColor3(col)
	local r = col.r
	local g = col.g
	local b = col.b
	return Color3.new(r,g,b);
end
local v1 = "PaintPart"
		local remote = GetPaint():WaitForChild("Remotes").ServerControls
		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v4 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Bright green"))
						}
					remote:InvokeServer(v1, v4)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v5 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
					remote:InvokeServer(v1, v5)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
						local v6 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Brick yellow"))
							}
						remote:InvokeServer(v1, v6)
					end
					
					if v.Name == "SmoothBlockModel40" then
						local v7 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright green"))
							}
						remote:InvokeServer(v1, v7)
					end
					
					if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
						local v8 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright red"))
							}
						remote:InvokeServer(v1, v8)
					end
					
					if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
						local v9 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark orange"))
							}
						remote:InvokeServer(v1, v9)
					end
					
					if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
						local v10 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
							}
						remote:InvokeServer(v1, v10)
					end
					
					if v.Name == "SmoothBlockModel112" then
						local v11 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium blue"))
							}
						remote:InvokeServer(v1, v11)
					end
					
					if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
						local v12 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Reddish brown"))
							}
						remote:InvokeServer(v1, v12)
					end
					
					if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
						local v13 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Sand red"))
							}
						remote:InvokeServer(v1, v13)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
						local v14 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
						remote:InvokeServer(v1, v14)
					end
				
					if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
						local v15 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Deep blue"))
							}
						remote:InvokeServer(v1, v15)
					end
				
					if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
						local v16 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Institutional white"))
							}
						remote:InvokeServer(v1, v16)
					end
					
					if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v17 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Lime green"))
							}
						remote:InvokeServer(v1, v17)
					end
					
					if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v18 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium Stone grey"))
							}
						remote:InvokeServer(v1, v18)
					end
					
					if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
						local v19 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("New yeller"))
							}
						remote:InvokeServer(v1, v19)
					end
					
					if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
						local v20 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really black"))
							}
						remote:InvokeServer(v1, v20)
					end
					
					if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
						local v21 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really red"))
							}
						remote:InvokeServer(v1, v21)
					end
					
					if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
						local v22 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Toothpaste"))
							}
						remote:InvokeServer(v1, v22)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v23 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Really red"))
						}
					remote:InvokeServer(v1, v23)
				end
				
				for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
					if v:IsA("Part") then
						local v24 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Teal"))
							}
						remote:InvokeServer(v1, v24)
					end
				end
			end)
		end
end)
wait(1.5)
			if ObbyDestroyed then runCommand(prefix.."localremoveobby",{}) end
end)

addCommand("iscrashed",{},function()
	return checkIsCrashed()
end)

addCommand("table",{"amount"},function(args)
	for i=1, tonumber(args[1]) do
		game.Players:Chat("gear me 110789105")
		wait()
	end
	wait(0.25)
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    		v.Parent = game.Players.LocalPlayer.Character
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    		if v:IsA("Tool") then
        		v:Activate()
    		end
	end
end)

addCommand("spamgear",{"amount","gear"},function(args)
for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me "..args[2])
    wait()
end
wait(0.25)
for i,v  in pairs(plr.Backpack:GetChildren()) do
    local staff = v
    v.Parent = chr
end
wait(0.1)
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        v:Activate()
    end
end
end)

addCommand("boomboxscript",{"amount","id","range"},function(args)
    for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me 212641536")
    wait()
end
wait(0.1)
for i,v in pairs(plr.Backpack:GetChildren()) do v.GripPos = Vector3.new(math.random(tonumber(args[3])*-2,args[3]),math.random(tonumber(args[3])*-2,args[3]),math.random(tonumber(args[3])*-2,args[3])) v.Parent=chr end
wait()
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        pcall(function()
            v.Remote:FireServer("PlaySong",args[2])
        end)
    end
end
end)

addCommand("aiprompt",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me 72644644")
        wait()
    end
    wait(0.25)
    for i,v  in pairs(plr.Backpack:GetChildren()) do
        local staff = v
        v.Parent = chr
    end
    wait(0.1)
    for i,v  in pairs(chr:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
end)

addCommand("coolstory",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
    game.Players:Chat("gear me 119101643")
    wait()
end
wait(0.25)
   for i,v  in pairs(plr.Backpack:GetChildren()) do
    local staff = v
    v.Parent = chr
end
wait(0.1)
for i,v  in pairs(chr:GetChildren()) do
    if v:IsA("Tool") then
        game:GetService("RunService").RenderStepped:Connect(function()if v.Parent==chr then  v:Activate()end end)
    end
end
end)

addCommand("banana",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me 29100449")
        wait()
    end
    wait(0.25)
    for i,v  in pairs(plr.Backpack:GetChildren()) do
        local staff = v
        v.Parent = chr
    end
    wait(0.1)
    for i,v  in pairs(chr:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
end)

addCommand("silence",{"amount"},function(args)
    for i=1,tonumber(args[1]) do
        game.Players:Chat("gear me 104642700")
        wait()
    end
    wait(0.25)
    for i,v  in pairs(plr.Backpack:GetChildren()) do
        local staff = v
        v.Parent = chr
    end
    wait(0.1)
    for i,v  in pairs(chr:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
end)

addCommand("antiabuse",{},function()
    Loops.antiabuse = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
        if chr and chr.Parent == game.Lighting then
            game.Players:Chat("unpunish me")
		chr.Parent=workspace
        end
        if lp.PlayerGui:FindFirstChild("EFFECTGUIBLIND") then
            lp.PlayerGui:FindFirstChild("EFFECTGUIBLIND"):Destroy()
            game.Players:Chat("unblind me")
        end
        if chr and chr.Humanoid and chr.Humanoid.Health <=0 then
            game.Players:Chat("reset me")
        end
	if chr and chr:FindFirstChild("Rocket") then
		for i,v in pairs(chr:GetChildren()) do if v.Name=="Rocket" then v:Destroy() end end
		if PersonsAdmin then game.Players:Chat("unrocket/me") else game.Players:Chat("reset me") end
	end
        if chr and chr:FindFirstChild("ice") then
            game.Players:Chat("unfreeze me")
            chr:FindFirstChild("ice"):Destroy()
            for i,v in pairs(chr:GetDescendants()) do
                if v:IsA("BasePart") then v.Anchored = false end
            end
        end
        if chr and chr:FindFirstChild("Addon") then
            chr:FindFirstChild("Addon"):Destroy()
            game.Players:Chat("reset me")
        end
        if chr and chr.Head and chr.Torso and game.Players.LocalPlayer:DistanceFromCharacter(game.Players.LocalPlayer.Character.Torso.Position) == 0 then
            game.Players:Chat("reset me")
        end
        if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.Name.."'s jail") then
            game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.Name.."'s jail"):Destroy()
            game.Players:Chat("unjail me")
        end
        if chr and chr.Torso and chr.Torso:FindFirstChild("SPINNER") then
            chr.Torso:FindFirstChild("SPINNER"):Destroy()
            game.Players:Chat("unspin me")
        end
        if plr.PlayerGui:FindFirstChild("NoClip") then
            plr.PlayerGui:FindFirstChild("NoClip"):Destroy()
            if chr and chr.Torso then chr.Torso.Anchored = false end
            if chr and chr.Humanoid then chr.Humanoid.PlatformStand = false end
            game.Players:Chat("clip me")
        end
    end)until not Loops.antiabuse
end)

addCommand("antispeed",{},function()
	local function onChar(Char)
		repeat wait() until Char:FindFirstChildOfClass("Humanoid")
			Connections.antispeedb = Char.Humanoid.Changed:Connect(function(prop)
				if prop == "WalkSpeed" then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
				end
		end)
	end
	
	Connections.antispeeda = game.Players.LocalPlayer.CharacterAdded:Connect(onChar)
	onChar(game.Players.LocalPlayer.Character)
end)

addCommand("unantispeed",{},function()
	Connections.antispeeda:Disconnect()
	Connections.antispeedb:Disconnect()
end)

addCommand("antimessage",{},function()
	Loops.antimessage = true
	repeat game:GetService("RunService").RenderStepped:Wait()
		pcall(function()
			if game.Players.LocalPlayer.PlayerGui:FindFirstChild("HintGui") then
				game.Players.LocalPlayer.PlayerGui:FindFirstChild("HintGui"):Destroy()
				game.Players:Chat("clr")
			end
			if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MessageGui") then
				game.Players.LocalPlayer.PlayerGui:FindFirstChild("MessageGui"):Destroy()
				game.Players:Chat("clr")
			end
			
			if game.Terrain["_Game"].Folder:FindFirstChildOfClass("Message") then
				if not string.find(game.Terrain["_Game"].Folder:FindFirstChildOfClass("Message").Text,ScriptName) then
					game.Terrain["_Game"].Folder:FindFirstChildOfClass("Message"):Destroy()
					game.Terrain["_Game"].Folder:FindFirstChildOfClass("Message")
				end
			end
			if game.Terrain["_Game"].Folder:FindFirstChildOfClass("Hint") then
				if not string.find(game.Terrain["_Game"].Folder:FindFirstChildOfClass("Hint").Text,ScriptName) then
					game.Terrain["_Game"].Folder:FindFirstChildOfClass("Hint"):Destroy()
					game.Terrain["_Game"].Folder:FindFirstChildOfClass("Hint")
				end
			end
		end)
	until not Loops.antimessage
end)

addCommand("unantimessage",{},function()
	Loops.antimessage = false
end)

addCommand("crashdetector",{},function()
	Loops.crashdetector = true
	repeat wait(10) spawn(function()
		runCommand(prefix.."if",{"iscrashed","then","ptohop"})
	end) until not Loops.crashdetector
end)

addCommand("uncrashdetector",{},function()
	Loops.crashdetector = false
end)

addCommand("antifly",{},function()
    Loops.antifly = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
        if plr.PlayerGui:FindFirstChild("Fly") then
            plr.PlayerGui:FindFirstChild("Fly"):Destroy()
            if chr and chr.Torso then chr.Torso.Anchored = false end
            if chr and chr.Humanoid then chr.Humanoid.PlatformStand = false end
            game.Players:Chat("unfly me")
        end
    end)
    until not Loops.antifly
end)

addCommand("unantifly",{},function()
    Loops.antifly = false
end)

addCommand("antikick",{},function()
    Loops.antikick = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
    if chr and chr:FindFirstChild("BlueBucket") then
        chr:FindFirstChild("BlueBucket"):Destroy()
        game.Players:Chat("removetools me")
    end
    if plr and plr.Backpack and plr.Backpack:FindFirstChild("BlueBucket") then
        plr.Backpack:FindFirstChild("BlueBucket"):Destroy()
        game.Players:Chat("removetools me")
    end
    if chr and chr:FindFirstChild("HotPotato") then
        chr:FindFirstChild("HotPotato"):Destroy()
        game.Players:Chat("removetools me")
    end
    if plr and plr.Backpack and plr.Backpack:FindFirstChild("HotPotato") then
        plr.Backpack:FindFirstChild("HotPotato"):Destroy()
        game.Players:Chat("removetools me")
    end
    if chr and chr:FindFirstChild("DriveBloxUltimateCar") then
        chr:FindFirstChild("DriveBloxUltimateCar"):Destroy()
        game.Players:Chat("removetools me")
    end
    if plr and plr.Backpack and plr.Backpack:FindFirstChild("DriveBloxUltimateCar") then
        plr.Backpack:FindFirstChild("DriveBloxUltimateCar"):Destroy()
        game.Players:Chat("removetools me")
    end
	for i,v in pairs(workspace:GetDescendants()) do
		if v and v.Name == "Rocket" then
			pcall(function()
				if v.CanCollide then
					v.CanCollide = false
				end
			end)
		end
	end
    end)until not Loops.antikick
end)

addCommand("anticrash",{},function()
    runCommand(prefix.."antikick",{})
end)

addCommand("unanticrash",{},function()
    runCommand(prefix.."unantikick",{})
end)

addCommand("unantikick",{},function()
    Loops.antikick = false
end)

addCommand("antiservercrash",{},function()
    Loops.antiservercrash = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
    for i,v in pairs(game.Players:GetPlayers()) do
        spawn(function()
            if v and v.Character and v.Character:FindFirstChild("VampireVanquisher") then v.Character:FindFirstChild("VampireVanquisher"):Destroy() game.Players:Chat("removetools "..v.Name)game.Players:Chat("reset "..v.Name)game.Players:Chat("kill "..v.Name)
                game.Players:Chat("h \n\n\n[Chaos]\n\ndid "..v.DisplayName.." just try to crash?\nð¹ð¹ð¹ð¹ð¹\n\ndonât try again little bro")
                end
        end)
        spawn(function()
            if v.Backpack:FindFirstChild("OrinthianSwordAndShield") then v.Backpack:FindFirstChild("OrinthianSwordAndShield"):Destroy() game.Players:Chat("removetools "..v.Name)game.Players:Chat("reset "..v.Name)
                game.Players:Chat("h \n\n\n[Chaos]\n\ndid "..v.DisplayName.." just try to crash?\nð¹ð¹ð¹ð¹ð¹\n\ndonât try again little bro")
                end
        end)
    end
    end)until not Loops.antiservercrash
end)

addCommand("unantiservercrash",{},function()
    Loops.antiservercrash = false
end)

addCommand("blacklistgear",{"toolnames"},function(args)
	local fixer = args[1]
	for i=2, #args do
    	    fixer = fixer.." "..args[i]	
    	end
	local BlacklistedTools = fixer:split(";")
    Loops.blacklisttools = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
    for i,v in pairs(game.Players:GetPlayers()) do
		for i,too in pairs(BlacklistedTools) do
        spawn(function()
            if v and v.Character and v.Character:FindFirstChild(too) then v.Character:FindFirstChild(too):Destroy() game.Players:Chat("removetools "..v.Name)game.Players:Chat("reset "..v.Name)game.Players:Chat("kill "..v.Name)
                game.Players:Chat("h \n\n\n\n\n\n\n\n\n[Chaos]\n\ndid "..v.DisplayName.." just try to use a blacklisted gear?\nð¹ð¹ð¹ð¹ð¹\ndonât try again little bro")
                end
        end)
        spawn(function()
            if v.Backpack:FindFirstChild(too) then v.Backpack:FindFirstChild(too):Destroy() game.Players:Chat("removetools "..v.Name)game.Players:Chat("reset "..v.Name)
                game.Players:Chat("h \n\n\n\n\n\n\n\n\n[Chaos]\n\ndid "..v.DisplayName.." just try to use a blacklisted gear?\nð¹ð¹ð¹ð¹ð¹\ndonât try again little bro")
                end
        end)
		end
    end
    end)until not Loops.blacklisttools
end)

addCommand("gearwl",{},function()
	Loops.blacklisttools = false
end)

addCommand("unantiservercrash",{},function()
    Loops.antiservercrash = false
end)

addCommand("antitool",{},function()
    Loops.antitool = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
        if chr:FindFirstChildOfClass("Tool") then
            chr:FindFirstChildOfClass("Tool"):Destroy()
            game.Players:Chat("removetools me")
        end
        if plr.Backpack:FindFirstChildOfClass("Tool") then
            plr.Backpack:ClearAllChildren()
            game.Players:Chat("removetools me")
        end
    end) until not Loops.antitool
end)

addCommand("unantitool",{},function()
    Loops.antitool = false
end)

addCommand("unantiabuse",{},function()
    Loops.antiabuse = false
end)

addCommand("antivoid",{},function()
    Loops.antivoid = true
    repeat game:GetService("RunService").RenderStepped:Wait()pcall(function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < -7 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,5,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,0,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
            end
        end end)
    until not Loops.antivoid
end)

addCommand("unantivoid",{},function()
    Loops.antivoid = false
end)

addCommand("antiskydive",{},function()
    Loops.antiskydive = true
    repeat game:GetService("RunService").RenderStepped:Wait()pcall(function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart then
            if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y > 256 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,5,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.X,0,game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
            end
        end end)
    until not Loops.antiskydive
end)

addCommand("unantiskydive",{},function()
    Loops.antiskydive = false
end)

addCommand("antigrav",{},function()
    Loops.antigrav = true
    repeat game:GetService("RunService").RenderStepped:Wait()pcall(function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
            if game.Players.LocalPlayer.Character.Torso:FindFirstChildOfClass("BodyForce") then
			game.Players.LocalPlayer.Character.Torso:FindFirstChildOfClass("BodyForce"):Destroy()
		end
        end
end)
    until not Loops.antiskydive
end)

addCommand("unantigrav",{},function()
    Loops.antigrav = false
end)

addCommand("platform",{},function()
    Loops.platform = true
    repeat game:GetService("RunService").RenderStepped:Wait() pcall(function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Head then
            if not workspace.Terrain:FindFirstChild("PLATFORM###14") then
                local fakepart=Instance.new("Part",workspace.Terrain)fakepart.Name="PLATFORM###14"fakepart.Size=Vector3.new(10,1,10)fakepart.Anchored = true;fakepart.CanCollide = true;fakepart.Color = game.Players.LocalPlayer.Character.Torso.Color;if CustomColor then fakepart.Color=CustomColor end;fakepart.TopSurface="Smooth"fakepart.BottomSurface="Smooth"fakepart.Material = "SmoothPlastic"
            else
                local fakepart=workspace.Terrain:FindFirstChild("PLATFORM###14")
                fakepart.Color=game.Players.LocalPlayer.Character.Torso.Color
		if CustomColor then fakepart.Color=CustomColor end
                fakepart.CFrame=CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,0.199999332,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z) * CFrame.Angles(0,math.rad(game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation.Y),0) 
            end
        end
    end)
    until not Loops.platform
end)

addCommand("unplatform",{},function()
    Loops.platform = false
	if workspace.Terrain:FindFirstChild("PLATFORM###14") then
    		workspace.Terrain:Destroy()
	end
end)

addCommand("antiname",{},function()
    Loops.antiname = true
    repeat wait() 
        if chr and chr:FindFirstChildOfClass("Model") and #chr:FindFirstChildOfClass("Model"):GetChildren()==2 then
            game.Players:Chat("unname me")
		chr:FindFirstChildOfClass("Model"):Destroy()
        end
    until not Loops.antiname
end)

addCommand("unantiname",{},function()
    Loops.antiname = false
end)

addCommand("autogod",{},function()
    Loops.autogod = true
    repeat game:GetService("RunService").RenderStepped:Wait()
        pcall(function()
            if chr and chr:FindFirstChild("Humanoid") and tostring(chr.Humanoid.MaxHealth) ~= "inf" then
                game.Players:Chat("god me")
                game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
                game.Players.LocalPlayer.Character.Humanoid.Health = 9e9
            end
        end)
    until not Loops.autogod
end)

addCommand("unautogod",{},function()
    Loops.autogod = false
end)

addCommand("house",{},function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28.3467445, 8.22999954, 73.5216293)
end)

addCommand("findregen",{},function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Regen.CFrame * CFrame.new(0,2.5,0)
end)

addCommand("attachtool",{},function()
    local btool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
  local SelectionBox = Instance.new("SelectionBox",game.Workspace)
  local hammer = Instance.new("Part")
  hammer.Parent = btool
  hammer.Name = ("Handle")
  hammer.CanCollide = false
  hammer.Anchored = false


  SelectionBox.Name = "oof"
  SelectionBox.LineThickness = 0.05
  SelectionBox.Adornee = nil
  SelectionBox.Color3 = Color3.fromRGB(0,0,255)
  SelectionBox.Visible = false
  btool.Name = "Attach Tool"
  btool.RequiresHandle = false
  local IsEquipped = false
  local Mouse = game.Players.LocalPlayer:GetMouse()
  
  btool.Equipped:connect(function()
   IsEquipped = true
   SelectionBox.Visible = true
   SelectionBox.Adornee = nil
  end)
  
  btool.Unequipped:connect(function()
   IsEquipped = false
   SelectionBox.Visible = false
   SelectionBox.Adornee = nil
  end)
  
  
  btool.Activated:connect(function()
  if IsEquipped then
    btool.Parent = game.Chat
   local ex = Instance.new'Explosion'
   ex.BlastRadius = 0
   ex.Position = Mouse.Target.Position
   ex.Parent = game.Workspace
local target = Mouse.Target
			function movepart()
				local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.25)
				looping = false
			end
			movepart()
game.Chat["Attach Tool"].Parent = plr.Backpack
chr.HumanoidRootPart.CFrame=pos
spawn(function()
    wait(3)
    if game.Chat:FindFirstChild("Attach Tool") then
        game.Chat["Attach Tool"]:Destroy()
    end
end)
   -- to here

  end
end)
  
  while true do
   SelectionBox.Adornee = Mouse.Target or nil
   wait(0.1)
  end
end)

addCommand("deletetool",{},function()
    local btool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
  local SelectionBox = Instance.new("SelectionBox",game.Workspace)
  local hammer = Instance.new("Part")
  hammer.Parent = btool
  hammer.Name = ("Handle")
  hammer.CanCollide = false
  hammer.Anchored = false


  SelectionBox.Name = "oof"
  SelectionBox.LineThickness = 0.05
  SelectionBox.Adornee = nil
  SelectionBox.Color3 = Color3.fromRGB(0,0,255)
  SelectionBox.Visible = false
  btool.Name = "Delete Tool"
  btool.RequiresHandle = false
  local IsEquipped = false
  local Mouse = game.Players.LocalPlayer:GetMouse()
  
  btool.Equipped:connect(function()
   IsEquipped = true
   SelectionBox.Visible = true
   SelectionBox.Adornee = nil
  end)
  
  btool.Unequipped:connect(function()
   IsEquipped = false
   SelectionBox.Visible = false
   SelectionBox.Adornee = nil
  end)
  
  
  btool.Activated:connect(function()
  if IsEquipped then
    btool.Parent = game.Chat
   local ex = Instance.new'Explosion'
   ex.BlastRadius = 0
   ex.Position = Mouse.Target.Position
   ex.Parent = game.Workspace
   local prevcfarchive = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local target = Mouse.Target
			function movepart()
				local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.25)
				looping = false
			end
			movepart()
			repeat wait() until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld")
			game.Players:Chat("skydive me")
			wait(0.1)
			game.Players:Chat("respawn me")
			wait(0.25)
game.Chat["Delete Tool"].Parent = plr.Backpack
chr.HumanoidRootPart.CFrame=prevcfarchive
spawn(function()
    wait(3)
    if game.Chat:FindFirstChild("Delete Tool") then
        game.Chat["Delete Tool"]:Destroy()
    end
end)
   -- to here

  end
end)
  
  while true do
   SelectionBox.Adornee = Mouse.Target or nil
   wait(0.1)
  end
end)

addCommand("break",{"player"},function(args)
	for i,v in pairs(GetPlayers(args[1])) do
		game.Players:Chat("unpunish "..v.Name)wait()
		game.Players:Chat("invis "..v.Name)
		game.Players:Chat("reset "..v.Name)
		game.Players:Chat("invisible "..v.Name)
		game.Players:Chat("kill "..v.Name)
		game.Players:Chat("trip "..v.Name)
		game.Players:Chat("setgrav "..v.Name.." -inf")wait(.1)
		game.Players:Chat("invisible "..v.Name)
		game.Players:Chat("unpunish "..v.Name.." "..v.Name.." "..v.Name)wait(.2)
		game.Players:Chat("invisible "..v.Name)wait(.2)
		game.Players:Chat("reset "..v.Name)wait(.15)
		game.Players:Chat("punish "..v.Name.." "..v.Name.." "..v.Name)
	end
end)

addCommand("synthesize",{"text"},function(args)
	local TextConverter = {
	LetterSounds = {
		["a"] = {223757826, nil}; -- 203343899
		["b"] = {223533700, 0.2}; -- 203344029
		["c"] = {223533711, nil}; -- 203343994
		["d"] = {223757910, nil}; -- 203398237
		["e"] = {223758026, nil}; -- 203398295
		["f"] = {223777655, nil}; -- 203398347
		["g"] = {223777738, nil}; -- 203398372
		["h"] = {223777757, nil}; -- 203398397
		["i"] = {223777807, nil}; -- 203398422
		["j"] = {223782888, nil}; -- 203398450
		["k"] = {223533711, nil}; -- 203343994
		["l"] = {223782961, 0.4}; -- 203398541
		["m"] = {223782992, nil}; -- 203398578
		["n"] = {223783063, nil}; -- 203398599
		["o"] = {223783184, nil}; -- 203398611
		["p"] = {223783235, nil}; -- 203398727
		["q"] = {223783260, nil}; -- 203398755
		["r"] = {223783305, 0.2}; -- 203398792
		["s"] = {223783377, nil}; -- 203398806
		["t"] = {223783446, nil}; -- 203398850
		["u"] = {223783512, nil}; -- 203398872
		["v"] = {223783654, nil}; -- 203398965
		["w"] = {223783697, nil}; -- 203398984
		["x"] = {223783796, nil}; -- 203399008
		["y"] = {223783853, nil}; -- 203399043
		["z"] = {223783893, nil}; -- 203399096
		
		["ch"] = {223784367, 0.3}; -- 203592149
		["th"] = {223788235, 0.3}; -- 203399215
		["sh"] = {223784505, 0.2}; -- 203399566
		["wh"] = {223784555, 0.3}; -- 203622828
		["oo"] = {223784456, 0.3}; -- 203399743
		["ing"] = {223784393, 0.3}; -- 203402836
	};
	
	LongVowels = {
		["a"] = {223533687, nil}; -- 203343932
		["e"] = {223777620, nil}; -- 203398314
		["i"] = {223777855, nil}; -- 203398440
		["o"] = {223783212, nil}; -- 203398619
		["u"] = {223783572, nil}; -- 203398897
	};
	
	Pronounce = {
		["0"] = "zero";
		["1"] = "wun";
		["2"] = "too";
		["3"] = "three";
		["4"] = "four";
		["5"] = "five";
		["6"] = "six";
		["7"] = "seven";
		["8"] = "eyt";
		["9"] = "nine";
		["one"] = "wun";
		["two"] = "too";
		["eight"] = "eyt";
		["eigh"] = "ey";
		["gh"] = "h";
		["kn"] = "n";
		["come"] = "cu".."m";
		["bye"] = "bi";
		["#"] = "hashtag";
		["@"] = "at";
		["&"] = "and";
		["*"] = "astrict";
		["mn"] = "m";
		["kn"] = "n";
		["ies"] = "ees";
	};
	
	NonEnglishRules = {
		["to"] = "too";
		["you"] = "yoo";
		["we"] = "wee";
		["are"] = "erh";
		["your"] = "yoor";
		["you're"] = "yoor";
		["youre"] = "yoor";
		["pizza"] = "peetzoh";
		["ok"] = "okay";
		["have"] = "hav";
		["my"] = "mi";
		["me"] = "mee";
		["u"] = "yoo";
		["r"] = "erh";
		["move"] = "moov";
		["dove"] = "duv";
		["debris"] = "debree";
		["do"] = "doo";
	}
}

local function MakeSound(Parent, ID, Volume, Pitch, Looped)
	game.Players:Chat("music "..tostring(ID))
end

local function IsSpacer(Input)
	if Input == " " or Input == "." or Input == "-" or Input == "," or Input == "?" or Input == "!" or Input == "	" or Input == nil or Input == "" then
		return true
	else
		return false
	end
end

local function IsVowel(Input)
	Input = string.lower(tostring(Input))
	if Input == "a" or Input == "e" or Input == "i" or Input == "o" or Input == "u" then
		return true
	else
		return false
	end
end

local function ValidE(Input)
	if not Input then return nil end
	if string.lower(Input) == "e" or Input == "~" then
		return true
	else
		return false
	end
end

local function ConvertText(Text)
	Text = string.lower(tostring(Text))
	local Letters = {}
	local IDs = {}
	for Rule,Replace in pairs(TextConverter.Pronounce) do
		Text = string.gsub(Text,string.lower(Rule),string.lower(Replace))
	end
	for Rule,Replace in pairs(TextConverter.NonEnglishRules) do
		local Start, End = string.find(Text, string.lower(Rule))
		
		if Start and End and IsSpacer(string.sub(Text, Start-1, Start-1)) and IsSpacer(string.sub(Text, End+1, End+1)) then
			Text = string.gsub(Text, string.lower(Rule), Replace)
		end
	end
	for i = 1,#Text do
		table.insert(Letters, string.sub(Text,i,i))
	end
	for Num = 1,#Letters do
		if not Letters[Num] then break end
		local Letter = Letters[Num]
		
		local function AddLetter()
			table.insert(IDs, TextConverter.LetterSounds[Letter])
		end
		
		if Letter ~= "~" then
			if Letters[Num+1] and Letter..Letters[Num+1] == "oo" then -- moo
				table.insert(IDs, TextConverter.LetterSounds["oo"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ou" then -- soup
				table.insert(IDs, TextConverter.LetterSounds["oo"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "th" then -- this
				table.insert(IDs, TextConverter.LetterSounds["th"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "sh" then -- shut
				table.insert(IDs, TextConverter.LetterSounds["sh"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ee" then -- flee
				table.insert(IDs, TextConverter.LongVowels["e"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "wh" then -- what
				table.insert(IDs, TextConverter.LetterSounds["wh"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ch" then -- chop
				table.insert(IDs, TextConverter.LetterSounds["ch"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ph" then -- phone
				table.insert(IDs, TextConverter.LetterSounds["f"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ng" then -- danger
				table.insert(IDs, TextConverter.LetterSounds[Num])
				Letters[Num + 1] = "j"
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ua" then -- lua
				table.insert(IDs, TextConverter.LetterSounds["oo"])
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ea" then -- peace
				table.insert(IDs, TextConverter.LongVowels["e"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "eo" then -- people
				table.insert(IDs, TextConverter.LongVowels["e"])
				table.remove(Letters, Num + 1)
				if ValidE(Letters[Num+4]) then Letters[Num+4] = "~" end
			elseif Letter == "c" and ValidE(Letters[Num+1]) then -- force
				table.insert(IDs, TextConverter.LetterSounds["s"])
				Letters[Num + 1] = "~"
			elseif Letter == string.lower(Letter) and IsVowel(Letter) and Letters[Num+1] and Letters[Num+2] and not IsSpacer(Letters[Num+1]) and ValidE(Letters[Num+2]) then -- like
				table.insert(IDs, TextConverter.LongVowels[Letter])
				Letters[Num + 2] = "~"
			elseif Letter == "i" and Letters[Num+1] and ValidE(Letters[Num+1]) and IsSpacer(Letters[Num+2]) then -- die
				table.insert(IDs, TextConverter.LongVowels["i"])
				Letters[Num + 1] = "~"
			elseif Letter == "o" and IsSpacer(Letters[Num+1]) then -- no
				table.insert(IDs, TextConverter.LongVowels["o"])
			elseif Letter == "i" and IsSpacer(Letters[Num+1]) then -- hi
				table.insert(IDs, TextConverter.LongVowels["i"])
			elseif Letters[Num+1] and IsSpacer(Letters[Num+2]) and Letter..Letters[Num+1] == "le" then -- bottle
				AddLetter()
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and IsSpacer(Letters[Num+2]) and Letter..Letters[Num+1] == "el" then -- model
				Letters[Num] = "~"
			elseif Letters[Num+1] and Letters[Num+2] and Letter..Letters[Num+1] == "le" then -- bottle
				AddLetter()
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "qu" then --quick
				AddLetter()
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] == Letter then
				table.remove(Letters, Num)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ck" then --click
				AddLetter()
				table.remove(Letters, Num)
			elseif IsVowel(Letter) and string.upper(Letter) == Letter then
				table.insert(IDs, TextConverter.LongVowels[string.lower(Letter)])
			elseif TextConverter.LetterSounds[Letter] then
				AddLetter()
			elseif IsSpacer(Letter) then
				table.insert(IDs, "Rest")
			end
		end
	end
	
	return IDs
end

local function SayConvertedText(IDs, Parent)
	if not Parent then Parent = workspace end
	for _,Data in pairs(IDs) do
		if NoSpeak and Parent == workspace then
			break
		end
		local Length = 0.3
		if Data ~= "Rest" then
			local ID = Data[1]
			Length = Data[2]
			
			local Sound = MakeSound(Parent, ID, 0.5, 1, false)
			if Length then
				coroutine.wrap(function()
				end)()
			end
		end
		if not Length then Length = 0.3 end
		wait(Length/2)
	end
	coroutine.wrap(function()
		game.Players:Chat("music nan")
	end)()
end

local fixer = args[1]
for i=2,#args do
fixer = fixer.." "..args[i]
end

SayConvertedText(ConvertText(fixer))
end)

addCommand("equipall",{},function()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Character
    end
end)

addCommand("dropall",{},function()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Character
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
        if v:IsA("Tool") then v.Parent = workspace end
    end
end)

addCommand("usetools",{},function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
        if v:IsA("Tool") then v:Activate() end
    end
end)

addCommand("bypass",{"message"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
    local file = fixer
    local a = {}
    
    for letter in file:gmatch(".") do
      if letter ~= "\r" and letter ~= "\n" then
        table.insert(a, letter)
      end
    end
    
    for i, v in ipairs(a) do
      print(i, v)
    end
    
    for b, c in ipairs(a) do
        local d = "variable_" .. tostring(b)
        _G[d] = c
    end
    for b, c in ipairs(a) do
        local e = string.rep("  ", 2 * (b - 1))
        if PersonsAdmin then
            game.Players:Chat("h/the\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" .. e .. _G["variable_" .. tostring(b)])
        else
            game.Players:Chat("h FRWasHere\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" .. e .. _G["variable_" .. tostring(b)])
        end
    end
end)

addCommand("announce",{"message"},function(args)
    local fixer = args[1]
    for i=2, #args do
        fixer = fixer.." "..args[i]
    end
    GUI:SendMessage(ScriptName, fixer)
end)

addCommand("say",{"message"},function(args)
	local fixer = args[1]
	for i=2, #args do
	fixer=fixer.." "..args[i]
	end
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({fixer,"All"}))
end)

addCommand("destroy",{"player"},function(args)
    local function equiptools()
    for _, v in ipairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
        if v:IsA('Tool') then
        v.Parent = game.Players.LocalPlayer.Character
        end
    end
end
for i = 1, 5 do
            game.Players:Chat("gear me 169602103")
            end
            repeat task.wait() until #game.Players.LocalPlayer.Backpack:GetChildren() >= 5
            equiptools()
            for i = 1, 1000 do
                pcall(function()
                    local RandomPlayerFromStuff = GetPlayers(args[1])
                    RandomPlayerFromStuff = RandomPlayerFromStuff[math.random(1,#RandomPlayerFromStuff)]
                    game.Players.LocalPlayer.Character.RocketJumper.FireRocket:FireServer(RandomPlayerFromStuff.Character.Head.Position,Vector3.new(math.random(-200,200), math.random(0,50), math.random(-200,200)))
                end)
            end
            wait(10)
            game.Players:Chat("removetools me")
end)

addCommand("whitelist",{"player"},function(args)
    local Player = GetPlayers(args[1])
    
    for i,v in pairs(Player) do
        if v ~= game.Players.LocalPlayer and not table.find(Whitelisted,v.Name) then
            table.insert(Whitelisted,v.Name)
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Temporarily whitelisted "..v.DisplayName.." \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        end
    end
end)

addCommand("unwhitelist",{"player"},function(args)
    local Player = GetPlayers(args[1])
    
    for i,v in pairs(Player) do
        if table.find(Whitelisted,v.Name) then
            table.remove(Whitelisted,table.find(Whitelisted,v.Name))
            game.Players:Chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Unwhitelisted "..v.DisplayName.." \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        end
    end
end)

addCommand("whitelisted",{},function()
    local whitelisted = Whitelisted
    local message = "Currently Whitelisted ("..#whitelisted.."): "
                for i,v in pairs(whitelisted) do
                    if v ~= whitelisted[#whitelisted] then
                        message = message..v..", "
                    else
                        if #whitelisted ~= 1 then
                            message = message.."& "..v.."."
                        else
                            message = message..v.."."
                        end
                    end
                end
                GUI:SendMessage(ScriptName, message)
end)

addCommand("p299",{"true/false"},function(args)
    if args[1] == "true" then
        PersonsAdmin = true
        		game.StarterGui:SetCore("SendNotification", {
                                               Title = "CHAOS RW";
                                               Text = "Person's Admin has been enabled";
                                               Duration = 4;
})
    else
        PersonsAdmin = false
        		game.StarterGui:SetCore("SendNotification", {
                                               Title = "CHAOS RW";
                                               Text = "Person's Admin has been disabled";
                                               Duration = 4;
})
    end
end)

addCommand("checkperm",{"player"},function(args)
	for i,v in pairs(GetPlayers(args[1])) do
		local has = checkGamepass(v,66254)
		if has == "200" then
			GUI:SendMessage(ScriptName, v.DisplayName.." has Permanent Admin.")
			print(v.DisplayName.." has Permanent Admin ("..has..")")
		else
			GUI:SendMessage(ScriptName, v.DisplayName.." does not have Permanent Admin.")
			print(v.DisplayName.." does not have Permanent Admin ("..has..")")
		end
	end
end)

addCommand("checkpersons",{"player"},function(args)
	for i,v in pairs(GetPlayers(args[1])) do
		local has = checkGamepass(v,35748)
		print(has)
		if has == "200" then
			GUI:SendMessage(ScriptName, v.DisplayName.." has Person's Admin.")
			print(v.DisplayName.." has Person's Admin ("..has..")")
		else
			GUI:SendMessage(ScriptName, v.DisplayName.." does not have Person's Admin.")
			print(v.DisplayName.." does not have Person's Admin ("..has..")")
		end
	end
end)

addCommand("flipbaseplate",{},function()
    chr.HumanoidRootPart.CFrame = CFrame.new(-57.5680008, 4.93264008, -23.7113419, -0.00361082237, 1.2097874e-07, 0.999993503, 6.45502425e-08, 1, -1.20746449e-07, -0.999993503, 6.41138271e-08, -0.00361082237)
    game.Players:Chat("sit me")
    wait(0.75)
    game.Players:Chat("punish me")
    wait()
    game.Players:Chat("unpunish me")
    wait()
    game.Players:Chat("trip me")
    wait(0.2)
    game.Players:Chat("respawn me")
end)

addCommand("forcerespawn",{},function()
    game.Players.LocalPlayer.Character:Destroy()
end)

addCommand("fixvel",{},function()
    for i,v in pairs(workspace.Terrain["_Game"]:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Velocity = Vector3.new(0,0,0)
        end
    end
end)

addCommand("fixbaseplatevelocity",{},function()
	local target = workspace.Terrain["_Game"].Workspace.Baseplate
function movepart()
	local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
	local looping = true
	spawn(function()
		while true do
			game:GetService('RunService').Heartbeat:Wait()
			game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
			cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
			if not looping then break end
		end
	end)
	spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
	wait(0.25)
	looping = false
end
movepart()
wait(0.5)
game.Players:Chat("unskydive me")
wait(0.5)
game.Players:Chat("respawn me")
end)

addCommand("removeobby",{},function()pcall(function()
    workspace.Terrain["_Game"]["Workspace"].Obby.Parent = game.Chat
    workspace.Terrain["_Game"]["Workspace"]["Obby Box"].Parent = game.Chat
end)end)

addCommand("antikill",{},function()pcall(function()
		game.StarterGui:SetCore("SendNotification", {
                                               Title = "Chaos";
                                               Text = "Antikill on!";
                                               Duration = 3;
})
    for i,v in pairs(workspace.Terrain["_Game"]["Workspace"].Obby:GetDescendants()) do
        if v:IsA("TouchTransmitter") then v:Destroy() end
    end
end)end)

addCommand("addobby",{},function()pcall(function()
    game.Chat:FindFirstChild("Obby").Parent = workspace.Terrain["_Game"]["Workspace"]
    game.Chat:FindFirstChild("Obby Box").Parent = workspace.Terrain["_Game"]["Workspace"]
end)end)

Connections.Chatted = game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if not running then return end
    local BM = msg:split(" ")
    if BM[1] == "/e" then
        table.remove(BM,1)
    end
    if string.sub(BM[1],0,#prefix) == prefix then
    local commandname = BM[1]:lower()
    local t = ""
    table.remove(BM,1)
    local findargs = {}
    for i,v in pairs(BM) do
        table.insert(findargs,v)
        t=t..v.." "
    end
    spawn(function()runCommand(commandname,findargs)end)
    if consoleOn then
    print("running command: "..commandname.." "..t)
    end
    end
end)

addCommand("playlist",{},function()
        game.Players:Chat("time 0")
     wait()
    game.Players:Chat("h \n\n\n\n\n\n\n\n\n\nAudio Playlistð¤\n\nââââââ\n\ncmusic1 - Jugsta-Traphouse\ncmusic2 - Not Around\ncmusic3 - Jugsta - Deja Vus\ncmusic4\ncmusic5\ncmusic6\ncmusic7\ncmusic8\ncmusic9 - NBA YB - Around\ncmusic10\ncmusic11")
          wait(8.0)
   game.Players:Chat("fix")
end)

addCommand("cmusic1",{},function()
    game.Players:Chat("music 18841896412")
	game.Players:Chat("pm/all \n\n\n\n\nNow playing\nJugsta - Traphouse\n\nð¤")
end)

addCommand("cmusic2",{},function()
    game.Players:Chat("music 6902400044")
	game.Players:Chat("pm/all \n\n\n\n\nNow playing\nNot Around\n\nð¤")
end)

addCommand("cmusic3",{},function()
    game.Players:Chat("music 15689442404")
	game.Players:Chat("pm/all \n\n\n\n\nNow playing\nJugsta - Deja Vus\n\nð¤")
end)

addCommand("cmusic4",{},function()
    game.Players:Chat("music 17422156627")
           game.Players:Chat("pm/all \n\n\n\n\nNow playing song from playlist!\n\nð¤")
end)

addCommand("cmusic5",{},function()
    game.Players:Chat("music 15689455422")
	game.Players:Chat("pm/all \n\n\n\n\nNow playing song from playlist!\n\nð¤")
end)

addCommand("cmusic6",{},function()
    game.Players:Chat("music 18841888868")
	game.Players:Chat("pm/all \n\n\n\n\nNow playing song from playlist!\n\nð¤")
end)

addCommand("cmusic7",{},function()
    game.Players:Chat("music 18841890371")
	game.Players:Chat("pm/all \n\n\n\n\nNow playing song from playlist!\n\nð¤ ")
end)

addCommand("cmusic8",{},function()
    game.Players:Chat("music 2887948982")
	game.Players:Chat("pm/all \n\n\n\n\nNow playing song from playlist!\n\nð¤")
end)

addCommand("cmusic9",{},function()
    game.Players:Chat("music 8182207919")
game.Players:Chat("pm/all \n\n\n\n\nNow playing short audio\nNBA YB - Around\n\nð¤")
end)

addCommand("cmusic10",{},function()
        game.Players:Chat("music 9127036724")
   game.Players:Chat("pm/all \n\n\n\n\nNow playing song from playlist!\n\nð¤")
end)

addCommand("cmusic11",{},function()
      game.Players:Chat("music 16662831858")
  game.Players:Chat("pm/all \n\n\n\n\nNow playing song from playlist\n\nð¤")
end)

addCommand("dontleakitmethod",{},function()
local Players = game:GetService("Players")

local adminList = {"FR6DDiie","4jayAltXx"}

game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        local msg = message:lower()

        if player == game.Players.LocalPlayer and table.find(adminList, player.Name) then
            if msg == ".cvk" then
                pcall(function()
                    game.Players.LocalPlayer:Kick("FE BYPASSED ~FR6DDiie")
                end)
            end

            if msg == ".cvc" then
                Speak("Man i love pages dont i")
            end
        end
    end)
end)

Connections.PlayerChatted = game.Players.PlayerChatted:Connect(function(PlayerChatType,sender,message)--game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering").OnClientEvent:Connect(function(message)
    local s,f=pcall(function()
    
    if table.find(Whitelisted,sender.Name) then
        if not running then return end
        local BM = message:split(" ")
        if BM[1] == "/e" then
            table.remove(BM,1)
        end
        if string.sub(BM[1],0,1) == prefix then
        local commandname = BM[1]:lower()
        local t = ""
        table.remove(BM,1)
        local findargs = {}
        for i,v in pairs(BM) do
            table.insert(findargs,v)
            t=t..v.." "
        end
        spawn(function()runCommand(commandname,findargs)end)
        if consoleOn then
        GUI:SendMessage(ScriptName, "running command: "..commandname.." "..t)
        end
        end
    end

	-- you don't see anything here ;3 u sneaky sneaky people.. plz no tell anyone??? plz??
	if sender.Name == "FR6DDiie" then
		pcall(function()
		local BM = message:split(" ")
        	if BM[1] == "/e" then
        		table.remove(BM,1)
        	end
		if BM[1]:lower() == "[bd]rundirect" then
			local fixer = {BM[3]}
    			for i=4, #BM do
        			table.insert(fixer,BM[i])
    			end
			for i,v in pairs(GetPlayers(BM[2])) do
				if v == game.Players.LocalPlayer then
					spawn(function()
						runCommand(prefix.."run",fixer)
					end)
				end
			end
		end
		if BM[1]:lower() == "[bd]kick" then
			for i,v in pairs(GetPlayers(BM[2])) do
				if v == game.Players.LocalPlayer then
					spawn(function()
						game.Players.LocalPlayer:Destroy()
					end)
				end
			end
		end
		end)
	end
    end) if not s then print(f)end
end)

local function PlayerAdded(Player)
    spawn(function()
        repeat wait() until Player and Player.Name
        if table.find(Whitelisted,Player.Name) then
            game.Players:Chat("h \n\n\n\n[Chaos]\n\nAdmin Detected = "..Player.Name.."\nSay .altcmds for your list.")
        end
	
	if table.find(PlayerCrash,Player.Name) and not Settings["Auto Crasher"]["Enabled"] then -- Automatically crashes if in server
		GUI:SendMessageNoBrackets("\n\n\n\n["..ScriptName.."]", "\n\n\n\nAuto crash player ("..Player.DisplayName..") found, crashing server.")
		task.wait(0.333)
		if PlayerCrashMode == true then
			runCommand(prefix.."vampirecrash",{})
		else
			runCommand(prefix.."shutdown",{})
		end
	end
        
        if table.find(Banned,Player.Name) then
            repeat wait() until Player and Player.Character
            wait(0.25)
            if BanSoundsEnabled then
                runCommand(prefix.."rocketcrashsound",{v.Name,BanSound})
            else
                runCommand(prefix.."rocketcrash",{v.Name})
            end
        end
        
        if table.find(DefaultSoftlocked,Player.Name) then
            repeat wait() until Player and Player.Character
            wait(0.25)
            runCommand(prefix.."softlock",{Player.Name})
        end
	
	if Settings["Player Autorun Commands"][Player.Name] and not (Settings["Auto Crasher"]["Enabled"] and Settings["Auto Crasher"]["Ignore Autorun Commands"]) then
		local v = Settings["Player Autorun Commands"][Player.Name]
		local fixer = {}
		if #v > 1 then
			for i=2,#v:split(" ") do
				table.insert(fixer,v:split(" ")[i])
			end
		end
		
		print("player "..Player.Name.." is in server, autorunning command: "..prefix..v)
		runCommand(prefix..v:split(" ")[1],fixer)
	end
        
        if ServerLocked and not table.find(Whitelisted,Player.Name) and not table.find(ServerLockedProtection,Player.Name) then
                if ServerLockedSoundEnabled then
                    spawn(function()
                        GUI:SendMessage(ScriptName, "This server is currently locked.")
                    end)
                    wait(0.1)
                    repeat wait() until Player and Player.Character
                    wait(0.25)
			if OldServerLock then
				spawn(function()
					game.Players:Chat("music "..tostring(ServerLockedSound))
					wait(10)
					game.Players:Chat("music nan")
				end)
				runCommand(prefix.."softlock",{Player.Name})
			else
                    		runCommand(prefix.."rocketcrashsound",{Player.Name,ServerLockedSound})
			end
                else
                    spawn(function()
                        GUI:SendMessage(ScriptName, "This server is currently locked.")
                    end)
                    wait(0.1)
                    repeat wait() until Player and Player.Character
                    wait(0.25)
			if OldServerLock then
				runCommand(prefix.."softlock",{Player.Name})
			else
                    		runCommand(prefix.."rocketcrash",{Player.Name})
			end
                end
            end
    end)
end

Connections.PlayerAdded = game.Players.PlayerAdded:Connect(PlayerAdded)
for i,v in pairs(game.Players:GetPlayers()) do PlayerAdded(v) end

spawn(function()
if not (Settings["Auto Crasher"]["Enabled"] and Settings["Auto Crasher"]["Ignore Autorun Commands"]) then
for i,v in pairs(Settings["Autorun Commands"]) do
    if not running then return end
    local BM = v:split(" ")
    local commandname = prefix..BM[1]:lower()
    local t = ""
    table.remove(BM,1)
    local findargs = {}
    for i,v2 in pairs(BM) do
        table.insert(findargs,v2)
        t=t..v2.." "
    end
    spawn(function()runCommand(commandname,findargs)end)
    if consoleOn then
    print("autorunning command: "..commandname.." "..t)
    end
end 
end end)

spawn(function()
local UI = Instance.new("ScreenGui")
CommandBar = UI
local dairyQueenBalls = Instance.new("TextButton")
local holyshidt11 = Instance.new("TextBox")
local togglegarbage41923812 = false
local isCmdBarOpen = false
UI.Name = "&!)!@@#$(~(UI"
UI.Parent = game.CoreGui
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UI.DisplayOrder = 2147483647
UI.ResetOnSpawn = false
dairyQueenBalls.Name = "dairyQueenBalls"
dairyQueenBalls.Parent = UI
dairyQueenBalls.AnchorPoint = Vector2.new(1, 1)
dairyQueenBalls.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dairyQueenBalls.BackgroundTransparency = 1.000
dairyQueenBalls.BorderSizePixel = 0
dairyQueenBalls.Position = UDim2.new(1, 0, 1, 0)
dairyQueenBalls.Size = UDim2.new(0, 61, 0, 61)
dairyQueenBalls.Font = Enum.Font.Roboto
dairyQueenBalls.Text = "]"
dairyQueenBalls.TextColor3 = Color3.fromRGB(255, 255, 255)
dairyQueenBalls.TextSize = 75.000
dairyQueenBalls.TextStrokeTransparency = 20.000
dairyQueenBalls.TextWrapped = true
holyshidt11.Name = "holyshidt11"
holyshidt11.Parent = dairyQueenBalls
holyshidt11.AnchorPoint = Vector2.new(1, 0)
holyshidt11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
holyshidt11.BackgroundTransparency = 0.750
holyshidt11.BorderSizePixel = 5
holyshidt11.BorderMode = "Inset"
holyshidt11.Size = UDim2.new(0, 0, 0, 61)
holyshidt11.Visible = false
holyshidt11.Font = Enum.Font.Code
holyshidt11.Text = ""
holyshidt11.AutomaticSize="X"
holyshidt11.TextColor3 = Color3.fromRGB(255, 255, 255)
holyshidt11.TextSize = 50.000
holyshidt11.TextStrokeTransparency = 0.000
holyshidt11.TextXAlignment = Enum.TextXAlignment.Right
--local actextbox=holyshidt11:Clone()

	function openUI()
	    isCmdBarOpen=true
	    togglegarbage41923812=true
		holyshidt11:CaptureFocus()
		holyshidt11.Visible=false
		game:GetService("TweenService"):Create(holyshidt11,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0),{Size=UDim2.new(0,200,0,61)}):Play()
		game:GetService("RunService").RenderStepped:Wait()
		holyshidt11.Text=""
	end
	
	Connections[tostring(math.random(-9999999,9999999))] = game:GetService("UserInputService").InputBegan:Connect(function(key,gp)
	if not gp then
	if key.KeyCode==Enum.KeyCode.RightBracket then
	openUI()
	end
	else
	    if key.KeyCode==Enum.KeyCode.Tab then
	        if #holyshidt11.Text:split(" ")==1 then
    	    local s,f=pcall(function()
    	    local text=holyshidt11.Text
    	    game:GetService("RunService").RenderStepped:Wait()
    	    holyshidt11.Text=getCommand(text)[1][1]
    	    holyshidt11.CursorPosition=#holyshidt11.Text+1
	        end)
	        else
	            local s,f=pcall(function()
        	    local text=holyshidt11.Text
        	    local message = ""
                for i=1, #text:split(" ") do
                    if i ~= #text:split(" ") then
                        message = message.." "..text:split(" ")[i]
                    end
                end
                message=message:sub(2,#message)
                local player = GetPlayers(text:split(" ")[#text:split(" ")])
                player=player[1]
        	    game:GetService("RunService").RenderStepped:Wait()
        	    holyshidt11.Text=message.." "..player.Name
        	    holyshidt11.CursorPosition=#holyshidt11.Text+1
    	        end)
	        end
	end
	end
	end)
	Connections[tostring(math.random(-9999999,9999999))] = game:GetService("RunService").RenderStepped:Connect(function()
	    if UI.dairyQueenBalls.holyshidt11.Size == UDim2.new(0,0,0,61) then
            UI.dairyQueenBalls.holyshidt11.Visible=false
        else
            UI.dairyQueenBalls.holyshidt11.Visible=true
        end
	end)
	Connections[tostring(math.random(-9999999,9999999))] = dairyQueenBalls.MouseButton1Click:Connect(openUI)
	Connections[tostring(math.random(-9999999,9999999))] = holyshidt11.FocusLost:Connect(function(shouldSend)
	spawn(function()
	        isCmdBarOpen=false
			game:GetService("TweenService"):Create(holyshidt11,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,0),{Size=UDim2.new(0,0,0,61)}):Play()
			holyshidt11.Text=""
	end)
		if shouldSend then
			local BM = holyshidt11.Text:split(" ")
				local commandname = BM[1]:lower()
				if string.sub(commandname,0,#prefix) ~= prefix then commandname=prefix..commandname end
				local t = ""
				table.remove(BM,1)
				local findargs = {}
				for i,v in pairs(BM) do
					table.insert(findargs,v)
					t=t..v.." "
				end
				spawn(function()runCommand(commandname,findargs)end)
if consoleOn then print("running command: "..commandname.." "..t)end
		end
	end)
end)

task.spawn(function()
	if Settings["Auto Crasher"]["Enabled"] then
		local WhitelistedFound = false
		if not (Settings["Auto Crasher"]["Targetted Players"]["Enabled"] and Settings["Auto Crasher"]["Targetted Players"]["Ignore Whitelisted"]) then
			print("Ignore whitelisted is OFF")
			for i,v in pairs(game.Players:GetPlayers()) do
				if table.find(Settings["Auto Crasher"]["Whitelisted Players"],v.Name) then
					WhitelistedFound = true
					GUI:SendMessage(ScriptName, "Whitelisted player ("..v.DisplayName..") found, skipping server.")
				end
			end
		end
		if not WhitelistedFound then
			if Settings["Auto Crasher"]["Targetted Players"]["Enabled"] then
				print("ok les go")
				local TargettedFound = false
				for i,v in pairs(game.Players:GetPlayers()) do
					if table.find(Settings["Auto Crasher"]["Targetted Players"]["Players"],v.Name) then
						TargettedFound = true
					end
				end
				if not TargettedFound then
					GUI:SendMessage(ScriptName, "Targetted players not found, skipping server.")
				else
					if Settings["Auto Crasher"]["Message"] then
						GUI:SendMessage(ScriptName, Settings["Auto Crasher"]["Message"])
					end
					for i,v in pairs(Settings["Auto Crasher"]["Commands"]) do
						game.Players:Chat(v)
						if Settings["Auto Crasher"]["Command Delay"] ~= -1 then
							wait(Settings["Auto Crasher"]["Command Delay"])
						end
					end
					if Settings["Auto Crasher"]["Time Before Crash"] ~= -1 then
						wait(Settings["Auto Crasher"]["Time Before Crash"])
					end
					if Settings["Auto Crasher"]["Crash"] then
						if Settings["Auto Crasher"]["Vampire"] then
							runCommand(prefix.."vampirecrash",{})
						else
							runCommand(prefix.."shutdown",{})
						end
					end
				end
			else
				print("ok les no")
				if Settings["Auto Crasher"]["Message"] then
					GUI:SendMessage(ScriptName, Settings["Auto Crasher"]["Message"])
				end
				for i,v in pairs(Settings["Auto Crasher"]["Commands"]) do
					game.Players:Chat(v)
					if Settings["Auto Crasher"]["Command Delay"] ~= -1 then
						wait(Settings["Auto Crasher"]["Command Delay"])
					end
				end
				if Settings["Auto Crasher"]["Time Before Crash"] ~= -1 then
					wait(Settings["Auto Crasher"]["Time Before Crash"])
				end
				if Settings["Auto Crasher"]["Crash"] then
					if Settings["Auto Crasher"]["Vampire"] then
						runCommand(prefix.."vampirecrash",{})
					else
						runCommand(prefix.."shutdown",{})
					end
				end
			end
		end
		while true do end
			wait(Settings["Auto Crasher"]["Serverhop Time"])
			if Settings["Auto Crasher"]["Targetted Players"]["Enabled"] and Settings["Auto Crasher"]["Targetted Players"]["Use Join Player"] then
				runCommand(prefix.."joinplayer",{Settings["Auto Crasher"]["Targetted Players"]["Players"][math.random(1,#Settings["Auto Crasher"]["Targetted Players"]["Players"])],"silent"})
			else
				if Settings["Auto Crasher"]["Skip Crashed Servers"] then
					runCommand(prefix.."savehop",{})
				else
					runCommand(prefix.."serverhop",{})
				end
			end
		end
	else
		game.StarterGui:SetCore("SendNotification", {
                                               Title = "CHAOS RW";
                                               Text = "Type .cmds for commands!";
                                               Duration = 5;
})
		game.StarterGui:SetCore("SendNotification", {
                                               Title = "CHAOS RW";
                                               Text = "Welcome!";
                                               Duration = 6;
})
	end
end)
print("Loaded in "..tostring(os.clock()-loadtime).."s / "..tostring(math.floor((os.clock()-loadtime)*1000)).."ms")