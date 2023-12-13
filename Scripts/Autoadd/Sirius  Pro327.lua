--[[

Sirius

© 2023 Sirius Software Ltd. 
All Rights Reserved.

--]]


--[[

Sirius Pre-Hyperion Todo List

High Priority
 - Invisible, Godmode
 - All Scripts buttons and Universal scripts
 - Chat Spam Detection
 - Custom Script Prompts
 - Player Kill, Spectate and ESP via Playerlist
 - http.request support for Sirius Intelligent HTTP Interception
 - Performance Improvements to Roblox itself
 
Moderate Priority
 - Spectate Animation, like GTA serverhop, tween to high in the sky, then tween to other player's head
 - Chat Spy Tracking: Follows who they're whispering to based on original message
 - Starlight 
 - Chatlogs
 - GTA Serverhop
 - Anti-Spam (chat) formula, based on text length, caps, emojis etc.
 - Reduce any form of detection of Sirius
 - Automated lowering of graphics on lower FPS, ensure no false positives
 
Potential Future Setting Options
 - Block entire domain or just the specific page in the Sirius Intelligent Flow Interception. Do this on case by case, e.g blocked = {"link.com", true} - true being whether its the domain or not
 - Serverhop type (default/gta)
 - Hook Specific Functions to reduce the need for external scripts
 
--]]

-- Ensure the game is loaded 
if not game:IsLoaded() then
	game.Loaded:Wait()
end

-- Check License Tier
local Pro = true -- We're open sourced now!

-- Create Variables for Roblox Services
local coreGui = game:GetService("CoreGui")
local httpService = game:GetService("HttpService")
local lighting = game:GetService("Lighting")
local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local guiService = game:GetService("GuiService")
local statsService = game:GetService("Stats")
local starterGui = game:GetService("StarterGui")
local teleportService = game:GetService("TeleportService")
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService('UserInputService')
local gameSettings = UserSettings():GetService("UserGameSettings")

-- Variables
local camera = workspace.CurrentCamera
local getMessage = replicatedStorage:WaitForChild("DefaultChatSystemChatEvents", 1) and replicatedStorage.DefaultChatSystemChatEvents:WaitForChild("OnMessageDoneFiltering", 1)
local localPlayer = players.LocalPlayer
local notifications = {}
local friendsCooldown = 0
local mouse = localPlayer:GetMouse()
local promptedDisconnected = false
local smartBarOpen = false
local debounce = false
local searchingForPlayer = false
local musicQueue = {}
local currentAudio
local lowerName = localPlayer.Name:lower()
local lowerDisplayName = localPlayer.DisplayName:lower()
local placeId = game.PlaceId
local jobId = game.JobId
local checkingForKey = false
local originalTextValues = {}
local creatorId = game.CreatorId
local noclipDefaults = {}
local movers = {}
local creatorType = game.CreatorType
local espContainer = Instance.new("Folder", gethui and gethui() or coreGui)
local oldVolume = gameSettings.MasterVolume

-- Configurable Core Values
local siriusValues = {
	siriusVersion = "1.24",
	siriusName = "Sirius",
	releaseType = "Stable",
	siriusFolder = "Sirius",
	settingsFile = "settings.srs",
	interfaceAsset = 14183548964,
	cdn = "https://cdn.sirius.menu/SIRIUS-SCRIPT-CORE-ASSETS/",
	icons = "https://cdn.sirius.menu/SIRIUS-SCRIPT-CORE-ASSETS/Icons/",
	enableExperienceSync = false, -- Games are no longer available due to a lack of whitelisting, they may be made open source at a later date, however they are patched as of now and are useless to the end user. Turning this on may introduce "fake functionality".
	games = {
		BreakingPoint = {
			name = "Breaking Point",
			description = "Players are seated around a table. Their only goal? To be the last one standing. Execute this script to gain an unfair advantage.",
			id = 648362523,
			enabled = true,
			raw = "BreakingPoint",
			minimumTier = "Free",
		},
		MurderMystery2 = {
			name = "Murder Mystery 2",
			description = "A murder has occured, will you be the one to find the murderer, or kill your next victim? Execute this script to gain an unfair advantage.",
			id = 142823291,
			enabled = true,
			raw = "MurderMystery2",
			minimumTier = "Free",
		},
		TowerOfHell = {
			name = "Tower Of Hell",
			description = "A difficult popular parkouring game, with random levels and modifiers. Execute this script to gain an unfair advantage.",
			id = 1962086868,
			enabled = true,
			raw = "TowerOfHell",
			minimumTier = "Free",
		},
		Strucid = {
			name = "Strucid",
			description = "Fight friends and enemies in Strucid with building mechanics! Execute this script to gain an unfair advantage.",
			id = 2377868063,
			enabled = true,
			raw = "Strucid",
			minimumTier = "Free",
		},
		PhantomForces = {
			name = "Phantom Forces",
			description = "One of the most popular FPS shooters from the team at StyLiS Studios. Execute this script to gain an unfair advantage.",
			id = 292439477,
			enabled = true,
			raw = "PhantomForces",
			minimumTier = "Pro",
		},
	},
	rawTree = "https://raw.githubusercontent.com/SiriusSoftwareLtd/Sirius/Sirius/games/",
	neonModule = "https://raw.githubusercontent.com/shlexware/Sirius/request/library/neon.lua",
	senseRaw = "https://raw.githubusercontent.com/shlexware/Sirius/request/library/sense/source.lua",
	executors = {"synapse x", "script-ware", "krnl", "scriptware", "comet", "valyse", "fluxus", "electron", "hydrogen"},
	disconnectTypes = { {"ban", {"ban", "perm"}}, {"network", {"internet connection", "network"}} },
	nameGeneration = {
		adjectives = {"Cool", "Awesome", "Epic", "Ninja", "Super", "Mystic", "Swift", "Golden", "Diamond", "Silver", "Mint", "Roblox", "Amazing"},
		nouns = {"Player", "Gamer", "Master", "Legend", "Hero", "Ninja", "Wizard", "Champion", "Warrior", "Sorcerer"}
	},
	administratorRoles = {"mod","admin","staff","dev","founder","owner","supervis","manager","management","executive","president","chairman","chairwoman","chairperson","director"},
	transparencyProperties = {
		UIStroke = {'Transparency'},
		Frame = {'BackgroundTransparency'},
		TextButton = {'BackgroundTransparency', 'TextTransparency'},
		TextLabel = {'BackgroundTransparency', 'TextTransparency'},
		TextBox = {'BackgroundTransparency', 'TextTransparency'},
		ImageLabel = {'BackgroundTransparency', 'ImageTransparency'},
		ImageButton = {'BackgroundTransparency', 'ImageTransparency'},
		ScrollingFrame = {'BackgroundTransparency', 'ScrollBarImageTransparency'}
	},
	buttonPositions = {Character = UDim2.new(0.5, -155, 1, -29), Scripts = UDim2.new(0.5, -122, 1, -29), Playerlist = UDim2.new(0.5, -68, 1, -29)},
	chatSpy = {
		enabled = true,
		visual = {
			Color = Color3.fromRGB(26, 148, 255),
			Font = Enum.Font.SourceSansBold,
			TextSize = 18
		},
	},
	pingProfile = {
		recentPings = {},
		adaptiveBaselinePings = {},
		pingNotificationCooldown = 0,
		maxSamples = 12, -- max num of recent pings stored
		spikeThreshold = 1.75, -- high Ping in comparison to average ping (e.g 100 avg would be high at 150)
		adaptiveBaselineSamples = 30, -- how many samples Sirius takes before deciding on a fixed high ping value
		adaptiveHighPingThreshold = 120 -- default value
	},
	frameProfile = {
		frameNotificationCooldown = 0,
		fpsQueueSize = 10,
		lowFPSThreshold = 20, -- what's low fps!??!?!
		totalFPS = 0,
		fpsQueue = {},
	},
	actions = {
		{
			name = "Noclip",
			images = {14385986465, 9134787693},
			color = Color3.fromRGB(0, 170, 127),
			enabled = false,
			rotateWhileEnabled = false,
			callback = function() end,
		},
		{
			name = "Flight",
			images = {9134755504, 14385992605},
			color = Color3.fromRGB(170, 37, 46),
			enabled = false,
			rotateWhileEnabled = false,
			callback = function(value)
				local character = localPlayer.Character
				local humanoid = character and character:FindFirstChildOfClass("Humanoid")
				if humanoid then
					humanoid.PlatformStand = value
				end
			end,
		},
		{
			name = "Refresh",
			images = {9134761478, 9134761478},
			color = Color3.fromRGB(61, 179, 98),
			enabled = false,
			rotateWhileEnabled = true,
			disableAfter = 3,
			callback = function()
				task.spawn(function()
					local character = localPlayer.Character
					if character then
						local cframe = character:GetPivot()
						local humanoid = character:FindFirstChildOfClass("Humanoid")
						if humanoid then
							humanoid:ChangeState(Enum.HumanoidStateType.Dead)
						end
						character = localPlayer.CharacterAdded:Wait()
						task.defer(character.PivotTo, character, cframe)
					end
				end)
			end,
		},
		{
			name = "Respawn",
			images = {9134762943, 9134762943},
			color = Color3.fromRGB(49, 88, 193),
			enabled = false,
			rotateWhileEnabled = true,
			disableAfter = 2,
			callback = function()
				local character = localPlayer.Character
				local humanoid = character and character:FindFirstChildOfClass("Humanoid")
				if humanoid then
					humanoid:ChangeState(Enum.HumanoidStateType.Dead)
				end
			end,
		},
		{
			name = "Invulnerability",
			images = {9134765994, 14386216487},
			color = Color3.fromRGB(193, 46, 90),
			enabled = false,
			rotateWhileEnabled = false,
			callback = function() end,
		},
		{
			name = "Fling",
			images = {9134785384, 14386226155},
			color = Color3.fromRGB(184, 85, 61),
			enabled = false,
			rotateWhileEnabled = true,
			callback = function(value)
				local character = localPlayer.Character
				local primaryPart = character and character.PrimaryPart
				if primaryPart then
					for _, part in ipairs(character:GetDescendants()) do
						if part:IsA("BasePart") then
							part.Massless = value
							part.CustomPhysicalProperties = PhysicalProperties.new(value and math.huge or 0.7, 0.3, 0.5)
						end
					end

					primaryPart.Anchored = true
					primaryPart.AssemblyLinearVelocity = Vector3.zero
					primaryPart.AssemblyAngularVelocity = Vector3.zero

					movers[3].Parent = value and primaryPart or nil

					task.delay(0.5, function() primaryPart.Anchored = false end)
				end
			end,
		},
		{
			name = "Extrasensory Perception",
			images = {9134780101, 14386232387},
			color = Color3.fromRGB(214, 182, 19),
			enabled = false,
			rotateWhileEnabled = false,
			callback = function(value)
				for _, highlight in ipairs(espContainer:GetChildren()) do
					highlight.Enabled = value
				end
			end,
		},
		{
			name = "Night and Day",
			images = {9134778004, 10137794784},
			color = Color3.fromRGB(102, 75, 190),
			enabled = false,
			rotateWhileEnabled = false,
			callback = function(value)
				tweenService:Create(lighting, TweenInfo.new(0.5), { ClockTime = value and 12 or 24 }):Play()
			end,
		},
		{
			name = "Global Audio",
			images = {9134774810, 14386246782},
			color = Color3.fromRGB(202, 103, 58),
			enabled = false,
			rotateWhileEnabled = false,
			callback = function(value)
				if value then
					oldVolume = gameSettings.MasterVolume
					gameSettings.MasterVolume = 0
				else
					gameSettings.MasterVolume = oldVolume
				end
			end,
		},
		{
			name = "Visibility",
			images = {14386256326, 9134770786},
			color = Color3.fromRGB(62, 94, 170),
			enabled = false,
			rotateWhileEnabled = false,
			callback = function() end,
		},
	},
	sliders = {
		{
			name = "player speed",
			color = Color3.fromRGB(44, 153, 93),
			values = {0, 300},
			default = 16,
			value = 16,
			active = false,
			callback = function(value)
				local character = localPlayer.Character
				local humanoid = character and character:FindFirstChildOfClass("Humanoid")
				if character then
					humanoid.WalkSpeed = value
				end
			end,
		},
		{
			name = "jump power",
			color = Color3.fromRGB(59, 126, 184),
			values = {0, 350},
			default = 50,
			value = 16,
			active = false,
			callback = function(value)
				local character = localPlayer.Character
				local humanoid = character and character:FindFirstChildOfClass("Humanoid")
				if character then
					if humanoid.UseJumpPower then
						humanoid.JumpPower = value
					else
						humanoid.JumpHeight = value
					end
				end
			end,
		},
		{
			name = "flight speed",
			color = Color3.fromRGB(177, 45, 45),
			values = {1, 25},
			default = 3,
			value = 3,
			active = false,
			callback = function(value) end,
		},
		{
			name = "field of view",
			color = Color3.fromRGB(198, 178, 75),
			values = {45, 120},
			default = 70,
			value = 16,
			active = false,
			callback = function(value)
				tweenService:Create(camera, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { FieldOfView = value }):Play()
			end,
		},
	}
}

local siriusSettings = {
	{
		name = 'General',
		description = 'The general settings for Sirius, from simple to unique features.',
		color = Color3.new(0.117647, 0.490196, 0.72549),
		minimumLicense = 'Free',
		categorySettings = {
			{
				name = 'Anonymous Client',
				description = 'Randomise your username in real-time in any CoreGui parented interface, including Sirius. You will still appear as your actual name to others in-game. This setting can be performance intensive.',
				settingType = 'Boolean',
				current = false,

				id = 'anonmode'
			},
			{
				name = 'Chat Spy',
				description = 'This will only work on the legacy Roblox chat system. Sirius will display whispers usually hidden from you in the chat box.',
				settingType = 'Boolean',
				current = true,

				id = 'chatspy'
			},
			{
				name = 'Hide Toggle Button',
				description = 'This will remove the option to open the smartBar with the toggle button.',
				settingType = 'Boolean',
				current = false,

				id = 'hidetoggle'
			},
			{
				name = 'Now Playing Notifications',
				description = 'When active, Sirius will notify you when the next song in your Music queue plays.',
				settingType = 'Boolean',
				current = true,

				id = 'nowplaying'
			},
			{
				name = 'Friend Notifications',
				settingType = 'Boolean', 
				current = true,

				id = 'friendnotifs'
			},
			{
				name = 'Load Hidden',
				settingType = 'Boolean',
				current = false,

				id = 'loadhidden'
			}, 
			{
				name = 'Startup Sound Effect',
				settingType = 'Boolean',
				current = true,

				id = 'startupsound'
			}, 
			{
				name = 'Anti Idle',
				description = 'Remove all callbacks and events linked to the LocalPlayer Idled state. This may prompt detection from Adonis or similar anti-cheats.',
				settingType = 'Boolean',
				current = true,

				id = 'antiidle'
			},
			{
				name = 'Client-Based Anti Kick',
				description = 'Cancel any kick request involving you sent by the client. This may prompt detection from Adonis or similar anti-cheats. You will need to rejoin and re-run Sirius to toggle.',
				settingType = 'Boolean',
				current = false,

				id = 'antikick'
			},
			{
				name = 'Muffle audio while unfocused',
				settingType = 'Boolean', 
				current = true,

				id = 'muffleunfocused'
			},
		}
	},
	{
		name = 'Keybinds',
		description = 'Assign keybinds to actions or change keybinds such as the one to open/close Sirius.',
		color = Color3.new(0.0941176, 0.686275, 0.509804),
		minimumLicense = 'Free',
		categorySettings = {
			{
				name = 'Toggle smartBar',
				settingType = 'Key',
				current = "K",
				id = 'smartbar'
			},
			{
				name = 'Open ScriptSearch',
				settingType = 'Key',
				current = "T",
				id = 'scriptsearch'
			},
			{
				name = 'NoClip',
				settingType = 'Key',
				current = nil,
				id = 'noclip',
				callback = function()
					local noclip = siriusValues.actions[1]
					noclip.enabled = not noclip.enabled
					noclip.callback(noclip.enabled)
				end
			},
			{
				name = 'Flight',
				settingType = 'Key',
				current = nil,
				id = 'flight',
				callback = function()
					local flight = siriusValues.actions[2]
					flight.enabled = not flight.enabled
					flight.callback(flight.enabled)
				end
			},
			{
				name = 'Refresh',
				settingType = 'Key',
				current = nil,
				id = 'refresh',
				callback = function()
					local refresh = siriusValues.actions[3]
					if not refresh.enabled then
						refresh.enabled = true
						refresh.callback()
					end
				end
			},
			{
				name = 'Respawn',
				settingType = 'Key',
				current = nil,
				id = 'respawn',
				callback = function()
					local respawn = siriusValues.actions[4]
					if not respawn.enabled then
						respawn.enabled = true
						respawn.callback()
					end
				end
			},
			{
				name = 'Invulnerability',
				settingType = 'Key',
				current = nil,
				id = 'invulnerability',
				callback = function()
					local invulnerability = siriusValues.actions[5]
					invulnerability.enabled = not invulnerability.enabled
					invulnerability.callback(invulnerability.enabled)
				end
			},
			{
				name = 'Fling',
				settingType = 'Key',
				current = nil,
				id = 'fling',
				callback = function()
					local fling = siriusValues.actions[6]
					fling.enabled = not fling.enabled
					fling.callback(fling.enabled)
				end
			},
			{
				name = 'ESP',
				settingType = 'Key',
				current = nil,
				id = 'esp',
				callback = function()
					local esp = siriusValues.actions[7]
					esp.enabled = not esp.enabled
					esp.callback(esp.enabled)
				end
			},
			{
				name = 'Night and Day',
				settingType = 'Key',
				current = nil,
				id = 'nightandday',
				callback = function()
					local nightandday = siriusValues.actions[8]
					nightandday.enabled = not nightandday.enabled
					nightandday.callback(nightandday.enabled)
				end
			},
			{
				name = 'Global Audio',
				settingType = 'Key',
				current = nil,
				id = 'globalaudio',
				callback = function()
					local globalaudio = siriusValues.actions[9]
					globalaudio.enabled = not globalaudio.enabled
					globalaudio.callback(globalaudio.enabled)
				end
			},
			{
				name = 'Visibility',
				settingType = 'Key',
				current = nil,
				id = 'visibility',
				callback = function()
					local visibility = siriusValues.actions[10]
					visibility.enabled = not visibility.enabled
					visibility.callback(visibility.enabled)
				end
			},
		}
	},
	{
		name = 'Performance',
		description = 'Tweak and test your performance settings for Roblox in Sirius.',
		color = Color3.new(1, 0.376471, 0.168627),
		minimumLicense = 'Free',
		categorySettings = {
			{
				name = 'Artificial FPS Limit',
				description = 'Sirius will automatically set your FPS to this number when you are tabbed-in to Roblox.',
				settingType = 'Number',
				values = {20, 5000},
				current = 240,

				id = 'fpscap'
			},
			{
				name = 'Limit FPS while unfocused',
				description = 'Sirius will automatically set your FPS to 60 when you tab-out or unfocus from Roblox.',
				settingType = 'Boolean', -- number for the cap below!! with min and max val
				current = true,

				id = 'fpsunfocused'
			},
			{
				name = 'Adaptive Latency Warning',
				description = 'Sirius will check your average latency in the background and notify you if your current latency significantly goes above your average latency.',
				settingType = 'Boolean',
				current = true,

				id = 'latencynotif'
			},
			{
				name = 'Adaptive Performance Warning',
				description = 'Sirius will check your average FPS in the background and notify you if your current FPS goes below a specific number.',
				settingType = 'Boolean',
				current = true,

				id = 'fpsnotif'
			},
		}
	},
	{
		name = 'Detections',
		description = 'Sirius detects and prevents anything malicious or possibly harmful to your wellbeing.',
		color = Color3.new(0.705882, 0, 0),
		minimumLicense = 'Free',
		categorySettings = {
			{
				name = 'Spatial Shield',
				description = 'Suppress loud sounds played from any audio source in-game, in real-time with Spatial Shield.',
				settingType = 'Boolean',
				minimumLicense = 'Pro',
				current = true,

				id = 'spatialshield'
			},
			{
				name = 'Spatial Shield Threshold',
				description = 'How loud a sound needs to be to be suppressed.',
				settingType = 'Number',
				minimumLicense = 'Pro',
				values = {100, 1000},
				current = 300,

				id = 'spatialshieldthreshold'
			},
			{
				name = 'Moderator Detection',
				description = 'Be notified whenever Sirius detects a player joins your session that could be a game moderator.',
				settingType = 'Boolean', 
				minimumLicense = 'Pro',
				current = true,

				id = 'moddetection'
			},
			{
				name = 'Intelligent HTTP Interception',
				description = 'Block external HTTP/HTTPS requests from being sent/recieved and ask you before allowing it to run.',
				settingType = 'Boolean',
				minimumLicense = 'Essential',
				current = true,

				id = 'intflowintercept'
			},
			{
				name = 'Intelligent Clipboard Interception',
				description = 'Block your clipboard from being set and ask you before allowing it to set your clipboard.',
				settingType = 'Boolean',
				minimumLicense = 'Essential',
				current = true,

				id = 'intflowinterceptclip'
			},
		},
	},
	{
		name = 'Logging',
		description = 'Send logs to your specified webhook URL of things like player joins and leaves and messages.',
		color = Color3.new(0.905882, 0.780392, 0.0666667),
		minimumLicense = 'Free',
		categorySettings = {
			{
				name = 'Log Messages',
				description = 'Log messages sent by any player to your webhook.',
				settingType = 'Boolean',
				current = false,

				id = 'logmsg'
			},
			{
				name = 'Message Webhook URL',
				description = 'Discord Webhook URL',
				settingType = 'Input',
				current = 'No Webhook',

				id = 'logmsgurl'
			},
			{
				name = 'Log PlayerAdded and PlayerRemoving',
				description = 'Log whenever any player leaves or joins your session.',
				settingType = 'Boolean',
				current = false,

				id = 'logplrjoinleave'
			},
			{
				name = 'Player Added and Removing Webhook URL',
				description = 'Discord Webhook URL',
				settingType = 'Input',
				current = 'No Webhook',

				id = 'logplrjoinleaveurl'
			},
		}
	},
}

-- Generate random username
local randomAdjective = siriusValues.nameGeneration.adjectives[math.random(1, #siriusValues.nameGeneration.adjectives)]
local randomNoun = siriusValues.nameGeneration.nouns[math.random(1, #siriusValues.nameGeneration.nouns)]
local randomNumber = math.random(100, 3999) -- You can customize the range
local randomUsername = randomAdjective .. randomNoun .. randomNumber

-- Initialise Sirius Client Interface
local guiParent = gethui and gethui() or coreGui
local sirius = guiParent:FindFirstChild("Sirius")
if sirius then
	sirius:Destroy()
end

local UI = game:GetObjects('rbxassetid://'..siriusValues.interfaceAsset)[1]
UI.Name = siriusValues.siriusName
UI.Parent = guiParent
UI.Enabled = false

-- Create Variables for Interface Elements
local characterPanel = UI.Character
local customScriptPrompt = UI.CustomScriptPrompt
local securityPrompt = UI.SecurityPrompt
local disconnectedPrompt = UI.Disconnected
local gameDetectionPrompt = UI.GameDetection
local homeContainer = UI.Home
local moderatorDetectionPrompt = UI.ModeratorDetectionPrompt
local musicPanel = UI.Music
local notificationContainer = UI.Notifications
local playerlistPanel = UI.Playerlist
local scriptSearch = UI.ScriptSearch
local scriptsPanel = UI.Scripts
local settingsPanel = UI.Settings
local smartBar = UI.SmartBar
local toggle = UI.Toggle
local starlight = UI.Starlight
local toastsContainer = UI.Toasts

-- Interface Caching
if not getgenv().cachedInGameUI then getgenv().cachedInGameUI = {} end
if not getgenv().cachedCoreUI then getgenv().cachedCoreUI = {} end

-- Malicious Behavior Prevention
local indexSetClipboard = "setclipboard"
local originalSetClipboard = getgenv()[indexSetClipboard]

local index = http_request and "http_request" or "request"
local originalRequest = getgenv()[index]

-- put this into siriusValues, like the fps and ping shit
local suppressedSounds = {}
local soundSuppressionNotificationCooldown = 0
local soundInstances = {}
local cachedIds = {}
local cachedText = {}

if not getMessage then siriusValues.chatSpy.enabled = false end

-- Call External Modules

-- httpRequest
local httpRequest = originalRequest

-- Neon Module
local neonModule = (function() -- Open sourced neon module
	local module = {}
	do
		local function IsNotNaN(x)
			return x == x
		end
		local continued = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
		while not continued do
			runService.RenderStepped:wait()
			continued = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
		end
	end

	local RootParent = camera
	local root
	local binds = {}

	local function getRoot()
		if root then 
			return root
		else
			root = Instance.new('Folder', RootParent)
			root.Name = 'neon'
			return root
		end
	end

	local function destroyRoot()
		if root then 
			root:Destroy()
			root = nil
		end
	end

	local GenUid; do
		local id = 0
		function GenUid()
			id = id + 1
			return 'neon::'..tostring(id)
		end
	end

	local DrawQuad; do
		local acos, max, pi, sqrt = math.acos, math.max, math.pi, math.sqrt
		local sz = 0.2

		local function DrawTriangle(v1, v2, v3, p0, p1)
			local s1 = (v1 - v2).magnitude
			local s2 = (v2 - v3).magnitude
			local s3 = (v3 - v1).magnitude
			local smax = max(s1, s2, s3)
			local A, B, C
			if s1 == smax then
				A, B, C = v1, v2, v3
			elseif s2 == smax then
				A, B, C = v2, v3, v1
			elseif s3 == smax then
				A, B, C = v3, v1, v2
			end

			local para = ( (B-A).x*(C-A).x + (B-A).y*(C-A).y + (B-A).z*(C-A).z ) / (A-B).magnitude
			local perp = sqrt((C-A).magnitude^2 - para*para)
			local dif_para = (A - B).magnitude - para

			local st = CFrame.new(B, A)
			local za = CFrame.Angles(pi/2,0,0)

			local cf0 = st

			local Top_Look = (cf0 * za).lookVector
			local Mid_Point = A + CFrame.new(A, B).LookVector * para
			local Needed_Look = CFrame.new(Mid_Point, C).LookVector
			local dot = Top_Look.x*Needed_Look.x + Top_Look.y*Needed_Look.y + Top_Look.z*Needed_Look.z

			local ac = CFrame.Angles(0, 0, acos(dot))

			cf0 = cf0 * ac
			if ((cf0 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf0 = cf0 * CFrame.Angles(0, 0, -2*acos(dot))
			end
			cf0 = cf0 * CFrame.new(0, perp/2, -(dif_para + para/2))

			local cf1 = st * ac * CFrame.Angles(0, pi, 0)
			if ((cf1 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf1 = cf1 * CFrame.Angles(0, 0, 2*acos(dot))
			end
			cf1 = cf1 * CFrame.new(0, perp/2, dif_para/2)

			if not p0 then
				p0 = Instance.new('Part')
				p0.FormFactor = 'Custom'
				p0.TopSurface = 0
				p0.BottomSurface = 0
				p0.Anchored = true
				p0.CanCollide = false
				p0.Material = 'Glass'
				p0.Size = Vector3.new(sz, sz, sz)
				local mesh = Instance.new('SpecialMesh', p0)
				mesh.MeshType = 2
				mesh.Name = 'WedgeMesh'
			end
			p0.WedgeMesh.Scale = Vector3.new(0, perp/sz, para/sz)
			p0.CFrame = cf0

			if not p1 then
				p1 = p0:clone()
			end
			p1.WedgeMesh.Scale = Vector3.new(0, perp/sz, dif_para/sz)
			p1.CFrame = cf1

			return p0, p1
		end

		function DrawQuad(v1, v2, v3, v4, parts)
			parts[1], parts[2] = DrawTriangle(v1, v2, v3, parts[1], parts[2])
			parts[3], parts[4] = DrawTriangle(v3, v2, v4, parts[3], parts[4])
		end
	end

	function module:BindFrame(frame, properties)
		if binds[frame] then
			return binds[frame].parts
		end

		local uid = GenUid()
		local parts = {}
		local f = Instance.new('Folder', getRoot())
		f.Name = frame.Name

		local parents = {}
		do
			local function add(child)
				if child:IsA'GuiObject' then
					parents[#parents + 1] = child
					add(child.Parent)
				end
			end
			add(frame)
		end

		local function UpdateOrientation(fetchProps)
			local zIndex = 1 - 0.05*frame.ZIndex
			local tl, br = frame.AbsolutePosition, frame.AbsolutePosition + frame.AbsoluteSize
			local tr, bl = Vector2.new(br.x, tl.y), Vector2.new(tl.x, br.y)
			do
				local rot = 0
				for _, v in ipairs(parents) do
					rot = rot + v.Rotation
				end
				if rot ~= 0 and rot%180 ~= 0 then
					local mid = tl:lerp(br, 0.5)
					local s, c = math.sin(math.rad(rot)), math.cos(math.rad(rot))
					local vec = tl
					tl = Vector2.new(c*(tl.x - mid.x) - s*(tl.y - mid.y), s*(tl.x - mid.x) + c*(tl.y - mid.y)) + mid
					tr = Vector2.new(c*(tr.x - mid.x) - s*(tr.y - mid.y), s*(tr.x - mid.x) + c*(tr.y - mid.y)) + mid
					bl = Vector2.new(c*(bl.x - mid.x) - s*(bl.y - mid.y), s*(bl.x - mid.x) + c*(bl.y - mid.y)) + mid
					br = Vector2.new(c*(br.x - mid.x) - s*(br.y - mid.y), s*(br.x - mid.x) + c*(br.y - mid.y)) + mid
				end
			end
			DrawQuad(
				camera:ScreenPointToRay(tl.x, tl.y, zIndex).Origin, 
				camera:ScreenPointToRay(tr.x, tr.y, zIndex).Origin, 
				camera:ScreenPointToRay(bl.x, bl.y, zIndex).Origin, 
				camera:ScreenPointToRay(br.x, br.y, zIndex).Origin, 
				parts
			)
			if fetchProps then
				for _, pt in pairs(parts) do
					pt.Parent = f
				end
				for propName, propValue in pairs(properties) do
					for _, pt in pairs(parts) do
						pt[propName] = propValue
					end
				end
			end
		end

		UpdateOrientation(true)
		runService:BindToRenderStep(uid, 2000, UpdateOrientation)

		binds[frame] = {
			uid = uid,
			parts = parts
		}
		return binds[frame].parts
	end

	function module:Modify(frame, properties)
		local parts = module:GetBoundParts(frame)
		if parts then
			for propName, propValue in pairs(properties) do
				for _, pt in pairs(parts) do
					pt[propName] = propValue
				end
			end
		end
	end

	function module:UnbindFrame(frame)
		if RootParent == nil then return end
		local cb = binds[frame]
		if cb then
			runService:UnbindFromRenderStep(cb.uid)
			for _, v in pairs(cb.parts) do
				v:Destroy()
			end
			binds[frame] = nil
		end
		if getRoot():FindFirstChild(frame.Name) then
			getRoot()[frame.Name]:Destroy()
		end
	end

	function module:HasBinding(frame)
		return binds[frame] ~= nil
	end

	function module:GetBoundParts(frame)
		return binds[frame] and binds[frame].parts
	end


	return module

end)()

-- Sirius Functions
local function checkSirius() return UI.Parent end
local function getPing() return math.clamp(statsService.Network.ServerStatsItem["Data Ping"]:GetValue(), 10, 700) end
local function checkFolder() if isfolder then if not isfolder(siriusValues.siriusFolder) then makefolder(siriusValues.siriusFolder) end if not isfolder(siriusValues.siriusFolder.."/Music") then makefolder(siriusValues.siriusFolder.."/Music") writefile(siriusValues.siriusFolder.."/Music/readme.txt", "Hey there! Place your MP3 or other audio files in this folder, and have the ability to play them through the Sirius Music UI!") end if not isfolder(siriusValues.siriusFolder.."/Assets/Icons") then makefolder(siriusValues.siriusFolder.."/Assets/Icons") end if not isfolder(siriusValues.siriusFolder.."/Assets") then makefolder(siriusValues.siriusFolder.."/Assets") end end end
local function isPanel(name) return not table.find({"Home", "Music", "Settings"}, name) end

local function fetchFromCDN(path, write, savePath)
	checkFolder()

	local file = game:HttpGet(siriusValues.cdn..path) or nil
	if not file then return end
	if not write then return file end


	writefile(siriusValues.siriusFolder.."/"..savePath, file)

	return
end

local function fetchIcon(iconName)
	checkFolder()

	local pathCDN = siriusValues.icons..iconName..".png"
	local path = siriusValues.siriusFolder.."/Assets/"..iconName..".png"

	if not isfile(path) then
		local file = game:HttpGet(pathCDN)
		if not file then return end

		writefile(path, file)
	end
	
	local imageToReturn = getcustomasset(path)

	return imageToReturn
end

local function storeOriginalText(element)
	originalTextValues[element] = element.Text
end

local function undoAnonymousChanges()
	for element, originalText in pairs(originalTextValues) do
		element.Text = originalText
	end
end

local function createEsp(player)
	if player == localPlayer or not checkSirius() then 
		return
	end

	local highlight = Instance.new("Highlight")
	highlight.FillTransparency = 1
	highlight.OutlineTransparency = 0
	highlight.OutlineColor = Color3.new(1,1,1)
	highlight.Adornee = player.Character
	highlight.Name = player.Name
	highlight.Enabled = siriusValues.actions[7].enabled
	highlight.Parent = espContainer

	player.CharacterAdded:Connect(function(character)
		if not checkSirius() then return end
		task.wait()
		highlight.Adornee = character
	end)
end

local function makeDraggable(object)
	local dragging = false
	local relative = nil

	local offset = Vector2.zero
	local screenGui = object:FindFirstAncestorWhichIsA("ScreenGui")
	if screenGui and screenGui.IgnoreGuiInset then
		offset += guiService:GetGuiInset()
	end

	object.InputBegan:Connect(function(input, processed)
		if processed then return end

		local inputType = input.UserInputType.Name
		if inputType == "MouseButton1" or inputType == "Touch" then
			relative = object.AbsolutePosition + object.AbsoluteSize * object.AnchorPoint - userInputService:GetMouseLocation()
			dragging = true
		end
	end)

	local inputEnded = userInputService.InputEnded:Connect(function(input)
		if not dragging then return end

		local inputType = input.UserInputType.Name
		if inputType == "MouseButton1" or inputType == "Touch" then
			dragging = false
		end
	end)

	local renderStepped = runService.RenderStepped:Connect(function()
		if dragging then
			local position = userInputService:GetMouseLocation() + relative + offset
			object.Position = UDim2.fromOffset(position.X, position.Y)
		end
	end)

	object.Destroying:Connect(function()
		inputEnded:Disconnect()
		renderStepped:Disconnect()
	end)
end

local function checkAction(target)
	local toReturn = {}

	for _, action in ipairs(siriusValues.actions) do
		if action.name == target then
			toReturn.action = action
			break
		end
	end

	for _, action in ipairs(characterPanel.Interactions.Grid:GetChildren()) do
		if action.name == target then
			toReturn.object = action
			break
		end
	end

	return toReturn
end

local function checkSetting(settingTarget, categoryTarget)
	for _, category in ipairs(siriusSettings) do
		if categoryTarget then
			if category.name == categoryTarget then
				for _, setting in ipairs(category.categorySettings) do
					if setting.name == settingTarget then
						return setting
					end
				end
			end
			return
		else
			for _, setting in ipairs(category.categorySettings) do
				if setting.name == settingTarget then
					return setting
				end
			end
		end
	end
end

local function wipeTransparency(ins, target, checkSelf, tween, duration)
	local transparencyProperties = siriusValues.transparencyProperties

	local function applyTransparency(obj)
		local properties = transparencyProperties[obj.className]

		if properties then
			local tweenProperties = {}

			for _, property in ipairs(properties) do
				tweenProperties[property] = target
			end

			for property, transparency in pairs(tweenProperties) do
				if tween then
					tweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {[property] = transparency}):Play()
				else
					obj[property] = transparency
				end
				
			end
		end
	end

	if checkSelf then
		applyTransparency(ins)
	end

	for _, descendant in ipairs(ins:getDescendants()) do
		applyTransparency(descendant)
	end
end

local function blurSignature(value)
	if not value then
		if lighting:FindFirstChild("SiriusBlur") then
			lighting:FindFirstChild("SiriusBlur"):Destroy()
		end
	else
		if not lighting:FindFirstChild("SiriusBlur") then
			local blurLight = Instance.new("DepthOfFieldEffect", lighting)
			blurLight.Name = "SiriusBlur"
			blurLight.Enabled = true
			blurLight.FarIntensity = 0
			blurLight.FocusDistance = 51.6
			blurLight.InFocusRadius = 50
			blurLight.NearIntensity = 0.8
		end
	end
end

local function figureNotifications()
	if checkSirius() then
		local notificationsSize = 0

		if #notifications > 0 then
			blurSignature(true)
		else
			blurSignature(false)
		end

		for i = #notifications, 0, -1 do
			local notification = notifications[i]
			if notification then
				if notificationsSize == 0 then
					notificationsSize = notification.Size.Y.Offset + 2
				else
					notificationsSize += notification.Size.Y.Offset + 5
				end
				local desiredPosition = UDim2.new(0.5, 0, 0, notificationsSize)
				if notification.Position ~= desiredPosition then
					notification:TweenPosition(desiredPosition, "Out", "Quint", 0.8, true)
				end
			end
		end	
	end
end

local contentProvider = game:GetService("ContentProvider")

local function queueNotification(Title, Description, Image)
	task.spawn(function()		
		if checkSirius() then
			local newNotification = notificationContainer.Template:Clone()
			newNotification.Parent = notificationContainer
			newNotification.Name = Title or "Unknown Title"
			newNotification.Visible = true

			newNotification.Title.Text = Title or "Unknown Title"
			newNotification.Description.Text = Description or "Unknown Description"
			newNotification.Time.Text = "now"
			
			-- Prepare for animation
			newNotification.AnchorPoint = Vector2.new(0.5, 1)
			newNotification.Position = UDim2.new(0.5, 0, -1, 0)
			newNotification.Size = UDim2.new(0, 320, 0, 500)
			newNotification.Description.Size = UDim2.new(0, 241, 0, 400)
			wipeTransparency(newNotification, 1, true)

			newNotification.Description.Size = UDim2.new(0, 241, 0, newNotification.Description.TextBounds.Y)
			newNotification.Size = UDim2.new(0, 100, 0, newNotification.Description.TextBounds.Y + 50)

			table.insert(notifications, newNotification)
			figureNotifications()

			local notificationSound = Instance.new("Sound")
			notificationSound.Parent = UI
			notificationSound.SoundId = "rbxassetid://255881176"
			notificationSound.Name = "notificationSound"
			notificationSound.Volume = 0.65
			notificationSound.PlayOnRemove = true
			notificationSound:Destroy()
			
			
			if not tonumber(Image) then
				newNotification.Icon.Image = fetchIcon(Image)
			else
				newNotification.Icon.Image = 'rbxassetid://'..Image or 0
			end
			
			newNotification:TweenPosition(UDim2.new(0.5, 0, 0, newNotification.Size.Y.Offset + 2), "Out", "Quint", 0.9, true)
			task.wait(0.1)
			tweenService:Create(newNotification, TweenInfo.new(0.8, Enum.EasingStyle.Exponential), {Size = UDim2.new(0, 320, 0, newNotification.Description.TextBounds.Y + 50)}):Play()
			task.wait(0.05)
			tweenService:Create(newNotification, TweenInfo.new(0.8, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.35}):Play()
			tweenService:Create(newNotification.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Transparency = 0.7}):Play()
			task.wait(0.05)
			tweenService:Create(newNotification.Icon, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()
			task.wait(0.04)
			tweenService:Create(newNotification.Title, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			task.wait(0.04)
			tweenService:Create(newNotification.Description, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {TextTransparency = 0.15}):Play()
			tweenService:Create(newNotification.Time, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {TextTransparency = 0.5}):Play()

			neonModule:BindFrame(newNotification.BlurModule, {
				Transparency = 0.98,
				BrickColor = BrickColor.new("Institutional white")
			})
			
			newNotification.Interact.MouseButton1Click:Connect(function()
				local foundNotification = table.find(notifications, newNotification)
				if foundNotification then table.remove(notifications, foundNotification) end

				tweenService:Create(newNotification, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Position = UDim2.new(1.5, 0, 0, newNotification.Position.Y.Offset)}):Play()

				task.wait(0.4)
				newNotification:Destroy()
				figureNotifications()
				return
			end)

			local waitTime = (#newNotification.Description.Text*0.1)+2
			if waitTime <= 1 then waitTime = 2.5 elseif waitTime > 10 then waitTime = 10 end

			task.wait(waitTime)

			local foundNotification = table.find(notifications, newNotification)
			if foundNotification then table.remove(notifications, foundNotification) end

			tweenService:Create(newNotification, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Position = UDim2.new(1.5, 0, 0, newNotification.Position.Y.Offset)}):Play()

			task.wait(1.2)
			neonModule:UnbindFrame(newNotification.BlurModule)
			newNotification:Destroy()
			figureNotifications()
		end
	end)
end

local function checkLastVersion()
	checkFolder()

	local lastVersion = isfile and isfile(siriusValues.siriusFolder.."/".."version.srs") and readfile(siriusValues.siriusFolder.."/".."version.srs") or nil

	if lastVersion then
		if lastVersion ~= siriusValues.siriusVersion then queueNotification("Sirius has been updated", "Sirius has been updated to version "..siriusValues.siriusVersion..", check our Discord for all new features and changes.", 4400701828)  end
	end

	if writefile then writefile(siriusValues.siriusFolder.."/".."version.srs", siriusValues.siriusVersion) end
end

local function removeReverbs(timing)
	timing = timing or 0.65

	for index, sound in next, soundInstances do
		if sound:FindFirstChild("SiriusAudioProfile") then
			local reverb = sound:FindFirstChild("SiriusAudioProfile")
			tweenService:Create(reverb, TweenInfo.new(timing, Enum.EasingStyle.Exponential), {HighGain = 0}):Play()
			tweenService:Create(reverb, TweenInfo.new(timing, Enum.EasingStyle.Exponential), {LowGain = 0}):Play()
			tweenService:Create(reverb, TweenInfo.new(timing, Enum.EasingStyle.Exponential), {MidGain = 0}):Play()

			task.delay(timing + 0.03, reverb.Destroy, reverb)
		end
	end
end

local function playNext()
	if #musicQueue == 0 then currentAudio.Playing = false currentAudio.SoundId = "" musicPanel.Playing.Text = "Not Playing" return end

	if not currentAudio then
		local newAudio = Instance.new("Sound")
		newAudio.Parent = UI
		newAudio.Name = "Audio"
		currentAudio = newAudio
	end
	
	musicPanel.Menu.TogglePlaying.ImageRectOffset = currentAudio.Playing and Vector2.new(804, 124) or Vector2.new(764, 244)
	local asset = getcustomasset(siriusValues.siriusFolder.."/Music/"..musicQueue[1].sound)

	if checkSetting("Now Playing Notifications").current then queueNotification("Now Playing", musicQueue[1].sound, 4400695581) end

	if musicPanel.Queue.List:FindFirstChild(tostring(musicQueue[1].instanceName)) then
		musicPanel.Queue.List:FindFirstChild(tostring(musicQueue[1].instanceName)):Destroy()
	end

	currentAudio.SoundId = asset
	musicPanel.Playing.Text = musicQueue[1].sound
	currentAudio:Play()
	musicPanel.Menu.TogglePlaying.ImageRectOffset = currentAudio.Playing and Vector2.new(804, 124) or Vector2.new(764, 244)
	currentAudio.Ended:Wait()

	table.remove(musicQueue, 1)

	playNext()
end

local function addToQueue(file)
	if not getcustomasset then return end
	checkFolder()
	if not isfile(siriusValues.siriusFolder.."/Music/"..file) then queueNotification("Unable to locate file", "Please ensure that your audio file is in the Sirius/Music folder and that you are including the file extension (e.g mp3 or ogg).", 4370341699) return end
	musicPanel.AddBox.Input.Text = ""

	local newAudio = musicPanel.Queue.List.Template:Clone()
	newAudio.Parent = musicPanel.Queue.List
	newAudio.Size = UDim2.new(0, 254, 0, 40)
	newAudio.Close.ImageTransparency = 1
	newAudio.Name = file
	if string.len(newAudio.FileName.Text) > 26 then
		newAudio.FileName.Text = string.sub(tostring(file), 1,24)..".."
	else
		newAudio.FileName.Text = file
	end
	newAudio.Visible = true
	newAudio.Duration.Text = ""
	
	table.insert(musicQueue, {sound = file, instanceName = newAudio.Name})
	
	local getLength = Instance.new("Sound", workspace)
	getLength.SoundId = getcustomasset(siriusValues.siriusFolder.."/Music/"..file)
	getLength.Volume = 0
	getLength:Play()
	task.wait(0.05)
	newAudio.Duration.Text = tostring(math.round(getLength.TimeLength)).."s"
	getLength:Stop()
	getLength:Destroy()
	
	newAudio.MouseEnter:Connect(function()
		tweenService:Create(newAudio, TweenInfo.new(0.45, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(100, 100, 100)}):Play()
		tweenService:Create(newAudio.Close, TweenInfo.new(0.45, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()
		tweenService:Create(newAudio.Duration, TweenInfo.new(0.45, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
	end)

	newAudio.MouseLeave:Connect(function()
		tweenService:Create(newAudio.Close, TweenInfo.new(0.45, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
		tweenService:Create(newAudio, TweenInfo.new(0.45, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}):Play()
		tweenService:Create(newAudio.Duration, TweenInfo.new(0.45, Enum.EasingStyle.Exponential), {TextTransparency = 0.7}):Play()
	end)

	newAudio.Close.MouseButton1Click:Connect(function()
		if not string.find(currentAudio.Name, file) then
			for i,v in pairs(musicQueue) do
				for _,b in pairs(v) do
					if b == newAudio.Name then
						newAudio:Destroy()
						table.remove(musicQueue, i)
					end
				end
			end
		else
			for i,v in pairs(musicQueue) do
				for _,b in pairs(v) do
					if b == newAudio.Name then
						newAudio:Destroy()
						table.remove(musicQueue, i)
						playNext()
					end
				end
			end
		end
	end)

	if #musicQueue == 1 then
		playNext()
	end
end

local function openMusic()
	debounce = true
	musicPanel.Visible = true
	musicPanel.Queue.List.Template.Visible = false

	debounce = false
end

local function closeMusic()
	debounce = true
	musicPanel.Visible = false

	debounce = false
end

local function createReverb(timing)
	for index, sound in next, soundInstances do
		if not sound:FindFirstChild("SiriusAudioProfile") then
			local reverb = Instance.new("EqualizerSoundEffect")

			reverb.Name = "SiriusAudioProfile"
			reverb.Parent = sound

			reverb.Enabled = false

			reverb.HighGain = 0
			reverb.LowGain = 0
			reverb.MidGain = 0
			reverb.Enabled = true

			if timing then
				tweenService:Create(reverb, TweenInfo.new(timing, Enum.EasingStyle.Exponential), {HighGain = -20}):Play()
				tweenService:Create(reverb, TweenInfo.new(timing, Enum.EasingStyle.Exponential), {LowGain = 5}):Play()
				tweenService:Create(reverb, TweenInfo.new(timing, Enum.EasingStyle.Exponential), {MidGain = -20}):Play()
			end
		end
	end
end

local function runScript(raw)
	loadstring(game:HttpGet(raw))()
end

local function syncExperienceInformation()
	siriusValues.currentCreator = creatorId

	if creatorType == Enum.CreatorType.Group then
		siriusValues.currentGroup = creatorId
		siriusValues.currentCreator = "group"
	end

	for _, gameFound in pairs(siriusValues.games) do
		if gameFound.id == placeId and gameFound.enabled then

			local minimumTier = gameFound.minimumTier

			if minimumTier == "Essential" then
				if not (Essential or Pro) then
					return
				end
			elseif minimumTier == "Pro" then
				if not Pro then
					return
				end
			end

			local rawFile = siriusValues.rawTree..gameFound.raw
			siriusValues.currentGame = gameFound

			gameDetectionPrompt.ScriptTitle.Text = gameFound.name
			gameDetectionPrompt.Layer.ScriptSubtitle.Text = gameFound.description
			gameDetectionPrompt.Thumbnail.Image = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..tostring(placeId).."&fmt=png&wd=420&ht=420"

			gameDetectionPrompt.Size = UDim2.new(0, 550, 0, 0)
			gameDetectionPrompt.Position = UDim2.new(0.5, 0, 0, 120)
			gameDetectionPrompt.UICorner.CornerRadius = UDim.new(0, 9)
			gameDetectionPrompt.Thumbnail.UICorner.CornerRadius = UDim.new(0, 9)
			gameDetectionPrompt.ScriptTitle.Position = UDim2.new(0, 30, 0.5, 0)
			gameDetectionPrompt.Layer.Visible = false
			gameDetectionPrompt.Warning.Visible = false

			wipeTransparency(gameDetectionPrompt, 1, true)

			gameDetectionPrompt.Visible = true

			tweenService:Create(gameDetectionPrompt, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
			tweenService:Create(gameDetectionPrompt.Thumbnail, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {ImageTransparency = 0.4}):Play()
			tweenService:Create(gameDetectionPrompt.ScriptTitle, TweenInfo.new(0.6, Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()

			tweenService:Create(gameDetectionPrompt, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 587, 0, 44)}):Play()
			tweenService:Create(gameDetectionPrompt, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Position = UDim2.new(0.5, 0, 0, 150)}):Play()

			task.wait(1)

			wipeTransparency(gameDetectionPrompt.Layer, 1, true)

			gameDetectionPrompt.Layer.Visible = true

			tweenService:Create(gameDetectionPrompt, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 473, 0, 154)}):Play()
			tweenService:Create(gameDetectionPrompt.ScriptTitle, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Position = UDim2.new(0, 23, 0.352, 0)}):Play()
			tweenService:Create(gameDetectionPrompt, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Position = UDim2.new(0.5, 0, 0, 200)}):Play()
			tweenService:Create(gameDetectionPrompt.UICorner, TweenInfo.new(1, Enum.EasingStyle.Exponential), {CornerRadius = UDim.new(0, 13)}):Play()
			tweenService:Create(gameDetectionPrompt.Thumbnail.UICorner, TweenInfo.new(1, Enum.EasingStyle.Exponential), {CornerRadius = UDim.new(0, 13)}):Play()
			tweenService:Create(gameDetectionPrompt.Thumbnail, TweenInfo.new(1, Enum.EasingStyle.Exponential), {ImageTransparency = 0.5}):Play()

			task.wait(0.3)
			tweenService:Create(gameDetectionPrompt.Layer.ScriptSubtitle, TweenInfo.new(0.6, Enum.EasingStyle.Quint),  {TextTransparency = 0.3}):Play()
			tweenService:Create(gameDetectionPrompt.Layer.Run, TweenInfo.new(0.6, Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()
			tweenService:Create(gameDetectionPrompt.Layer.Run.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint),  {Transparency = 0.85}):Play()
			tweenService:Create(gameDetectionPrompt.Layer.Run, TweenInfo.new(0.6, Enum.EasingStyle.Quint),  {BackgroundTransparency = 0.6}):Play()

			task.wait(0.2)

			tweenService:Create(gameDetectionPrompt.Layer.Close, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {ImageTransparency = 0.6}):Play()

			task.wait(0.3)

			local function closeGameDetection()
				tweenService:Create(gameDetectionPrompt.Layer.ScriptSubtitle, TweenInfo.new(0.3, Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()
				tweenService:Create(gameDetectionPrompt.Layer.Run, TweenInfo.new(0.3, Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()
				tweenService:Create(gameDetectionPrompt.Layer.Run, TweenInfo.new(0.3, Enum.EasingStyle.Quint),  {BackgroundTransparency = 1}):Play()
				tweenService:Create(gameDetectionPrompt.Layer.Close, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
				tweenService:Create(gameDetectionPrompt.Thumbnail, TweenInfo.new(0.3, Enum.EasingStyle.Quint),  {ImageTransparency = 1}):Play()
				tweenService:Create(gameDetectionPrompt.ScriptTitle, TweenInfo.new(0.3, Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()
				tweenService:Create(gameDetectionPrompt.Layer.Run.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint),  {Transparency = 1}):Play()
				task.wait(0.05)
				tweenService:Create(gameDetectionPrompt, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 400, 0, 0)}):Play()
				tweenService:Create(gameDetectionPrompt.UICorner, TweenInfo.new(0.2, Enum.EasingStyle.Exponential), {CornerRadius = UDim.new(0, 5)}):Play()
				tweenService:Create(gameDetectionPrompt.Thumbnail.UICorner, TweenInfo.new(0.2, Enum.EasingStyle.Exponential), {CornerRadius = UDim.new(0, 5)}):Play()
				task.wait(0.41)
				gameDetectionPrompt.Visible = false
			end

			gameDetectionPrompt.Layer.Run.MouseButton1Click:Connect(function()
				closeGameDetection()
				queueNotification("Running "..gameFound.name, "Now running Sirius' "..gameFound.name.." script, this may take a moment.", 4400701828)
				runScript(rawFile)

			end)

			gameDetectionPrompt.Layer.Close.MouseButton1Click:Connect(function()
				closeGameDetection()
			end)

			break
		end
	end
end

local function updateSliderPadding()
	for _, v in pairs(siriusValues.sliders) do
		v.padding = {
			v.object.Interact.AbsolutePosition.X,
			v.object.Interact.AbsolutePosition.X + v.object.Interact.AbsoluteSize.X
		}
	end
end

local function updateSlider(data, setValue, forceValue)
	local inverse_interpolation

	if setValue then
		setValue = math.clamp(setValue, data.values[1], data.values[2])
		inverse_interpolation = (setValue - data.values[1]) / (data.values[2] - data.values[1])
		local posX = data.padding[1] + (data.padding[2] - data.padding[1]) * inverse_interpolation
	else
		local posX = math.clamp(mouse.X, data.padding[1], data.padding[2])
		inverse_interpolation = (posX - data.padding[1]) / (data.padding[2] - data.padding[1])
	end

	tweenService:Create(data.object.Progress, TweenInfo.new(.5, Enum.EasingStyle.Quint), {Size = UDim2.new(inverse_interpolation, 0, 1, 0)}):Play()

	local value = math.floor(data.values[1] + (data.values[2] - data.values[1]) * inverse_interpolation + .5)
	data.object.Information.Text = value.." "..data.name
	data.value = value

	if data.callback and not setValue or forceValue then
		data.callback(value)
	end
end

local function resetSliders()
	for _, v in pairs(siriusValues.sliders) do
		updateSlider(v, v.default, true)
	end
end

local function sortActions()	
	characterPanel.Interactions.Grid.Template.Visible = false
	characterPanel.Interactions.Sliders.Template.Visible = false

	for _, action in ipairs(siriusValues.actions) do
		local newAction = characterPanel.Interactions.Grid.Template:Clone()
		newAction.Name = action.name
		newAction.Parent = characterPanel.Interactions.Grid
		newAction.BackgroundColor3 = action.color
		newAction.UIStroke.Color = action.color
		newAction.Icon.Image = "rbxassetid://"..action.images[2]
		newAction.Visible = true

		newAction.BackgroundTransparency = 0.8
		newAction.Transparency = 0.7


		newAction.MouseEnter:Connect(function()
			characterPanel.Interactions.ActionsTitle.Text = string.upper(action.name)
			if action.enabled or debounce then return end
			tweenService:Create(newAction, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
			tweenService:Create(newAction.UIStroke, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Transparency = 0.6}):Play()
		end)

		newAction.MouseLeave:Connect(function()
			if action.enabled or debounce then return end
			tweenService:Create(newAction, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.55}):Play()
			tweenService:Create(newAction.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.4}):Play()
		end)

		characterPanel.Interactions.Grid.MouseLeave:Connect(function()
			characterPanel.Interactions.ActionsTitle.Text = "PLAYER ACTIONS"
		end)

		newAction.Interact.MouseButton1Click:Connect(function()
			local success, response = pcall(function()
				action.enabled = not action.enabled
				action.callback(action.enabled)

				if action.enabled then
					newAction.Icon.Image = "rbxassetid://"..action.images[1]
					tweenService:Create(newAction, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
					tweenService:Create(newAction.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					tweenService:Create(newAction.Icon, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {ImageTransparency = 0.1}):Play()

					if action.disableAfter then
						task.delay(action.disableAfter, function()
							action.enabled = false
							newAction.Icon.Image = "rbxassetid://"..action.images[2]
							tweenService:Create(newAction, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.55}):Play()
							tweenService:Create(newAction.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.4}):Play()
							tweenService:Create(newAction.Icon, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {ImageTransparency = 0.5}):Play()
						end)
					end

					if action.rotateWhileEnabled then
						repeat
							newAction.Icon.Rotation = 0
							tweenService:Create(newAction.Icon, TweenInfo.new(0.75, Enum.EasingStyle.Quint), {Rotation = 360}):Play()
							task.wait(1)
						until not action.enabled
						newAction.Icon.Rotation = 0
					end
				else
					newAction.Icon.Image = "rbxassetid://"..action.images[2]
					tweenService:Create(newAction, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.55}):Play()
					tweenService:Create(newAction.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.4}):Play()
					tweenService:Create(newAction.Icon, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {ImageTransparency = 0.5}):Play()
				end
			end)

			if not success then
				queueNotification("Action Error", "This action ('"..(action.name).."') had an error while running, please report this to the Sirius team at sirius.menu/discord", 4370336704)
				action.enabled = false
				newAction.Icon.Image = "rbxassetid://"..action.images[2]
				tweenService:Create(newAction, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.55}):Play()
				tweenService:Create(newAction.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.4}):Play()
				tweenService:Create(newAction.Icon, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {ImageTransparency = 0.5}):Play()
			end
		end)
	end

	if localPlayer.Character then
		if not localPlayer.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
			siriusValues.sliders[2].name = "jump height"
			siriusValues.sliders[2].default = 7.2
			siriusValues.sliders[2].values = {0, 120}
		end
	end


	for _, slider in ipairs(siriusValues.sliders) do
		local newSlider = characterPanel.Interactions.Sliders.Template:Clone()
		newSlider.Name = slider.name.." Slider"
		newSlider.Parent = characterPanel.Interactions.Sliders
		newSlider.BackgroundColor3 = slider.color
		newSlider.Progress.BackgroundColor3 = slider.color
		newSlider.UIStroke.Color = slider.color
		newSlider.Information.Text = slider.name
		newSlider.Visible = true

		slider.object = newSlider

		slider.padding = {
			newSlider.Interact.AbsolutePosition.X,
			newSlider.Interact.AbsolutePosition.X + newSlider.Interact.AbsoluteSize.X
		}

		newSlider.MouseEnter:Connect(function()
			if debounce or slider.active then return end
			tweenService:Create(newSlider, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.85}):Play()
			tweenService:Create(newSlider.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.6}):Play()
			tweenService:Create(newSlider.Information, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {TextTransparency = 0.2}):Play()
		end)

		newSlider.MouseLeave:Connect(function()
			if debounce or slider.active then return end
			tweenService:Create(newSlider, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.8}):Play()
			tweenService:Create(newSlider.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			tweenService:Create(newSlider.Information, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {TextTransparency = 0.3}):Play()
		end)

		newSlider.Interact.MouseButton1Down:Connect(function()
			if debounce or not checkSirius() then return end

			slider.active = true
			updateSlider(slider)

			tweenService:Create(slider.object, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
			tweenService:Create(slider.object.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
			tweenService:Create(slider.object.Information, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {TextTransparency = 0.05}):Play()
		end)

		updateSlider(slider, slider.default)
	end
end

local function getAdaptiveHighPingThreshold()
	local adaptiveBaselinePings = siriusValues.pingProfile.adaptiveBaselinePings

	if #adaptiveBaselinePings == 0 then
		return siriusValues.pingProfile.adaptiveHighPingThreshold
	end

	table.sort(adaptiveBaselinePings)
	local median
	if #adaptiveBaselinePings % 2 == 0 then
		median = (adaptiveBaselinePings[#adaptiveBaselinePings/2] + adaptiveBaselinePings[#adaptiveBaselinePings/2 + 1]) / 2
	else
		median = adaptiveBaselinePings[math.ceil(#adaptiveBaselinePings/2)]
	end

	return median * siriusValues.pingProfile.spikeThreshold
end

local function checkHighPing()
	local recentPings = siriusValues.pingProfile.recentPings
	local adaptiveBaselinePings = siriusValues.pingProfile.adaptiveBaselinePings

	local currentPing = getPing()
	table.insert(recentPings, currentPing)

	if #recentPings > siriusValues.pingProfile.maxSamples then
		table.remove(recentPings, 1)
	end

	if #adaptiveBaselinePings < siriusValues.pingProfile.adaptiveBaselineSamples then
		if currentPing >= 350 then currentPing = 300 end

		table.insert(adaptiveBaselinePings, currentPing)

		return false
	end

	local averagePing = 0
	for _, ping in ipairs(recentPings) do
		averagePing = averagePing + ping
	end
	averagePing = averagePing / #recentPings

	if averagePing > getAdaptiveHighPingThreshold() then
		return true
	end

	return false
end

local function checkTools()
	task.wait(0.03)
	if localPlayer.Backpack and localPlayer.Character then
		if localPlayer.Backpack:FindFirstChildOfClass('Tool') or localPlayer.Character:FindFirstChildOfClass('Tool') then
			return true
		end
	else
		return false
	end
end

local function closePanel(panelName, openingOther)
	debounce = true

	local button = smartBar.Buttons:FindFirstChild(panelName)
	local panel = UI:FindFirstChild(panelName)

	if not isPanel(panelName) then return end
	if not (panel and button) then return end

	local panelSize = UDim2.new(0, 581, 0, 246)

	if not openingOther then
		if panel.Name == "Character" then -- Character Panel Animation

			tweenService:Create(characterPanel.Interactions.PropertiesTitle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()

			for _, slider in ipairs(characterPanel.Interactions.Sliders:GetChildren()) do
				if slider.ClassName == "Frame" then 
					tweenService:Create(slider, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					tweenService:Create(slider.Progress, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					tweenService:Create(slider.UIStroke, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					tweenService:Create(slider.Shadow, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
					tweenService:Create(slider.Information, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play() -- tween the text after
				end
			end

			tweenService:Create(characterPanel.Interactions.Reset, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			tweenService:Create(characterPanel.Interactions.ActionsTitle, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()

			for _, gridButton in ipairs(characterPanel.Interactions.Grid:GetChildren()) do
				if gridButton.ClassName == "Frame" then 
					tweenService:Create(gridButton, TweenInfo.new(0.21, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
					tweenService:Create(gridButton.UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					tweenService:Create(gridButton.Icon, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
					tweenService:Create(gridButton.Shadow, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				end
			end

			tweenService:Create(characterPanel.Interactions.Serverhop, TweenInfo.new(.15,Enum.EasingStyle.Quint),  {BackgroundTransparency = 1}):Play()
			tweenService:Create(characterPanel.Interactions.Serverhop.Title, TweenInfo.new(.15,Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()
			tweenService:Create(characterPanel.Interactions.Serverhop.UIStroke, TweenInfo.new(.15,Enum.EasingStyle.Quint),  {Transparency = 1}):Play()

			tweenService:Create(characterPanel.Interactions.Rejoin, TweenInfo.new(.15,Enum.EasingStyle.Quint),  {BackgroundTransparency = 1}):Play()
			tweenService:Create(characterPanel.Interactions.Rejoin.Title, TweenInfo.new(.15,Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()
			tweenService:Create(characterPanel.Interactions.Rejoin.UIStroke, TweenInfo.new(.15,Enum.EasingStyle.Quint),  {Transparency = 1}):Play()

		elseif panel.Name == "Scripts" then -- Scripts Panel Animation

			for _, scriptButton in ipairs(scriptsPanel.Interactions.Selection:GetChildren()) do
				if scriptButton.ClassName == "Frame" then
					tweenService:Create(scriptButton, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					if scriptButton:FindFirstChild('Icon') then tweenService:Create(scriptButton.Icon, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play() end
					tweenService:Create(scriptButton.Title, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					if scriptButton:FindFirstChild('Subtitle') then	tweenService:Create(scriptButton.Subtitle, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play() end
					tweenService:Create(scriptButton.UIStroke, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
				end
			end

		elseif panel.Name == "Playerlist" then -- Playerlist Panel Animation

			for _, playerIns in ipairs(playerlistPanel.Interactions.List:GetDescendants()) do
				if playerIns.ClassName == "Frame" then
					tweenService:Create(playerIns, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				elseif playerIns.ClassName == "TextLabel" or playerIns.ClassName == "TextButton" then
					if playerIns.Name == "DisplayName" then
						tweenService:Create(playerIns, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					else
						tweenService:Create(playerIns, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					end
				elseif playerIns.ClassName == "ImageLabel" or playerIns.ClassName == "ImageButton" then
					tweenService:Create(playerIns, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
					if playerIns.Name == "Avatar" then tweenService:Create(playerIns, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play() end
				elseif playerIns.ClassName == "UIStroke" then
					tweenService:Create(playerIns, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
				end
			end

			tweenService:Create(playerlistPanel.Interactions.SearchFrame, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
			tweenService:Create(playerlistPanel.Interactions.SearchFrame.Icon, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			tweenService:Create(playerlistPanel.Interactions.SearchFrame.SearchBox, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			tweenService:Create(playerlistPanel.Interactions.SearchFrame.UIStroke, TweenInfo.new(0.15, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
			tweenService:Create(playerlistPanel.Interactions.List, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ScrollBarImageTransparency = 1}):Play()

		end
		
		tweenService:Create(panel.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		tweenService:Create(panel.Title, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		tweenService:Create(panel.UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		tweenService:Create(panel.Shadow, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		task.wait(0.03)

		tweenService:Create(panel, TweenInfo.new(0.75, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
		tweenService:Create(panel, TweenInfo.new(1.1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = button.Size}):Play()
		tweenService:Create(panel, TweenInfo.new(0.65, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = siriusValues.buttonPositions[panelName]}):Play()
		tweenService:Create(toggle, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 1, -85)}):Play()
	end

	-- Animate interactive elements
	if openingOther then
		tweenService:Create(panel, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5, 350, 1, -90)}):Play()
		wipeTransparency(panel, 1, true, true, 0.3)
	end

	task.wait(0.5)
	panel.Size = panelSize
	panel.Visible = false

	debounce = false
end

local function openPanel(panelName)
	if debounce then return end
	debounce = true

	local button = smartBar.Buttons:FindFirstChild(panelName)
	local panel = UI:FindFirstChild(panelName)

	if not isPanel(panelName) then return end
	if not (panel and button) then return end

	for _, otherPanel in ipairs(UI:GetChildren()) do
		if smartBar.Buttons:FindFirstChild(otherPanel.Name) then
			if isPanel(otherPanel.Name) and otherPanel.Visible then
				task.spawn(closePanel, otherPanel.Name, true)
				task.wait()
			end
		end
	end

	local panelSize = UDim2.new(0, 581, 0, 246)

	panel.Size = button.Size
	panel.Position = siriusValues.buttonPositions[panelName]

	wipeTransparency(panel, 1, true)

	panel.Visible = true

	tweenService:Create(toggle, TweenInfo.new(0.65, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5, 0, 1, -(panelSize.Y.Offset + 95))}):Play()

	tweenService:Create(panel, TweenInfo.new(0.1, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	tweenService:Create(panel, TweenInfo.new(0.8, Enum.EasingStyle.Exponential), {Size = panelSize}):Play()
	tweenService:Create(panel, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5, 0, 1, -90)}):Play()
	task.wait(0.1)
	tweenService:Create(panel.Shadow, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
	tweenService:Create(panel.Icon, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
	task.wait(0.05)
	tweenService:Create(panel.Title, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	tweenService:Create(panel.UIStroke, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {Transparency = 0.95}):Play()
	task.wait(0.05)

	-- Animate interactive elements
	if panel.Name == "Character" then -- Character Panel Animation

		tweenService:Create(characterPanel.Interactions.PropertiesTitle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0.65}):Play()

		local sliderInfo = {}
		for _, slider in ipairs(characterPanel.Interactions.Sliders:GetChildren()) do
			if slider.ClassName == "Frame" then 
				table.insert(sliderInfo, {slider.Name, slider.Progress.Size, slider.Information.Text})
				slider.Progress.Size = UDim2.new(0, 0, 1, 0)
				slider.Progress.BackgroundTransparency = 0

				tweenService:Create(slider, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.8}):Play()
				tweenService:Create(slider.UIStroke, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Transparency = 0.5}):Play()
				tweenService:Create(slider.Shadow, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {ImageTransparency = 0.6}):Play()
				tweenService:Create(slider.Information, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
			end
		end

		for _, sliderV in pairs(sliderInfo) do
			if characterPanel.Interactions.Sliders:FindFirstChild(sliderV[1]) then
				local slider = characterPanel.Interactions.Sliders:FindFirstChild(sliderV[1])
				local tweenValue = Instance.new("IntValue", UI)
				local tweenTo
				local name

				for _, sliderFound in ipairs(siriusValues.sliders) do
					if sliderFound.name.." Slider" == slider.Name then
						tweenTo = sliderFound.value
						name = sliderFound.name
						break
					end
				end

				tweenService:Create(slider.Progress, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = sliderV[2]}):Play()

				local function animateNumber(n)
					tweenService:Create(tweenValue, TweenInfo.new(0.35, Enum.EasingStyle.Exponential), {Value = n}):Play()
					task.delay(0.4, tweenValue.Destroy, tweenValue)
				end

				tweenValue:GetPropertyChangedSignal("Value"):Connect(function()
					slider.Information.Text = tostring(tweenValue.Value).." "..name
				end)

				animateNumber(tweenTo)
			end
		end

		tweenService:Create(characterPanel.Interactions.Reset, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
		tweenService:Create(characterPanel.Interactions.ActionsTitle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0.65}):Play()

		for _, gridButton in ipairs(characterPanel.Interactions.Grid:GetChildren()) do
			if gridButton.ClassName == "Frame" then 
				for _, action in ipairs(siriusValues.actions) do
					if action.name == gridButton.Name then
						if action.enabled then
							tweenService:Create(gridButton, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
							tweenService:Create(gridButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
							tweenService:Create(gridButton.Icon, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {ImageTransparency = 0.1}):Play()
						else
							tweenService:Create(gridButton, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.55}):Play()
							tweenService:Create(gridButton.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.4}):Play()
							tweenService:Create(gridButton.Icon, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {ImageTransparency = 0.5}):Play()
						end
						break
					end
				end

				tweenService:Create(gridButton.Shadow, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0.6}):Play()
			end
		end

		tweenService:Create(characterPanel.Interactions.Serverhop, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
		tweenService:Create(characterPanel.Interactions.Serverhop.Title, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0.5}):Play()
		tweenService:Create(characterPanel.Interactions.Serverhop.UIStroke, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Transparency = 0}):Play()

		tweenService:Create(characterPanel.Interactions.Rejoin, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
		tweenService:Create(characterPanel.Interactions.Rejoin.Title, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0.5}):Play()
		tweenService:Create(characterPanel.Interactions.Rejoin.UIStroke, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Transparency = 0}):Play()

	elseif panel.Name == "Scripts" then -- Scripts Panel Animation

		for _, scriptButton in ipairs(scriptsPanel.Interactions.Selection:GetChildren()) do
			if scriptButton.ClassName == "Frame" then
				tweenService:Create(scriptButton, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				if scriptButton:FindFirstChild('Icon') then tweenService:Create(scriptButton.Icon, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play() end
				tweenService:Create(scriptButton.Title, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				if scriptButton:FindFirstChild('Subtitle') then	tweenService:Create(scriptButton.Subtitle, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play() end
				tweenService:Create(scriptButton.UIStroke, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {Transparency = 0.2}):Play()
			end
		end

	elseif panel.Name == "Playerlist" then -- Playerlist Panel Animation

		for _, playerIns in ipairs(playerlistPanel.Interactions.List:GetDescendants()) do
			if playerIns.Name ~= "Interact" and playerIns.Name ~= "Role" then 
				if playerIns.ClassName == "Frame" then
					tweenService:Create(playerIns, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
				elseif playerIns.ClassName == "TextLabel" or playerIns.ClassName == "TextButton" then
					tweenService:Create(playerIns, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				elseif playerIns.ClassName == "ImageLabel" or playerIns.ClassName == "ImageButton" then
					tweenService:Create(playerIns, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
					if playerIns.Name == "Avatar" then tweenService:Create(playerIns, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play() end
				elseif playerIns.ClassName == "UIStroke" then
					tweenService:Create(playerIns, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				end
			end
		end

		tweenService:Create(playerlistPanel.Interactions.SearchFrame, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		tweenService:Create(playerlistPanel.Interactions.SearchFrame.Icon, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		task.wait(0.01)
		tweenService:Create(playerlistPanel.Interactions.SearchFrame.SearchBox, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		tweenService:Create(playerlistPanel.Interactions.SearchFrame.UIStroke, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {Transparency = 0.2}):Play()
		task.wait(0.05)
		tweenService:Create(playerlistPanel.Interactions.List, TweenInfo.new(0.35, Enum.EasingStyle.Quint), {ScrollBarImageTransparency = 0.7}):Play()

	end

	task.wait(0.45)
	debounce = false
end

local function rejoin()
	queueNotification("Rejoining Session", "We're queueing a rejoin to this session, give us a moment.", 4400696294)

	if #players:GetPlayers() <= 1 then
		task.wait()
		teleportService:Teleport(placeId, localPlayer)
	else
		teleportService:TeleportToPlaceInstance(placeId, jobId, localPlayer)
	end
end

local function serverhop()
	local highestPlayers = 0
	local servers = {}

	for _, v in ipairs(httpService:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= jobId then
			if v.playing > highestPlayers then
				highestPlayers = v.playing
				servers[1] = v.id
			end
		end
	end

	if #servers > 0 then
		queueNotification("Teleporting", "We're now moving you to the new session, this may take a few seconds.", 4335479121)
		task.wait(0.3)
		teleportService:TeleportToPlaceInstance(placeId, servers[1])
	else
		return queueNotification("No Servers Found", "We couldn't find another server, this may be the only server.", 4370317928)
	end

end

local function ensureFrameProperties()
	UI.Enabled = true
	characterPanel.Visible = false
	customScriptPrompt.Visible = false
	disconnectedPrompt.Visible = false
	playerlistPanel.Interactions.List.Template.Visible = false
	gameDetectionPrompt.Visible = false
	homeContainer.Visible = false
	moderatorDetectionPrompt.Visible = false
	musicPanel.Visible = false
	notificationContainer.Visible = true
	playerlistPanel.Visible = false
	scriptSearch.Visible = false
	scriptsPanel.Visible = false
	settingsPanel.Visible = false
	smartBar.Visible = false
	musicPanel.Playing.Text = "Not Playing"
	if not getcustomasset then smartBar.Buttons.Music.Visible = false end
	toastsContainer.Visible = true
	makeDraggable(settingsPanel)
	makeDraggable(musicPanel)
end

local function checkFriends()
	if friendsCooldown == 0 then

		friendsCooldown = 25

		local playersFriends = {}
		local success, page = pcall(players.GetFriendsAsync, players, localPlayer.UserId)

		if success then
			repeat
				local info = page:GetCurrentPage()
				for i, friendInfo in pairs(info) do
					table.insert(playersFriends, friendInfo)
				end
				if not page.IsFinished then 
					page:AdvanceToNextPageAsync()
				end
			until page.IsFinished
		end

		local friendsInTotal = 0
		local onlineFriends = 0 
		local friendsInGame = 0 

		for i,v in pairs(playersFriends) do
			friendsInTotal  = friendsInTotal + 1

			if v.IsOnline then
				onlineFriends = onlineFriends + 1
			end

			if players:FindFirstChild(v.Username) then
				friendsInGame = friendsInGame + 1
			end
		end

		if not checkSirius() then return end

		homeContainer.Interactions.Friends.All.Value.Text = tostring(friendsInTotal).." friends"
		homeContainer.Interactions.Friends.Offline.Value.Text = tostring(friendsInTotal - onlineFriends).." friends"
		homeContainer.Interactions.Friends.Online.Value.Text = tostring(onlineFriends).." friends"
		homeContainer.Interactions.Friends.InGame.Value.Text = tostring(friendsInGame).." friends"

	else
		friendsCooldown -= 1
	end
end

function promptModerator(player, role)
	local serversAvailable = false
	local promptClosed = false

	if moderatorDetectionPrompt.Visible then return end

	moderatorDetectionPrompt.Size = UDim2.new(0, 283, 0, 175)
	moderatorDetectionPrompt.UIGradient.Offset = Vector2.new(0, 1)
	wipeTransparency(moderatorDetectionPrompt, 1, true)

	moderatorDetectionPrompt.DisplayName.Text = player.DisplayName
	moderatorDetectionPrompt.Rank.Text = role
	moderatorDetectionPrompt.Avatar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=420&height=420&format=png"

	moderatorDetectionPrompt.Visible = true

	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			serversAvailable = true
		end
	end

	if not serversAvailable then
		moderatorDetectionPrompt.Serverhop.Visible = false
	else
		moderatorDetectionPrompt.ServersAvailableFade.Visible = true
	end

	tweenService:Create(moderatorDetectionPrompt, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	tweenService:Create(moderatorDetectionPrompt, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 300, 0, 186)}):Play()
	tweenService:Create(moderatorDetectionPrompt.UIGradient, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Offset = Vector2.new(0, 0.65)}):Play()
	tweenService:Create(moderatorDetectionPrompt.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	tweenService:Create(moderatorDetectionPrompt.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	tweenService:Create(moderatorDetectionPrompt.Avatar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
	tweenService:Create(moderatorDetectionPrompt.Avatar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
	tweenService:Create(moderatorDetectionPrompt.DisplayName, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	tweenService:Create(moderatorDetectionPrompt.Rank, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	tweenService:Create(moderatorDetectionPrompt.Serverhop, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
	tweenService:Create(moderatorDetectionPrompt.Leave, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
	task.wait(0.2)
	tweenService:Create(moderatorDetectionPrompt.Serverhop, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	tweenService:Create(moderatorDetectionPrompt.Leave, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	task.wait(0.3)
	tweenService:Create(moderatorDetectionPrompt.Close, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.6}):Play()

	local function closeModPrompt()
		tweenService:Create(moderatorDetectionPrompt, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 283, 0, 175)}):Play()
		tweenService:Create(moderatorDetectionPrompt.UIGradient, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Offset = Vector2.new(0, 1)}):Play()
		tweenService:Create(moderatorDetectionPrompt.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.Avatar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.Avatar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.DisplayName, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.Rank, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.Serverhop, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.Leave, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.Serverhop, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.Leave, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		tweenService:Create(moderatorDetectionPrompt.Close, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		task.wait(0.5)
		moderatorDetectionPrompt.Visible = false
	end

	moderatorDetectionPrompt.Leave.MouseButton1Click:Connect(function()
		closeModPrompt()
		game:Shutdown()
	end)

	moderatorDetectionPrompt.Serverhop.MouseEnter:Connect(function()
		tweenService:Create(moderatorDetectionPrompt.ServersAvailableFade, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
	end)

	moderatorDetectionPrompt.Serverhop.MouseLeave:Connect(function()
		tweenService:Create(moderatorDetectionPrompt.ServersAvailableFade, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
	end)

	moderatorDetectionPrompt.Serverhop.MouseButton1Click:Connect(function()
		if promptClosed then return end
		serverhop()
		closeModPrompt()
	end)

	moderatorDetectionPrompt.Close.MouseButton1Click:Connect(function()
		closeModPrompt()
		promptClosed = true
	end)
end

local function UpdateHome()
	if not checkSirius() then return end

	local function format(Int)
		return string.format("%02i", Int)
	end

	local function convertToHMS(Seconds)
		local Minutes = (Seconds - Seconds%60)/60
		Seconds = Seconds - Minutes*60
		local Hours = (Minutes - Minutes%60)/60
		Minutes = Minutes - Hours*60
		return format(Hours)..":"..format(Minutes)..":"..format(Seconds)
	end

	-- Home Title
	homeContainer.Title.Text = "Welcome home, "..localPlayer.DisplayName

	-- Players
	homeContainer.Interactions.Server.Players.Value.Text = #players:GetPlayers().." playing"
	homeContainer.Interactions.Server.MaxPlayers.Value.Text = players.MaxPlayers.." players can join this server"

	-- Ping
	homeContainer.Interactions.Server.Latency.Value.Text = math.floor(getPing()).."ms"

	-- Time
	homeContainer.Interactions.Server.Time.Value.Text = convertToHMS(time())

	-- Region
	homeContainer.Interactions.Server.Region.Value.Text = "Unable to retrieve region"

	-- Player Information
	homeContainer.Interactions.User.Avatar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..localPlayer.UserId.."&width=420&height=420&format=png"
	homeContainer.Interactions.User.Title.Text = localPlayer.DisplayName
	homeContainer.Interactions.User.Subtitle.Text = localPlayer.Name

	-- Update Executor
	homeContainer.Interactions.Client.Title.Text = identifyexecutor()
	if not table.find(siriusValues.executors, string.lower(identifyexecutor())) then
		homeContainer.Interactions.Client.Subtitle.Text = "This executor is not verified as supported."
	end

	-- Update Friends Statuses
	checkFriends()
end

local function openHome()
	if debounce then return end
	debounce = true
	homeContainer.Visible = true

	local homeBlur = Instance.new("BlurEffect", lighting)
	homeBlur.Size = 0
	homeBlur.Name = "HomeBlur"

	homeContainer.BackgroundTransparency = 1
	homeContainer.Title.TextTransparency = 1
	homeContainer.Subtitle.TextTransparency = 1

	for _, homeItem in ipairs(homeContainer.Interactions:GetChildren()) do

		wipeTransparency(homeItem, 1, true)

		homeItem.Position = UDim2.new(0, homeItem.Position.X.Offset - 20, 0, homeItem.Position.Y.Offset - 20)
		homeItem.Size = UDim2.new(0, homeItem.Size.X.Offset + 30, 0, homeItem.Size.Y.Offset + 20)

		if homeItem.UIGradient.Offset.Y > 0 then
			homeItem.UIGradient.Offset = Vector2.new(0, homeItem.UIGradient.Offset.Y + 3)
			homeItem.UIStroke.UIGradient.Offset = Vector2.new(0, homeItem.UIStroke.UIGradient.Offset.Y + 3)
		else
			homeItem.UIGradient.Offset = Vector2.new(0, homeItem.UIGradient.Offset.Y - 3)
			homeItem.UIStroke.UIGradient.Offset = Vector2.new(0, homeItem.UIStroke.UIGradient.Offset.Y - 3)
		end
	end

	tweenService:Create(homeContainer, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.9}):Play()
	tweenService:Create(homeBlur, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Size = 5}):Play()

	tweenService:Create(camera, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {FieldOfView = camera.FieldOfView + 5}):Play()

	task.wait(0.25)

	for _, inGameUI in ipairs(localPlayer:FindFirstChildWhichIsA("PlayerGui"):GetChildren()) do
		if inGameUI:IsA("ScreenGui") then
			if inGameUI.Enabled then
				if not table.find(getgenv().cachedInGameUI, inGameUI.Name) then
					table.insert(getgenv().cachedInGameUI, #getgenv().cachedInGameUI+1, inGameUI.Name)
				end

				inGameUI.Enabled = false
			end
		end
	end

	table.clear(getgenv().cachedCoreUI)

	for _, coreUI in pairs({"PlayerList", "Chat", "EmotesMenu", "Health", "Backpack"}) do
		if game:GetService("StarterGui"):GetCoreGuiEnabled(coreUI) then
			table.insert(getgenv().cachedCoreUI, #getgenv().cachedCoreUI+1, coreUI)
		end
	end

	for _, coreUI in pairs(getgenv().cachedCoreUI) do
		game:GetService("StarterGui"):SetCoreGuiEnabled(coreUI, false)
	end

	createReverb(0.8)

	tweenService:Create(camera, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {FieldOfView = camera.FieldOfView - 40}):Play()

	tweenService:Create(homeContainer, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
	tweenService:Create(homeContainer.Title, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	tweenService:Create(homeContainer.Subtitle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
	tweenService:Create(homeBlur, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = 20}):Play()

	for _, homeItem in ipairs(homeContainer.Interactions:GetChildren()) do
		for _, otherHomeItem in ipairs(homeItem:GetDescendants()) do
			if otherHomeItem.ClassName == "Frame" then
				tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.7}):Play()
			elseif otherHomeItem.ClassName == "TextLabel" then
				if otherHomeItem.Name == "Title" then
					tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				else
					tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
				end
			elseif otherHomeItem.ClassName == "ImageLabel" then
				tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.8}):Play()
				tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
			end
		end

		tweenService:Create(homeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		tweenService:Create(homeItem.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
		tweenService:Create(homeItem, TweenInfo.new(0.5, Enum.EasingStyle.Back), {Position = UDim2.new(0, homeItem.Position.X.Offset + 20, 0, homeItem.Position.Y.Offset + 20)}):Play()
		tweenService:Create(homeItem, TweenInfo.new(0.5, Enum.EasingStyle.Back), {Size = UDim2.new(0, homeItem.Size.X.Offset - 30, 0, homeItem.Size.Y.Offset - 20)}):Play()

		task.delay(0.03, function()
			if homeItem.UIGradient.Offset.Y > 0 then
				tweenService:Create(homeItem.UIGradient, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Offset = Vector2.new(0, homeItem.UIGradient.Offset.Y - 3)}):Play()
				tweenService:Create(homeItem.UIStroke.UIGradient, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {Offset = Vector2.new(0, homeItem.UIStroke.UIGradient.Offset.Y - 3)}):Play()
			else
				tweenService:Create(homeItem.UIGradient, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Offset = Vector2.new(0, homeItem.UIGradient.Offset.Y + 3)}):Play()
				tweenService:Create(homeItem.UIStroke.UIGradient, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {Offset = Vector2.new(0, homeItem.UIStroke.UIGradient.Offset.Y + 3)}):Play()
			end
		end)

		task.wait(0.02)
	end

	task.wait(0.85)

	debounce = false
end

local function closeHome()
	if debounce then return end
	debounce = true

	tweenService:Create(camera, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {FieldOfView = camera.FieldOfView + 35}):Play()

	for _, obj in ipairs(lighting:GetChildren()) do
		if obj.Name == "HomeBlur" then
			tweenService:Create(obj, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = 0}):Play()
			task.delay(0.6, obj.Destroy, obj)
		end
	end

	tweenService:Create(homeContainer, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
	tweenService:Create(homeContainer.Title, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
	tweenService:Create(homeContainer.Subtitle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()

	for _, homeItem in ipairs(homeContainer.Interactions:GetChildren()) do
		for _, otherHomeItem in ipairs(homeItem:GetDescendants()) do
			if otherHomeItem.ClassName == "Frame" then
				tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
			elseif otherHomeItem.ClassName == "TextLabel" then
				if otherHomeItem.Name == "Title" then
					tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				else
					tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
				end
			elseif otherHomeItem.ClassName == "ImageLabel" then
				tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				tweenService:Create(otherHomeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			end
		end
		tweenService:Create(homeItem, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		tweenService:Create(homeItem.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
	end

	task.wait(0.2)

	for _, cachedInGameUIObject in pairs(getgenv().cachedInGameUI) do
		for _, currentPlayerUI in ipairs(localPlayer:FindFirstChildWhichIsA("PlayerGui"):GetChildren()) do
			if table.find(getgenv().cachedInGameUI, currentPlayerUI.Name) then
				currentPlayerUI.Enabled = true
			end 
		end
	end

	for _, coreUI in pairs(getgenv().cachedCoreUI) do
		game:GetService("StarterGui"):SetCoreGuiEnabled(coreUI, true)
	end

	removeReverbs(0.5)

	task.wait(0.52)

	homeContainer.Visible = false
	debounce = false
end


local function openScriptSearch()
	debounce = true

	scriptSearch.Size = UDim2.new(0, 480, 0, 23)
	scriptSearch.Position = UDim2.new(0.5, 0, 0.5, 0)
	scriptSearch.SearchBox.Position = UDim2.new(0.509, 0, 0.5, 0)
	scriptSearch.Icon.Position = UDim2.new(0.04, 0, 0.5, 0)
	scriptSearch.SearchBox.Text = ""
	scriptSearch.UIGradient.Offset = Vector2.new(0, 2)
	scriptSearch.SearchBox.PlaceholderText = "Search ScriptBlox.com"
	scriptSearch.List.Template.Visible = false
	scriptSearch.List.Visible = false
	scriptSearch.Visible = true

	wipeTransparency(scriptSearch, 1, true)

	tweenService:Create(scriptSearch, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
	tweenService:Create(scriptSearch, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Size = UDim2.new(0, 580, 0, 43)}):Play()
	tweenService:Create(scriptSearch.Shadow, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {ImageTransparency = 0.85}):Play()
	task.wait(0.03)
	tweenService:Create(scriptSearch.Icon, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {ImageTransparency = 0}):Play()
	task.wait(0.02)
	tweenService:Create(scriptSearch.SearchBox, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()


	task.wait(0.3)
	scriptSearch.SearchBox:CaptureFocus()
	task.wait(0.2)
	debounce = false
end

local function closeScriptSearch()
	debounce = true

	wipeTransparency(scriptSearch, 1, false)

	task.wait(0.1)

	scriptSearch.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	scriptSearch.UIGradient.Enabled = false
	tweenService:Create(scriptSearch, TweenInfo.new(0.4, Enum.EasingStyle.Quint),  {Size = UDim2.new(0, 520, 0, 0)}):Play()
	scriptSearch.SearchBox:ReleaseFocus()

	task.wait(0.5)

	for _, createdScript in ipairs(scriptSearch.List:GetChildren()) do
		if createdScript.Name ~= "Placeholder" and createdScript.Name ~= "Template" and createdScript.ClassName == "Frame" then
			createdScript:Destroy()
		end
	end

	task.wait(0.1)
	scriptSearch.BackgroundColor3 = Color3.fromRGB(255 ,255, 255)
	scriptSearch.Visible = false
	scriptSearch.UIGradient.Enabled = true
	debounce = false
end

local function createScript(result)
	local newScript = UI.ScriptSearch.List.Template:Clone()
	newScript.Name = result.title
	newScript.Parent = UI.ScriptSearch.List
	newScript.Visible = true

	for _, tag in ipairs(newScript.Tags:GetChildren()) do
		if tag.ClassName == "Frame" then
			tag.Shadow.ImageTransparency = 1
			tag.BackgroundTransparency = 1
			tag.Title.TextTransparency = 1
		end
	end

	task.spawn(function()
		local response

		local success, ErrorStatement = pcall(function()
			local responseRequest = httpRequest({
				Url = "https://www.scriptblox.com/api/script/"..result['slug'],
				Method = "GET"
			})

			response = httpService:JSONDecode(responseRequest.Body)
		end)

		newScript.ScriptDescription.Text = response.script.features

		local likes = response.script.likeCount
		local dislikes = response.script.dislikeCount

		if likes ~= dislikes then
			newScript.Tags.Review.Title.Text = (likes > dislikes) and "Positive Reviews" or "Negative Reviews"
			newScript.Tags.Review.BackgroundColor3 = (likes > dislikes) and Color3.fromRGB(0, 139, 102) or Color3.fromRGB(180, 0, 0)
			newScript.Tags.Review.Size = (likes > dislikes) and UDim2.new(0, 145, 1, 0) or UDim2.new(0, 150, 1, 0)
		elseif likes > 0 then
			newScript.Tags.Review.Title.Text = "Mixed Reviews"
			newScript.Tags.Review.BackgroundColor3 = Color3.fromRGB(198, 132, 0)
			newScript.Tags.Review.Size = UDim2.new(0, 130, 1, 0)
		else
			newScript.Tags.Review.Visible = false
		end

		newScript.ScriptAuthor.Text = "uploaded by "..response.script.owner.username
		newScript.Tags.Verified.Visible = response.script.owner.verified or false

		tweenService:Create(newScript, TweenInfo.new(.5, Enum.EasingStyle.Quint),  {BackgroundTransparency = 0.8}):Play()
		tweenService:Create(newScript.ScriptName, TweenInfo.new(.5, Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()
		tweenService:Create(newScript.Execute, TweenInfo.new(.5, Enum.EasingStyle.Quint),  {BackgroundTransparency = 0.8}):Play()
		tweenService:Create(newScript.Execute, TweenInfo.new(.5, Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()

		newScript.Tags.Visible = true

		tweenService:Create(newScript.ScriptDescription, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0.3}):Play()
		tweenService:Create(newScript.ScriptAuthor, TweenInfo.new(.5, Enum.EasingStyle.Quint),  {TextTransparency = 0.7}):Play()

		for _, tag in ipairs(newScript.Tags:GetChildren()) do
			if tag.ClassName == "Frame" then
				tweenService:Create(tag.Shadow, TweenInfo.new(.5, Enum.EasingStyle.Quint),  {ImageTransparency = 0.7}):Play()
				tweenService:Create(tag, TweenInfo.new(.5, Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
				tweenService:Create(tag.Title, TweenInfo.new(.5, Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()
			end
		end
	end)

	wipeTransparency(newScript, 1, true)

	newScript.ScriptName.Text = result.title


	newScript.Tags.Visible = false
	newScript.Tags.Patched.Visible = result.isPatched or false

	newScript.Execute.MouseButton1Click:Connect(function()
		queueNotification("ScriptSearch", "Running "..result.title.. " via ScriptSearch" , 4384403532)
		closeScriptSearch()
		loadstring(result.script)()
	end)
end

local function extractDomain(link)
	local domainToReturn = link:match("([%w-_]+%.[%w-_%.]+)")
	return domainToReturn
end

local function securityDetection(title, content, link, gradient, actions)
	if not checkSirius() then return end

	local domain = extractDomain(link) or link
	checkFolder()
	local currentAllowlist = isfile and isfile(siriusValues.siriusFolder.."/".."allowedLinks.srs") and readfile(siriusValues.siriusFolder.."/".."allowedLinks.srs") or nil
	if currentAllowlist then currentAllowlist = httpService:JSONDecode(currentAllowlist) if table.find(currentAllowlist, domain) then return true end end

	local newSecurityPrompt = securityPrompt:Clone()

	newSecurityPrompt.Parent = UI
	newSecurityPrompt.Name = link

	wipeTransparency(newSecurityPrompt, 1, true)
	newSecurityPrompt.Size = UDim2.new(0, 478, 0, 150)

	newSecurityPrompt.Title.Text = title
	newSecurityPrompt.Subtitle.Text = content
	newSecurityPrompt.FoundLink.Text = domain

	newSecurityPrompt.Visible = true
	newSecurityPrompt.UIGradient.Color = gradient

	newSecurityPrompt.Buttons.Template.Visible = false

	local function closeSecurityPrompt()
		tweenService:Create(newSecurityPrompt, TweenInfo.new(0.52, Enum.EasingStyle.Quint),  {Size = UDim2.new(0, 500, 0, 165)}):Play()
		tweenService:Create(newSecurityPrompt, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {BackgroundTransparency = 1}):Play()
		tweenService:Create(newSecurityPrompt.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()
		tweenService:Create(newSecurityPrompt.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()
		tweenService:Create(newSecurityPrompt.FoundLink, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()


		for _, button in ipairs(newSecurityPrompt.Buttons:GetChildren()) do
			if button.Name ~= "Template" and button.ClassName == "TextButton" then
				tweenService:Create(button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),  {BackgroundTransparency = 1}):Play()
				tweenService:Create(button, TweenInfo.new(0.3, Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()
			end
		end
		task.wait(0.55)
		newSecurityPrompt:Destroy()
	end

	local decision

	for _, action in ipairs(actions) do
		local newAction = newSecurityPrompt.Buttons.Template:Clone()
		newAction.Name = action[1]
		newAction.Text = action[1]
		newAction.Parent = newSecurityPrompt.Buttons
		newAction.Visible = true
		newAction.Size = UDim2.new(0, newAction.TextBounds.X + 50, 0, 36) -- textbounds

		newAction.MouseButton1Click:Connect(function()
			if action[2] then
				if action[3] then
					checkFolder()
					if currentAllowlist then
						table.insert(currentAllowlist, domain)
						writefile(siriusValues.siriusFolder.."/".."allowedLinks.srs", httpService:JSONEncode(currentAllowlist))
					else
						writefile(siriusValues.siriusFolder.."/".."allowedLinks.srs", httpService:JSONEncode({domain}))
					end
				end
				decision = true
			else
				decision = false
			end

			closeSecurityPrompt()
		end)
	end

	tweenService:Create(newSecurityPrompt, TweenInfo.new(0.4, Enum.EasingStyle.Quint),  {Size = UDim2.new(0, 576, 0, 181)}):Play()
	tweenService:Create(newSecurityPrompt, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
	tweenService:Create(newSecurityPrompt.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()
	tweenService:Create(newSecurityPrompt.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {TextTransparency = 0.3}):Play()
	task.wait(0.03)
	tweenService:Create(newSecurityPrompt.FoundLink, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {TextTransparency = 0.2}):Play()

	task.wait(0.1)

	for _, button in ipairs(newSecurityPrompt.Buttons:GetChildren()) do
		if button.Name ~= "Template" and button.ClassName == "TextButton" then
			tweenService:Create(button, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {BackgroundTransparency = 0.7}):Play()
			tweenService:Create(button, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {TextTransparency = 0.05}):Play()
			task.wait(0.1)
		end
	end

	newSecurityPrompt.FoundLink.MouseEnter:Connect(function()
		newSecurityPrompt.FoundLink.Text = link
		tweenService:Create(newSecurityPrompt.FoundLink, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {TextTransparency = 0.4}):Play()
	end)

	newSecurityPrompt.FoundLink.MouseLeave:Connect(function()
		newSecurityPrompt.FoundLink.Text = domain
		tweenService:Create(newSecurityPrompt.FoundLink, TweenInfo.new(0.5, Enum.EasingStyle.Quint),  {TextTransparency = 0.2}):Play()
	end)

	repeat task.wait() until decision
	return decision
end

if Essential or Pro then
	getgenv()[index] = function(data)
		if checkSirius() and checkSetting("Intelligent HTTP Interception").current then
			local title = "Do you trust this source?"
			local content = "Sirius has prevented data from being sent off-client, would you like to allow data to be sent or retrieved from this source?"
			local url = data.Url or "Unknown Link"
			local gradient = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),ColorSequenceKeypoint.new(1, Color3.new(0.764706, 0.305882, 0.0941176))})
			local actions = {{"Always Allow", true, true}, {"Allow just this once", true}, {"Don't Allow", false}}

			if url == "http://127.0.0.1:6463/rpc?v=1" then
				local bodyDecoded = httpService:JSONDecode(data.Body)

				if bodyDecoded.cmd == "INVITE_BROWSER" then
					title = "Would you like to join this Discord server?"
					content = "Sirius has prevented your Discord client from automatically joining this Discord server, would you like to continue and join, or block it?"
					url = bodyDecoded.args and "discord.gg/"..bodyDecoded.args.code or "Unknown Invite"
					gradient = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),ColorSequenceKeypoint.new(1, Color3.new(0.345098, 0.396078, 0.94902))})
					actions = {{"Allow", true}, {"Don't Allow", false}}
				end
			end

			local answer = securityDetection(title, content, url, gradient, actions)


			if answer then 
				return originalRequest(data)
			else
				return
			end
		else
			return originalRequest(data)
		end
	end

	getgenv()[indexSetClipboard] = function(data)
		if checkSirius() and checkSetting("Intelligent Clipboard Interception").current then
			local title = "Would you like to copy this to your clipboard?"
			local content = "Sirius has prevented a script from setting the below text to your clipboard, would you like to allow this, or prevent it from copying?"
			local url = data or "Unknown Clipboard"
			local gradient = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),ColorSequenceKeypoint.new(1, Color3.new(0.776471, 0.611765, 0.529412))})
			local actions = {{"Allow", true}, {"Don't Allow", false}}

			local answer = securityDetection(title, content, url, gradient, actions)

			if answer then 
				return originalSetClipboard(data)
			else
				return
			end
		else
			return originalSetClipboard(data)
		end
	end
end


local function searchScriptBlox(query)
	local response

	local success, ErrorStatement = pcall(function()
		local responseRequest = httpRequest({
			Url = "https://scriptblox.com/api/script/search?q="..httpService:UrlEncode(query).."&mode=free&max=20&page=1",
			Method = "GET"
		})

		response = httpService:JSONDecode(responseRequest.Body)
	end)

	if not success then
		queueNotification("ScriptSearch", "ScriptSearch backend encountered an error, try again later", 4384402990)
		closeScriptSearch()
		return
	end

	tweenService:Create(scriptSearch.NoScriptsTitle, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()
	tweenService:Create(scriptSearch.NoScriptsDesc, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 1}):Play()

	for _, createdScript in ipairs(scriptSearch.List:GetChildren()) do
		if createdScript.Name ~= "Placeholder" and createdScript.Name ~= "Template" and createdScript.ClassName == "Frame" then
			wipeTransparency(createdScript, 1, true)
		end
	end

	scriptSearch.List.Visible = true
	task.wait(0.5)

	scriptSearch.List.CanvasPosition = Vector2.new(0,0)

	for _, createdScript in ipairs(scriptSearch.List:GetChildren()) do
		if createdScript.Name ~= "Placeholder" and createdScript.Name ~= "Template" and createdScript.ClassName == "Frame" then
			createdScript:Destroy()
		end
	end

	tweenService:Create(scriptSearch, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Size = UDim2.new(0, 580, 0, 529)}):Play()
	tweenService:Create(scriptSearch.Icon, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Position = UDim2.new(0.054, 0, 0.056, 0)}):Play()
	tweenService:Create(scriptSearch.SearchBox, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Position = UDim2.new(0.523, 0, 0.056, 0)}):Play()
	tweenService:Create(scriptSearch.UIGradient, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Offset = Vector2.new(0, 0.6)}):Play()

	if response then
		local scriptCreated = false
		for _, scriptResult in pairs(response.result.scripts) do
			local success, response = pcall(function()
				createScript(scriptResult)
			end)

			scriptCreated = true
		end

		if not scriptCreated then
			task.wait(0.2)
			tweenService:Create(scriptSearch.NoScriptsTitle, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()
			task.wait(0.1)
			tweenService:Create(scriptSearch.NoScriptsDesc, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()
		else
			tweenService:Create(scriptSearch.List, TweenInfo.new(.3,Enum.EasingStyle.Quint),  {ScrollBarImageTransparency = 0}):Play()
		end
	else
		queueNotification("ScriptSearch", "ScriptSearch backend encountered an error, try again later", 4384402990)
		closeScriptSearch()
		return
	end
end

local function openSmartBar()
	smartBarOpen = true

	coreGui.RobloxGui.Backpack.Position = UDim2.new(0,0,0,0)

	-- Set Values for frame properties
	smartBar.BackgroundTransparency = 1
	smartBar.Time.TextTransparency = 1
	smartBar.UIStroke.Transparency = 1
	smartBar.Shadow.ImageTransparency = 1
	smartBar.Visible = true
	smartBar.Position = UDim2.new(0.5, 0, 1.05, 0)
	smartBar.Size = UDim2.new(0, 531, 0, 64)
	toggle.Rotation = 180
	toggle.Visible = not checkSetting("Hide Toggle Button").current

	if checkTools() then
		toggle.Position = UDim2.new(0.5,0,1,-68)
	else
		toggle.Position = UDim2.new(0.5, 0, 1, -5)
	end

	for _, button in ipairs(smartBar.Buttons:GetChildren()) do
		button.UIGradient.Rotation = -120
		button.UIStroke.UIGradient.Rotation = -120
		button.Size = UDim2.new(0,30,0,30)
		button.Position = UDim2.new(button.Position.X.Scale, 0, 1.3, 0)
		button.BackgroundTransparency = 1
		button.UIStroke.Transparency = 1
		button.Icon.ImageTransparency = 1
	end

	tweenService:Create(coreGui.RobloxGui.Backpack, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(-0.325,0,0,0)}):Play()

	tweenService:Create(toggle, TweenInfo.new(0.82, Enum.EasingStyle.Quint), {Rotation = 0}):Play()
	tweenService:Create(smartBar, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5, 0, 1, -12)}):Play()
	tweenService:Create(toastsContainer, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5, 0, 1, -110)}):Play()
	tweenService:Create(toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5, 0, 1, -85)}):Play()
	tweenService:Create(smartBar, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0,581,0,70)}):Play()
	tweenService:Create(smartBar, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	tweenService:Create(smartBar.Shadow, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
	tweenService:Create(smartBar.Time, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	tweenService:Create(smartBar.UIStroke, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Transparency = 0.95}):Play()
	tweenService:Create(toggle, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()

	for _, button in ipairs(smartBar.Buttons:GetChildren()) do
		tweenService:Create(button.UIStroke, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
		tweenService:Create(button, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 36, 0, 36)}):Play()
		tweenService:Create(button.UIGradient, TweenInfo.new(1, Enum.EasingStyle.Quint), {Rotation = 50}):Play()
		tweenService:Create(button.UIStroke.UIGradient, TweenInfo.new(1, Enum.EasingStyle.Quint), {Rotation = 50}):Play()
		tweenService:Create(button, TweenInfo.new(0.8, Enum.EasingStyle.Exponential), {Position = UDim2.new(button.Position.X.Scale, 0, 0.5, 0)}):Play()
		tweenService:Create(button, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		tweenService:Create(button.Icon, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		task.wait(0.03)
	end
end

local function closeSmartBar()
	smartBarOpen = false

	for _, otherPanel in ipairs(UI:GetChildren()) do
		if smartBar.Buttons:FindFirstChild(otherPanel.Name) then
			if isPanel(otherPanel.Name) and otherPanel.Visible then
				task.spawn(closePanel, otherPanel.Name, true)
				task.wait()
			end
		end
	end

	tweenService:Create(smartBar.Time, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
	for _, Button in ipairs(smartBar.Buttons:GetChildren()) do
		tweenService:Create(Button.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		tweenService:Create(Button, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 30, 0, 30)}):Play()
		tweenService:Create(Button, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		tweenService:Create(Button.Icon, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
	end

	tweenService:Create(coreGui.RobloxGui.Backpack, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 0, 0, 0)}):Play()

	tweenService:Create(smartBar, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
	tweenService:Create(smartBar.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
	tweenService:Create(smartBar.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
	tweenService:Create(smartBar, TweenInfo.new(0.5, Enum.EasingStyle.Back), {Size = UDim2.new(0,531,0,64)}):Play()
	tweenService:Create(smartBar, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0,1, 73)}):Play()

	-- If tools, move the toggle
	if checkTools() then
		tweenService:Create(toggle, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5,0,1,-68)}):Play()
		tweenService:Create(toastsContainer, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 1, -90)}):Play()
		tweenService:Create(toggle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Rotation = 180}):Play()
	else
		tweenService:Create(toastsContainer, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 1, -28)}):Play()
		tweenService:Create(toggle, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 1, -5)}):Play()
		tweenService:Create(toggle, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation = 180}):Play()
	end
end

local function windowFocusChanged(value)
	if checkSirius() then
		if value then -- Window Focused
			setfpscap(tonumber(checkSetting("Artificial FPS Limit").current))
			removeReverbs(0.5)
		else          -- Window unfocused
			if checkSetting("Muffle audio while unfocused").current then createReverb(0.7) end
			if checkSetting("Limit FPS while unfocused").current then setfpscap(60) end
		end
	end
end

local function onChatted(player, message)
	local enabled = checkSetting("Chat Spy").current and siriusValues.chatSpy.enabled
	local chatSpyVisuals = siriusValues.chatSpy.visual

	if not message or not checkSirius() then return end

	if enabled and player ~= localPlayer then
		local message2 = message:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
		local hidden = true

		local get = getMessage.OnClientEvent:Connect(function(packet, channel)
			if packet.SpeakerUserId == player.UserId and packet.Message == message2:sub(#message2-#packet.Message+1) and (channel=="All" or (channel=="Team" and players[packet.FromSpeaker].Team == localPlayer.Team)) then
				hidden = false
			end
		end)

		task.wait(1)

		get:Disconnect()

		if hidden and enabled then
			chatSpyVisuals.Text = "Sirius Spy - [".. player.Name .."]: "..message2
			starterGui:SetCore("ChatMakeSystemMessage", chatSpyVisuals)
		end
	end

	if checkSetting("Log Messages").current then
		local logData = {
			["content"] = message,
			["avatar_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=420&height=420&format=png",
			["username"] = player.DisplayName,
			["allowed_mentions"] = {parse = {}}
		}

		logData = httpService:JSONEncode(logData)

		pcall(function()
			local req = originalRequest({
				Url = checkSetting("Message Webhook URL").current,
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json',
				},
				Body = logData
			})
		end)
	end
end

local function sortPlayers()
	local newTable = playerlistPanel.Interactions.List:GetChildren()

	for index, player in ipairs(newTable) do
		if player.ClassName ~= "Frame" or player.Name == "Placeholder" then
			table.remove(newTable, index)
		end
	end

	table.sort(newTable, function(playerA, playerB)
		return playerA.Name < playerB.Name
	end)

	for index, frame in ipairs(newTable) do
		if frame.ClassName == "Frame" then
			if frame.Name ~= "Placeholder" then
				frame.LayoutOrder = index 
			end
		end
	end
end

local function kill(player)
	-- kill
end

local function teleportTo(player)
	if players:FindFirstChild(player.Name) then
		queueNotification("Teleportation", "Teleporting to "..player.DisplayName..".")

		local target = workspace:FindFirstChild(player.Name).HumanoidRootPart
		localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(target.Position.X, target.Position.Y, target.Position.Z)
	else
		queueNotification("Teleportation Error", player.DisplayName.." has left this server.")
	end
end

local function createPlayer(player)
	if not checkSirius() then return end

	if playerlistPanel.Interactions.List:FindFirstChild(player.DisplayName) then return end

	local newPlayer = playerlistPanel.Interactions.List.Template:Clone()
	newPlayer.Name = player.DisplayName
	newPlayer.Parent = playerlistPanel.Interactions.List
	newPlayer.Visible = not searchingForPlayer

	newPlayer.NoActions.Visible = false
	newPlayer.PlayerInteractions.Visible = false
	newPlayer.Role.Visible = false

	newPlayer.Size = UDim2.new(0, 539, 0, 45)
	newPlayer.DisplayName.Position = UDim2.new(0, 53, 0.5, 0)
	newPlayer.DisplayName.Size = UDim2.new(0, 224, 0, 16)
	newPlayer.Avatar.Size = UDim2.new(0, 30, 0, 30)

	sortPlayers()

	newPlayer.DisplayName.TextTransparency = 0
	newPlayer.DisplayName.TextScaled = true
	newPlayer.DisplayName.FontFace.Weight = Enum.FontWeight.Medium
	newPlayer.DisplayName.Text = player.DisplayName
	newPlayer.Avatar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=420&height=420&format=png"

	if creatorType == Enum.CreatorType.Group then
		task.spawn(function()
			local role = player:GetRoleInGroup(creatorId)
			if role == "Guest" then
				newPlayer.Role.Text = "Group Rank: None"
			else
				newPlayer.Role.Text = "Group Rank: "..role
			end

			newPlayer.Role.Visible = true
			newPlayer.Role.TextTransparency = 1
		end)
	end

	local function openInteractions()
		if newPlayer.PlayerInteractions.Visible then return end

		newPlayer.PlayerInteractions.BackgroundTransparency = 1
		for _, interaction in ipairs(newPlayer.PlayerInteractions:GetChildren()) do
			if interaction.ClassName == "Frame" and interaction.Name ~= "Placeholder" then
				interaction.BackgroundTransparency = 1
				interaction.Shadow.ImageTransparency = 1
				interaction.Icon.ImageTransparency = 1
				interaction.UIStroke.Transparency = 1
			end
		end

		newPlayer.PlayerInteractions.Visible = true

		for _, interaction in ipairs(newPlayer.PlayerInteractions:GetChildren()) do
			if interaction.ClassName == "Frame" and interaction.Name ~= "Placeholder" then
				tweenService:Create(interaction.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				tweenService:Create(interaction.Icon, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
				tweenService:Create(interaction.Shadow, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
				tweenService:Create(interaction, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			end
		end
	end

	local function closeInteractions()
		if not newPlayer.PlayerInteractions.Visible then return end
		for _, interaction in ipairs(newPlayer.PlayerInteractions:GetChildren()) do
			if interaction.ClassName == "Frame" and interaction.Name ~= "Placeholder" then
				tweenService:Create(interaction.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
				tweenService:Create(interaction.Icon, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				tweenService:Create(interaction.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				tweenService:Create(interaction, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
			end
		end
		task.wait(0.35)
		newPlayer.PlayerInteractions.Visible = false
	end

	newPlayer.MouseEnter:Connect(function()
		if debounce or not playerlistPanel.Visible then return end
		tweenService:Create(newPlayer.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		tweenService:Create(newPlayer.DisplayName, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
	end)

	newPlayer.MouseLeave:Connect(function()
		if debounce or not playerlistPanel.Visible then return end
		task.spawn(closeInteractions)
		tweenService:Create(newPlayer.DisplayName, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 53, 0.5, 0)}):Play()
		tweenService:Create(newPlayer, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 539, 0, 45)}):Play()
		tweenService:Create(newPlayer.Avatar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 30, 0, 30)}):Play()
		tweenService:Create(newPlayer.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
		tweenService:Create(newPlayer.DisplayName, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		tweenService:Create(newPlayer.Role, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
	end)

	newPlayer.Interact.MouseButton1Click:Connect(function()
		if debounce or not playerlistPanel.Visible then return end
		if creatorType == Enum.CreatorType.Group then
			tweenService:Create(newPlayer.DisplayName, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 73, 0.39, 0)}):Play()
			tweenService:Create(newPlayer.Role, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
		else
			tweenService:Create(newPlayer.DisplayName, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 73, 0.5, 0)}):Play()
		end

		if player ~= localPlayer then openInteractions() end

		tweenService:Create(newPlayer, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 539, 0, 75)}):Play()

		tweenService:Create(newPlayer.DisplayName, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		tweenService:Create(newPlayer.Avatar, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 50, 0, 50)}):Play()
		tweenService:Create(newPlayer.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
	end)

	newPlayer.PlayerInteractions.Kill.Interact.MouseButton1Click:Connect(function()
		queueNotification("Simulation Notification","Simulating Kill Notification for "..player.DisplayName..".")
		tweenService:Create(newPlayer.PlayerInteractions.Kill, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(0, 124, 89)}):Play()
		tweenService:Create(newPlayer.PlayerInteractions.Kill.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(220, 220, 220)}):Play()
		tweenService:Create(newPlayer.PlayerInteractions.Kill.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(0, 134, 96)}):Play()
		kill(player)
		task.wait(1)
		tweenService:Create(newPlayer.PlayerInteractions.Kill, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
		tweenService:Create(newPlayer.PlayerInteractions.Kill.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
		tweenService:Create(newPlayer.PlayerInteractions.Kill.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(60, 60, 60)}):Play()
	end)

	newPlayer.PlayerInteractions.Teleport.Interact.MouseButton1Click:Connect(function()
		tweenService:Create(newPlayer.PlayerInteractions.Teleport, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(0, 152, 111)}):Play()
		tweenService:Create(newPlayer.PlayerInteractions.Teleport.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(220, 220, 220)}):Play()
		tweenService:Create(newPlayer.PlayerInteractions.Teleport.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(0, 152, 111)}):Play()
		teleportTo(player)
		task.wait(0.5)
		tweenService:Create(newPlayer.PlayerInteractions.Teleport, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
		tweenService:Create(newPlayer.PlayerInteractions.Teleport.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
		tweenService:Create(newPlayer.PlayerInteractions.Teleport.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(60, 60, 60)}):Play()
	end)

	newPlayer.PlayerInteractions.Spectate.Interact.MouseButton1Click:Connect(function()
		queueNotification("Simulation Notification","Simulating Spectate Notification for "..player.DisplayName..".")
		-- Spectate
	end)

	newPlayer.PlayerInteractions.Locate.Interact.MouseButton1Click:Connect(function()
		queueNotification("Simulation Notification","Simulating Locate ESP Notification for "..player.DisplayName..".")
		-- ESP for that user only
	end)
end

local function removePlayer(player)
	if not checkSirius() then return end

	if playerlistPanel.Interactions.List:FindFirstChild(player.Name) then
		playerlistPanel.Interactions.List:FindFirstChild(player.Name):Destroy()
	end
end

local function openSettings()
	debounce = true

	settingsPanel.BackgroundTransparency = 1
	settingsPanel.Title.TextTransparency = 1
	settingsPanel.Subtitle.TextTransparency = 1
	settingsPanel.Back.ImageTransparency = 1
	settingsPanel.Shadow.ImageTransparency = 1

	wipeTransparency(settingsPanel.SettingTypes, 1, true)

	settingsPanel.Visible = true
	settingsPanel.UIGradient.Enabled = true
	settingsPanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	settingsPanel.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.0470588, 0.0470588, 0.0470588)),ColorSequenceKeypoint.new(1, Color3.new(0.0470588, 0.0470588, 0.0470588))})
	settingsPanel.UIGradient.Offset = Vector2.new(0, 1.7)
	settingsPanel.SettingTypes.Visible = true
	settingsPanel.SettingLists.Visible = false
	settingsPanel.Size = UDim2.new(0, 550, 0, 340)
	settingsPanel.Title.Position = UDim2.new(0.045, 0, 0.057, 0)

	settingsPanel.Title.Text = "Settings"
	settingsPanel.Subtitle.Text = "Adjust your preferences, set new keybinds, test out new features and more."

	tweenService:Create(settingsPanel, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 613, 0, 384)}):Play()
	tweenService:Create(settingsPanel, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	tweenService:Create(settingsPanel.Shadow, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
	tweenService:Create(settingsPanel.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	tweenService:Create(settingsPanel.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()

	task.wait(0.1)

	for _, settingType in ipairs(settingsPanel.SettingTypes:GetChildren()) do
		if settingType.ClassName == "Frame" then
			local gradientRotation = math.random(78, 95)

			tweenService:Create(settingType.UIGradient, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Rotation = gradientRotation}):Play()
			tweenService:Create(settingType.Shadow.UIGradient, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Rotation = gradientRotation}):Play()
			tweenService:Create(settingType.UIStroke.UIGradient, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Rotation = gradientRotation}):Play()
			tweenService:Create(settingType, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			tweenService:Create(settingType.Shadow, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.7}):Play()
			tweenService:Create(settingType.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			tweenService:Create(settingType.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()

			task.wait(0.02)
		end
	end

	for _, settingList in ipairs(settingsPanel.SettingLists:GetChildren()) do
		if settingList.ClassName == "ScrollingFrame" then
			for _, setting in ipairs(settingList:GetChildren()) do
				if setting.ClassName == "Frame" then
					setting.Visible = true
				end
			end
		end
	end

	debounce = false
end

local function closeSettings()
	debounce = true

	for _, settingType in ipairs(settingsPanel.SettingTypes:GetChildren()) do
		if settingType.ClassName == "Frame" then
			tweenService:Create(settingType, TweenInfo.new(0.1, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
			tweenService:Create(settingType.Shadow, TweenInfo.new(0.05, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			tweenService:Create(settingType.UIStroke, TweenInfo.new(0.05, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
			tweenService:Create(settingType.Title, TweenInfo.new(0.05, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		end
	end

	tweenService:Create(settingsPanel.Shadow, TweenInfo.new(0.1, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
	tweenService:Create(settingsPanel.Back, TweenInfo.new(0.1, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
	tweenService:Create(settingsPanel.Title, TweenInfo.new(0.1, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
	tweenService:Create(settingsPanel.Subtitle, TweenInfo.new(0.1, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()

	for _, settingList in ipairs(settingsPanel.SettingLists:GetChildren()) do
		if settingList.ClassName == "ScrollingFrame" then
			for _, setting in ipairs(settingList:GetChildren()) do
				if setting.ClassName == "Frame" then
					setting.Visible = false
				end
			end
		end
	end

	tweenService:Create(settingsPanel, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 520, 0, 0)}):Play()
	tweenService:Create(settingsPanel, TweenInfo.new(0.55, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()

	task.wait(0.55)

	settingsPanel.Visible = false
	debounce = false
end

local function saveSettings()
	checkFolder()

	if isfile and isfile(siriusValues.siriusFolder.."/"..siriusValues.settingsFile) then
		writefile(siriusValues.siriusFolder.."/"..siriusValues.settingsFile, httpService:JSONEncode(siriusSettings))
	end
end

local function assembleSettings()
	if isfile and isfile(siriusValues.siriusFolder.."/"..siriusValues.settingsFile) then
		local currentSettings

		local success, response = pcall(function()
			currentSettings = httpService:JSONDecode(readfile(siriusValues.siriusFolder.."/"..siriusValues.settingsFile))
		end)

		if success then
			for _, liveCategory in ipairs(siriusSettings) do
				for _, liveSetting in ipairs(liveCategory.categorySettings) do
					for _, category in ipairs(currentSettings) do
						for _, setting in ipairs(category.categorySettings) do
							if liveSetting.id == setting.id then
								liveSetting.current = setting.current
							end
						end
					end
				end
			end

			writefile(siriusValues.siriusFolder.."/"..siriusValues.settingsFile, httpService:JSONEncode(siriusSettings)) -- Update file with any new settings added
		end
	else
		if writefile then
			checkFolder()
			if not isfile(siriusValues.siriusFolder.."/"..siriusValues.settingsFile) then
				writefile(siriusValues.siriusFolder.."/"..siriusValues.settingsFile, httpService:JSONEncode(siriusSettings))
			end
		end 
	end

	for _, category in siriusSettings do
		local newCategory = settingsPanel.SettingTypes.Template:Clone()
		newCategory.Name = category.name
		newCategory.Title.Text = string.upper(category.name)
		newCategory.Parent = settingsPanel.SettingTypes
		newCategory.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.0392157, 0.0392157, 0.0392157)),ColorSequenceKeypoint.new(1, category.color)})

		newCategory.Visible = true

		local hue, sat, val = Color3.toHSV(category.color)

		hue = math.clamp(hue + 0.01, 0, 1) sat = math.clamp(sat + 0.1, 0, 1) val = math.clamp(val + 0.2, 0, 1)

		local newColor = Color3.fromHSV(hue, sat, val)
		newCategory.UIStroke.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.117647, 0.117647, 0.117647)),ColorSequenceKeypoint.new(1, newColor)})
		newCategory.Shadow.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.117647, 0.117647, 0.117647)),ColorSequenceKeypoint.new(1, newColor)})

		local newList = settingsPanel.SettingLists.Template:Clone()
		newList.Name = category.name
		newList.Parent = settingsPanel.SettingLists

		newList.Visible = true

		for _, obj in ipairs(newList:GetChildren()) do if obj.Name ~= "Placeholder" and obj.Name ~= "UIListLayout" then obj:Destroy() end end 

		settingsPanel.Back.MouseButton1Click:Connect(function()
			tweenService:Create(settingsPanel.Back, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
			tweenService:Create(settingsPanel.Back, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0.002, 0, 0.052, 0)}):Play()
			tweenService:Create(settingsPanel.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0.045, 0, 0.057, 0)}):Play()
			tweenService:Create(settingsPanel.UIGradient, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Offset = Vector2.new(0, 1.3)}):Play()
			settingsPanel.Title.Text = "Settings"
			settingsPanel.Subtitle.Text = "Adjust your preferences, set new keybinds, test out new features and more"
			settingsPanel.SettingTypes.Visible = true
			settingsPanel.SettingLists.Visible = false
		end)

		newCategory.Interact.MouseButton1Click:Connect(function()
			if settingsPanel.SettingLists:FindFirstChild(category.name) then
				settingsPanel.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.0470588, 0.0470588, 0.0470588)),ColorSequenceKeypoint.new(1, category.color)})
				settingsPanel.SettingTypes.Visible = false
				settingsPanel.SettingLists.Visible = true
				settingsPanel.SettingLists.UIPageLayout:JumpTo(settingsPanel.SettingLists[category.name])
				settingsPanel.Subtitle.Text = category.description
				settingsPanel.Back.Visible = true
				settingsPanel.Title.Text = category.name

				local gradientRotation = math.random(78, 95)
				settingsPanel.UIGradient.Rotation = gradientRotation
				tweenService:Create(settingsPanel.UIGradient, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), {Offset = Vector2.new(0, 0.65)}):Play()
				tweenService:Create(settingsPanel.Back, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
				tweenService:Create(settingsPanel.Back, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0.041, 0, 0.052, 0)}):Play()
				tweenService:Create(settingsPanel.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Position = UDim2.new(0.091, 0, 0.057, 0)}):Play()
			else
				-- error
				closeSettings()
			end
		end)

		newCategory.MouseEnter:Connect(function()
			tweenService:Create(newCategory.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			tweenService:Create(newCategory.UIGradient, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Offset = Vector2.new(0, 0.4)}):Play()
			tweenService:Create(newCategory.UIStroke.UIGradient, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Offset = Vector2.new(0, 0.2)}):Play()
			tweenService:Create(newCategory.Shadow.UIGradient, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Offset = Vector2.new(0, 0.2)}):Play()
		end)

		newCategory.MouseLeave:Connect(function()
			tweenService:Create(newCategory.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
			tweenService:Create(newCategory.UIGradient, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Offset = Vector2.new(0, 0.65)}):Play()
			tweenService:Create(newCategory.UIStroke.UIGradient, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Offset = Vector2.new(0, 0.4)}):Play()
			tweenService:Create(newCategory.Shadow.UIGradient, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Offset = Vector2.new(0, 0.4)}):Play()
		end)

		for _, setting in ipairs(category.categorySettings) do
			if not setting.hidden then
				local settingType = setting.settingType
				local minimumLicense = setting.minimumLicense
				local object = nil

				if settingType == "Boolean" then
					local newSwitch = settingsPanel.SettingLists.Template.SwitchTemplate:Clone()
					object = newSwitch
					newSwitch.Name = setting.name
					newSwitch.Parent = newList
					newSwitch.Visible = true
					newSwitch.Title.Text = setting.name

					if setting.current == true then
						newSwitch.Switch.Indicator.Position = UDim2.new(1, -20, 0.5, 0)
						newSwitch.Switch.Indicator.UIStroke.Color = Color3.fromRGB(220, 220, 220)
						newSwitch.Switch.Indicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)			
						newSwitch.Switch.Indicator.BackgroundTransparency = 0.6
					end


					if minimumLicense then
						if (minimumLicense == "Pro" and not Pro) or (minimumLicense == "Essential" and not (Pro or Essential)) then
							newSwitch.Switch.Indicator.Position = UDim2.new(1, -40, 0.5, 0)
							newSwitch.Switch.Indicator.UIStroke.Color = Color3.fromRGB(255, 255, 255)
							newSwitch.Switch.Indicator.BackgroundColor3 = Color3.fromRGB(235, 235, 235)			
							newSwitch.Switch.Indicator.BackgroundTransparency = 0.75
						end
					end

					newSwitch.Interact.MouseButton1Click:Connect(function()
						if minimumLicense then
							if (minimumLicense == "Pro" and not Pro) or (minimumLicense == "Essential" and not (Pro or Essential)) then
								queueNotification("This feature is locked", "You must be "..minimumLicense.." or higher to use "..setting.name..". \n\nUpgrade at https://sirius.menu.", 4483345875)
								return
							end
						end

						setting.current = not setting.current
						saveSettings()
						if setting.current == true then
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -20, 0.5, 0)}):Play()
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
							tweenService:Create(newSwitch.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = Color3.fromRGB(200, 200, 200)}):Play()
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
							tweenService:Create(newSwitch.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Transparency = 0.5}):Play()
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 0.6}):Play()
							task.wait(0.05)
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()							
						else
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.45, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -40, 0.5, 0)}):Play()
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,12,0,12)}):Play()
							tweenService:Create(newSwitch.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Color = Color3.fromRGB(255, 255, 255)}):Play()
							tweenService:Create(newSwitch.Switch.Indicator.UIStroke, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Transparency = 0.7}):Play()
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(235, 235, 235)}):Play()
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 0.75}):Play()
							task.wait(0.05)
							tweenService:Create(newSwitch.Switch.Indicator, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0,17,0,17)}):Play()
						end
					end)

				elseif settingType == "Input" then
					local newInput = settingsPanel.SettingLists.Template.InputTemplate:Clone()
					object = newInput

					newInput.Name = setting.name
					newInput.InputFrame.InputBox.Text = setting.current
					newInput.InputFrame.InputBox.PlaceholderText = setting.placeholder or "input"
					newInput.Parent = newList

					if string.len(setting.current) > 19 then
						newInput.InputFrame.InputBox.Text = string.sub(tostring(setting.current), 1,17)..".."
					else
						newInput.InputFrame.InputBox.Text = setting.current
					end

					newInput.Visible = true
					newInput.Title.Text = setting.name
					newInput.InputFrame.InputBox.TextWrapped = false
					newInput.InputFrame.Size = UDim2.new(0, newInput.InputFrame.InputBox.TextBounds.X + 24, 0, 30)

					newInput.InputFrame.InputBox.FocusLost:Connect(function()
						if minimumLicense then
							if (minimumLicense == "Pro" and not Pro) or (minimumLicense == "Essential" and not (Pro or Essential)) then
								queueNotification("This feature is locked", "You must be "..minimumLicense.." or higher to use "..setting.name..". \n\nUpgrade at https://sirius.menu.", 4483345875)
								newInput.InputFrame.InputBox.Text = setting.current
								return
							end
						end

						if newInput.InputFrame.InputBox.Text ~= nil or "" then
							setting.current = newInput.InputFrame.InputBox.Text
							saveSettings()
						end
						if string.len(setting.current) > 24 then
							newInput.InputFrame.InputBox.Text = string.sub(tostring(setting.current), 1,22)..".."
						else
							newInput.InputFrame.InputBox.Text = setting.current
						end
					end)

					newInput.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
						tweenService:Create(newInput.InputFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, newInput.InputFrame.InputBox.TextBounds.X + 24, 0, 30)}):Play()
					end)

				elseif settingType == "Number" then
					local newInput = settingsPanel.SettingLists.Template.InputTemplate:Clone()
					object = newInput

					newInput.Name = setting.name
					newInput.InputFrame.InputBox.Text = tostring(setting.current)
					newInput.InputFrame.InputBox.PlaceholderText = setting.placeholder or "number"
					newInput.Parent = newList

					if string.len(setting.current) > 19 then
						newInput.InputFrame.InputBox.Text = string.sub(tostring(setting.current), 1,17)..".."
					else
						newInput.InputFrame.InputBox.Text = setting.current
					end

					newInput.Visible = true
					newInput.Title.Text = setting.name
					newInput.InputFrame.InputBox.TextWrapped = false
					newInput.InputFrame.Size = UDim2.new(0, newInput.InputFrame.InputBox.TextBounds.X + 24, 0, 30)

					newInput.InputFrame.InputBox.FocusLost:Connect(function()

						if minimumLicense then
							if (minimumLicense == "Pro" and not Pro) or (minimumLicense == "Essential" and not (Pro or Essential)) then
								queueNotification("This feature is locked", "You must be "..minimumLicense.." or higher to use "..setting.name..". \n\nUpgrade at https://sirius.menu.", 4483345875)
								newInput.InputFrame.InputBox.Text = setting.current
								return
							end
						end

						local inputValue = tonumber(newInput.InputFrame.InputBox.Text)

						if inputValue then
							if setting.values then
								local minValue = setting.values[1]
								local maxValue = setting.values[2]

								if inputValue < minValue then
									setting.current = minValue
								elseif inputValue > maxValue then
									setting.current = maxValue
								else
									setting.current = inputValue
								end

								saveSettings()
							else
								setting.current = inputValue
								saveSettings()
							end
						else
							newInput.InputFrame.InputBox.Text = tostring(setting.current)
						end

						if string.len(setting.current) > 24 then
							newInput.InputFrame.InputBox.Text = string.sub(tostring(setting.current), 1,22)..".."
						else
							newInput.InputFrame.InputBox.Text = tostring(setting.current)
						end
					end)

					newInput.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
						tweenService:Create(newInput.InputFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, newInput.InputFrame.InputBox.TextBounds.X + 24, 0, 30)}):Play()
					end)

				elseif settingType == "Key" then
					local newKeybind = settingsPanel.SettingLists.Template.InputTemplate:Clone()
					object = newKeybind
					newKeybind.Name = setting.name
					newKeybind.InputFrame.InputBox.PlaceholderText = setting.placeholder or "listening.."
					newKeybind.InputFrame.InputBox.Text = setting.current or "No Keybind"
					newKeybind.Parent = newList

					newKeybind.Visible = true
					newKeybind.Title.Text = setting.name
					newKeybind.InputFrame.InputBox.TextWrapped = false
					newKeybind.InputFrame.Size = UDim2.new(0, newKeybind.InputFrame.InputBox.TextBounds.X + 24, 0, 30)

					newKeybind.InputFrame.InputBox.FocusLost:Connect(function()
						checkingForKey = false

						if minimumLicense then
							if (minimumLicense == "Pro" and not Pro) or (minimumLicense == "Essential" and not (Pro or Essential)) then
								queueNotification("This feature is locked", "You must be "..minimumLicense.." or higher to use "..setting.name..". \n\nUpgrade at https://sirius.menu.", 4483345875)
								newKeybind.InputFrame.InputBox.Text = setting.current
								return
							end
						end

						if newKeybind.InputFrame.InputBox.Text == nil or newKeybind.InputFrame.InputBox.Text == "" then
							newKeybind.InputFrame.InputBox.Text = "No Keybind"
							setting.current = nil
							newKeybind.InputFrame.InputBox:ReleaseFocus()
							saveSettings()
						end
					end)

					newKeybind.InputFrame.InputBox.Focused:Connect(function()
						checkingForKey = {data = setting, object = newKeybind}
						newKeybind.InputFrame.InputBox.Text = ""
					end)

					newKeybind.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
						tweenService:Create(newKeybind.InputFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(0, newKeybind.InputFrame.InputBox.TextBounds.X + 24, 0, 30)}):Play()
					end)

				end

				if object then
					if setting.description then
						object.Description.Visible = true
						object.Description.TextWrapped = true
						object.Description.Size = UDim2.new(0, 333, 5, 0)
						object.Description.Size = UDim2.new(0, 333, 0, 999)
						object.Description.Text = setting.description
						object.Description.Size = UDim2.new(0, 333, 0, object.Description.TextBounds.Y + 10)
						object.Size = UDim2.new(0, 558, 0, object.Description.TextBounds.Y + 44)
					end

					if minimumLicense then
						object.LicenseDisplay.Visible = true
						object.Title.Position = UDim2.new(0, 18, 0, 26)
						object.Description.Position = UDim2.new(0, 18, 0, 43)
						object.Size = UDim2.new(0, 558, 0, object.Size.Y.Offset + 13)
						object.LicenseDisplay.Text = string.upper(minimumLicense).." FEATURE"
					end

					local objectTouching
					object.MouseEnter:Connect(function()
						objectTouching = true
						tweenService:Create(object.UIStroke, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Transparency = 0.45}):Play()
						tweenService:Create(object, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 0.83}):Play()
					end)

					object.MouseLeave:Connect(function()
						objectTouching = false
						tweenService:Create(object.UIStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Transparency = 0.6}):Play()
						tweenService:Create(object, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 0.9}):Play()
					end)

					if object:FindFirstChild('Interact') then
						object.Interact.MouseButton1Click:Connect(function()
							tweenService:Create(object.UIStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Transparency = 1}):Play()
							tweenService:Create(object, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 0.8}):Play()
							task.wait(0.1)
							if objectTouching then
								tweenService:Create(object.UIStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Transparency = 0.45}):Play()
								tweenService:Create(object, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 0.83}):Play()
							else
								tweenService:Create(object.UIStroke, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Transparency = 0.6}):Play()
								tweenService:Create(object, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 0.9}):Play()
							end
						end)
					end
				end
			end
		end
	end
end

local function initialiseAntiKick()
	if checkSetting("Client-Based Anti Kick").current then
		if hookmetamethod then 
			local originalIndex
			local originalNamecall

			originalIndex = hookmetamethod(game, "__index", function(self, method)
				if self == localPlayer and method:lower() == "kick" and checkSetting("Client-Based Anti Kick").current and checkSirius() then
					queueNotification("Kick Prevented", "Sirius has prevented you from being kicked by the client.", 4400699701)
					return error("Expected ':' not '.' calling member function Kick", 2)
				end
				return originalIndex(self, method)
			end)

			originalNamecall = hookmetamethod(game, "__namecall", function(self, ...)
				if self == localPlayer and getnamecallmethod():lower() == "kick" and checkSetting("Client-Based Anti Kick").current and checkSirius() then
					queueNotification("Kick Prevented", "Sirius has prevented you from being kicked by the client.", 4400699701)
					return
				end
				return originalNamecall(self, ...)
			end)
		end
	end
end

local function start()
	if siriusValues.releaseType == "Experimental" then -- Make this more secure.
		if not Pro then localPlayer:Kick("This is an experimental release, you must be Pro to run this. \n\nUpgrade at https://sirius.menu/") return end
	end
	windowFocusChanged(true)

	UI.Enabled = true

	assembleSettings()
	ensureFrameProperties()
	sortActions()
	initialiseAntiKick()
	checkLastVersion()

	smartBar.Time.Text = os.date("%H")..":"..os.date("%M")

	toggle.Visible = not checkSetting("Hide Toggle Button").current

	if not checkSetting("Load Hidden").current then 
		if checkSetting("Startup Sound Effect").current then
			local startupPath = siriusValues.siriusFolder.."/Assets/startup.wav"
			local startupAsset

			if isfile(startupPath) then
				startupAsset = getcustomasset(startupPath) or nil
			else
				startupAsset = fetchFromCDN("startup.wav", true, "Assets/startup.wav")
				startupAsset = isfile(startupPath) and getcustomasset(startupPath) or nil
			end

			if not startupAsset then return end

			local startupSound = Instance.new("Sound")
			startupSound.Parent = UI
			startupSound.SoundId = startupAsset
			startupSound.Name = "startupSound"
			startupSound.Volume = 0.85
			startupSound.PlayOnRemove = true
			startupSound:Destroy()	
		end

		openSmartBar()
	else 
		closeSmartBar() 
	end

	if script_key and not Essential and not Pro then
		queueNotification("License Error", "We've detected a key being placed above Sirius loadstring, however your key seems to be invalid. Make a support request at sirius.menu/discord to get this solved within minutes.", "document-minus")
	end

	if siriusValues.enableExperienceSync then
		task.spawn(syncExperienceInformation) 
	end
end

-- Sirius Events

start()

toggle.MouseButton1Click:Connect(function()
	if smartBarOpen then
		closeSmartBar()
	else
		openSmartBar()
	end
end)

characterPanel.Interactions.Reset.MouseButton1Click:Connect(function()
	resetSliders()

	characterPanel.Interactions.Reset.Rotation = 360
	queueNotification("Slider Values Reset","Successfully reset all character panel sliders", 4400696294)
	tweenService:Create(characterPanel.Interactions.Reset, TweenInfo.new(.5,Enum.EasingStyle.Back),  {Rotation = 0}):Play()
end)

characterPanel.Interactions.Reset.MouseEnter:Connect(function() if debounce then return end tweenService:Create(characterPanel.Interactions.Reset, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {ImageTransparency = 0}):Play() end)
characterPanel.Interactions.Reset.MouseLeave:Connect(function() if debounce then return end tweenService:Create(characterPanel.Interactions.Reset, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {ImageTransparency = 0.7}):Play() end)

local playerSearch = playerlistPanel.Interactions.SearchFrame.SearchBox -- move this up to Variables once finished

playerSearch:GetPropertyChangedSignal("Text"):Connect(function()
	local query = string.lower(playerSearch.Text)

	for _, player in ipairs(playerlistPanel.Interactions.List:GetChildren()) do
		if player.ClassName == "Frame" and player.Name ~= "Placeholder" and player.Name ~= "Template" then
			if string.find(player.Name, playerSearch.Text) then
				player.Visible = true
			else
				player.Visible = false
			end
		end
	end

	if #playerSearch.Text == 0 then
		searchingForPlayer = false
		for _, player in ipairs(playerlistPanel.Interactions.List:GetChildren()) do
			if player.ClassName == "Frame" and player.Name ~= "Placeholder" and player.Name ~= "Template" then
				player.Visible = true
			end
		end
	else
		searchingForPlayer = true
	end
end)

characterPanel.Interactions.Serverhop.MouseEnter:Connect(function()
	if debounce then return end
	tweenService:Create(characterPanel.Interactions.Serverhop, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0.5}):Play()
	tweenService:Create(characterPanel.Interactions.Serverhop.Title, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0.1}):Play()
	tweenService:Create(characterPanel.Interactions.Serverhop.UIStroke, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Transparency = 1}):Play()
end)

characterPanel.Interactions.Serverhop.MouseLeave:Connect(function()
	if debounce then return end
	tweenService:Create(characterPanel.Interactions.Serverhop, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
	tweenService:Create(characterPanel.Interactions.Serverhop.Title, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0.5}):Play()
	tweenService:Create(characterPanel.Interactions.Serverhop.UIStroke, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Transparency = 0}):Play()
end)

characterPanel.Interactions.Rejoin.MouseEnter:Connect(function()
	if debounce then return end
	tweenService:Create(characterPanel.Interactions.Rejoin, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0.5}):Play()
	tweenService:Create(characterPanel.Interactions.Rejoin.Title, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0.1}):Play()
	tweenService:Create(characterPanel.Interactions.Rejoin.UIStroke, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Transparency = 1}):Play()
end)

characterPanel.Interactions.Rejoin.MouseLeave:Connect(function()
	if debounce then return end
	tweenService:Create(characterPanel.Interactions.Rejoin, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
	tweenService:Create(characterPanel.Interactions.Rejoin.Title, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0.5}):Play()
	tweenService:Create(characterPanel.Interactions.Rejoin.UIStroke, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Transparency = 0}):Play()
end)

musicPanel.Close.MouseButton1Click:Connect(function()
	if musicPanel.Visible and not debounce then
		closeMusic()
	end
end)

musicPanel.Add.Interact.MouseButton1Click:Connect(function()
	musicPanel.AddBox.Input:ReleaseFocus()
	addToQueue(musicPanel.AddBox.Input.Text)
end)

musicPanel.Menu.TogglePlaying.MouseButton1Click:Connect(function()
	if currentAudio then
		currentAudio.Playing = not currentAudio.Playing
		musicPanel.Menu.TogglePlaying.ImageRectOffset = currentAudio.Playing and Vector2.new(804, 124) or Vector2.new(764, 244)
	end
end)

musicPanel.Menu.Next.MouseButton1Click:Connect(function()
	if currentAudio then
		if #musicQueue == 0 then currentAudio.Playing = false currentAudio.SoundId = "" return end

		if musicPanel.Queue.List:FindFirstChild(tostring(musicQueue[1].instanceName)) then
			musicPanel.Queue.List:FindFirstChild(tostring(musicQueue[1].instanceName)):Destroy()
		end
		
		musicPanel.Menu.TogglePlaying.ImageRectOffset = currentAudio.Playing and Vector2.new(804, 124) or Vector2.new(764, 244)

		table.remove(musicQueue, 1)

		playNext()
	end
end)

characterPanel.Interactions.Rejoin.Interact.MouseButton1Click:Connect(rejoin)
characterPanel.Interactions.Serverhop.Interact.MouseButton1Click:Connect(serverhop)

homeContainer.Interactions.Server.JobId.Interact.MouseButton1Click:Connect(function()
	if setclipboard then 
		originalSetClipboard([[
-- This script will teleport you to ' ]]..game:GetService("MarketplaceService"):GetProductInfo(placeId).Name..[['
-- If it doesn't work after a few seconds, try going into the same game, and then run the script to join ]]..localPlayer.DisplayName.. [['s specific server

game:GetService("TeleportService"):TeleportToPlaceInstance(']]..placeId..[[', ']]..jobId..[[')]]
		)
		queueNotification("Copied Join Script","Successfully set clipboard to join script, players can use this script to join your specific server.", 4335479121)
	else
		queueNotification("Unable to copy join script","Missing setclipboard() function, can't set data to your clipboard.", 4335479658)
	end
end)

homeContainer.Interactions.Discord.Interact.MouseButton1Click:Connect(function()
	if setclipboard then 
		originalSetClipboard("https://sirius.menu/discord")
		queueNotification("Discord Invite Copied", "We've set your clipboard to the Sirius discord invite.", 4335479121)
	else
		queueNotification("Unable to copy Discord invite", "Missing setclipboard() function, can't set data to your clipboard.", 4335479658)
	end
end)

for _, button in ipairs(scriptsPanel.Interactions.Selection:GetChildren()) do
	local origsize = button.Size

	button.MouseEnter:Connect(function()
		if not debounce then
			tweenService:Create(button, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
			tweenService:Create(button, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Size = UDim2.new(0, button.Size.X.Offset - 5, 0, button.Size.Y.Offset - 3)}):Play()
			tweenService:Create(button.UIStroke, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Transparency = 1}):Play()
			tweenService:Create(button.Title, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0.1}):Play()
		end
	end)

	button.MouseLeave:Connect(function()
		if not debounce then
			tweenService:Create(button, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
			tweenService:Create(button, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Size = origsize}):Play()
			tweenService:Create(button.UIStroke, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {Transparency = 0}):Play()
			tweenService:Create(button.Title, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()
		end
	end)

	button.Interact.MouseButton1Click:Connect(function()
		tweenService:Create(button, TweenInfo.new(.4,Enum.EasingStyle.Quint),  {Size = UDim2.new(0, origsize.X.Offset - 9, 0, origsize.Y.Offset - 6)}):Play()
		task.wait(0.1)
		tweenService:Create(button, TweenInfo.new(.25,Enum.EasingStyle.Quint),  {Size = origsize}):Play()

		if button.Name == "Library" then
			if not scriptSearch.Visible and not debounce then openScriptSearch() end
		end
		-- run action
	end)
end

smartBar.Buttons.Music.Interact.MouseButton1Click:Connect(function()
	if debounce then return end
	if musicPanel.Visible then closeMusic() else openMusic() end
end)

smartBar.Buttons.Home.Interact.MouseButton1Click:Connect(function()
	if debounce then return end
	if homeContainer.Visible then closeHome() else openHome() end
end)

smartBar.Buttons.Settings.Interact.MouseButton1Click:Connect(function()
	if debounce then return end
	if settingsPanel.Visible then closeSettings() else openSettings() end
end)

for _, button in ipairs(smartBar.Buttons:GetChildren()) do
	if UI:FindFirstChild(button.Name) and button:FindFirstChild("Interact") then
		button.Interact.MouseButton1Click:Connect(function()
			if isPanel(button.Name) then
				if not debounce and UI:FindFirstChild(button.Name).Visible then
					task.spawn(closePanel, button.Name)
				else
					task.spawn(openPanel, button.Name)
				end
			end

			tweenService:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {Size = UDim2.new(0,28,0,28)}):Play()
			tweenService:Create(button, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.6}):Play()
			tweenService:Create(button.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 0.6}):Play()
			task.wait(0.15)
			tweenService:Create(button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {Size = UDim2.new(0,36,0,36)}):Play()
			tweenService:Create(button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			tweenService:Create(button.Icon, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {ImageTransparency = 0.02}):Play()
		end)

		button.MouseEnter:Connect(function()
			tweenService:Create(button.UIGradient, TweenInfo.new(1.4, Enum.EasingStyle.Quint), {Rotation = 360}):Play()
			tweenService:Create(button.UIStroke.UIGradient, TweenInfo.new(1.4, Enum.EasingStyle.Quint), {Rotation = 360}):Play()
			tweenService:Create(button.UIStroke, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
			tweenService:Create(button.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
			tweenService:Create(button.UIGradient, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Offset = Vector2.new(0,-0.5)}):Play()
		end)

		button.MouseLeave:Connect(function()
			tweenService:Create(button.UIStroke.UIGradient, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Rotation = 50}):Play()
			tweenService:Create(button.UIGradient, TweenInfo.new(0.9, Enum.EasingStyle.Quint), {Rotation = 50}):Play()
			tweenService:Create(button.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
			tweenService:Create(button.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 0.05}):Play()
			tweenService:Create(button.UIGradient, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Offset = Vector2.new(0,0)}):Play()
		end)
	end
end

userInputService.InputBegan:Connect(function(input, processed)
	if not checkSirius() then return end

	if checkingForKey then
		if input.KeyCode ~= Enum.KeyCode.Unknown then
			local splitMessage = string.split(tostring(input.KeyCode), ".")
			local newKeyNoEnum = splitMessage[3]
			checkingForKey.object.InputFrame.InputBox.Text = tostring(newKeyNoEnum)
			checkingForKey.data.current = tostring(newKeyNoEnum)
			checkingForKey.object.InputFrame.InputBox:ReleaseFocus()
			saveSettings()
		end

		return
	end

	for _, category in ipairs(siriusSettings) do
		for _, setting in ipairs(category.categorySettings) do
			if setting.settingType == "Key" then
				if setting.current ~= nil and setting.current ~= "" then
					if input.KeyCode == Enum.KeyCode[setting.current] and not processed then
						if setting.callback then
							task.spawn(setting.callback)

							local action = checkAction(setting.name) or nil
							if action then
								local object = action.object
								action = action.action

								if action.enabled then
									object.Icon.Image = "rbxassetid://"..action.images[1]
									tweenService:Create(object, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
									tweenService:Create(object.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
									tweenService:Create(object.Icon, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {ImageTransparency = 0.1}):Play()

									if action.disableAfter then
										task.delay(action.disableAfter, function()
											action.enabled = false
											object.Icon.Image = "rbxassetid://"..action.images[2]
											tweenService:Create(object, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.55}):Play()
											tweenService:Create(object.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.4}):Play()
											tweenService:Create(object.Icon, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {ImageTransparency = 0.5}):Play()
										end)
									end

									if action.rotateWhileEnabled then
										repeat
											object.Icon.Rotation = 0
											tweenService:Create(object.Icon, TweenInfo.new(0.75, Enum.EasingStyle.Quint), {Rotation = 360}):Play()
											task.wait(1)
										until not action.enabled
										object.Icon.Rotation = 0
									end
								else
									object.Icon.Image = "rbxassetid://"..action.images[2]
									tweenService:Create(object, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.55}):Play()
									tweenService:Create(object.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.4}):Play()
									tweenService:Create(object.Icon, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {ImageTransparency = 0.5}):Play()
								end
							end
						end
					end
				end
			end
		end
	end

	if input.KeyCode == Enum.KeyCode[checkSetting("Open ScriptSearch").current] and not processed and not debounce then
		if scriptSearch.Visible then
			closeScriptSearch()
		else
			openScriptSearch()
		end
	end

	if input.KeyCode == Enum.KeyCode[checkSetting("Toggle smartBar").current] and not processed and not debounce then
		if smartBarOpen then 
			closeSmartBar()
		else
			openSmartBar()
		end
	end
end)

userInputService.InputEnded:Connect(function(input, processed)
	if not checkSirius() then return end

	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		for _, slider in pairs(siriusValues.sliders) do
			slider.active = false

			if characterPanel.Visible and not debounce and slider.object and checkSirius() then
				tweenService:Create(slider.object, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.8}):Play()
				tweenService:Create(slider.object.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				tweenService:Create(slider.object.Information, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {TextTransparency = 0.3}):Play()
			end
		end
	end
end)

camera:GetPropertyChangedSignal('ViewportSize'):Connect(function()
	task.wait(.5)
	updateSliderPadding()
end)

scriptSearch.SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
	if #scriptSearch.SearchBox.Text > 0 then
		tweenService:Create(scriptSearch.Icon, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
		tweenService:Create(scriptSearch.SearchBox, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	else
		tweenService:Create(scriptSearch.Icon, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {ImageColor3 = Color3.fromRGB(150, 150, 150)}):Play()
		tweenService:Create(scriptSearch.SearchBox, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextColor3 = Color3.fromRGB(150, 150, 150)}):Play()
	end
end)

scriptSearch.SearchBox.FocusLost:Connect(function(enterPressed)
	tweenService:Create(scriptSearch.Icon, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {ImageColor3 = Color3.fromRGB(150, 150, 150)}):Play()
	tweenService:Create(scriptSearch.SearchBox, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextColor3 = Color3.fromRGB(150, 150, 150)}):Play()

	if #scriptSearch.SearchBox.Text > 0 then
		if enterPressed then
			local success, response = pcall(function()
				searchScriptBlox(scriptSearch.SearchBox.Text)
			end)
		end
	else
		closeScriptSearch()
	end
end)

scriptSearch.SearchBox.Focused:Connect(function()
	if #scriptSearch.SearchBox.Text > 0 then
		tweenService:Create(scriptSearch.Icon, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
		tweenService:Create(scriptSearch.SearchBox, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	end
end)

mouse.Move:Connect(function()
	for _, slider in pairs(siriusValues.sliders) do
		if slider.active then
			updateSlider(slider)
		end
	end
end)

userInputService.WindowFocusReleased:Connect(function() windowFocusChanged(false) end)
userInputService.WindowFocused:Connect(function() windowFocusChanged(true) end)

for index, player in ipairs(players:GetPlayers()) do
	createPlayer(player)
	createEsp(player)
	player.Chatted:Connect(function(message) onChatted(player, message) end)
end

players.PlayerAdded:Connect(function(player)
	if not checkSirius() then return end

	createPlayer(player)
	createEsp(player)

	player.Chatted:Connect(function(message) onChatted(player, message) end)

	if checkSetting("Log PlayerAdded and PlayerRemoving").current then
		local logData = {
			["content"] = player.DisplayName.." (@"..player.Name..") left the server.",
			["avatar_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=420&height=420&format=png",
			["username"] = player.DisplayName,
			["allowed_mentions"] = {parse = {}}
		}

		logData = httpService:JSONEncode(logData)

		pcall(function()
			local req = originalRequest({
				Url = checkSetting("Player Added and Removing Webhook URL").current,
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json',
				},
				Body = logData
			})
		end)

	end

	if checkSetting("Moderator Detection").current and Pro then
		local roleFound = player:GetRoleInGroup(creatorId)

		if siriusValues.currentCreator == "group" then
			for _, role in pairs(siriusValues.administratorRoles) do 
				if string.find(string.lower(roleFound), role) then
					promptModerator(player, roleFound)
					queueNotification("Administrator Joined", siriusValues.currentGroup .." "..roleFound.." ".. player.DisplayName .." has joined your session", 3944670656) -- change to group name
				end
			end
		end
	end

	if checkSetting("Friend Notifications").current then
		if localPlayer:IsFriendsWith(player.UserId) then
			queueNotification("Friend Joined", "Your friend "..player.DisplayName.." has joined your server.", 4370335364)
		end
	end
end)

players.PlayerRemoving:Connect(function(player)
	if checkSetting("Log PlayerAdded and PlayerRemoving").current then
		local logData = {
			["content"] = player.DisplayName.." (@"..player.Name..") joined the server.",
			["avatar_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=420&height=420&format=png",
			["username"] = player.DisplayName,
			["allowed_mentions"] = {parse = {}}
		}

		logData = httpService:JSONEncode(logData)

		pcall(function()
			local req = originalRequest({
				Url = checkSetting("Player Added and Removing Webhook URL").current,
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json',
				},
				Body = logData
			})
		end)
	end

	removePlayer(player)

	local highlight = espContainer:FindFirstChild(player.Name)
	if highlight then
		highlight:Destroy()
	end
end)

runService.RenderStepped:Connect(function(frame)
	if not checkSirius() then return end
	local fps = math.round(1/frame)

	table.insert(siriusValues.frameProfile.fpsQueue, fps)
	siriusValues.frameProfile.totalFPS += fps

	if #siriusValues.frameProfile.fpsQueue > siriusValues.frameProfile.fpsQueueSize then
		siriusValues.frameProfile.totalFPS -= siriusValues.frameProfile.fpsQueue[1]
		table.remove(siriusValues.frameProfile.fpsQueue, 1)
	end
end)

runService.Stepped:Connect(function()
	if not checkSirius() then return end

	local character = localPlayer.Character
	if character then
		-- No Clip
		local noclipEnabled = siriusValues.actions[1].enabled
		local flingEnabled = siriusValues.actions[6].enabled

		for _, part in ipairs(character:GetDescendants()) do
			if part:IsA("BasePart") then
				if noclipDefaults[part] == nil then
					task.wait()
					noclipDefaults[part] = part.CanCollide
				else
					if noclipEnabled or flingEnabled then
						part.CanCollide = false
					else
						part.CanCollide = noclipDefaults[part]
					end
				end
			end
		end
	end
end)

runService.Heartbeat:Connect(function()
	if not checkSirius() then return end

	local character = localPlayer.Character
	local primaryPart = character and character.PrimaryPart
	if primaryPart then
		local bodyVelocity, bodyGyro = unpack(movers)
		if not bodyVelocity then
			bodyVelocity = Instance.new("BodyVelocity")
			bodyVelocity.MaxForce = Vector3.one * 9e9

			bodyGyro = Instance.new("BodyGyro")
			bodyGyro.MaxTorque = Vector3.one * 9e9
			bodyGyro.P = 9e4

			local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
			bodyAngularVelocity.AngularVelocity = Vector3.yAxis * 9e9
			bodyAngularVelocity.MaxTorque = Vector3.yAxis * 9e9
			bodyAngularVelocity.P = 9e9

			movers = { bodyVelocity, bodyGyro, bodyAngularVelocity }
		end

		-- Fly
		if siriusValues.actions[2].enabled then
			local camCFrame = camera.CFrame
			local velocity = Vector3.zero
			local rotation = camCFrame.Rotation

			if userInputService:IsKeyDown(Enum.KeyCode.W) then
				velocity += camCFrame.LookVector
				rotation *= CFrame.Angles(math.rad(-40), 0, 0)
			end
			if userInputService:IsKeyDown(Enum.KeyCode.S) then
				velocity -= camCFrame.LookVector
				rotation *= CFrame.Angles(math.rad(40), 0, 0)
			end
			if userInputService:IsKeyDown(Enum.KeyCode.D) then
				velocity += camCFrame.RightVector
				rotation *= CFrame.Angles(0, 0, math.rad(-40))
			end
			if userInputService:IsKeyDown(Enum.KeyCode.A) then
				velocity -= camCFrame.RightVector
				rotation *= CFrame.Angles(0, 0, math.rad(40))
			end
			if userInputService:IsKeyDown(Enum.KeyCode.Space) then
				velocity += Vector3.yAxis
			end
			if userInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
				velocity -= Vector3.yAxis
			end

			local tweenInfo = TweenInfo.new(0.5)
			tweenService:Create(bodyVelocity, tweenInfo, { Velocity = velocity * siriusValues.sliders[3].value * 45 }):Play()
			bodyVelocity.Parent = primaryPart

			if not siriusValues.actions[6].enabled then
				tweenService:Create(bodyGyro, tweenInfo, { CFrame = rotation }):Play()
				bodyGyro.Parent = primaryPart
			end
		else
			bodyVelocity.Parent = nil
			bodyGyro.Parent = nil
		end
	end
end)

runService.Heartbeat:Connect(function(frame)
	if not checkSirius() then return end
	if Pro then
		if checkSetting("Spatial Shield").current and tonumber(checkSetting("Spatial Shield Threshold").current) then
			for index, sound in next, soundInstances do
				if not sound then
					table.remove(soundInstances, index)
				elseif gameSettings.MasterVolume * sound.PlaybackLoudness * sound.Volume >= tonumber(checkSetting("Spatial Shield Threshold").current) then
					if sound.Volume > 0.55 then 
						suppressedSounds[sound.SoundId] = "S"
						sound.Volume = 0.5 	
					elseif sound.Volume > 0.2 and sound.Volume < 0.55 then
						suppressedSounds[sound.SoundId] = "S2"
						sound.Volume = 0.1
					elseif sound.Volume < 0.2 then
						suppressedSounds[sound.SoundId] = "Mute"
						sound.Volume = 0
					end
					if soundSuppressionNotificationCooldown == 0 then
						queueNotification("Spatial Shield","A high-volume audio is being played ("..sound.Name..") and it has been suppressed.", 4483362458) 
						soundSuppressionNotificationCooldown = 15
					end
					table.remove(soundInstances, index)
				end
			end
		end
	end

	if checkSetting("Anonymous Client").current then
		for _, text in ipairs(cachedText) do
			local lowerText = string.lower(text.Text)
			if string.find(lowerText, lowerName, 1, true) or string.find(lowerText, lowerDisplayName, 1, true) then

				storeOriginalText(text)

				local newText = string.gsub(string.gsub(lowerText, lowerName, randomUsername), lowerDisplayName, randomUsername)
				text.Text = string.gsub(newText, "^%l", string.upper)
			end
		end
	else
		undoAnonymousChanges()
	end
end)

for _, instance in next, game:GetDescendants() do
	if instance:IsA("Sound") then
		if suppressedSounds[instance.SoundId] then
			if suppressedSounds[instance.SoundId] == "S" then
				instance.Volume = 0.5
			elseif suppressedSounds[instance.SoundId] == "S2" then
				instance.Volume = 0.1
			else
				instance.Volume = 0
			end
		else
			if not table.find(cachedIds, instance.SoundId) then
				table.insert(soundInstances, instance)
				table.insert(cachedIds, instance.SoundId)
			end
		end
	elseif instance:IsA("TextLabel") or instance:IsA("TextButton") then
		if not table.find(cachedText, instance) then
			table.insert(cachedText, instance)
		end
	end
end

game.DescendantAdded:Connect(function(instance)
	if checkSirius() then
		if instance:IsA("Sound") then
			if suppressedSounds[instance.SoundId] then
				if suppressedSounds[instance.SoundId] == "S" then
					instance.Volume = 0.5
				elseif suppressedSounds[instance.SoundId] == "S2" then
					instance.Volume = 0.1
				else
					instance.Volume = 0
				end
			else
				if not table.find(cachedIds, instance.SoundId) then
					table.insert(soundInstances, instance)
					table.insert(cachedIds, instance.SoundId)
				end
			end
		elseif instance:IsA("TextLabel") or instance:IsA("TextButton") then
			if not table.find(cachedText, instance) then
				table.insert(cachedText, instance)
			end
		end
	end
end)


while task.wait(1) do
	if not checkSirius() then
		if espContainer then espContainer:Destroy() end
		undoAnonymousChanges()
		break
	end

	smartBar.Time.Text = os.date("%H")..":"..os.date("%M")
	task.spawn(UpdateHome)

	for _, connection in getconnections(localPlayer.Idled) do
		if not checkSetting("Anti Idle").current then connection:Enable() else connection:Disable() end
	end

	toggle.Visible = not checkSetting("Hide Toggle Button").current

	-- Disconnected Check
	local disconnectedRobloxUI = coreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")

	if disconnectedRobloxUI and not promptedDisconnected then
		local reasonPrompt = disconnectedRobloxUI.MessageArea.ErrorFrame.ErrorMessage.Text

		promptedDisconnected = true
		disconnectedPrompt.Parent = coreGui.RobloxPromptGui

		local disconnectType
		local foundString

		for _, preDisconnectType in ipairs(siriusValues.disconnectTypes) do
			for _, typeString in pairs(preDisconnectType[2]) do
				if string.find(reasonPrompt, typeString) then
					disconnectType = preDisconnectType[1]
					foundString = true
					break
				end
			end
		end

		if not foundString then disconnectType = "kick" end

		wipeTransparency(disconnectedPrompt, 1, true)
		disconnectedPrompt.Visible = true

		if disconnectType == "ban" then
			disconnectedPrompt.Content.Text = "You've been banned, would you like to leave this server?"
			disconnectedPrompt.Action.Text = "Leave"
			disconnectedPrompt.Action.Size = UDim2.new(0, 77, 0, 36) -- use textbounds

			disconnectedPrompt.UIGradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.new(0,0,0)),
				ColorSequenceKeypoint.new(1, Color3.new(0.819608, 0.164706, 0.164706))
			})
		elseif disconnectType == "kick" then
			disconnectedPrompt.Content.Text = "You've been kicked, would you like to serverhop?"
			disconnectedPrompt.Action.Text = "Serverhop"
			disconnectedPrompt.Action.Size = UDim2.new(0, 114, 0, 36)

			disconnectedPrompt.UIGradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.new(0,0,0)),
				ColorSequenceKeypoint.new(1, Color3.new(0.0862745, 0.596078, 0.835294))
			})
		elseif disconnectType == "network" then
			disconnectedPrompt.Content.Text = "You've lost connection, would you like to rejoin?"
			disconnectedPrompt.Action.Text = "Rejoin"
			disconnectedPrompt.Action.Size = UDim2.new(0, 82, 0, 36)

			disconnectedPrompt.UIGradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.new(0,0,0)),
				ColorSequenceKeypoint.new(1, Color3.new(0.862745, 0.501961, 0.0862745))
			})
		end

		tweenService:Create(disconnectedPrompt, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0}):Play()
		tweenService:Create(disconnectedPrompt.Title, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()
		tweenService:Create(disconnectedPrompt.Content, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0.3}):Play()
		tweenService:Create(disconnectedPrompt.Action, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {BackgroundTransparency = 0.7}):Play()
		tweenService:Create(disconnectedPrompt.Action, TweenInfo.new(.5,Enum.EasingStyle.Quint),  {TextTransparency = 0}):Play()

		disconnectedPrompt.Action.MouseButton1Click:Connect(function()
			if disconnectType == "ban" then
				game:Shutdown() -- leave
			elseif disconnectType == "kick" then
				serverhop()
			elseif disconnectType == "network" then
				rejoin()
			end
		end)
	end

	if Pro then
		-- all Pro checks here!

		-- Two-Way Adaptive Latency Checks
		if checkHighPing() then
			if siriusValues.pingProfile.pingNotificationCooldown <= 0 then
				if checkSetting("Adaptive Latency Warning").current then
					queueNotification("High Latency Warning","We've noticed your latency has reached a higher value than usual, you may find that you are lagging or your actions are delayed in-game. Consider checking for any background downloads on your machine.", 4370305588)
					siriusValues.pingProfile.pingNotificationCooldown = 120
				end
			end
		end

		if siriusValues.pingProfile.pingNotificationCooldown > 0 then
			siriusValues.pingProfile.pingNotificationCooldown -= 1
		end

		-- Adaptive frame time checks
		if siriusValues.frameProfile.frameNotificationCooldown <= 0 then
			if #siriusValues.frameProfile.fpsQueue > 0 then
				local avgFPS = siriusValues.frameProfile.totalFPS / #siriusValues.frameProfile.fpsQueue

				if avgFPS < siriusValues.frameProfile.lowFPSThreshold then
					if checkSetting("Adaptive Performance Warning").current then
						queueNotification("Degraded Performance","We've noticed your client's frames per second have decreased. Consider checking for any background tasks or programs on your machine.", 4384400106)
						siriusValues.frameProfile.frameNotificationCooldown = 120	
					end
				end
			end
		end

		if siriusValues.frameProfile.frameNotificationCooldown > 0 then
			siriusValues.frameProfile.frameNotificationCooldown -= 1
		end
	end
end