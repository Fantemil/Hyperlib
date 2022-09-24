local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Alright GUI, scripts made by plezdonthurtme on v3rmillion", "Synapse")

--VARIABLES
local a1 = 0
local playern = game.Players.LocalPlayer.Name
local base = game:GetService("Workspace").Arsenals["Initus Bay"].Base
local basec = base.CFrame
getgenv().autoOrb = true;
getgenv().autoMats = true;
getgenv().GodMode = true;
getgenv().AutoMeteorite = true;
getgenv().AutoBlackMarketESP = true;
getgenv().AutoSkin = true;

--FUNCTIONS


-- MAIN FOR TABS
local Main = Window:NewTab("Main")
local AnyGame = Window:NewTab("Misc")

--TABS FOR ANY GAME

if game.PlaceId == 8619263259 then
    -- TABS FOR THE CURRENT GAME
    local AutoSection = Main:NewSection("Auto and Toggles(Risky)")
    local TeleportSection = Main:NewSection("Teleports")
    local ClassSection = Main:NewSection("Classes(Use in Private Servers for saftey)")
    local ZoneSection = Main:NewSection("Zones(Mostly Spawns)")
    local QuestSection = Main:NewSection("Quests")
    local EnemiesSection = Main:NewSection("Bosses(Use In Private Servers for saftey)")
    local NPCSection = Main:NewSection("NPCs")
    local ShopSection = Main:NewSection("All Shop Items")

    -- Buttons For Updating


    -- Code for other stuff cuz I'm lazy
    
    
    if 1==1 then
        for i,v in pairs(game:GetService("Workspace").Stalls:GetDescendants()) do
            if v:IsA("NumberValue") and v.Name == "Cost" then
                if v.Parent.Parent.Parent.Parent.Name == "Black Market" then
                
                else
                    ShopSection:NewButton(v.Parent.Name.."("..v.Value.."g)", "", function()
                        local args = {
                            [1] = "Buy1",
                            [2] = workspace.Stalls:FindFirstChild(v.Parent.Parent.Parent.Parent.Name):FindFirstChild(v.Parent.Parent.Parent.Name).Shop:FindFirstChild(v.Parent.Name)
                        }

                        game:GetService("ReplicatedStorage").Remotes.Effected:FireServer(unpack(args))
                    end)
                end
            end
        end
    end
    
    workspace.Stalls["Black Market"].ChildAdded:Connect(function(child)
        if string.match(child.Name, 'Grani') then
            local BMitems = Main:NewSection("Black Market Items")      
            for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
                if v:IsA("TextButton") and v.Text == "Main" and v.Name == "MainTabButton" then
                    game:GetService("StarterGui"):SetCore("SendNotification",{
                        Title = "Black Market Dealer", -- Required
                        Text = "Check the Black Market Items Section in the GUI(Scroll down to bottom).", -- Required
                    })
                    
                    wait(0.5)
                    
                    for i,v in pairs(game:GetService("Workspace").Stalls["Black Market"]:GetDescendants()) do
                        if v:IsA("NumberValue") and v.Name == "Cost" then
                            BMitems:NewButton(v.Parent.Name.."("..v.Value.."g)", "", function()
                                local args = {
                                    [1] = "Buy1",
                                    [2] = workspace.Stalls:FindFirstChild(v.Parent.Parent.Parent.Parent.Name):FindFirstChild(v.Parent.Parent.Parent.Name).Shop:FindFirstChild(v.Parent.Name)
                                }
            
                                game:GetService("ReplicatedStorage").Remotes.Effected:FireServer(unpack(args))
                            end)
                        end
                    end
                end
            end
        end
    end)

    workspace.Stalls["Black Market"].ChildRemoved:Connect(function(child)
        for i,v in pairs(game.CoreGui:GetDescendants()) do
            if v:IsA("TextLabel") and v.Text == "Black Market Items" then
                v.Parent.Parent:Destroy()
            end
        end
    end)

    
    --TOGGLES

    
    AutoSection:NewToggle("Some stuff can get buggy if you die", "This Does Nothing", function(state) 

    end)

    AutoSection:NewToggle("Auto Orbs", "Auto teleports Orbs to you(Buggy).", function(state) 
       getgenv().autoOrb = state
       if state then
       TouchOrb();
       workspace.ChildAdded:Connect(function(child)
            if string.match(child.Name, 'CombatFolder') then
                TouchOrb();
            end
        end)
       end
    end)
local aa3 = 0
local aa4 = 0
    AutoSection:NewToggle("Auto BM ESP", "Puts an ESP on BM when spawned", function(state) 
        getgenv().AutoBlackMarketESP = state
        if state then
        BMesp();
        end
     end)

    AutoSection:NewToggle("God Mode(Read Description, 3 dots ----->)", "Activate when in battles, disable after(Very Buggy).", function(state)
        getgenv().GodMode = state
        if state then
        GodMode();
        workspace.ChildAdded:Connect(function(child)
             if string.match(child.Name, 'CombatFolder') then
                 GodMode();
             end
         end)
        end
     end)

    AutoSection:NewToggle("Auto Materials", "Teleports all Materials to you.", function(state)
        getgenv().autoMats = state
        if state then
        TouchMats();
        end
    end)

    AutoSection:NewToggle("Auto Skin", "Gotta be near monkey dude.", function(state)
        getgenv().AutoSkin = state
        if state then
            fireproximityprompt(game:GetService("Workspace").Stalls.SkinShop.Monkey.HumanoidRootPart.Attachment.ProximityPrompt, 1, true)
            Skins();
        end
    end)

    function fireproximityprompt(Obj, Amount, Skip) -- Sowd0404 proximpy script
        if Obj.ClassName == "ProximityPrompt" then 
            Amount = Amount or 1
            local PromptTime = Obj.HoldDuration
            if Skip then 
                Obj.HoldDuration = 0
            end
            for i = 1, Amount do 
                Obj:InputHoldBegin()
                if not Skip then 
                    wait(Obj.HoldDuration)
                end
                Obj:InputHoldEnd()
            end
            Obj.HoldDuration = PromptTime
        else 

        end

        wait(1)

        game:GetService("Players").LocalPlayer.PlayerGui.UI.Accept.RemoteEvent:FireServer()
        
        wait()
    end

    function TouchMats()
        local Player = game.Players.LocalPlayer
        spawn(function()
            while getgenv().autoMats == true do
                for i,v in pairs(game:GetService("Workspace").MaterialGivers:GetDescendants()) do
                    if v.Name == "Giver" then
                        local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
                        v.CFrame = HRP.CFrame
                    end
                end
                wait()
            end
        end)
    end

    function TouchOrb()
        local Player = game.Players.LocalPlayer
        spawn(function()
            while getgenv().autoOrb == true do
                if game.Workspace.CombatFolder:FindFirstChild(Player.Name) then
                    for i,v in pairs(game.Workspace.CombatFolder[Player.Name]:GetDescendants()) do
                        if v:IsA("Model") then
                            local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
                            v.HitBox.CFrame = HRP.CFrame
                        else
    
                        end
                    end
                    else return
                end
            wait()    
            end
        end)
    end

    function GodMode()
        local Player = game.Players.LocalPlayer
        spawn(function()
            while getgenv().GodMode == true do
                if game.Workspace.CombatFolder then
                    for i,v in pairs(game.Workspace.CombatFolder:GetChildren()) do
                        if v:IsA("Folder") then
                            
                        else
                            v:Destroy()
                        end
                    end
                    else return
                end
            wait()    
            end
        end)
    end

    function BMesp()
        local Player = game.Players.LocalPlayer
        spawn(function()
            while getgenv().AutoBlackMarketESP == true do
                if game:GetService("Workspace").Stalls["Black Market"].Grani then
                        for i,v in pairs(game:GetService("Workspace").Stalls["Black Market"]:GetDescendants()) do
                            if v.ClassName == "Part" and v.Name == "booth"  then -- change
                                    
                                    local esp = Instance.new("BillboardGui")
                                    local esp1 = Instance.new("TextLabel")
                                
                                    esp.Parent = v
                                    esp.Name = "BM"
                                    esp.AlwaysOnTop = true
                                    esp.LightInfluence = 1
                                    esp.Size = UDim2.new(0, 50, 0, 50)
                                    esp.StudsOffset = Vector3.new(0, 2, 0)
                            
                                    esp1.Parent = esp
                                    esp1.BackgroundColor3 = Color3.new(1, 1, 1)
                                    esp1.BackgroundTransparency = 1
                                    esp1.Size = UDim2.new(1, 0, 1, 0)
                                    esp1.Text = "Black Market Dealer"
                                    esp1.TextColor3 = Color3.new(0, 1, 0)
                                    esp1.TextScaled = true

                                    wait(60)

                                    esp:Destroy()


                           end
                        end
                    else return
                end
            wait(0.5)    
            end
        end)
    end

    function Skins()
        local Player = game.Players.LocalPlayer
        spawn(function()
            while getgenv().AutoSkin == true do
                workspace.ChildRemoved:Connect(function(child)
                    if child.Name == "ToTween" and getgenv().AutoSkin == true then
                        wait(1)
                        fireproximityprompt(game:GetService("Workspace").Stalls.SkinShop.Monkey.HumanoidRootPart.Attachment.ProximityPrompt, 1, true)
                    end
                end)
                wait()
            end
        end)
    end
    
    

    --BUTTONS
    TeleportSection:NewButton("Meteorite TP", "Teleports you to Meteorite.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

        HRP.CFrame = game:GetService("Workspace").WorldMap["Sonus Cave"].Meteorite.prox.CFrame
    end)

    TeleportSection:NewButton("Black Market TP", "Teleports you to BM.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

        HRP.CFrame = game:GetService("Workspace").Stalls["Black Market"].Grani.Shop.booth.CFrame
    end)

    TeleportSection:NewButton("Arsenal TP", "Teleports you to trading arsenal.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

        HRP.CFrame = game:GetService("Workspace").Arsenals["Trading Sky"].Base.CFrame
    end)
    
    TeleportSection:NewButton("Teleport Chests", "Teleports chests TouchInterests to you.", function()
        for i,v in pairs(game:GetService("Workspace").Chests:GetChildren()) do
            if v:IsA("Model") then
               v.Giver.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
            end
        end
    end)

    ClassSection:NewButton("Archer Class", "Archer, yay!", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfArcher.Orb.CFrame

    end)

    ClassSection:NewButton("Boxer Class", "Fold some kids. Night Night.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfBoxer.Orb.CFrame

    end)

    ClassSection:NewButton("Elementalist Class", "Don't do drugs kids.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfElementalist.Orb.CFrame

    end)

    ClassSection:NewButton("Defender Class", "Statue name said Knight tho...", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfKnight.Orb.CFrame

    end)

    ClassSection:NewButton("Reaper Class", "You're near death's door...", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfReaper.Orb.CFrame

    end)

    ClassSection:NewButton("Samurai Class", "Katana Zero?", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfSamurai.Union.CFrame

    end)

    ClassSection:NewButton("Wizard Class", "Nerd user, wear glasses.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfWizard.Orb.CFrame

    end)

    ClassSection:NewButton("Combo Sword Class", "Back to the start, huh..?", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfWarrior.Orb.CFrame

    end)

    ClassSection:NewButton("Valkyrie Class", "Not fixing teleport, nerd.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfValkyrie.Union.CFrame

    end)

    ClassSection:NewButton("Healer Class", "This is easy to find...", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfHealer.Orb.CFrame

    end)

    ClassSection:NewButton("Gunner Class", "It's highhh noooon.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfGunner.Orb.CFrame

    end)

    ClassSection:NewButton("SpellBook Class", "Worst Hybrid Class.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfSpellBook.Wedge.CFrame + Vector3.new(0,12,0)

    end)

    ClassSection:NewButton("Skypian Class", "Not a One Piece reference.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Statues.StatueOfSkypian.Wedge.CFrame + Vector3.new(0,12,0)

    end)

    ZoneSection:NewButton("Crystal Caves", "Spooky.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(5305.93262, 362.807343, 1764.76599, 0.875960052, -5.81703796e-09, -0.482383668, -4.24379154e-09, 1, -1.97652419e-08, 0.482383668, 1.93606979e-08, 0.875960052)

    end)

    ZoneSection:NewButton("Samurai Island", "Where's Zoro?", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Spawns.Thirteen.CFrame
    end)


    ZoneSection:NewButton("The Void", "Hope Gaster isn't here.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Spawns.Eight.CFrame
    end)


    ZoneSection:NewButton("Sky Island", "Will kill if not required level", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(-1045.73132, 2698.11499, 19561.4844, -1, -1.95300798e-09, 4.51066379e-16, -1.95300798e-09, 1, -5.91611098e-08, -3.35524256e-16, -5.91611098e-08, -1)

    end)


    ZoneSection:NewButton("Abyss of Enis", "Where Challenger is...", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Spawns.Eleven.CFrame
    end)


    ZoneSection:NewButton("Blubb's Kingdom", "Rocks n stuff, idk.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Spawns.Nine.CFrame
    end)


    ZoneSection:NewButton("Evergreen", "There's a virus nearby.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Spawns.Seven.CFrame
    end)


    ZoneSection:NewButton("Heat Lovers Seaside", "What kind of name is that?", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Spawns.Five.CFrame
    end)


    ZoneSection:NewButton("Element Door", "For Element Ticket", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(178.406723, 131.09996, -86.001091, 0.999368429, 4.07311553e-08, 0.0355354212, -4.13028935e-08, 1, 1.53551039e-08, -0.0355354212, -1.68131216e-08, 0.999368429)

    end)

    ZoneSection:NewButton("Hell Cave", "Hell Bats", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(-2533.48901, -157.000046, 3172.72632, 0.082250461, -3.42684707e-08, -0.996611714, -3.68725388e-08, 1, -3.74280731e-08, 0.996611714, 3.98260767e-08, 0.082250461)

    end)

    ZoneSection:NewButton("Punky Sky", "Yea, seems a lot like....", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Spawns.Three.CFrame
    end)

    ZoneSection:NewButton("Beginner Spawn", "Forgorr", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Spawns.Two.CFrame
    end)   

    NPCSection:NewButton("Craight the Monkey NPC", "", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(2128.40967, 406.999969, 3148.48975, -0.169384688, 0, 0.985549986, 0, 1, 0, -0.985549986, 0, -0.169384688)
    end)

    NPCSection:NewButton("Blacksmith NPC", "", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(5626.3584, 89.6270065, -8174.3623, -0.657170177, 1.52678989e-08, -0.753742218, 3.55675267e-09, 1, 1.71550774e-08, 0.753742218, 8.59293081e-09, -0.657170177)
    end)

    NPCSection:NewButton("Challenging the Challenger NPC", "", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Challenging the Challenger"].Head.CFrame
    end)

    NPCSection:NewButton("Foxes Saga NPC", "", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Foxes Saga"].Head.CFrame
    end)

    NPCSection:NewButton("Foxes and Slimes NPC", "5M Gold Coins???", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Foxes and Slimes"].Head.CFrame
    end)

    NPCSection:NewButton("Get down here! NPC", "No, I don't think I will.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Get down here!"].Head.CFrame
    end)

    NPCSection:NewButton("Hell so Hot NPC", "Heaven so Cold", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Hell so Hot"].Head.CFrame
    end)

    NPCSection:NewButton("Honey Collector NPC", "Be careful of killer bees", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Honey Collector"].Head.CFrame
    end)

    NPCSection:NewButton("Monster Hunter NPC", "Monster Hunter Rise", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Monster Hunter"].Head.CFrame
    end)

    NPCSection:NewButton("Rageblade NPC", "L + Ratio + Stay Mad + Fatherless", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs.Rageblade.Main.CFrame
    end)

    NPCSection:NewButton("Samurai Island NPC", "don't know", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Samurai Island Quest"].Head.CFrame
    end)

    NPCSection:NewButton("Slimy Situation NPC", "U-ummm...", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Slimy Situation"].Head.CFrame
    end)

    NPCSection:NewButton("Tusk's Revenge NPC", "Vengeful spirit", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Tusk's Revenge"].Head.CFrame
    end)

    NPCSection:NewButton("Voidvorn Drills NPC", "Gurren Lagann", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").QuestNPCs["Voidborn Drills"].Main.CFrame
    end)

    -- Section Start

    QuestSection:NewButton("Challenging the Challenger Quest", "", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Challenging the Challenger")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Foxes Saga Quest", "", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Foxes Saga")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Foxes and Slimes Quest", "5M Gold Coins???", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Foxes and Slimes")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Get down here! Quest", "No, I don't think I will.", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Get down here!")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Hell so Hot Quest", "Heaven so Cold", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Hell so Hot")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Honey Collector Quest", "Be careful of killer bees", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Honey Collector")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Monster Hunter Quest", "Monster Hunter Rise", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Monster Hunter")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Rageblade Quest", "L + Ratio + Stay Mad + Fatherless", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Rageblade")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Samurai Island Quest", "don't know", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Samurai Island Quest")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Slimy Situation Quest", "U-ummm...", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Slimy Situation")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Tusk's Revenge Quest", "Vengeful spirit", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Tusk's Revenge")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    QuestSection:NewButton("Voidborn Drills Quest", "Gurren Lagann", function()
        local args = {
            [1] = "MainAction",
            [2] = workspace.QuestNPCs:FindFirstChild("Voidborn Drills")
        }

        workspace.QuestNPCs.Main.onClick:FireServer(unpack(args))
    end)

    -- Section End

    EnemiesSection:NewButton("Oni", "God He's Scary.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Samurai Island Oni"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Shogun", "Cory?", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Samurai Island Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Sky Dragon", "Rawr~~ :3", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Sky 4 Boss Room"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Talented Student", "Not so talented when ya' dead.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Talented Student Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Winged Mother Pig", "This is a mini boss, lol.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Sky 3 Miniboss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Purple Dude", "Venom, Venom, Venom, Venommmm", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(5278.44336, 356.807343, 2133.15967, -0.999843419, -4.46200588e-08, 0.0176954623, -4.43306014e-08, 1, 1.67498282e-08, -0.0176954623, 1.59627547e-08, -0.999843419)
    end)

    EnemiesSection:NewButton("Red Dude", "Cherry Drop", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(5333.23389, 359.807343, 1547.22266, 0.999957979, 4.28678959e-08, 0.00917041954, -4.31411209e-08, 1, 2.95964284e-08, -0.00917041954, -2.99908081e-08, 0.999957979)
    end)

    EnemiesSection:NewButton("Orange Dude", "Orange Juice Boss", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(5037.33154, 346.807343, 1777.70483, -0.0577176027, -7.74749864e-08, 0.998332977, 3.45293607e-08, 1, 7.96006319e-08, -0.998332977, 3.90661583e-08, -0.0577176027)
    end)

    EnemiesSection:NewButton("Tree Dude", "Grute?", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(5608.50488, 358.807343, 1755.62134, 0.00102415122, 8.25704483e-09, -0.999999464, 1.49770649e-08, 1, 8.27238811e-09, 0.999999464, -1.49855293e-08, 0.00102415122)
    end)

    EnemiesSection:NewButton("Queen Bee", "Ya' like jazz?", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Flora Field Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Hell Bat", "Terraria flashbacks...", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Hell Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Snowman", "Frosty the snowman~", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Snowy Caps Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("King Slime", "N-not th-there~~~ ;3", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Ensis Pond Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Duke Fishron", "If you know, you know.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Heat Lovers Seaside Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Luna", "Ok, go to sleep?", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Luna Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Virus", "Happy, Happy, smiley, smiley", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Virus Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Void Eye", "Need some eye drops.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Void Boss"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Skeleton King", "Spooky scary skeletons.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Skeleton King"].Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Challenger", "No, not the car.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies.Challenger.Enemy.EnemyLocation.CFrame
    end)

    EnemiesSection:NewButton("Heart", "Everytime we touch I get this feeling~", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = game:GetService("Workspace").Enemies["Heart Crystal"].Enemy.EnemyLocation.CFrame
    end)

    NPCSection:NewButton("Martial Artist NPC", "Dude Who Gives Martialist.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(-1296.29114, 226.999954, -782.216248, -0.999449909, -4.58875826e-09, -0.0331651606, -7.28118632e-09, 1, 8.10616498e-08, 0.0331651606, 8.12585412e-08, -0.9994499091)

    end)

    NPCSection:NewButton("Martial Artist NPC 2", "Dude Who upgrades Martialist.", function()
        local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        
        HRP.CFrame = CFrame.new(-2227.19897, 742.916565, -136.004929, -0.973652363, 8.97628372e-09, -0.228037506, -9.15434217e-09, 1, 7.844951e-08, 0.228037506, 7.84700802e-08, -0.973652363)

    end)

else
    -- IF THIS ISN'T THE GAME THEN IT WON'T LOAD THESE TOGGLES, BUTTONS, ETC.
end

--BUTTONS FOR ANY GAME
local positionSection = AnyGame:NewSection("Positions")
local pos1
local pos2
local pos3



positionSection:NewButton("Save Position", "Saves your position.", function()
    pos1 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end)

positionSection:NewButton("Load Position", "Loads Saved Position.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = pos1
end)


positionSection:NewButton("Save Position 2", "Saves your position.", function()
    pos2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end)

positionSection:NewButton("Load Position 2", "Loads Saved Position.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = pos2
end)


positionSection:NewButton("Save Position 3", "Saves your position.", function()
    pos3 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end)

positionSection:NewButton("Load Position 3", "Loads Saved Position.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = pos3
end)