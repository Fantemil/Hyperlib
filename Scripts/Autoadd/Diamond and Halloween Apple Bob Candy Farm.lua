-- AUTOMATIC CANDY AND DIAMOND FARM
-- By Xane_MM
-- Requires Synapse X for fireproximityprompt(), protect_gui(), and dialog boxes.
-- THIS ONLY APPLIES FOR CANDY FARM.

-- This script serves two functions, based on what realm you are visiting. If
-- you're in Wickery Cliffs, this script will let you choose where to start
-- farming for candies through apple bobbing, then will automatically click
-- the proximity prompt every ~3-4 seconds. (This is completely safe; I used
-- this script for many hours while sleeping many nights and farmed over 200k
-- candies and that alt. is still not banned!.

-- If you're at Campus 2, Enchantix High, Snowglobe Summit, or Earth, this script
-- 2ill w5ill work, but instead farms diamonds by moving between them. Unlike the
-- 99.9% safe candy farm, this MAY GET YOU BANNED FROM ROYALE HIGH (untested).

-- Be sure to customize the settings below for both farm scripts; The defaults 
-- should work (as they're what the LoadString version uses) but this script is
-- customizable, including which keys are used for pausing farming and leaving.

-- SETTINGS!
local TIME_LIMIT				= 0	-- How many minute to farm for before quitting the game. 0 means to do it indefinitely. Only counts when farming.
local PRECISE_TIME_FORMAT		= false	-- If TRUE, shows time in H:MM:SS format. Otherwise, it's displayed as "# hr. # min.".
local SET_GOAL					= 0		-- If set, limits how many candies should be farmed before being kicked. Combines with time limit.
local IS_GOAL_TOTAL				= false	-- If false, the goal is how many candies collected during THIS session. False is the displayed total.

-- DIAMOND COLLECTION (NON-WICKERY CLIFFS) ONLY!
local DIAMOND_DELAY				= 0.3	-- How long to wait between each warp to a new diamond. (Tweening was removed because it didn't work at all.)
local SKIP_INTRO				= true	-- Bypasses the "start" button and immediately starts farming.
local SHOW_GUI					= true	-- Show the white box in the upper-right corner with details on current progress?

-- KEY BINDINGS
-- Press the keys listed here to interact with the top-right GUI without clicking on it! You can also assign gamepad buttons here.
local PAUSE_KEY_1				= "RightShift"		-- The "next spot" button during setup and "pause" while farming.
local PAUSE_KEY_2				= "Unknown"
local QUIT_KEY_1				= "Delete"	-- The "start farming" button before farming. Also used to kick yourself.
local QUIT_KEY_2				= "Unknown"
local HIDE_GUI_KEY				= "RightControl"	-- Hides or shows the top-right ScreenGui, as any good script includes.

if string.lower(type(TIME_LIMIT)) ~= "number" then TIME_LIMIT = 0 end
math.round(TIME_LIMIT)					-- The time limit must be a whole number.

local CollectibleNoun			= { "Candy", "Candies" }

local SupportedPlaceIDs			= {
	1067560271,		-- Enchantix High
	5589789252,		-- Wickery Cliffs
	5589778760,		-- Snowglobe Summit (snowflakes)
	1765700510,		-- Campus 2
	4728136927,		-- Beach House
	5589772268,		-- Diamond Beach
	2033617470		-- Sunset Island
}

local UserInputService			= game:GetService("UserInputService")
local TweenService				= game:GetService("TweenService")

local ProxPrompt = nil

-- The "delay" setting is used for both modes, controlling the speed of the overall while loop. To prevent errors and freezing the client, this value must be reasonable.
if not DIAMOND_DELAY or type(DIAMOND_DELAY) ~= "number" or DIAMOND_DELAY < 0.01 then DIAMOND_DELAY = 0.3 end

-- INITIALIZE THE GUI (messy code!)
	--[[
	Roblox2Lua
	----------
	
	This code was generated using
	Deluct's Roblox2Lua plugin.
	]]--

-- To avoid an immediate softlock, the GUI must be visible unless the intro sequence is skipped.
-- Additionally, the GUI cannot be hidden if this is used for its original purpose as a candy farm.
if not SKIP_INTRO or game.PlaceId == SupportedPlaceIDs[2] then SHOW_GUI = true end

--// Instances
local MainGui = Instance.new("ScreenGui")
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainGui.Name = "AppleBobbingGui"
if syn then
	syn.protect_gui(MainGui) -- You should call protect_gui before your GUI is parented.
else warn("Your executor doesn't contain the syn library, so the main GUI wasn't protected from leaking.")
end
MainGui.Parent = game:GetService("CoreGui")
MainGui.Enabled = SHOW_GUI

local GUIXAlignment = 1.0	-- Center the GUI on mobile.
if UserInputService.TouchEnabled then GUIXAlignment = 0.5 end

local Container = Instance.new("Frame")
Container.AnchorPoint = Vector2.new(GUIXAlignment, 0)
Container.BackgroundColor3 = Color3.new(1, 1, 1)
Container.BackgroundTransparency = 0.1
Container.BorderColor3 = Color3.new(0.262745, 0.329412, 0.364706)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(GUIXAlignment, -4, 0, 4)
Container.Size = UDim2.new(0.5, 0, 0.200000003, 0)
Container.SizeConstraint = Enum.SizeConstraint.RelativeYY
Container.Parent = MainGui

local NextButton = Instance.new("TextButton")
NextButton.Font = Enum.Font.Highway
NextButton.Text = "Change"
NextButton.TextColor3 = Color3.new(1, 1, 1)
NextButton.TextScaled = true
NextButton.TextSize = 14
NextButton.RichText = true
NextButton.TextWrapped = true
NextButton.AutoLocalize = false
NextButton.AnchorPoint = Vector2.new(0, 1)
NextButton.BackgroundColor3 = Color3.new(0.0588235, 0.796078, 1)
NextButton.BorderSizePixel = 0
NextButton.Position = UDim2.new(0, 8, 1, -8)
NextButton.Size = UDim2.new(0.467999995, 0, 0.25, 0)
NextButton.Name = "MoveButton"
NextButton.Modal = false
NextButton.Parent = Container

local QuitButton = Instance.new("TextButton")
QuitButton.Font = Enum.Font.Highway
QuitButton.Text = "Start!"
QuitButton.TextColor3 = Color3.new(1, 1, 1)
QuitButton.TextScaled = true
QuitButton.TextSize = 14
QuitButton.RichText = true
QuitButton.TextWrapped = true
QuitButton.AutoLocalize = false
QuitButton.AnchorPoint = Vector2.new(1, 1)
QuitButton.BackgroundColor3 = Color3.new(1, 0.584314, 0.835294)
QuitButton.BorderSizePixel = 0
QuitButton.Position = UDim2.new(1, -8, 1, -8)
QuitButton.Size = UDim2.new(0.467999995, 0, 0.25, 0)
QuitButton.Name = "QuitButton"
QuitButton.Modal = true
QuitButton.Visible = false
QuitButton.Parent = Container

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 16)
uicorner.Parent = Container

local Message = Instance.new("TextLabel")
Message.Font = Enum.Font.RobotoCondensed
Message.Text = "Due to Royale High's developers being incompetent as usual, something couldn't load properly. Please reset then try executing this script again."
Message.RichText = true
Message.TextColor3 = Color3.new(0, 0, 0)
Message.TextScaled = true
Message.TextSize = 14
Message.TextWrapped = true
Message.AutoLocalize = false
Message.AnchorPoint = Vector2.new(0.5, 0)
Message.BackgroundColor3 = Color3.new(1, 1, 1)
Message.BackgroundTransparency = 1
Message.BorderSizePixel = 0
Message.Position = UDim2.new(0.5, 0, 0, 4)
Message.Size = UDim2.new(1,-16, 0.55,0)
Message.Name = "Message"
Message.Parent = Container

local ProgressBar = Instance.new("TextLabel")
ProgressBar.Font = Enum.Font.SourceSans
ProgressBar.Text = ""
ProgressBar.TextColor3 = Color3.new(0, 0, 0)
ProgressBar.TextSize = 14
ProgressBar.AnchorPoint = Vector2.new(0.5, 1)
ProgressBar.BackgroundColor3 = Color3.new(0.501961, 0.501961, 0.501961)
ProgressBar.BorderSizePixel = 0
ProgressBar.Position = UDim2.new(0.5, 0, 0.725000024, 0)
ProgressBar.Size = UDim2.new(0.970000029, 0, 0.174999997, 0)
ProgressBar.Name = "ProgressBar"
ProgressBar.Parent = Container
ProgressBar.Visible = false	-- The progress bar only becomes visible if a candy goal is set during the second phase.

local UnimportantProgBarRounder = Instance.new("UICorner")
UnimportantProgBarRounder.CornerRadius = UDim.new(0, 16)
UnimportantProgBarRounder.Name = "BarRounder"
UnimportantProgBarRounder.Parent = ProgressBar

local ProgBarFill = Instance.new("TextLabel")
ProgBarFill.Font = Enum.Font.SourceSans
ProgBarFill.Text = ""
ProgBarFill.TextColor3 = Color3.new(0, 0, 0)
ProgBarFill.TextSize = 14
ProgBarFill.AnchorPoint = Vector2.new(0, 0.5)
ProgBarFill.BackgroundColor3 = Color3.new(0.403922, 0.811765, 1)
ProgBarFill.BorderSizePixel = 0
ProgBarFill.Position = UDim2.new(0, 4, 0.5, 0)
ProgBarFill.Size = UDim2.new(0, -8, 1, -8)
ProgBarFill.Name = "Fill"
ProgBarFill.Parent = ProgressBar
ProgBarFill.Visible = false

-- Set up the color gradient that the progress bar will interpolate between, a'la Royale High's energy bar.
local temp_bar_red = ColorSequenceKeypoint.new(0, Color3.fromRGB(184, 70, 72))
local temp_bar_orange = ColorSequenceKeypoint.new(0.25, Color3.fromRGB(199, 120, 83))
local temp_bar_yellow = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(173, 162, 79))
local temp_bar_green = ColorSequenceKeypoint.new(0.75, Color3.fromRGB(93, 209, 122))
local temp_bar_blue = ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 192, 255))
ProgBarFill:SetAttribute("BarColors", ColorSequence.new({temp_bar_red,temp_bar_orange,temp_bar_yellow,temp_bar_green,temp_bar_blue}))

local UnimportantFillRounder = Instance.new("UICorner")
UnimportantFillRounder.CornerRadius = UDim.new(0, 16)
UnimportantFillRounder.Name = "BarRounder"
UnimportantFillRounder.Parent = ProgBarFill

local PercentLabel = Instance.new("TextLabel")
PercentLabel.Font = Enum.Font.Highway
PercentLabel.Text = " 0%"
PercentLabel.TextColor3 = Color3.new(1, 1, 1)
PercentLabel.TextScaled = false
PercentLabel.TextSize = 20
PercentLabel.TextStrokeTransparency = 0
PercentLabel.TextWrapped = true
PercentLabel.TextXAlignment = Enum.TextXAlignment.Left
PercentLabel.AnchorPoint = Vector2.new(0.5, 0.5)
PercentLabel.BackgroundColor3 = Color3.new(1, 1, 1)
PercentLabel.BackgroundTransparency = 1
PercentLabel.BorderSizePixel = 0
PercentLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
PercentLabel.Size = UDim2.new(1, 0, 1, 0)
PercentLabel.Name = "PercentLabel"
PercentLabel.Parent = ProgBarFill
PercentLabel.Visible = false

local FirstScriptPhaseRan = false	-- This stops the "main part" of the script from running below, which was at one point its own script.
local NextButtonFunction = nil		-- Variables tos tore each button's function, to disconnect upon starting phase 2.
local QuitButtonFunction = nil
local StartRequested = false
local LightPillar = nil	-- Part created over the invisible seats within each apple bobbing area, seen anytime when not actively farming.

-- Allows the script to continue execution below.
local function BeginFarming()
	-- print("Let's start the farming!")
	StartRequested = true
end

-- If this is Wickery Cliffs, ask the player to pick which location they'd like to bob at.
if game.PlaceId == SupportedPlaceIDs[2] then
	-- FUNCTIONS FOR CANDY FARM SETUP SCRIPT
	local SpotsFound = 0	-- Counter used to make sure a unique message is used upon finding the first location.
	local function FindNextSpot()
		-- If a ProximityPrompt reference was already created, make sure its light pillar is destroyed before trying to find another reference.
		if ProxPrompt then
			ProxPrompt.Parent.Parent:FindFirstChild("LightPillar"):Destroy()
		end

		-- Before trying to actually get a reference, see if the first "group" has any seats left. If not, destroy the whole thing.
		if not workspace:FindFirstChild("AppleBobbing"):FindFirstChild("AppleBobbingScripts"):FindFirstChild("Seat") then
			workspace:FindFirstChild("AppleBobbing"):FindFirstChild("AppleBobbingScripts"):Destroy()
		end

		ProxPrompt = workspace:FindFirstChild("AppleBobbing"):FindFirstChild("AppleBobbingScripts"):FindFirstChild("Seat").Attachment.ProximityPrompt

		if ProxPrompt then
			LightPillar = Instance.new("Part")
			LightPillar.Name = "LightPillar"
			LightPillar.Anchored = true
			LightPillar.CanCollide = false
			LightPillar.CanQuery = false
			LightPillar.CanTouch = false
			LightPillar.CFrame = ProxPrompt.Parent.Parent.CFrame
			LightPillar.Size = Vector3.new(0.25,2000,0.25)
			LightPillar.Transparency = 0.25
			LightPillar.Material = Enum.Material.Neon
			LightPillar.Color = Color3.new(1,1,0.75)
			LightPillar.Parent = ProxPrompt.Parent.Parent
		end

		SpotsFound += 1
		if SpotsFound < 2 then
			Message.Text = "A beam should've formed over your apple bob spot. If it's not visible, it's usually on the right trough under the tent across from spawn."
		else
			Message.Text = "A new place has been chosen; If it looks open, please walk there then run the main script."
		end
	end

	-- Takes the current apple bobbing spot (selecting a new one if it's not found) and destroys it, requesting a new one in the process.
	local function DeleteSpotAndAdvance()
		if not ProxPrompt then FindNextSpot() end

		-- Remove the light pillar before continuing, to avoid the possibility of having two of those at once.
		if LightPillar then LightPillar:Destroy() end
		ProxPrompt.Parent.Parent:Destroy()	-- Destroy the Seat used for this apple bobbing spot, to force another to be found.
		ProxPrompt = nil
		FindNextSpot()
	end
	
	-- If the script has executed this far, replace the default "incompetence" message with one about requiring Synapse X.
	-- Yes, it's not advertised, but you need Synapse X to actually use this script.
	if not syn then
		local tinyurl = "https://tinyurl.com/5zr637a7"
		local no_syn_error = "Sorry, but this script requires <b>Synapse X</b> to interact with ProximityPrompts. If your injector supports fireproximityprompt in its API, let Xane know at "
		Message.Text = no_syn_error .. tinyurl
		NextButton.Visible = false
		QuitButton.Visible = false
		error(no_syn_error .. tinyurl)
	end
	
	-- Don't form the pillar of light or change the notification's message unless the apple bobbing area exists.
	if workspace:FindFirstChild("AppleBobbing") and workspace:FindFirstChild("AppleBobbing"):FindFirstChild("AppleBobbingScripts") and syn then
		FirstScriptPhaseRan = true
		NextButtonFunction = NextButton.MouseButton1Click:Connect(DeleteSpotAndAdvance)
		QuitButtonFunction = QuitButton.MouseButton1Click:Connect(BeginFarming)
		FindNextSpot()	-- Locate the first apple bobbing spot.
	
		-- else NotificationPopup:FindFirstChild("TextLabel").Text = "Wickery Cliffs is loaded correctly, but there don't seem to be any valid apple bobbing spots; Please try leaving then returning; Just click Wickery Cliffs on the map and you'll return to this exact server."
	end
	
	if not FirstScriptPhaseRan then
		MainGui:Destroy()
		error("The setup part of the script couldn't finish initializing. This may be due to Wickery Cliffs not loading properly. Please try again once all of Wickery Cliffs has loaded, or re-join the server.")
	end
	
	NextButton.Visible = true
	QuitButton.Visible = true
	
elseif table.find(SupportedPlaceIDs, game.PlaceId) then	-- If this is another supported location on the list, then just find the folder where its diamonds are stored, then prompt the player to start.
	if not SKIP_INTRO then
		QuitButtonFunction = QuitButton.MouseButton1Click:Connect(BeginFarming)
		Message.Text = "Welcome to Xane's diamond-farming script! Click the button below to begin collecting diamonds, but please note that you could be banned for this. Always farm on an alt. account!"
		QuitButton.Visible = true
		NextButton.Visible = false
	else BeginFarming()	-- If the intro is being skipped, just begin farming diamonds if possible.
	end
else Message.Text = "Your current realm isn't supported by this script. Please visit Enchantix High, Campus 2, Diamond Beach, Sunset Island, Beach House, or a seasonal event realm then execute this script again."
end

while not StartRequested do task.wait(0.25) end

local NPCDialog = nil
-- SCRIPT 2 BEGINS HERE
if game.PlaceId == SupportedPlaceIDs[2] then
	ProxPrompt = game:GetService("Workspace"):FindFirstChild("AppleBobbing"):FindFirstChild("AppleBobbingScripts"):FindFirstChild("Seat").Attachment.ProximityPrompt
	NPCDialog = game:GetService("Players").LocalPlayer.PlayerGui.NPCDialog.Frame	-- Used for alternative candy counter.
elseif table.find(SupportedPlaceIDs, game.PlaceId) then
	CollectibleNoun = { "Diamond", "Diamonds" }	-- Properly say that the collectibles are diamonds instead of candies.
end

local VU = game:GetService("VirtualUser") -- Used for anti-afk measures

if LightPillar then LightPillar.Transparency = 1 end	-- Hide the light pillar. It will be shown again if the user pauses candy farming.

local RemainingTime						= -1	-- Timer, which goes down each minute. When it hits zero, the player is kicked automatically.
if TIME_LIMIT > 0 then RemainingTime	= TIME_LIMIT * 60
else RemainingTime = 0	-- If the time limit is disabled, then this variable is repurposed as an "elapsed time" counter.
end

-- THis is used to detect if the player's picked up by a car.
local PlayerHumanoid : Humanoid			= game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

local TimeString						= "??:??:??"	-- A string that represents how much time has passed or is remaining before farming ends.
local StartingCandyOffset				= 0
local CurrentCandy						= 0
local CandyGoal_Displayed				= 0				-- Representation of the candy goal. If it's not a "total" goal, this will vary, showing how many candies are needed to reach the goal, otherwise matching.

-- ColorFunctions:GetColorSeqValueAtPosition(takes ColorSequence and number, returns Color3)
-- Iterates through a NumberSequence's keypoints and finds the closest value at the requested
-- position (0-1). GetNumberSeqValueAtPosition is a slightly-tweaked version of this function.
-- This function was brought in straight from my game, Project Magical Mary!
local function GetColorSeqValueAtPosition(_colorSeq : ColorSequence, time : number, _wrap : boolean)
	local ReturnValue = Color3.new(0.5,0.5,0.5)
	local SkipCalculation = false

	if _colorSeq then
		-- If we are very close to or out of the 0-1 bounds, check the "wrap around" bool argument.
		-- If it's FALSE, all values out of the range are essentially clamped to the first and last keypoint's values.
		-- If TRUE, any out-of-range values essentially loop to the other end. (Will this improve the time-of-day system?)
		if time <= 0.0 then
			if _wrap then
				-- print("Wrapping around, adding 1 until in bounds.")
				while time <= 0.00001 do
					time += 1.0
				end
				-- print("Final alpha to use is " .. time)
			end
			-- If not wrapping across the bounds of the ColorSequence, or if the results of said wrapping results in an "alpha"
			-- too close to the bounds, then just use that first value instead of returning the default grey color.
			if not _wrap or (time>-0.001 and time<0.001) or time == 0.0 then
				ReturnValue = _colorSeq.Keypoints[1].Value
				-- print("Start of ColorSeq detected; Returning its first value,", ReturnValue)
				SkipCalculation = true	-- Don't run the code below, as the final color to return has already been found.
			end
		elseif time >=1.0 then
			if _wrap then
				-- print("Wrapping around, subtracting 1 until in bounds.")
				while time >= 0.99999 do
					time -= 1.0
				end
				-- print("Final alpha to use is " .. time)
			end

			-- If not wrapping across the bounds of the ColorSequence, or if the results of said wrapping results in an "alpha"
			-- too close to the bounds, then just use that last value instead of returning the default grey color.
			if not _wrap or (time>0.999 and time<1.001) or time == 1.0 then
				ReturnValue = _colorSeq.Keypoints[#_colorSeq.Keypoints].Value
				-- print("End of ColorSeq detected; Returning its last value,", ReturnValue)
				SkipCalculation = true
			end
		end

		if not SkipCalculation then
			-- Step through each sequential pair of keypoints and see if alpha lies between the points' time values.
			for i = 1, #_colorSeq.Keypoints - 1 do
				local this = _colorSeq.Keypoints[i]
				local next = _colorSeq.Keypoints[i + 1]
				if time >= this.Time and time < next.Time then
					-- Calculate how far alpha lies between the points
					local alpha = (time - this.Time) / (next.Time - this.Time)
					-- Evaluate the real value between the points using alpha
					ReturnValue = Color3.new(
						(next.Value.R - this.Value.R) * alpha + this.Value.R,
						(next.Value.G - this.Value.G) * alpha + this.Value.G,
						(next.Value.B - this.Value.B) * alpha + this.Value.B
					)
				end
			end
		end
	else warn("The provided ColorSequence doesn't exist! Returning grey.")
	end

	return ReturnValue
end

local FarmingEnabled = false
-- List of Reasons:
-- manual		Player clicked the kick button themselves, ending this prematurely.
-- candygoal	The set goal was reached.
-- timer		The countdown ended, running out of time.
local function KickTheFarmer(_reason)
	FarmingEnabled = false
	if _reason == "timer" then
		game.Players.LocalPlayer:Kick("Time's up! The farming script ran for the time length that you specified. Thank you for using Xane's RH farming script.")
	elseif _reason == "manual" then
		local dialogResponse = messagebox("Are you finished with farming? If so, you'll be kicked. You may also pause farming and teleport to finish farming without being kicked.", "Confirmation", 4)
		if dialogResponse == 6 then
			FarmingEnabled = false
			game.Players.LocalPlayer:Kick("As you've requested, this farming session has ended. Thank you for using Xane's candy farming script.")
		end
	elseif _reason == "candygoal" then
		FarmingEnabled = false
		game.Players.LocalPlayer:Kick("You've reached your goal and farmed the number of candies/diamonds that you requested, so you have been kicked.")
	end
	error("Farming finished; Ending loop here.")
end

-- Allows/blocks automatic proximity prompt interactions and pauses the timer.
local function ToggleFarming()
	FarmingEnabled = not FarmingEnabled

	if FarmingEnabled then
		NextButton.Text = "Pause<br/>(" .. PAUSE_KEY_1 .. ")"
		if LightPillar then LightPillar.Transparency = 1 end
	else
		NextButton.Text = "Unpause<br/>(" .. PAUSE_KEY_1 .. ")"
		if LightPillar then LightPillar.Transparency = 0.5 end
	end
end

-- The Royale High candy counter adds commas where expected, but this would cause problems in this script. This strips those out, hopefully.
-- The gsub part was copied from my game's code.
local function SanitizeCandyCounter()
	local Counter = nil
	-- If you're at Wickery Cliffs, the counter is the left-side candy one. Otherwise, it's the diamond counter shown in the right sidebar.
	if game.PlaceId == SupportedPlaceIDs[2] then
		Counter = game:GetService("Players").LocalPlayer.PlayerGui.CandyCounter.CandyCurrency.CandyAmount
	else
		Counter = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Center.DiamondAmount
	end
	
	if Counter then
		Counter = Counter.Text:gsub('%D+', '');	-- Remove all remaining non-number characters.(All credit goes to TortenSkjold on DevForums!)
		Counter = tonumber(Counter)
	end
	
	if not Counter or Counter < 0 then Counter = 0 end	-- Make sure that this function always returns something.
	return tonumber(Counter)
end

-- Repurpose the two buttons; The left button becomes a "pause" button and the right one is the "quit" button.
NextButton.Visible = false
QuitButton.Visible = false

if NextButtonFunction then NextButtonFunction:Disconnect() end
if QuitButtonFunction then QuitButtonFunction:Disconnect() end

task.delay(0.5, function()
	ToggleFarming()	-- Starts farming and therefore sets this button's text to "pause".
	NextButtonFunction = NextButton.MouseButton1Click:Connect(function() ToggleFarming() end)
	NextButton.Visible = true

	QuitButton.Text = "Quit<br/>(" .. QUIT_KEY_1 .. ")"
	-- QuitButton.Size = UDim2.new(0.963,0, 0.225,0)	-- Resize the button so it covers the whole "window" horizontally.
	QuitButtonFunction = QuitButton.MouseButton1Click:Connect(function() KickTheFarmer("manual") end)
	QuitButton.Visible = true
end)

local Target = nil	-- For candy farming, this is the apple bob location's prompt. For diamond farming, it's the folder containing the collectibles.
local Targer2 = nil	-- At Enchantix High, this points to the flight class' diamonds folder. When that class is active, its diamonds are collected before regular ones.
-- If the proximity prompt exists, the Wickery Cliffs code ran, so destroy the stupid "nice apple bobbing" message.
if ProxPrompt then
	Target = ProxPrompt	-- Itg's messy code, I know, but re-purpose ProxPrompt as Target for the loop below. This is wha happens when you give a script two purposes in one like this.
	if NPCDialog.Parent.Parent:FindFirstChild("WonCandy") then
		NPCDialog.Parent.Parent:FindFirstChild("WonCandy"):Destroy()
	end
else	-- Otherwise, this is another supported realm!
	Target = workspace:FindFirstChild("CollectibleDiamonds")	-- I HOPE the directory is always CollectibleDiamonds.
	
	-- If the player is at Enchantix High, also support scanning its flight class for diamonds. Unlike the diving class, these are collectible (and play Mario and LoZ sounds for some reason).
	if game.PlaceId == SupportedPlaceIDs[1] then
		
		local temp_ehDiamondFolder = workspace:WaitForChild("Diamonds", 10)
		if temp_ehDiamondFolder then Target2 = temp_ehDiamondFolder:WaitForChild("Flying",10) end
	end
	
	print(Target, Target2)
end

-- Search through the folder, only counting the first one that isn't transparent. (Enchantix turns collected doiamonds invisible)
local function FindDiamond(_folder)
	local DiamondToGrab = nil
	for _, v in ipairs(Target:GetChildren()) do
		if v.Transparency < 0.25 then
			DiamondToGrab = v
			break
		end
	end
	
	return DiamondToGrab
end

local FarmingNotice = "Farming is in progress! Check back to make sure the captcha isn't active."
local PreviousCandy = 0
local temp_time = {0.0,0.0}
if Target and game.Players.LocalPlayer.Character then
	if true then	-- ProxPrompt then
		StartingCandyOffset = SanitizeCandyCounter()
		CurrentCandy = SanitizeCandyCounter()
	end

	-- If a goal is set, but the player's already past that number, invalidate it to avoid immediately kicking them.
	if SET_GOAL > 0 and IS_GOAL_TOTAL and SET_GOAL < StartingCandyOffset then
		SET_GOAL = 0
	end

	if SET_GOAL > 0 then
		if IS_GOAL_TOTAL then	-- If this is a "total" candy goal, show the difference between the current and goal amounts.
			print("Total candy goal detected.")
			CandyGoal_Displayed = SET_GOAL - CurrentCandy
		else CandyGoal_Displayed = SET_GOAL	-- Otherwise, it's just how much candy that will be needed this session, which is the real goal value.
		end

		ProgressBar.Visible = true
		ProgBarFill.Visible = false
	end

	-- Randomize the sounds used by buobbing to keep it entertaining.
	game:GetService("RunService").Heartbeat:Connect(function(_delta)
		temp_time[1] += _delta
		temp_time[2] += _delta
		
		-- Message updater; Changes the text of the custom Gui in the upper-right corner every second.
		if temp_time[2] >= 1.0 then
			temp_time[2] = 0.0
			
			if true then	-- ProxPrompt then
				-- Update the current candy counter.
				CurrentCandy = SanitizeCandyCounter()
				
				-- If the player's candy decreased, that means they must've bought something from the Candy Shop. Update the "offset" to counter this.
				if CurrentCandy < PreviousCandy then
					StartingCandyOffset = CurrentCandy	-- To do that, just set it to the current candy value.
				elseif CurrentCandy >= SET_GOAL and IS_GOAL_TOTAL and SET_GOAL > 0 then KickTheFarmer("candygoal")
				elseif CurrentCandy-StartingCandyOffset > SET_GOAL and not IS_GOAL_TOTAL and SET_GOAL > 0 then KickTheFarmer("candygoal")
				end
			end
			
			-- Next, generate the time text that will be displayed in the message.
			local temp_minutes, temp_seconds
			if PRECISE_TIME_FORMAT then
				if math.floor((RemainingTime/60)%60) < 10 then temp_minutes = "0" .. math.floor((RemainingTime/60)%60)
				else temp_minutes = math.floor((RemainingTime/60)%60)
				end
				if RemainingTime%60 < 10 then temp_seconds = "0" .. RemainingTime%60
				else temp_seconds = RemainingTime%60
				end
				
				TimeString = math.floor(RemainingTime/3600) .. ":" .. temp_minutes .. ":" .. temp_seconds
			else TimeString = math.floor(RemainingTime/3600) .. " hr. " .. math.floor((RemainingTime/60)%60) .. " min."
			end
			
			-- If there's a time limit, count down, and if time runs out, kick the player. If no time limit, increment the timer.
			-- Only do this if the player has farming turned on, though.
			if FarmingEnabled then
				if TIME_LIMIT > 0 then
					RemainingTime -= 1
					if RemainingTime < 0 then KickTheFarmer("timer") end
				else RemainingTime += 1
				end
			end
			
			local TimeLabelText = ""
			local CandyLineText = ""
			if TIME_LIMIT > 0 then TimeLabelText= "<br/><b>Time remaining</b>: "
			else TimeLabelText = "<br/><b>Time elapsed</b>: "
			end
			if SET_GOAL > 0 then
				-- Update the progress bar's color and size to reflect our current progress towards the candy goal.
				
				ProgBarFill.Size = UDim2.new((CurrentCandy-StartingCandyOffset)/CandyGoal_Displayed, -8, 1, -8)
				ProgBarFill.BackgroundColor3 = GetColorSeqValueAtPosition(ProgBarFill:GetAttribute("BarColors"),(CurrentCandy-StartingCandyOffset)/CandyGoal_Displayed,false)
				PercentLabel.Text = " " .. math.round(((CurrentCandy-StartingCandyOffset)*100)/CandyGoal_Displayed) .. "%"
				if math.round(((CurrentCandy-StartingCandyOffset)*100)/CandyGoal_Displayed) >= 3 then ProgBarFill.Visible = true end
				if math.round(((CurrentCandy-StartingCandyOffset)*100)/CandyGoal_Displayed) >= 5 then PercentLabel.Visible = true end
				
				CandyLineText = "<br/><b>" .. CollectibleNoun[1] .. " goal for session</b>: " .. CurrentCandy-StartingCandyOffset .. "/" .. CandyGoal_Displayed
			else CandyLineText = "<br/><b>" .. CollectibleNoun[2] .. " collected this session</b>: " .. CurrentCandy-StartingCandyOffset
			end
			
			Message.Text = FarmingNotice .. TimeLabelText .. TimeString .. CandyLineText
			
			if ProxPrompt then PreviousCandy = CurrentCandy end	-- Track the difference between this second and the next using this variable.
			
			-- At the end of every minute, briefly right-click to keep Roblox from kicking for being idle for 20 minutes.
			-- This doesn't seem to work anymore; Roblox must've patched the VirtualUser input counting as actual input.
			-- This code was copied from another Royale High script meant for Campus 2, but tweaked.
			if RemainingTime%60==1 then
				VU:Button2Down(Vector2.zero, workspace.CurrentCamera.CFrame)
				task.wait(0.333+(math.random()/3))
				VU:Button2Up(Vector2.zero, workspace.CurrentCamera.CFrame)
			end
		end
	end)
	
	UserInputService.InputEnded:Connect(function(_input)
		if _input.UserInputType == Enum.UserInputType.Keyboard or _input.UserInputType == Enum.UserInputType.Gamepad1 then
			if _input.KeyCode == Enum.KeyCode[PAUSE_KEY_1] or _input.KeyCode == Enum.KeyCode[PAUSE_KEY_2] then
				ToggleFarming()
			elseif _input.KeyCode == Enum.KeyCode[QUIT_KEY_1] or _input.KeyCode == Enum.KeyCode[QUIT_KEY_2] then
				KickTheFarmer("manual")
			elseif _input.KeyCode == Enum.KeyCode[HIDE_GUI_KEY] then	-- Toggle visibility of the top-right box.
				MainGui.Enabled = not MainGui.Enabled
			end
		end
	end)
	
	-- Anti-Car: Detects spawned cars and destroys their bodies, freezing them in place. (This doesn't stop them from picking you up!)
	workspace.ChildAdded:Connect(function(_newChild)
		print(_newChild.Name, _newChild.ClassName)
		if _newChild.Name == "Car" and _newChild.ClassName == "Model" then
			warn("Oh no! A car spawned!")
			task.wait(0.5)
			if _newChild:FindFirstChild("Body") then _newChild:FindFirstChild("Body"):Destroy() end
		end
	end)
	
	if not ProxPrompt then	-- Floating players can get stuck in Seats, so destroy all of them before beginning.
		for _, v in ipairs(workspace:GetDescendants()) do
			if v:IsA("Seat") or v:IsA("VehicleSeat") then v:Destroy() end
		end
	end
	
	-- If farming is happening, click the proximity prompt every 4-5 seconds with random variation.
	while true do
		if FarmingEnabled then
			-- Wickery Cliffs candy farm
			if ProxPrompt and
				Vector3.new(ProxPrompt.Parent.Parent.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart",5).Position).Magnitude < 5
			then
				fireproximityprompt(ProxPrompt, 0.5125+math.random()/3)
				task.wait(4.335+math.random()*1.14)
			else	-- Diamond farming
				local diamond = nil
				
				-- If at Enchantix, see if flight class is active. If it is, grab its diamonds before anything else.
				if Target2 and #Target2:GetChildren() > 0 and FindDiamond(Target2) then
					diamond = FindDiamond(Target2)
				else
					diamond = FindDiamond(Target)
				end
				
				if diamond then
					PlayerHumanoid.RootPart.CFrame = diamond.CFrame
					diamond.Transparency = 1
				-- else print("No diamonds are collectible now.")
				end
			end
		end
		
		task.wait(DIAMOND_DELAY)	-- Always wait a quarter-second between loops to avoid freezing the client.
	end
end