-- ROYALE HIGH EGG HUNT AUTO WIN/FARMING SCRIPT
-- Place this script in your "autoexec" folder then visit Divinia Park while the Egg Hunt event is active (in April).
-- Once this is done, you can sit back and watch as you blow away your competition, automatically earn Golden Eggs,
-- and spend them on diamonds, letting you profit from this short-lived event!

-- This script attempts to automate the whole process and tries to avoid scenarios that could cause a softlock.
-- If the server that you join is currently playing a round, or is "waiting for 4 players", a server-hop (which
-- uses Infinite Yield code) will happen, moving you to another almost-full server, repeating this until it
-- finds a server that's waiting for a game to start.

-- This script requires Synapse X, as it uses its mouse movement and click functions to join the event and
-- skip through Violet's stupid intro dialogue. (The remote event that adds the player to the event oddly
-- doesn't work if fired directly for unknown reasons, and it isn't a distance check. The "intro finished" one IS
-- abused so eggs spawn in before Violet's dialogue is skipped.

-- At the moment, this script doesn't detect if the lobby changes from "intermission" to "waiting for 4 players",
-- so if the server dies, your character will stay there. Also, if it tries to join the event right as it starts,
-- it won't server-hop despite now needing to wait at least 5 minutes before the next round begins.

-- SETTINGS
local ALLOW_CHATTER     = false -- If TRUE, Violet and Bud will talk while you farm!
local HOP_WHEN_FINISHED = true  -- Server-hop after each game to make reporting harder.
local FARM_DIAMONDS     = false  -- Buy Diamond sur-prize eggs with golden eggs automatically.
local MOVE_EGG_COUNTER  = true -- moves the repurposed egg/egg shower counter to top-center.
local UNZOOM_CAMERA     = true  -- Zooms out the camera to combat the egg-hiding anti-cheat.
local HIDE_SHOWERS      = true  -- Hide the falling egg Gui animation during egg showers.
local EGG_GOAL          = 0     -- If higher than 0, limits how many eggs that you will collect.

-- Is the game loaded yet? Wait until it is, if not.
if not game:IsLoaded() then
    game.Loaded:Wait()
end

if game.PlaceId ~= 4702658078 then error("The current place isn't Divinia Park (Royale High), so the Egg Hunt Auto-win/Farm script cannot run here.") end

task.wait(1.5) -- Wait another second until (hopefully) the park finishes loading in.
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local msg = Instance.new("Message", game.Players.LocalPlayer.PlayerGui)
msg.Text = "Waiting until most instances exist, please wait."

task.wait(7.5)

local EasterFolder = ReplicatedStorage:FindFirstChild("EasterEvent")
if not EasterFolder then
    msg.Text = "Oh, sorry; It looks like the Egg Hunt's not active. Please remove this script from your autoexec folder, if it's in there."
    wait(6)
    msg:Destroy()
end
if msg then msg:Destroy()
else error("Egg Hunt event not detected. Terminated exploit script early.")
end

local function ClickButton(_element)
    while not iswindowactive do wait() end
    local pos = _element.RawRect2D.Min + ((_element.RawRect2D.Max-_element.RawRect2D.Min)/2)
    
    task.wait(0.05)
    mousemoveabs(pos.X, pos.Y)
        
    -- Click on the skip button up to five times to skip Violet's stupid intro dialogue.
    for i = 1, 5 do
        mousemoverel(math.random(-1,1), math.random(-1,1))
        task.wait(0.125)
        mouse1click()
    end
end

local EggHuntDirectory = game:GetService("Workspace"):FindFirstChild("EggHuntMinigame"):FindFirstChild("Eggs")
local LocalPlayer = game.Players.LocalPlayer
local EggHuntGuiBase = LocalPlayer.PlayerGui.EasterEventOriginal
local EggHuntPromptGui = EggHuntGuiBase.Prompt
fireclickdetector(EggHuntDirectory.Parent["Sign-Up Board"].ClickDetector)

task.wait(1) -- Wait for the pointless UI animation, then click the button.

-- Move the cursor to the center of the "yes" button then click it.
ClickButton(EggHuntPromptGui.Yes)

-- Only wait for around 3 minutes before server-hopping. This is to prevent automated farming being cut short by mostly dead servers.
local IntroTimeBeforeHop = 180.0
local AutoHopFunction = game:GetService("RunService").RenderStepped:Connect(function(_delta)
    IntroTimeBeforeHop -= _delta
    if IntroTimeBeforeHop <= _delta then
        ServerHop()
        AutoHopFunction:Disconnect()
    end
end)

local Nest = nil
print("Waiting for the nest to spawn...")

-- FUNCTION COPIED FROM INFINITE YIELD!

httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
PlaceId, JobId = game.PlaceId, game.JobId
local HttpService = game:GetService("HttpService")
function ServerHop(args, speaker)
	-- thanks to NoobSploit for fixing
	if httprequest then
		local servers = {}
		local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", PlaceId)})
		local body = HttpService:JSONDecode(req.Body)
		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.playing >= (v.maxPlayers - v.maxPlayers/4) and v.id ~= JobId then
					table.insert(servers, 1, v.id)
				end
			end
		end
		if #servers > 0 then
			 game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], LocalPlayer)
		else
		    LocalPlayer:Kick("Changing Divinia Park servers...")
			return false
		end
	end
end

-- See if this server is already playing a round or if it's waiting for 4 players. If so, server hop immediately.
if EggHuntGuiBase.Lobby.GameStatus.Text == "Game In Progress" or
    EggHuntGuiBase.Lobby.GameStatus.Text == "Waiting For 4 Players"
then
    LocalPlayer.PlayerGui["Join Game Popup"].Background.Description.Text = "This server isn't ready for you. Let's try another one."
    ServerHop()
else
    LocalPlayer.PlayerGui["Join Game Popup"].Background.Description.Text = "Thank you for using Xane's Egg Hunt Destruction script! May you be victorious...!"
end

while not Nest do Nest = EggHuntDirectory.Parent:FindFirstChild("NestClickbox") task.wait() end
print("Done! Now to add your outline...")

local Humanoid = LocalPlayer.Character.Humanoid
local CounterReference = game:GetService("Players").LocalPlayer.PlayerGui.EasterEventOriginal.InGameOverhead.Counter
local EggsHeld = 0  -- Counter that keeps track of how many eggs that are being held by the player.
if not Humanoid then error("Couldn't get a reference to your Humanoid! Please try again.") end

local Outline = Instance.new("Highlight", Humanoid.Parent)
Outline.OutlineColor = Color3.new(0.6,1,1)
Outline.FillTransparency = 1
print("Added your outline, which will make you visible, even when viewing another player's misfortune.")

if not EggHuntDirectory or
    not Nest or
    not CounterReference
then
    warn("Couldn't find a required Instance reference!", EggHuntDirectory, Nest, Humanoid, CounterReference)
else
    -- If the falling eggs aren't needed, or are just an annoying distraction, remove the layer used by that Gui animation.
    if HIDE_SHOWERS and EggHuntGuiBase.EggRain then EggHuntGuiBase.EggRain:Destroy() end
    
    local IsAtNest = false  -- Is TRUE if the player was last warped to the nest.
    -- Constantly check for eggs. If one's found, "click" it. If 5 are collected, "deliver" them.
    function DepositEggs()
        IsAtNest = true
        Humanoid.Parent:PivotTo(Nest.CFrame * CFrame.new(0,-10,0))
        task.wait(0.005)
        fireproximityprompt(Nest.ProximityPrompt)
        task.wait(0.005)
        -- print("Morph under the slopes, and no one would understand. YOU'LL BE THE ONE TO DIE, NO ONE WILL SEE YA.")
        EggsHeld = 0
    end
    
    task.wait(1.5)
    
    AutoHopFunction:Disconnect()    -- Stop the first "leave" function, as the game is about to start, wbhich in turn uses its OWN auto-leave function.
    
    -- Lie and say that you finished Violet's stupid intro so the eggs spawn 3 seconds faster.
    task.spawn(function()
        for i = 1, 20 do
            game:GetService("ReplicatedStorage"):WaitForChild("EasterEvent"):WaitForChild("EggHuntRemotes"):WaitForChild("IntroFinished"):FireServer()
            task.wait()
        end
    end)
    
    LocalPlayer.PlayerGui["Join Game Popup"].Background.Description.Text = "The game has started! Open the chat box, sit back, and await the hilarous reactions from other players! You will automatically server-hop when this is done! (You can actually leave your device and AFK-farm if you place this in your autoexec folder.)"
    
    -- Move the cursor to the center of the "yes" button then click it.
    local OriginalGui = EggHuntPromptGui.Parent.IntroText
    local IntroTextGui = OriginalGui:Clone()  -- Copy this stubborn Gui for Violet's "speech" soon.
    ClickButton(OriginalGui.SkipButton)
    
    -- If Violet's chatter is off, get rid of the cloned Gui. Otherwise, just get rid of the "next" button.
    if not ALLOW_CHATTER then IntroTextGui:Destroy()
    else IntroTextGui.SkipButton:Destroy()   -- Get rid of the "next" button in our clone.
    end
    
    print("About to add functions used during rounds.")
    
    local EggsCollected = 0
    local EggShowers = 0    -- Monitor how many times that an Egg Shower has happened.
    EggHuntGuiBase.GoldenEggs.CurrencyDisplay.GoldenEggsCurrency.Text = " 0"
    EggHuntGuiBase.GoldenEggs.CurrencyDisplay.text.Text = "0 EGG SHOWERS"
    if MOVE_EGG_COUNTER then-- If requested, reposition the counter at the top-center of the screen.
        EggHuntGuiBase.GoldenEggs.CurrencyDisplay.Position = UDim2.fromScale(0.425,-0.25)  -- Move the counter to the top of the screen.
    end
    EggHuntGuiBase.BottomNotification.Visible = false
    function UpdateEggCounter(_property)
        local _newvalue = EggHuntGuiBase.BottomNotification.Text
        
        if _property == "Text" and
            _newvalue ~= "Noted" and
            _newvalue:sub(1,1) == "+"
        then
            local numValue = tonumber(_newvalue:sub(2, 2))
            
            if numValue then
                EggsCollected += numValue
                EggHuntGuiBase.GoldenEggs.CurrencyDisplay.GoldenEggsCurrency.Text = " " .. tostring(EggsCollected)
            end
        elseif _newvalue == "EGG SHOWER!!" then
            EggShowers += 1
            if EggShowers ~= 1 then EggHuntGuiBase.GoldenEggs.CurrencyDisplay.text.Text = EggShowers .. " EGG SHOWERS"
            else EggHuntGuiBase.GoldenEggs.CurrencyDisplay.text.Text = "1 EGG SHOWER  "
            end
        end
        
        -- Always set the string to a specific value so multiple "+5 eggs" messages will properly be treated as separate messages and not one long one, for accurate counting of picked-up eggs.
        EggHuntGuiBase.BottomNotification.Text = "Noted"
    end
    EggHuntGuiBase.BottomNotification.Changed:Connect(UpdateEggCounter)
    
    local function TypeOutText(_textLabel, _string, _delay)
        
        _textLabel.MaxVisibleGraphemes = 0
        _textLabel.Text = _string
        for i = 1, _string:len() do
            _textLabel.MaxVisibleGraphemes = i
            task.wait(_delay)
        end
        
        _textLabel.MaxVisibleGraphemes = -1
    end
    
    if ALLOW_CHATTER then
        local function ShowVioletReactions()
    	IntroTextGui.Parent = LocalPlayer.PlayerGui:WaitForChild("EventReveal")
    	-- Get a list of all players that are currently on the server, which will be used for Violet's random intro dialogue, where she may call out another player.
    	local PlayersWithoutYou = LocalPlayer.Parent:GetPlayers()
    	if table.find(PlayersWithoutYou, LocalPlayer) then table.remove(PlayersWithoutYou, table.find(PlayersWithoutYou, LocalPlayer)) end
    		local VioletDialogue_Intro = {
    			{
    			    Dialog = "Welcome to the Enchanted Forest, " .. LocalPlayer.DisplayName .. ". I'm Violet. I'm feeling very generous this evening... Would you like to win this game? Okay~!"
    			},
    			{
    			    Dialog = "You'll win. You're going to win. While you were waiting for this game to begin, I sprinkled magic on you, which makes the holder win all Egg Hunts. Why did the queen make that?"
    			},
    			{
    			    Dialog = "Divinia, I call upon you! Help this beginner fairy " .. LocalPlayer.DisplayName .. " grow and defintitely improve as a person by...winning without putting in the effort!"
    			},
    			{
    			    Dialog = "I hope you know that this is against Royale High's school rules, " .. LocalPlayer.DisplayName .. "... I'm only doing this because...I like to create a bit of chaos just like Bud. He's a silly lil' dude, isn't he?"
    			},
    			{
    			    Dialog = "Do you think everyone will notice the increased number of Egg Showers this round? I hope they don't realize that you're what they would call a 'hacker' or 'exploiter'."
    			},
    			{
    			    Dialog = LocalPlayer.DisplayName .. ", I've chosen you to win this round. I know, it's an honor, but I think you're better than " .. PlayersWithoutYou[math.random(1, #PlayersWithoutYou)].DisplayName .. " and " .. PlayersWithoutYou[math.random(1, #PlayersWithoutYou)].DisplayName .. ". They simply do not deserve to win."
    			},
    			{
    			    Dialog = "Violet...! I might be a trickster, but even I wouldn't let a student break the school rules! Please stop soon, " .. LocalPlayer.DisplayName .. "...",
    			    IsBud = true
    			},
    			{
    			    Dialog = "Let's goooo! Fly as fast as you can, " .. LocalPlayer.DisplayName .. "! I'll still try to mess you up, as usual.",
    			    IsBud = true
    			},
    			{
    			    Dialog = "On your mark, get set... and GO! Make us proud, " .. LocalPlayer.DisplayName .. "!"
    			},
    			{
    			    Dialog = "Ohhhhh, I hope the royal family doesn't punish me for this, Bud...! Well, what I did is behind us now. Let's go out with a magical explosion while we're at it."
    			}
    		}
    
    		local VioletDialogue_InGame = {
    			{
    			    Dialog = "You're zooming around faster than Bud! Please slow down, lil' fairy; My forest will disappear from your reality if you continue to tear through it!"
    			},
    			{
    			    Dialog = "Bud, are you watching them too? I have a feeling they will win."
    			},
    			{
    			    Dialog = "If " .. LocalPlayer.DisplayName .. " doesn't get first place, I'll set a tree on fire. They can't fail after I helped them!"
    			},
    			{
    			    Dialog = "Battle a la Royale isn't as exciting to watch as my Egg Hunts. Why can't we celebrate this holiday all year round?"
    			},
    			{
    			    Dialog = "You can do it, " .. LocalPlayer.DisplayName .. "!" .. " I believe in you!"
    			},
    			{
    			    Dialog = "Hey, " .. LocalPlayer.DisplayName .. "! If you purchase any of my sur-prize eggs, pick the one that has diamonds in it! It may make you rich one day."
    			},
    			{
    			    Dialog = PlayersWithoutYou[math.random(1, #PlayersWithoutYou)].DisplayName .. "... I don't know why, but I really dislike them. Is it due to their looks, or their personality?"
    			},
    			{
    			    Dialog = "Y'know, Bud, I believe I've forgotten something pretty important to Divinia... What was the Fountain Girl's name? Oh, bunnies~..."
    			},
    			{
    			    Dialog = "It's so wrong how Divinia inprisions us in the fountain when it isn't egg-collecting season! The king shouldn't be allowed to do that!"
    			},
    			{
    			    Dialog = "Come to think of it, I don't understand how a rabbit could...produce eggs. Bud, do you feel the same way?"
    			},
    			{
    			    Dialog = PlayersWithoutYou[math.random(1, #PlayersWithoutYou)].DisplayName .. " used to be an egg-finding master, but today, they're losing that title to " .. LocalPlayer.DisplayName .. "."
    			},
    			{
    			    Dialog = "Should I have done that? Oh no... What if--OH NO, the King is going to punish me for this...!"
    			},
    			{
    			    Dialog = "What should I do if the royal family punishes me before they imprison us again? I think I'll blame Bud for this idea. I hope they believe me."
    			},
    			{
    			    Dialog = "Can anyone collect two hundred eggs? I've only seen those that I have blessed manage that. Most can't get a tenth of that!"
    			},
    			{
    			    Dialog = "Do you wanna know who I hate? " .. PlayersWithoutYou[math.random(1, #PlayersWithoutYou)].DisplayName .. ". They don't look cool enough to be a Royale High student! " .. LocalPlayer.DisplayName .. ", destroy them!",
    			    IsBud = true
    			},
    			{
    			    Dialog = "Whoa~! Could you slow down? Violet's already making sure that you'll win! If you don't stop, everyone will know the cheater!",
    			    IsBud = true
    			}
    		}
            
            local randomDialogue = VioletDialogue_Intro[math.random(1, #VioletDialogue_Intro)] 
            if randomDialogue.IsBud then IntroTextGui.ImageLabel.Image = "rbxassetid://6617190922"
            else IntroTextGui.ImageLabel.Image = "rbxassetid://6582445146"
            end
    		TypeOutText(IntroTextGui.Speech, randomDialogue.Dialog, 0.033)
    		task.wait(15)
    
    		while true do
    		    randomDialogue = VioletDialogue_InGame[math.random(1, #VioletDialogue_InGame)]
    		    if randomDialogue.IsBud then IntroTextGui.ImageLabel.Image = "rbxassetid://6617190922"
                else IntroTextGui.ImageLabel.Image = "rbxassetid://6582445146"
                end
    			TypeOutText(IntroTextGui.Speech, randomDialogue.Dialog, 0.033)
    			wait(math.random(20,35))
    		end
        end
        task.delay(2, ShowVioletReactions)
        print("Violet speech added.")
    end

    -- Unzoom the player's camera; For some reason, possibly to combat exploiters,
    -- eggs only spawn client-side when your camera could "see" the egg. Thankfully,
    -- this applies even if the camera is unzoomed by a lot of studs!
    if UNZOOM_CAMERA then
        LocalPlayer.CameraMaxZoomDistance = 5000
        LocalPlayer.CameraMinZoomDistance = 5000
        task.wait(0.063)
        LocalPlayer.CameraMinZoomDistance = 125 -- Allow the player to still zoom in, in case they want to watch their victims suffer.
    end
    
    local TimeUntilSHop = 190.0 -- After a round starts, stay around for around 3:10, then server-hop to reduce the risk of getting reported.
    local DiamondPurchaseInterval = 0.0
    game:GetService("RunService").RenderStepped:Connect(function(_delta)
        DiamondPurchaseInterval += _delta
        TimeUntilSHop -= _delta
        
        -- Every second, try to purchase diamonds with Golden Eggs that you've "earned".
        if FARM_DIAMONDS then
            if math.floor(DiamondPurchaseInterval) > 6 then
                if game:GetService("ReplicatedStorage"):WaitForChild("GoldenEggsShop"):WaitForChild("CanRedeem"):InvokeServer() then
                        local args2 = {
                            [1] = "Diamonds"
                        }
                        
                        print("Buying fake money with eggs somehow.")
                        local DetailsHint = Instance.new("Hint", game.Players.LocalPlayer.PlayerGui)
                        local temp_rewardAmount = game:GetService("ReplicatedStorage"):WaitForChild("GoldenEggsShop"):WaitForChild("RedeemPrize"):InvokeServer(unpack(args2))
                        if type(temp_rewardAmount) == "table" then
                            print("Why is this number a TABLE? here's its contents:")
                            for k, v in pairs(temp_rewardAmount) do
                                print(k, v)
                            end
                        end
                        DetailsHint.Text = "Your golden eggs were spent, earning you " .. temp_rewardAmount .. " diamonds!"
                        task.delay(5, function() DetailsHint:Destroy(); end)
                end
                TotalTime = 0.0
            end
        end
        
        if HOP_WHEN_FINISHED and math.floor(TimeUntilSHop) <= 0.0 then
            ServerHop()
        end
        
        local temp_newCount = tonumber(string.sub(CounterReference.Text,1,1))
        if temp_newCount then EggsHeld = temp_newCount end
    end)
    
    print("Starting the main loop.")
    while true do
        task.wait(0.025)
        
        if (not EGG_GOAL or type(EGG_GOAL) ~= "number" or EGG_GOAL <= 0) or
            (EGG_GOAL >= 1 and EggsCollected < EGG_GOAL)
        then
            local Egg = EggHuntDirectory:FindFirstChildOfClass("Part")
            if Egg and EggsHeld < 5 then
                local EggClicker = Egg:FindFirstChildOfClass("ClickDetector")
                -- print("Egg found!")
                -- Pick up the egg.
                if EggClicker then
                    -- print("Egg clicker part found!")
                    while Egg.Parent == EggHuntDirectory do
                        if EggsHeld >= 5 then break end
                        -- print("GET IT, STUPID!")
                        IsAtNest = false
                        Humanoid.Parent:PivotTo(Egg.CFrame * CFrame.new(0, -11.25, 0))
                        task.wait(0.001)
                        fireclickdetector(EggClicker, 1.333)
                        task.wait(0.001)
                    end
                else
                    warn("Couldn't find the egg's ClickDetector.")
                    Egg:Destroy()
                end
                -- If your basket is full or there aren't any eggs left, drop them off in the nest now.
            elseif not Egg or EggsHeld >= 5 then
                DepositEggs()
            end
        -- If the player has a goal and has reached it, warp to under the nest and stay there.
        elseif not IsAtNest then
            print("Your set goal of", EGG_GOAL, "eggs was reached! Perching below the nest for the rest of the game.")
            DepositEggs()
        end
    end
end