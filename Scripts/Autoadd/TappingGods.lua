 

local library = loadstring(game:HttpGet(("https://pastebin.com/raw/FsJak6AT")))() 

local w = library:CreateWindow("Tapping Gods")

local b = w:CreateFolder("Functions")
b:Label("~Functions~", Color3.fromRGB(38, 38, 38), Color3.fromRGB(255, 34, 0))

b:Toggle(
    "Auto Tap",
    function(bool)
        AutoTap = bool
    end
)
b:Toggle(
    "Faster Auto Tap",
    function(bool)
        FasterAutoTap = bool
    end
)
b:Toggle(
    "Auto Boss",
    function(bool)
        AutoBoss = bool
    end
)
b:Toggle(
    "Bring Gems",
    function(bool)
        AutoGems = bool
    end
)
spawn(
    function()
        while wait() do
            if AutoBoss then
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
                game:GetService("ReplicatedStorage").BossStuff.Yes:InvokeServer()
            end
        end
    end
)
spawn(
    function()
        while wait() do
            if AutoGems then
                for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if v.Name == "Diamond" then
                        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            end
        end
    end
)
b:Dropdown(
    "Rebirths",
    {
        "1",
        "5",
        "10",
        "50",
        "100",
        "250",
        "500",
        "1K",
        "5K",
        "10K",
        "25K",
        "69K",
        "100K",
        "400K",
        "1M",
        "12M",
        "38M",
        "900M"
    },
    true,
    function(lol92)
        print(lol92)
        _G.Quests2 = lol92
    end
)

b:Toggle(
    "Auto Rebirth",
    function(bool)
        shared.toggle82 = bool
    end
)

spawn(
    function()
        while wait(0.1) do
            if shared.toggle82 then
                if _G.Quests2 == "1" then
                    local A_1 = 1
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "5" then
                    local A_1 = 5
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "10" then
                    local A_1 = 10
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "50" then
                    local A_1 = 50
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "100" then
                    local A_1 = 100
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "250" then
                    local A_1 = 250
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "500" then
                    local A_1 = 500
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "1K" then
                    local A_1 = 1000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "5K" then
                    local A_1 = 5000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "10K" then
                    local A_1 = 10000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "25K" then
                    local A_1 = 25000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "69K" then
                    local A_1 = 69000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "100K" then
                    local A_1 = 100000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "400K" then
                    local A_1 = 400000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "1M" then
                    local A_1 = 1000000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "12M" then
                    local A_1 = 12000000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "38M" then
                    local A_1 = 38, 000, 00
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                elseif _G.Quests2 == "900M" then
                    local A_1 = 900000000
                    local Event = game:GetService("ReplicatedStorage").Events.Rebirth
                    Event:FireServer(A_1)
                end
            end
        end
    end
)

b:Dropdown(
    "Select An Egg",
    {
        "Starter Egg",
        "Spiky Egg",
        "Elemental Egg"
    },
    true,
    function(lol90)
        print(lol90)
        _G.Quests1 = lol90
    end
)

b:Toggle(
    "Auto Open Egg",
    function(bool)
        shared.toggle2012 = bool
    end
)

spawn(
    function()
        while wait(0.1) do
            if shared.toggle2012 then
                if _G.Quests1 == "Starter Egg" then
                    
                    

                    local A_1 = "Starter Egg"
                    local Event = game:GetService("ReplicatedStorage").Events.OpenEgg
                    Event:FireServer(A_1)
                elseif _G.Quests1 == "Spiky Egg" then
                    

                    local A_1 = "Spiky Egg"
                    local Event = game:GetService("ReplicatedStorage").Events.OpenEgg
                    Event:FireServer(A_1)
                elseif _G.Quests1 == "Elemental Egg" then
                    
                    

                    local A_1 = "Elemental Egg"
                    local Event = game:GetService("ReplicatedStorage").Events.OpenEgg
                    Event:FireServer(A_1)
                end
            end
        end
    end
)
--------------------------------------------------------- Toggles
spawn(
    function()
        while wait() do
            if AutoTap then
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()

            end
        end
    end
)
spawn(
    function()
        while wait() do
            if FasterAutoTap then
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
                game:GetService("ReplicatedStorage").Events.Tap:FireServer()
            end
        end
    end
)

--------------------------------------------------------- Functions
b:Button(
    "Equip Best",
    function()
        
        

        local A_1 = "EquipBest"
        local Event = game:GetService("ReplicatedStorage").Events.PetAction
        Event:InvokeServer(A_1)
    end
)
b:Button(
    "UnequipAll",
    function()
        
        

        local A_1 = "UnequipAll"
        local Event = game:GetService("ReplicatedStorage").Events.PetAction
        Event:InvokeServer(A_1)
    end
)



local MISC = w:CreateFolder("Misc")

MISC:Button(
    "Rejoin",
    function()
        local TeleportService = game:GetService("TeleportService")
        local PlaceId = game.PlaceId
        local player = game.Players.LocalPlayer
        if player then
            TeleportService:Teleport(PlaceId, player)
        end
    end
)

MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

CS:Label("Made By: Bebo Mods", Color3.fromRGB(38, 38, 38), Color3.fromRGB(255, 34, 0))
CS:Label("Discord Bebo Mods#1532", Color3.fromRGB(38, 38, 38), Color3.fromRGB(255, 34, 0))
CS:Label("YouTube Channel Bebo Mods", Color3.fromRGB(38, 38, 38), Color3.fromRGB(255, 34, 0))
CS:Label("Thanks For Using My Scripts", Color3.fromRGB(38, 38, 38), Color3.fromRGB(255, 34, 0))
CS:Button(
    "Discord Server Link",
    function()
        setclipboard("https://discord.gg/mTC5yP5ay8")
    end
)
CS:DestroyGUI()