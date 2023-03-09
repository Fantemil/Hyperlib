--Public
repeat task.wait() until game:IsLoaded()


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GSstarGamer/GUI/main/Mercury-edit.lua"))()



local GUI = Library:Create{
    Name = "FallAngle Hub",
    Size = UDim2.fromOffset(600, 500),
    Theme = Library.Themes.GStheme,
    Link = "https://discord.gg/tbENWKpgku"
}

GUI:Credit{
    Name = "GS_StarGamer",
    Description = "Made the script, also made the theme",
    V3rm = "https://v3rmillion.net/member.php?action=profile&uid=2560793",
    Discord = "discord.gg/tbENWKpgku"
}

GUI:Credit{
    Name = "x3Fall3nAngel",
    Description = "Helped me",
    V3rm = "https://v3rmillion.net/member.php?action=profile&uid=2270329",
    Discord = "discord.gg/tbENWKpgku"
}

GUI:Notification{
    Title = "Hey!",
    Text = "Thank you for choosing FallAngle Hub, for more information click on the other tab, with FNOF logo",
    Duration = 20,
    Callback = function() 
        game:IsLoaded()
    end
}

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

GUI:Notification{
 Title = "Note",
 Text = "Anti-AFK activated",
 Duration = 3,
 Callback = function() end
}

--Ghosts

local Mainhubg = {
        "Fairy",
        "Owl",
        "Businessman",
        "Street Cat",
        "Mechanic",
        "Garbage Bin",
        "Paper Bag Man",
        "Rat",
        "Pigeon",
        "Bandit",
        "Cowboy",
        "Scientist",
        "Zorg",
        "Miner",
        "Living Rock",
        "Pharaoh",
        "Mummy",
        "Pirate",
        "Parrot",
        "Diver",
        "Mermaid",
        "Islander",
        "Magma Monster",
        "Explorer",
        "Penguin"
}

local Ghostworldg = {
        "Jester",
        "Jelly",
        "Pinwheel",
        "Blue Ray",
        "Spooky",
        "Pixie",
        "Rogue",
        "Knight",
        "Wizard",
        "Horse",
        "Bongo Man",
        "Yellow Note",
        "DJ",
        "Purple Note",
        "Viney",
        "Blooming",
        "Adventurer",
        "Dragonfly"
}

local backdoorg = {
    "Swamp Dweller",
    "Firefly",
    "Frost Spirit",
    "Snowstorm",
    "Flutter Spirit",
    "Mushroom",
    "Water Spirit",
    "Glitcher",
    "Error 404",
    "Rock Crystal",
    "Farmer",
    "Crazy Cow",
    "Parasite",
    "Super Computer",
    "Digital Bandit",
    "Trojan Horse",
    "Honeydrop",
    "Bee",
    "Web Surfer",
    "Binary",
    "Byte",
    "Digi Cat",
    "Guardian",
    "Data Fury",
    "Programmer",
    "RAM"
}



--Bossesg
local mainhubb = {
    "Ghastly Tree",
    "George The Gorilla",
    "Sludge",
    "Subject One",
    "King Krab",
    "Magmoraug"
}

local ghostworldb = {
    "Grim",
    "The Great Guardian"
}

local backdoorb = {
    "Anomaly",
    "The Final Boss"
}

--Locals
local ghostN = nil
local ghostN2 = nil

local bossN = nil




--maps
local mainhub = 2685347741
local ghostworld = 4078003854
local backdoor = 4383092793
local bloxbyte = 5061426732



local Farm = GUI:Tab{
    Name = "Farm",
    Icon = "rbxassetid://8292007940"
}

local Quest = GUI:Tab{
    Name = "Quest",
    Icon = "rbxassetid://82426641"
}

local Bosses = GUI:Tab{
    Name = "Bosses",
    Icon = "rbxassetid://77095067"
}

local Other = GUI:Tab{
    Name = "Other",
    Icon = "rbxassetid://9047121552"
}

--farm
if game.PlaceId == mainhub then
    Farm:Dropdown{
        Name = "Select the ghost you want to farm",
        StartingText = "Select...",
        Description = nil,
        Items = Mainhubg,
        Callback = function(v)
            ghostN = v
        end
    }

elseif game.PlaceId == ghostworld then
Farm:Dropdown{
    Name = "Select the ghost you want to farm",
    StartingText = "Select...",
    Description = nil,
    Items = Ghostworldg,
    Callback = function(v)
        ghostN = v
    end
}
elseif game.PlaceId == backdoor then
    Farm:Dropdown{
        Name = "Select the ghost you want to farm",
        StartingText = "Select...",
        Description = nil,
        Items = backdoorg,
        Callback = function(v)
            ghostN = v
        end
    }
end


Farm:Toggle{
    Name = "AutoFarm",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        local GhostsFolder = game.Workspace.Ghosts
        getgenv().autofarm = state
        GUI:Notification{
            Title = "Alert",
            Text = "Please equip your vacuum in order to work",
            Duration = 3,
            Callback = function() end
        }
        spawn(function()
            while autofarm == true do
                for i, v in pairs(workspace.Ghosts:GetChildren()) do
                    if v.Name == ghostN and v:FindFirstChild("HumanoidRootPart") and autofarm == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
                        local remote = game:GetService("ReplicatedStorage").Network.ToServer.Requests.VacuumEnemy
                        remote:FireServer(v)

                    elseif ghostN == nil then
                        GUI:Notification{
                            Title = "ERROR",
                            Text = "You have not selected a ghost yet.",
                            Duration = 3,
                            Callback = function() end
                        }
                        wait(3)
                    end
                end
                task.wait()
            end
        end)
    end
}


if game.PlaceId == mainhub then
    Farm:Toggle{
        Name = "Autosell",
        StartingState = false,
        Description = nil,
        Callback = function(state) 
            getgenv().autosell = state
            spawn(function()
                while getgenv().autosell == true do
                    local player = game.Players.LocalPlayer
                    local bLocation
                    function teleport(loc)
                        bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        if game.Players.LocalPlayer.Character.Humanoid.Sit then
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        end
                        wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
                    end
                        teleport(CFrame.new(211, -148, -1710)) --  MAIN WORLD ----  CFrame.new(211, -148, -1710)  GHOST WORLD ---  CFrame.new(123, -862, 6040)   ---- VOID  CFrame.new(-2, 257, -154)
                        wait(2)
                        teleport(bLocation)
                    wait(10)
            end
        end)
    end}
elseif game.PlaceId == ghostworld then
    Farm:Toggle{
        Name = "Autosell",
        StartingState = false,
        Description = nil,
        Callback = function(state) 
            getgenv().autosell = state
            spawn(function()
                while getgenv().autosell == true do
                    local player = game.Players.LocalPlayer
                    local bLocation
                    function teleport(loc)
                        bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        if game.Players.LocalPlayer.Character.Humanoid.Sit then
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        end
                        wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
                    end

                        teleport(CFrame.new(123, -862, 6040)) --  MAIN WORLD ----  CFrame.new(211, -148, -1710)  GHOST WORLD ---  CFrame.new(123, -862, 6040)   ---- VOID  CFrame.new(-2, 257, -154)
                        wait(2)
                        teleport(bLocation)
                    wait(10)
            end
        end)
    end}
elseif game.PlaceId == backdoor then
    Farm:Toggle{
        Name = "Autosell",
        StartingState = false,
        Description = nil,
        Callback = function(state) 
            getgenv().autosell = state
            spawn(function()
                while getgenv().autosell == true do
                    local player = game.Players.LocalPlayer
                    local bLocation
                    function teleport(loc)
                        bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        if game.Players.LocalPlayer.Character.Humanoid.Sit then
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        end
                        wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
                    end
            
                        teleport(CFrame.new(99.1463547, 278.861572, -744.693115, -0.945054948, 1.84763416e-09, -0.326911479, 3.85483538e-08, 1, -1.05786064e-07, 0.326911479, -1.12575549e-07, -0.945054948)) --  MAIN WORLD ----  CFrame.new(211, -148, -1710)  GHOST WORLD ---  CFrame.new(123, -862, 6040)   ---- VOID  CFrame.new(-2, 257, -154)
                        wait(2)
                        teleport(bLocation)
                    wait(10)
            end
        end)
    end}    
end

Farm:Toggle{
    Name = "Auto hit",
    StartingState = false,
    Description = nil,
    Callback = function(state) 
        getgenv().autohit = state
        spawn(function ()
            while autohit == true do
                    local args = {
                        [1] = workspace.Ghosts:FindFirstChild(ghostN)
                    }                                    
                    game:GetService("ReplicatedStorage").Network.ToServer.Requests.VacuumFireHit:FireServer(unpack(args))
                    task.wait() 
                end
            end)
        end}

Farm:Toggle{
    Name = "Auto Antenna upgrade",
    StartingState = false,
    Description = nil,
    Callback = function(state) 
        getgenv().autoantenna = state
        spawn(function ()
            while autoantenna == true do
                game:GetService("ReplicatedStorage").Network.ToServer.Requests.UpgradeAntenna:FireServer()
                task.wait()
            end 
        end)
    end
}


--quest
Quest:Toggle{
    Name = "Auto start quests",
    StartingState = false,
    Description = nil,
    Callback = function(state)
    getgenv().autostartquest = state
        spawn(function ()
            while autostartquest == true do
                for i = 1, 500 do
                    local args = {
                        [1] = i
                    }
                    
                    game:GetService("ReplicatedStorage").Network.ToServer.Requests.StartQuest:FireServer(unpack(args))
                    task.wait()
                end
            end
        end)
    end
}

Quest:Toggle{
    Name = "Auto Claim Quest",
    StartingState = false,
    Description = nil,
    Callback = function(state)
    getgenv().autoclaimquest = state
        spawn(function ()
            while autoclaimquest == true do
                for i = 1, 500 do
                    local args = {
                        [1] = i
                    }
                    
                    game:GetService("ReplicatedStorage").Network.ToServer.Requests.AdvanceQuest:FireServer(unpack(args))
                    task.wait()
                end
            end
        end)
    end
}

--bosses
if game.PlaceId == mainhub then
    Bosses:Dropdown{
        Name = "Select boss",
        StartingText = "Select...",
        Description = nil,
        Items = mainhubb,
        Callback = function(v)
            bossN = v
        end
    }
elseif game.PlaceId == ghostworld then
    Bosses:Dropdown{
        Name = "Select boss",
        StartingText = "Select...",
        Description = nil,
        Items = ghostworldb,
        Callback = function(v)
            bossN = v
        end
    }
elseif game.PlaceId == backdoor then
    Bosses:Dropdown{
        Name = "Select boss",
        StartingText = "Select...",
        Description = nil,
        Items = backdoorb,
        Callback = function(v)
            bossN = v
        end
    }
end

Bosses:Toggle{
    Name = "Bossfarm",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        local GhostsFolder = game.Workspace.Ghosts
        getgenv().bossfarm = state
        GUI:Notification{
            Title = "Alert",
            Text = "If you are not tp'ing then the boss is not spawned yet, or dm me.",
            Duration = 3,
            Callback = function() end
        }
        spawn(function()
            while bossfarm == true do
                for i, v in pairs(workspace.Ghosts:GetChildren()) do
                    if v.Name == bossN and v:FindFirstChild("HumanoidRootPart") and bossfarm == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 10)
                        local remote = game:GetService("ReplicatedStorage").Network.ToServer.Requests.VacuumEnemy
                        remote:FireServer(v)

                    elseif bossN == nil then
                        GUI:Notification{
                            Title = "ERROR",
                            Text = "You have not selected the yet yet.",
                            Duration = 3,
                            Callback = function() end
                        }
                        wait(3)
                    end
                end
                task.wait()
            end
        end)
    end
}

Bosses:Toggle{
    Name = "Auto hit boss",
    StartingState = false,
    Description = nil,
    Callback = function(state) 
        getgenv().autohitboss = state
        GUI:Notification{
            Title = "Alert",
            Text = "Use this featuer only with bosses with shield",
            Duration = 3,
            Callback = function() end
        }
        spawn(function ()
            while autohitboss == true do
                    local args = {
                        [1] = workspace.Ghosts:FindFirstChild(bossN)
                    }                                    
                    game:GetService("ReplicatedStorage").Network.ToServer.Requests.VacuumFireHit:FireServer(unpack(args))
                    task.wait() 
                end
            end)
        end}




--other
Other:Button{
    Name = "Print Ghosts in your area",
    Description = nil,
    Callback = function() 
        for i, v in pairs(game.Workspace.Ghosts:GetChildren()) do
            print(v.Name)
        end
            GUI:Notification{
                Title = "Alert",
                Text = "Open console to see all ghosts in your area. press F9",
                Duration = 3,
                Callback = function() end
            }
    end
}

--MAIN WORLD ----  CFrame.new(211, -148, -1710)  GHOST WORLD ---  CFrame.new(123, -862, 6040)   ---- VOID  CFrame.new(-2, 257, -154)
local mainhubs = "211, -148, -1710"
local ghostworlds = "123, -862, 6040"
local backdoors = "99.1463547, 278.861572, -744.693115, -0.945054948, 1.84763416e-09, -0.326911479, 3.85483538e-08, 1, -1.05786064e-07, 0.326911479, -1.12575549e-07, -0.945054948"

if game.PlaceId == mainhub then
Other:Keybind{
    Name = "Quick sell keybind",
    Keybind = nil,
    Description = "quick sell",
    Callback = function ()
        GUI:Notification{
            Title = "Alert",
            Text = "Teleporting...",
            Duration = 0.5,
            Callback = function() end
        }
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(211, -148, -1710)
    end
}

elseif game.PlaceId == ghostworld then
    Other:Keybind{
        Name = "Quick sell keybind",
        Keybind = nil,
        Description = "quick sell",
        Callback = function ()
        GUI:Notification{
            Title = "Alert",
            Text = "Teleporting...",
            Duration = 0.5,
            Callback = function() end
        }

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123, -862, 6040)
        end}
elseif game.PlaceId == backdoor then
    Other:Keybind{
        Name = "Quick sell keybind",
        Keybind = nil,
        Description = "quick sell",
        Callback = function ()
            GUI:Notification{
                Title = "Alert",
                Text = "Teleporting...",
                Duration = 0.5,
                Callback = function() end
            }
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.1463547, 278.861572, -744.693115, -0.945054948, 1.84763416e-09, -0.326911479, 3.85483538e-08, 1, -1.05786064e-07, 0.326911479, -1.12575549e-07, -0.945054948)
        end}
end

if game.PlaceId == mainhub then
    Other:Button{
        Name = "Serverhop",
        Description = "Serverhop in the same world",
        Callback = function() 
            local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/2685347741/servers/Public?sortOrder=Asc&limit=100"))
for i,v in pairs(Servers.data) do
  if v.playing ~= v.maxPlayers then
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
  end
        end
end}


elseif game.PlaceId == ghostworld then
    Other:Button{
        Name = "Serverhop",
        Description = "Serverhop in the same world",
        Callback = function() 
            local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/4078003854/servers/Public?sortOrder=Asc&limit=100"))
    for i,v in pairs(Servers.data) do
        if v.playing ~= v.maxPlayers then
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
    end
        end
end}


elseif game.PlaceId == backdoor then
    Other:Button{
        Name = "Serverhop",
        Description = "Serverhop in the same world",
        Callback = function() 
            local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/4383092793/servers/Public?sortOrder=Asc&limit=100"))
for i,v in pairs(Servers.data) do
    if v.playing ~= v.maxPlayers then
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
        end
        end
    end}
end

Other:Credit{
 Name = "Join discord?",
 Description = "Click on the discord logo to copy our server invite. ---------------------------------------->",
 V3rm = nil,
 Discord = "discord.gg/tbENWKpgku"
}

-- local mainhub = 2685347741
-- local ghostworld = 4078003854
-- local backdoor = 4383092793