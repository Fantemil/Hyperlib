local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "DECAYING WINTER SCRIPT",
	LoadingTitle = "DECAYING WINTER SCRIPT [RY EDITION]",
	LoadingSubtitle = "made by ry",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "1771717t26g276277g127t476t17t47t21g4g5g1261253672185"
	},
        Discord = {
        	Enabled = false,
        	Invite = "pqMgjdEy", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "[MESSAGE] Ry's Personal Hub KEY",
		Subtitle = "Key required to use script! [KEY CHANGES EVERY UPDATE!]",
		Note = "Ask Ryder for the Key (ry#8844)",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "rywashere"
	}
})


local Tab = Window:CreateTab("decaying-winter-main", 10590477450)

-- local Section = Tab:CreateSection("t")


local Button = Tab:CreateButton({
	Name = "goodwill (BUGGY)",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ryderfreeman/decaying-winter-old-goodwill/main/script1'))()
    end,
})
local Button = Tab:CreateButton({
	Name = "custom perks",
	Callback = function()
      --// Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
--// Variables
local stuff = game.Workspace.InteractablesNoDel
local gui = game.Players.LocalPlayer.PlayerGui.controlsGui
local localplayer = game.Players.LocalPlayer
local mainHandler = { instance = nil, senv = nil }
local namecall = nil
local waitTable = {}
local tgas = {
        ["throwrating"] = 1,
        ["ability"] = "Can obscure vision.",
        ["blacklisted"] = false,
        ["animset"] = "THRW",
        ["desc"] = "Used by riot police! Yes, we still have those! We have many hired and stationed on site at all time " ..
            "and borrowed some of these!",
        ["weapontype"] = "Item",
        ["name"] = "Riot Grenade",
        ["damagerating"] = {
            [1] = 0,
            [2] = 0
        },
        ["sizerating"] = 4,
        ["icon"] = "2520535457",
        ["woundrating"] = 2
}

--// Functions

function getkey()
    spawn(function()
for _, instance in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if instance:IsA("LocalScript") and instance.Name ~= "ClickDetectorScript" then
        repeat
            mainHandler = getsenv(instance)
            RunService.Heartbeat:Wait()
        until mainHandler.afflictstatus ~= nil

        local upvalue = getupvalues(mainHandler.afflictstatus)
        _G.serverKey = upvalue[16]
        _G.playerKey = upvalue[17]
    end
end
--// Virus blocking
for index, status in pairs(getupvalue(mainHandler.afflictstatus, 1)) do
    if string.match(index, "Virus") ~= nil then
        status.effects.currentduration = math.huge
    end
end
end)
end
--// parry
UserInputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.R then
	        for i=1, 10 do
            workspace.ServerStuff.initiateblock:FireServer(_G.serverKey, true)
	        end
	end
end)
--// stun
UserInputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.Y then
            local args = {
                [1] = "TGas",
                [2] = 20,
                [3] = game.Workspace.CurrentCamera.CFrame,
                [4] = 1,
                [5] = tgas,
                [6] = 1,
                [8] = _G.serverKey,
                [10] = _G.playerKey
            }

            workspace.ServerStuff.throwWeapon:FireServer(unpack(args))
    end
end)
-- // scan
UserInputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.B then
        	workspace.ServerStuff.applyGore:FireServer("scanarea", localplayer.Character, localplayer, {[1] = game.Workspace.CurrentCamera.CFrame})
    	end
end)
--// smoke
UserInputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.U then
	    workspace.ServerStuff.dealDamage:FireServer("fireSmoke", workspace.CurrentCamera.CFrame, _G.serverKey, _G.playerKey)
    end
end)
--// heal
UserInputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.J then
	    for i=1, 10 do
	        game.Workspace.ServerStuff.dealDamage:FireServer("Regeneration", nil, _G.serverKey, _G.playerKey)
	        wait(0.1)
        end
    end
end)

UserInputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.M then
	    for i=1, 1 do
            workspace.ServerStuff.dropAmmo:FireServer("rations", "MRE")
            workspace.ServerStuff.dropAmmo:FireServer("rations", "Bottle")
            workspace.ServerStuff.dropAmmo:FireServer("rations", "Beans")
              workspace.ServerStuff.dropAmmo:FireServer("rations", "Soda")
            wait(0.1)
        end
    end
end)
UserInputService.InputBegan:Connect(function(input, Typing)
    if Typing then
        return
    end
	if input.KeyCode == Enum.KeyCode.R then
	    for i=1, 10 do
            workspace.ServerStuff.initiateblock:FireServer(_G.serverKey, true)
	    end
	end
end)
local alert = Instance.new("Sound",game:GetService("SoundService"))
alert.SoundId = "rbxassetid://232127604"
--// controlsGui
gui.Enabled = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/scripts/main/decaying%20winter/Announce.lua"))()
function Callback(answer)
    if answer == "Yes" then
        wait(2)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/scripts/main/decaying%20winter/Auto%20Finish.lua"))()
    elseif answer == "No" then
        print("Player rejected.")
    end
end
local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback
loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/scripts/main/decaying%20winter/Longer%20Effects.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/scripts/main/decaying%20winter/Passive%20Heal.lua"))()
while true do
    getkey()
    wait(1)
end
    end,
})
local Slider = Tab:CreateSlider({
    Name = "spawn scrap [DONT GO OVER 1900!!]",
    Range = {1, 1700},
    Increment = 10,
    Suffix = "scrap meter",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
local DropAmount = 100 
local Workspace = game:GetService("Workspace")
local ServerStuff = Workspace.ServerStuff
local dropAmmo = ServerStuff.dropAmmo
dropAmmo:FireServer("scrap", Value)
    end,
 })

 local Button = Tab:CreateButton({
    Name = "spawn ration: MRE",
    Callback = function()
        game:GetService("Workspace").ServerStuff.dropAmmo:FireServer("rations", "MRE")
    end,
 })

 local Button = Tab:CreateButton({
    Name = "spawn ration: Bottle",
    Callback = function()
        game:GetService("Workspace").ServerStuff.dropAmmo:FireServer("rations", "Bottle")
    end,
 })
 local Button = Tab:CreateButton({
	Name = "op zealot",
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shield"].basestats
        local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shield"]
        if perks then
            perk.name = "Tanziner"
            perk.desc = "You believe in art of technology."
            perk.pros = { "Immune to bleeding","Extra M1 Damage","Higher defense" }
            perk.cons = { "People will dislike you." }
           perk.activename = "Tanziner"
           perk.activedetails = "A Man from 2093."
           perks.atkmod = 1950 -- 2 taps any bosses
           perks.healthmod = 250
           perks.defmod = 1500 -- take 1 dmg per hit except explosion
           perks.stammod = 1950
           perks.shovemod = 1950
           perks.lightatkspeed = 100
            perks.heavyatkspeed = 1950 
            perks.recoilmod = 2000
            perks.harvestmod = 100
            perks.accmod = 1950
             perks.reloadmod = 250 
             perks.noaimmod = false 
             perks.bleed_immune = true
             perks.mvtmod = 100
             perks.aegisduration = math.huge
             perks.aegisdamagetakenmelee = 0
             perks.aegisrangeddamagemultiplier = 50
             perks.cooldown = 0
        end
    end,
})
local Button = Tab:CreateButton({
	Name = "op arbiter",
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shotgun"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["shotgun"]
    perk.name = "Arbiter but your fr SQ"
    perk.desc = "UJEEUJ"
    perk.pros = { "More Ammunition.","Speed, No Fall Dmg, No Explosive dmg, and take barely any HP upon shot.","0 Cooldown","Faster Swings"};
    perk.cons = {"There are no downsides, your just OP as hell."}
   perk.activename = "Arbiter.exe"
   perk.activedetails = "i dunno"
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 250
   perks.defmod = 1500 -- take 1 dmg per hit except explosion
   perks.stammod = 1950
   perks.shovemod = 1950
   perks.lightatkspeed = 100
    perks.heavyatkspeed = 1950 
    perks.recoilmod = 2000
    perks.accmod = 1950
     perks.reloadmod = 900
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 100
     perks.mvtmod = 40
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -55 
    end,
})
local Button = Tab:CreateButton({
	Name = "op hivemind",
	Callback = function()
        local perks = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["hive"].basestats
local perk = require(workspace.ServerStuff.Statistics["CLASS_STATISTICS"])["hive"]
    perk.name = "hivemaster"
    perk.desc = "UJEEUJ"
    perk.pros = { "More Ammunition.","Speed, No Fall Dmg, No Explosive dmg, and take barely any HP upon shot.","0 Cooldown","Faster Swings"};
    perk.cons = {"There are no downsides, your just OP as hell."}
   perk.activename = "Arbiter.exe"
   perk.activedetails = "i dunno"
   perks.atkmod = 1950 -- 2 taps any bosses
   perks.healthmod = 250
   perks.defmod = 1500 -- take 1 dmg per hit except explosion
   perks.stammod = 1950
   perks.shovemod = 1950
   perks.lightatkspeed = 100
    perks.heavyatkspeed = 1950 
    perks.recoilmod = 2000
    perks.accmod = 1950
     perks.reloadmod = 900
     perks.noaimmod = false
     perks.scavmod = 4000
     perks.harvestmod = 100
     perks.mvtmod = 40
     explosive_resist = true
     perks.cripple_immune = true
     perks.exhaust_immune = true
     perks.frac_immune = true 
     perks.nomorale = true
     perks.explosivemod = 400
     perks.grap = true
     perks.bleed_immune = true
    perks.backpack = true
    perks.falldamagemod = true
    perks.craftcostmod = -55 
    end,
})

local Button = Tab:CreateButton({
    Name = "spawn crafted item: AKM",
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintSUPAK",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        
    end,
 })

 local Button = Tab:CreateButton({
    Name = "spawn crafted item: Fireier Axe",
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintFAxe",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 local Button = Tab:CreateButton({
    Name = "spawn crafted item: The 'Decimator'",
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintRBHammer",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 local Button = Tab:CreateButton({
    Name = "spawn crafted item: A.J.M. 9",
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintAJM",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 local Button = Tab:CreateButton({
    Name = "spawn crafted item: KSG",
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintKSG",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 local Button = Tab:CreateButton({
    Name = "spawn crafted item: 'Maria''",
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintNailedB",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
     
    end,
 })
 local Button = Tab:CreateButton({
    Name = "spawn crafted item: Billhook",
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintHook",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
    
    end,
 })

 local Button = Tab:CreateButton({
    Name = "spawn crafted item: Executioner",
    Callback = function()
        local workbench = workspace.Interactables:FindFirstChild("Workbench")
        game.Players.LocalPlayer.Character:PivotTo(workbench:GetPivot() + Vector3.new(0, 5, 0))
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbenchblueprintExec",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
        wait(1.7)
        local args = {
            [1] = workspace.Interactables.Workbench,
            [2] = "workbench",
        }
        
        game:GetService("ReplicatedStorage").Interactables.interaction:FireServer(unpack(args))
  
    end,
 })





 local Button = Tab:CreateButton({
    Name = "weird text in the sky",
    Callback = function()
        local dist = 1000
        local increment = 100
        local multiply = 100
        local message = {"HE'S HERE", ""}
        
        for points = increment, dist, increment do
            local gr = (math.sqrt(5) + 1) / 2
            local ga = (2 - gr) * (2 * math.pi)
        
            for index = 1, points do
                local lat = math.asin(-1 + 2 * index / (points + 1))
                local lon = ga * index
        
                local x = math.cos(lon) * math.cos(lat)
                local y = math.sin(lon) * math.cos(lat)
                local z = math.sin(lat)
        
                local position = Vector3.new(x, y, z) * Vector3.new(points * multiply, points * multiply, points * multiply)
                workspace.ServerStuff.applyGore:FireServer("player_ping", nil, nil, { position, message[math.random(1, #message)], -(points + index) })
            end
        end
        
    end,
 })
 local Button = Tab:CreateButton({
    Name = "esp [M TO REFRESH]",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bigblackmonkeyboi/scip/main/Decaying-Winter-Esp.lua", true))();
        
    end,
 })
 local Button = Tab:CreateButton({
    Name = "tp SledgeQueen",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bigblackmonkeyboi/scip/main/Sledgequeentp.lua", true))();
        
    end,
 })
 local Button = Tab:CreateButton({
    Name = "tp ALL Scavengers",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bigblackmonkeyboi/scip/main/tp-all-enemy-to-you-in-dw.lua", true))();
        
    end,
 })
 local Button = Tab:CreateButton({
    Name = "SOF nametag",
    Callback = function()
        function Respawn()
            workspace.ServerStuff.spawnPlayer:FireServer("respawncharacter")
        end 
        
        function Hub()
            workspace.ServerStuff.spawnPlayer:FireServer("hubbing")
        end    
        
        function Start(arg)
            if arg == "Normal" then
                game.Players.LocalPlayer:FindFirstChild("start").Value = "normal"
            elseif arg == "Ray" then
                game.Players.LocalPlayer:FindFirstChild("start").Value = "normal"
            end    
        end
        
        function Spawn(Cords)
            Respawn()
            repeat task.wait() until not game.Players.LocalPlayer.Character:FindFirstChild("Outfit")
            Hub()
            Start("Normal")
            repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Outfit")
            if Cords == "Match" then
                game.Players.LocalPlayer.start.Value = "normal"
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(18.777990341186523, -2.5860984325408936, -9.264251708984375)
            elseif Cords == "HubA" then
                game.Players.LocalPlayer.start.Value = "hubbing"
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-118.72508239746094, -22.03114128112793, 1088.935546875)
            elseif Cords == "Respawn" then
                game.Players.LocalPlayer.start.Value = "hubbing"
                Respawn()
            elseif Cords == "HubB" then
                game.Players.LocalPlayer.start.Value = ""
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-118.72508239746094, -22.03114128112793, 1088.935546875)
            end
        end
        
        Spawn("Match") --- Match (puts you in match with pvp), HubB (hub with pvp), HubA (hub without pvp), Respawn (puts you back into menu)
    end,
 })
 local Button = Tab:CreateButton({
    Name = "dupe loot [KILLS YOU]",
    Callback = function()
        for i = 1,10 do
            task.wait()
            workspace.ServerStuff.deathPlay:FireServer()
            task.wait()
        end
        
    end,
 })
 local Button = Tab:CreateButton({
    Name = "inf yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
 })
 local Button = Tab:CreateButton({
    Name = "hanger thoughts",
    Callback = function()
        local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(input,gameprocess)
    if gameprocess == true then return end

    if input.KeyCode == Enum.KeyCode.B then
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
workspace.ServerStuff.applyGore:FireServer("hangerPopup", game.Players.LocalPlayer.Character.PrimaryPart, nil)
end
end)
    end,
 })
 local Button = Tab:CreateButton({
    Name = "inf yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
 })
 local Button = Tab:CreateButton({
    Name = "funny sound troll",
    Callback = function()
        
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        
        local Window = Library.CreateLib("Sounds", "Serpent")
        
        
        -- Tabs --
        
        local Songs = Window:NewTab("Holdout")
        local Gamemode = Window:NewTab("Gamemode")
        local Theme = Window:NewTab("Theme")
        local Events = Window:NewTab("Events")
        local Traps = Window:NewTab("Trigger")
        local Boss = Window:NewTab("Gabriel")
        local Emperor = Window:NewTab("Emperor")
        local Ilija = Window:NewTab("Ilija")
        local AGENT = Window:NewTab("AGENT")
        local Shadow = Window:NewTab("Reikgon")
        local Settings = Window:NewTab("Settings")
        
        -- Local --
        
        local Play = game:GetService("Workspace").ServerStuff.playAudio
        
        -- Holdout --
        
        local Holdpot = Songs:NewSection("Boss Themes")
        
        Holdpot:NewButton("Medieval", "Knights Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "medieval", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Knights Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Holdpot:NewButton("Zealot", "Zealot Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "zealot", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Zealot Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Sickler", "Sickler Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "sickler", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Sickler Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Sledge", "Sledge Queen Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "sledge", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Sledge Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Yosef", "Yosef Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "yosef", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Yosef Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Rhyer", "Rhyer Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "rhyer", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Rhyer Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        Holdpot:NewButton("Bad", "Bad Business Theme", function()
        Play:FireServer({"songs", "holdout_bosses"}, "bad", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Boss Themes";
        Text = "Playing - Bad Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        -- Theme --
        
        local Theme = Theme:NewSection("Theme")
        
        Theme:NewButton("Scavfinal", "ScavFinal Theme", function()
        Play:FireServer({"songs"}, "scavfinal", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - Scavfinal Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Theme:NewButton("Scavwars", "Scavwars Theme", function()
        Play:FireServer({"songs"}, "scavwar", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - Scavwars Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Theme:NewButton("Final", "This shit Dope", function()
        Play:FireServer({"songs"}, "final", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - Final Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Theme:NewButton("End Credits", "Ending Credits Theme", function()
        Play:FireServer({"songs"}, "unused2", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - End Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Theme:NewButton("Unused", "Unused Theme", function()
        Play:FireServer({"songs"}, "unused1", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Theme";
        Text = "Playing - Unused Theme";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        -- Gamemode --
        
        local Mode = Gamemode:NewSection("Random Themes")
        
        Mode:NewButton("Juggernaut", "Juggernaut", function()
        Play:FireServer({"gamemode"}, "juggernaut", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - Juggernaut";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("Bloodrush", "Bloodrush", function()
        Play:FireServer({"gamemode"}, "bloodrush", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - Bloodrush";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("GamemodeA", "GamemodeA", function()
        Play:FireServer({"gamemode"}, "gamemodeA", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - GamemodeA";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("GamemodeB", "GamemodeB", function()
        Play:FireServer({"gamemode"}, "gamemodeB", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - GamemodeB";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("GamemodeC", "GamemodeC", function()
        Play:FireServer({"gamemode"}, "gamemodeC", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - GamemodeC";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Mode:NewButton("Horn", "Horn", function()
        Play:FireServer({"gamemode"}, "horn", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Random";
        Text = "Playing - Horn";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        -- Events --
        
        local Event = Events:NewSection("Events Sounds")
        
        Event:NewButton("KillSwitch", "KillSwitch", function()
        Play:FireServer({"events", "survevents"}, "killswitch", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - KillSwitch";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Flareraid", "Flareraid", function()
        Play:FireServer({"events", "survevents"}, "flareraid", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Flareraid";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Bloodrush", "Bloodrush", function()
        Play:FireServer({"events", "survevents"}, "bloodrush", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Bloodrush";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Thunder", "Thunder", function()
        Play:FireServer({"events", "survevents"}, "thunder", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Thunder";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Exotic", "Exotic", function()
        Play:FireServer({"events", "survevents"}, "exotic", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Exotic";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        Event:NewButton("Monte", "Monte", function()
        Play:FireServer({"events", "survevents"}, "monte", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Events";
        Text = "Playing - Monte";
        Icon = "rbxassetid://6833114846";
        Duration = 4;
        })
        end)
        
        -- Traps --
        
        local Tr = Traps:NewSection("Trigger Sounds")
        
        Tr:NewButton("Flare", "Flare Trap", function()
        Play:FireServer({"world_item"}, "trap_flare1", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Trigger";
        Text = "Triggering - Flare";
        Icon = "rbxassetid://6833114846";
        Duration = 1;
        })
        end)
        
        Tr:NewButton("Flare2", "Flare Trap2", function()
        Play:FireServer({"world_item"}, "trap_flare2", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Trigger";
        Text = "Triggering - Flare2";
        Icon = "rbxassetid://6833114846";
        Duration = 1;
        })
        end)
        
        Tr:NewButton("Dynamite", "Dynamite Trap", function()
        Play:FireServer({"world_item"}, "trap_fuse", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Trigger";
        Text = "Triggering - Flare";
        Icon = "rbxassetid://6833114846";
        Duration = 1;
        })
        end)
        
        Tr:NewButton("Firebomb", "Firebomb", function()
        Play:FireServer({"world_item"}, "firebomb", workspace)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Trigger";
        Text = "Triggering - Firebomb";
        Icon = "rbxassetid://6833114846";
        Duration = 1;
        })
        end)
        
        -- Boss --
        
        local Boss = Boss:NewSection("Voicelines")
        
        Boss:NewDropdown("Taunt", "Taunt", {"taunt_1", "taunt_2", "taunt_3", "taunt_4", "taunt_5", "taunt_6", "taunt_7", "taunt_8", "taunt_9"}, function(Select)
        Play:FireServer({"ai", "boss"}, Select, workspace)
        end)
        
        Boss:NewDropdown("Hurt", "Hurt", {"hurt_1", "hurt_2", "hurt_3", "hurt_4"}, function(Hurt)
        Play:FireServer({"ai", "boss"}, Hurt, workspace)
        end)
        
        Boss:NewButton("Big Hurt", "Totally Moaning", function()
        Play:FireServer({"ai", "boss"}, "big_hurt", workspace)
        end)
        
        Boss:NewButton("Intro", "Introduction", function()
        Play:FireServer({"ai", "boss"}, "intro_1", workspace)
        end)
        
        Boss:NewButton("Intro2", "Introduction2", function()
        Play:FireServer({"ai", "boss"}, "intro_2", workspace)
        end)
        
        Boss:NewButton("Gameover", "Gameover", function()
        Play:FireServer({"ai", "boss"}, "game_over1", workspace)
        end)
        
        Boss:NewButton("Gameover2", "Gameover2", function()
        Play:FireServer({"ai", "boss"}, "game_over2", workspace)
        end)
        
        Boss:NewButton("Behold", "Behold Power of An Angels", function()
        Play:FireServer({"ai", "boss"}, "behold", workspace)
        end)
        
        Boss:NewButton("Enough", "Enough", function()
        Play:FireServer({"ai", "boss"}, "enough", workspace)
        end)
        
        Boss:NewButton("Woes", "Woes", function()
        Play:FireServer({"ai", "boss"}, "woes", workspace)
        end)
        
        -- Emperor --
        
        local Emp = Emperor:NewSection("Voicelines")
        
        Emp:NewDropdown("Begin", "Begin", {"begin1", "begin2", "begin3"}, function(begin)
        Play:FireServer({"events", "emperor"}, begin, workspace)
        end)
        
        Emp:NewDropdown("Blocked", "Blocked", {"blocked1", "blocked2", "blocked3", "blocked4", "blocked5"}, function(blocked)
        Play:FireServer({"events", "emperor"}, blocked, workspace)
        end)
        
        Emp:NewDropdown("Chatter", "Chatter", {"chatter1", "chatter2", "chatter3", "chatter4", "chatter5"}, function(chat)
        Play:FireServer({"events", "emperor"}, chat, workspace)
        end)
        
        Emp:NewDropdown("Confirm", "Confirm", {"confirm1", "confirm2", "confirm3", "confirm4", "confirm5"}, function(confirm)
        Play:FireServer({"events", "emperor"}, confirm, workspace)
        end)
        
        Emp:NewDropdown("Lowhealth", "Lowhealth", {"lowhealth1", "lowhealth2", "lowhealth3"}, function(low)
        Play:FireServer({"events", "emperor"}, low, workspace)
        end)
        
        -- Ilija --
        
        local Ilija = Ilija:NewSection("Voicelines")
        
        Ilija:NewDropdown("Arrive", "Arrive", {"arrive1", "arrive2", "arrive3"}, function(Arrive)
        Play:FireServer({"voices", "ilija", "arrive"}, Arrive, workspace)
        end)
        
        Ilija:NewDropdown("Quip", "Quip", {"quip1", "quip2", "quip3", "quip4", "quip5"}, function(Quip)
        Play:FireServer({"voices", "ilija", "quip"}, Quip, workspace)
        end)
        
        Ilija:NewDropdown("End", "End", {"end1", "end2", "end3"}, function(End)
        Play:FireServer({"voices", "ilija", "end"}, End, workspace)
        end)
        
        Ilija:NewDropdown("Reload", "Reload", {"reload1", "reload2", "reload3", "reload4", "reload5", "reload6", "reload7", "reload8", "reload9"}, function(Reload)
        Play:FireServer({"voices", "ilija", "reload"}, Reload, workspace)
        end)
        
        Ilija:NewDropdown("Shot", "Shot", {"shot1", "shot2", "shot3", "shot4", "shot5", "shot6", "shot7", "shot8", "shot9", "shot10", "shot11"}, function(Shot)
        Play:FireServer({"voices", "ilija", "shot"}, Shot, workspace)
        end)
        
        -- AGENT --
        
        local Agen = AGENT:NewSection("AGENT Voicelines")
        
        Agen:NewDropdown("Stormenter", "Stormenter", {"storm1", "storm2"}, function(storm)
        Play:FireServer({"AGENT", "stormenter"}, storm, workspace)
        end)
        
        Agen:NewDropdown("Stormleave", "Stormleave", {"storm1", "storm2"}, function(storm2)
        Play:FireServer({"AGENT", "stormleave"}, storm2, workspace)
        end)
        
        Agen:NewDropdown("hostile", "hostile", {"hostile1", "hostile2", "hostile3", "hostile4", "hostile5", "hostile6", "hostile7", "hostile8"}, function(hostile)
        Play:FireServer({"AGENT", "hostile"}, hostile, workspace)
        end)
        
        Agen:NewDropdown("Heavy", "Heavy", {"heavy1", "heavy2"}, function(heavy)
        Play:FireServer({"AGENT", "heavy"}, heavy, workspace)
        end)
        
        Agen:NewDropdown("Join", "Join", {"join1", "join2", "join3"}, function(join)
        Play:FireServer({"AGENT", "join"}, join, workspace)
        end)
        
        Agen:NewDropdown("Left", "Left", {"left1", "left2", "left3"}, function(left)
        Play:FireServer({"AGENT", "left"}, left, workspace)
        end)
        
        Agen:NewDropdown("Down", "Down", {"down1", "down2"}, function(down)
        Play:FireServer({"AGENT", "down"}, down, workspace)
        end)
        
        Agen:NewDropdown("Hvt", "Hvt", {"hvt1", "hvt2", "hvt3"}, function(hvt)
        Play:FireServer({"AGENT", "hvt"}, hvt, workspace)
        end)
        
        Agen:NewDropdown("Lowhealth", "Lowhealth", {"lowhealth1", "lowhealth2", "lowhealth3"}, function(low)
        Play:FireServer({"AGENT", "lowhealth"}, low, workspace)
        end)
        
        Agen:NewDropdown("Echo Start", "Echo Start", {"start1", "start2"}, function(storm)
        Play:FireServer({"AGENT", "echo_start"}, storm, workspace)
        end)
        
        -- Shadow --
        
        local Shadow = Shadow:NewSection("Reikgon Voices")
        
        Shadow:NewButton("Sickler Scream", "Alert", function()
        Play:FireServer({"shadow"}, "alert", workspace)
        end)
        
        Shadow:NewButton("Chainbreak", "Chainbreak", function()
        Play:FireServer({"shadow"}, "chainbreak", workspace)
        end)
        
        Shadow:NewButton("Sickler Theme", "Sickler Provoked Theme", function()
        Play:FireServer({"shadow"}, "sickler_song", workspace)
        end)
        
        Shadow:NewButton("Sickler Crying", "Sickler Idle", function()
        Play:FireServer({"shadow"}, "sickler_idle", workspace)
        end)
        
        Shadow:NewDropdown("Sickler", "Sickler Voice", {"sickler_noise1", "sickler_noise2", "sickler_noise3"}, function(sickler)
        Play:FireServer({"shadow"}, sickler, workspace)
        end)
        
        Shadow:NewLabel("Skinner")
        
        Shadow:NewDropdown("Skinner", "Skinner Voice", {"skinner_noise1", "skinner_noise2", "skinner_noise3", "skinner_noise4", "skinner_noise5"}, function(skinner)
        Play:FireServer({"shadow"}, skinner, workspace)
        end)
        
        Shadow:NewLabel("Hanger")
        
        Shadow:NewDropdown("Hanger Alert", "Hanger Alert", {"alert1", "alert2", "alert3"}, function(hanger)
        Play:FireServer({"shadow", "hang"}, hanger, workspace)
        end)
        
        Shadow:NewButton("Influence", "influence", function()
        Play:FireServer({"shadow", "hang"}, "influence1", workspace)
        end)
        
        Shadow:NewButton("Influence2", "influence2", function()
        Play:FireServer({"shadow", "hang"}, "influence2", workspace)
        end)
        
        Shadow:NewButton("Cast", "Possessed Sound", function()
        Play:FireServer({"shadow", "hang"}, "cast", workspace)
        end)
        
        Shadow:NewButton("Resist", "Out of Possessed", function()
        Play:FireServer({"shadow", "hang"}, "resist", workspace)
        end)
        
        Shadow:NewLabel("Hidden")
        
        Shadow:NewButton("Attack", "Hidden Attack Sound", function()
        Play:FireServer({"events", "hiddenB"}, "attack", workspace)
        end)
        
        Shadow:NewDropdown("Voicelines", "Taunt", {"taunt1", "taunt2", "taunt3", "taunt4"}, function(hidden)
        Play:FireServer({"events", "hiddenB"}, hidden, workspace)
        end)
        
        -- Settings --
        
        local Set = Settings:NewSection("Settings")
        
        Set:NewKeybind("UI", "UI Keybind", Enum.KeyCode.RightShift, function()
            Library:ToggleUI()
        end)
    end,
 })
 local Button = Tab:CreateButton({
    Name = "inf stamina",
    Callback = function()
        repeat
            task.wait()
        until game.Players.LocalPlayer.PlayerGui.mainHUD.StaminaFrame:FindFirstChild("TextLabel") ~= nil
        
        if game.Players.LocalPlayer.PlayerGui.mainHUD.StaminaFrame == nil then
            return
        end
        
        function GrabMainScript()
            for _, instance in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if instance:IsA("LocalScript") and instance.Name ~= "ClickDetectorScript" then
                    return instance
                end
            end
        end
        
        local func
        local script = GrabMainScript()
        for i, v in pairs(getreg()) do
            if type(v) == "function" and getfenv(v).script then
                if getfenv(v).script == script then
                    local upvalues = getupvalues(v)
                    if
                        tostring(upvalues[3]) ==
                            tostring(game.Players.LocalPlayer.PlayerGui.mainHUD.StaminaFrame:FindFirstChild("TextLabel").Text)
                     then
                        func = v
                    end
                end
            end
        end
        spawn(
            function()
                repeat
                    setupvalue(func, 3, math.huge)
                    task.wait()
                until game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health <= 0
            end
        )
    end,
 })
 local Button = Tab:CreateButton({
    Name = "control sq [use inf yield]",
    Callback = function()
        local controlling = workspace.activeHostiles["AI_QUEEN"]
        local friendly = true
        game.Players.LocalPlayer.Character = controlling
        workspace.CurrentCamera.CameraSubject = controlling
        workspace.CurrentCamera.CameraType = "Custom"
        local player = game.Players.LocalPlayer
        LocalPlayer = game.Players.LocalPlayer
        Players = game:GetService("Players")
        RunService = game:GetService("RunService")
        local lp = game.Players.LocalPlayer
        local gui = lp.PlayerGui
        local rs = game.ReplicatedStorage
        local ms = lp:GetMouse()
        controlling.Humanoid:GetPropertyChangedSignal("WalkToPoint"):Connect(function()
            controlling.Humanoid.WalkToPoint = controlling.HumanoidRootPart.Position
        end)
                if controlling:FindFirstChild("HumanoidRootPart") then
                    if workspace.speccingPlayers[game.Players.LocalPlayer.Name].HumanoidRootPart:FindFirstChild("BodyPosition") then
        workspace.speccingPlayers[game.Players.LocalPlayer.Name].HumanoidRootPart:FindFirstChild("BodyPosition"):Destroy()
        end
            workspace.speccingPlayers[game.Players.LocalPlayer.Name].HumanoidRootPart.Anchored = false
        workspace.speccingPlayers[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = controlling.HumanoidRootPart.CFrame - Vector3.new(0,10,0)
        wait(0.2)
         --[[spawn(function()
            game:GetService('RunService').Stepped:connect(function()
                workspace.speccingPlayers[game.Players.LocalPlayer.Name].Humanoid:ChangeState(11)
                end)
            end)--]]
        spawn(function()
            local lp = game:GetService("Players").LocalPlayer
        local c = workspace.speccingPlayers[game.Players.LocalPlayer.Name]
        local hrp0 = c:FindFirstChild("HumanoidRootPart")
        local hrp1 = hrp0:Clone()
        c.Parent = nil
        hrp0.Parent = hrp1
        hrp0.RootJoint.Part0 = nil
        hrp1.Parent = c
        local h = game:GetService("RunService").Heartbeat
        c.Parent = workspace
        spawn(function()
        
        hrp0.Transparency = 0.5
        while h:Wait() and c and c.Parent do
            hrp0.CFrame = hrp1.CFrame
            hrp0.Orientation += Vector3.new(0, 0, 180)
            hrp0.Position = controlling.HumanoidRootPart.Position - Vector3.new(0,10,0)
            hrp0.Velocity = hrp1.Velocity
        end
        end)
        end)
        
        end
        
    end,
 })