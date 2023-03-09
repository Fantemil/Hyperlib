local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Sugarlipsgirl234's Retribution", "Sentinel")
local misc = window:NewTab("Miscallenous")
local manor = window:NewTab("Manor")
local miscCategory = misc:NewSection("Miscallenous")
local manorCategory = manor:NewSection("Manor")
local Player = game.Players.LocalPlayerlocal library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("Sugarlipsgirl234's Retribution", "Sentinel")
local misc = window:NewTab("Miscallenous")
local manor = window:NewTab("Manor")
local miscCategory = misc:NewSection("Miscallenous")
local manorCategory = manor:NewSection("Manor")
local Player = game.Players.LocalPlayer
local Character = Player.Character
local shopPurchase = game.ReplicatedStorage.ShopPurchase;
local shopCategory = misc:NewSection("Shop")

local deleteMeteor = miscCategory:NewToggle("DestroyMeteor", "", function(state)
    _G.Meteor = true 
    while _G.Meteor do 
        for _,v in pairs(workspace:GetChildren()) do 
            if v.Name == "Meteor" then 
                v:Destroy()
            end 
        end 
        wait()
    end 
end)

local deleteCoal = miscCategory:NewToggle("DestroyCoal", "", function(state)
    workspace.DescendantAdded:Connect(function(d)
        if d.Name == "Coal" or d.Name == "coal" then 
            d:Destroy()
        end 
    end)
    
    _G.Coal = state 
    
    while _G.Coal do 
        for _,v in pairs(workspace:GetChildren()) do 
            if v.Name == "Coal" or v.Name == "coal" then 
                v:Destroy()
            end 
        end
        wait()
    end 
end)

local destroyIcicle = miscCategory:NewToggle("DestroyIcicle", "", function(state)
    workspace.DescendantAdded:Connect(function(d) 
        if d.Name == "spike" or d.Name == "Spike" then 
            d:Destroy()
        end 
    end)
    
    _G.Spike = state 
    
    while _G.Spike do 
        for _,v in pairs(workspace.Plates:GetDescendants()) do 
            if v.Name == "Spike" or v.Name == "spike" then 
                v:Destroy()
            end 
        end
        wait()
    end 
end)

local deleteCorruptPortal = miscCategory:NewButton("DestroyCorruptPortal", "", function()
    for _,v in pairs(workspace:GetDescendants()) do 
        if v:IsA("BasePart") and v.Name == "Portal" and v.Color == Color3.new(255, 102, 204) then 
            v:Destroy()
        end 
    end 
end)

local resetOrbitalFluteStrike = miscCategory:NewButton("ResetOrbitalFluteStrikeCooldown", "", function()
    local args = {
        [1] = 0
    }
    game:GetService("Players").LocalPlayer.Character.Flute.Remote:FireServer(unpack(args))
end)

local antiInfect = miscCategory:NewToggle("Anti Infection", "", function(state)
    _G.AntiZombie = state 
    while _G.AntiZombie do 
        wait()
        for _,v in pairs(game.Players:GetPlayers()) do 
            local isZombie = v.Character.Humanoid:FindFirstChild("isZombie") or v:FindFirstChild("isZombie")
            if isZombie then 
                isZombie:Destroy()
            end
        end 
    end
end)

local antiSweeper = miscCategory:NewButton("anti sweeper", "", function()
    for _,v in pairs(workspace:GetDescendants()) do 
        if v.Name == "Spinner" then 
            v:Destroy()
        end 
    end 
end)

local escapeBlackHole = miscCategory:NewButton("Leave Black Hole", "", function()
    local escape = game.Workspace:FindFirstChild("Portal"):FindFirstChild("EscapePortal") 
    if escape then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = escape.CFrame
    end 
end)

local giveDunceHat = miscCategory:NewButton("Give Dunce Hat", "", function()
    local args = {
        [1] = "False"
    }
    
    game:GetService("ReplicatedStorage").EventRemotes.MathTest:FireServer(unpack(args))
end)

local spamEatHotDogs = miscCategory:NewToggle("Spam Eat Hotdogs", "Needs hotdog", function(state)
    _G.HotDog = state 
    while _G.HotDog do 
        local hotdog = game.Players.LocalPlayer.Backpack:FindFirstChild("HotDog") or game.Players.LocalPlayer.Character:FindFirstChild("HotDog")
        if hotdog then 
            hotdog.EatRemote:FireServer()
        end 
        wait()
    end 
end)

local openClose = miscCategory:NewButton("Open/Close Doors", "", function()
    for _,v in pairs(workspace:GetDescendants()) do 
        if v:IsA("ClickDetector") then 
            fireclickdetector(v)
        end 
    end     
end)

local easter = shopCategory:NewButton("BuyEaster", "", function()
    ShopPurchase:FireServer(1,"Easter")
end)

local ornament = shopCategory:NewButton("BuyOrnament", "", function()
    ShopPurchase:FireServer(1,"Ornament")
end)

local furniture = shopCategory:NewButton("BuyFurniture", "", function()
    ShopPurchase:FireServer(1,"Furniture")
end)

local house = shopCategory:NewButton("HouseChest", "", function()
    ShopPurchase:FireServer(1,"HouseChest")
end)

local furniture = shopCategory:NewButton("EggPets", "", function()
    ShopPurchase:FireServer(1,"EggPets")
end)

local furniture = shopCategory:NewButton("Death", "", function()
    ShopPurchase:FireServer(1,"Death")
end)

local ON = false 

local loopBeat = miscCategory:NewToggle("LoopBeatObby", "", function(state) 
    ON = state
    while state==true do
        if ON == false then return end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(65, 128.95, -119.5)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1, 14.53, -17)
    end 
end)

local obby = miscCategory:NewButton("BeatObby", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(65, 128.95, -119.5)
end) 

local spleef = miscCategory:NewButton("GotoSpleef", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1, 14.53, -17)
end)

local hideInSafety = miscCategory:NewButton("GotoSafety", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2000,2000,2000)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end)

local spamClickWeapon = miscCategory:NewToggle("Spam Click (With Weapon)", "Nothing", function(state)
    _G.True = state
    while _G.True do 
        for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Event") then 
                v:FindFirstChild("Event"):FireServer()
            end 
        end 
        wait()
    end 
end)

local spleefCategory = miscCategory:NewToggle("Delete Spleef Tiles (GameMode)", "Nothing", function(state)
    _G.Enabled = state 
    while _G.Enabled do 
        wait()
        for _,v in pairs(workspace["spleef gamemode"]:GetChildren()) do 
            firetouchinterest(game.Players.LocalPlayer.Character["HumanoidRootPart"],v, 0)
        end     
    end
end)

local userInputService=game:GetService("UserInputService")

local fly2 = miscCategory:NewToggle("Fly Without Jetpack", "", function(state)
    _G.Fly = state
    while _G.Fly do
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.ReplicatedStorage.EventRemotes.ForceFly:FireServer((game.Players.LocalPlayer.Character.Humanoid.Torso.Position - game.Workspace.CurrentCamera.CFrame.Position).unit)
        else
            game.ReplicatedStorage.EventRemotes.ForceFly:FireServer(Vector3.new(0,0,0))
        end;
        wait()
    end    
end)

local godmode = miscCategory:NewToggle("Godmode", "", function(state)
    _G.Godmode = state
    while _G.Godmode do
        local retardargs = {
        ["dir"] = Vector3.new(0,0,0), -- The pos doesnt matter
        ["origin"] = Vector3.new(0,0,0), -- The pos doesnt matter
        ["shooter"] = game:GetService("Players").LocalPlayer -- Change to any player if LP doesnt work
        }
        game:GetService'ReplicatedStorage'["damageMe"]:FireServer(-math.huge, retardargs)  
        wait()
    end     
end)


local toggle = miscCategory:NewButton("Anti Projectile Damage (Breaks Godmode)","Nothing", function()
    local mt = getrawmetatable(game)
    make_writeable(mt)
    
    local namecall = mt.__namecall
    
    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
    
        if method == "FireServer" and tostring(self) == "damageMe" or tostring(self) == "GhasterBlaster" then
        return
        end
        return namecall(self, table.unpack(args))
    end)   
end)

local mines = manorCategory:NewButton("Mines","Nothing", function()
    for i = 0,100 do
        workspace.Plates.Reward.remote:FireServer(2)
    end
end)


local safety = miscCategory:NewToggle("SafeFromDeathNote", "", function(state)
    while true do wait() safeFromNote = state end
end)

local killAll = miscCategory:NewButton("KillAll(Deathnote)", "Needs Deathnote", function()
    if safeFromNote then 
        local deathnote = game.Players.Backpack:FindFirstChild("DeathNote") or game.Players.Character:FindFirstChild("DeathNote")
        if deathnote then 
            deathnote.Parent = game.Players.LocalPlayer.Character 
            for _,v in pairs(game.Players:GetPlayers()) do 
                if v.Name ~= game.Players.LocalPlayer then 
                    deathnote.Kill:FireServer(v)
                end 
            end 
        end 
    else 
        if deathnote then 
            deathnote.Parent = game.Players.LocalPlayer.Character 
            for _,v in pairs(game.Players:GetPlayers()) do 
                if v.Name ~= game.Players.LocalPlayer then 
                    deathnote.Kill:FireServer(v)
                end 
            end 
        end 
    end 
end)

local drop100 = manorCategory:NewButton("Drop100 Mines", "", function()
    for i = 0,100 do
        workspace.Plates.Reward.remote:FireServer(2)
    end
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then 
            v.Parent = game.Players.LocalPlayer.Character
            v:Activate()
        end 
    end  
end)

local immortality = manorCategory:NewButton("Immortal","Nothing", function()
   workspace.Plates.Reward.remote:FireServer(1) 
end)

local autoWin = manorCategory:NewButton("Autowin","Nothing", function()
    for i = 0,10000000 do 
        workspace.Plates.Reward.remote:FireServer(3) 
        wait(0.00000000000000000000000000000000000000000001)
    end
end)

local stealHealth = manorCategory:NewButton("StealHealth","Nothing", function()
    workspace.Plates.Reward.remote:FireServer(3)
end)

local potionSpam = miscCategory:NewButton("SpamPotions", "Spams Potions (Gives you immortality", function(state)
        -- Script generated by SimpleSpy - credits to exx#9394
        
        local args = {
            [1] = true
        }
        
        game:GetService("ReplicatedStorage").EventRemotes.Potion:FireServer(unpack(args))
end)

local jetPackSpam = miscCategory:NewToggle("SpamFly", "Requires Jetpack", function(state)
    _G.Jetpack = state
    if _G.Jetpack then
        -- Script generated by SimpleSpy - credits to exx#9394
        
        local args = {
            [1] = "Fly"
        }
        
        game:GetService("Players").LocalPlayer.Character.Jetpack.Fly:FireServer(unpack(args))

        wait()
    end 
    
    if not _G.Jetpack then 
        -- Script generated by SimpleSpy - credits to exx#9394

        local args = {
            [1] = "Land"
        }
        
        game:GetService("Players").LocalPlayer.Character.Jetpack.Fly:FireServer(unpack(args))

    end 
end)

local craftWithout = miscCategory:NewButton("CraftGODSwordWithoutWeapons", "Crafts god sword without the weapons (Need Anvil on map)", function()
local args = {
    [1] = "Bat",
    [2] = "Acceleration Coil",
    [3] = "Sith lightsaber"
}

game:GetService("ReplicatedStorage").EventRemotes.ForgeUltimateSword:FireServer(unpack(args))
end)

local dropMines = miscCategory:NewButton("DropAllMines", "DropsAllMines", function()
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then 
            v.Parent = game.Players.LocalPlayer.Character
            v:Activate()
        end 
    end   
end)

local autoGiveGifts = miscCategory:NewButton("GiveSantaGifts", "Gives Santa Gifts", function()
    for _,v in pairs(game.Players:GetPlayers()) do
        local args = {
            [1] = workspace.Plates[v.Name]
        }
        
        game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
    end  
end)

local killBunnyBoss = miscCategory:NewToggle("Kill Bunny Boss", "Kills Bunny Boss", function(state)
    _G.Kill = true
    while _G.Kill do
        local args = {
            [1] = Vector3.new(0.5938100218772888, 5.110641956329346, 100.0250015258789)
        }
        local found = game.Players.Backpack:FindFirstChild("Crossbow")
        if found then 
            found.Parent = game.Players.LocalPlayer.Character
        end 
        game:GetService("Players").LocalPlayer.Character.Crossbow.work.remote:FireServer(unpack(args))
        wait()      
    end
end) 

local Character = Player.Character
local shopPurchase = game.ReplicatedStorage.ShopPurchase;
local shopCategory = misc:NewSection("Shop")

local deleteMeteor = miscCategory:NewToggle("DestroyMeteor", "", function(state)
    _G.Meteor = true 
    while _G.Meteor do 
        for _,v in pairs(workspace:GetChildren()) do 
            if v.Name == "Meteor" then 
                v:Destroy()
            end 
        end 
        wait()
    end 
end)

local deleteCoal = miscCategory:NewToggle("DestroyCoal", "", function(state)
    workspace.DescendantAdded:Connect(function(d)
        if d.Name == "Coal" or d.Name == "coal" then 
            d:Destroy()
        end 
    end)
    
    _G.Coal = state 
    
    while _G.Coal do 
        for _,v in pairs(workspace:GetChildren()) do 
            if v.Name == "Coal" or v.Name == "coal" then 
                v:Destroy()
            end 
        end
        wait()
    end 
end)

local destroyIcicle = miscCategory:NewToggle("DestroyIcicle", "", function(state)
    workspace.DescendantAdded:Connect(function(d) 
        if d.Name == "spike" or d.Name == "Spike" then 
            d:Destroy()
        end 
    end)
    
    _G.Spike = state 
    
    while _G.Spike do 
        for _,v in pairs(workspace.Plates:GetDescendants()) do 
            if v.Name == "Spike" or v.Name == "spike" then 
                v:Destroy()
            end 
        end
        wait()
    end 
end)

local deleteCorruptPortal = miscCategory:NewButton("DestroyCorruptPortal", "", function()
    for _,v in pairs(workspace:GetDescendants()) do 
        if v:IsA("BasePart") and v.Name == "Portal" and v.Color == Color3.new(255, 102, 204) then 
            v:Destroy()
        end 
    end 
end)

local resetOrbitalFluteStrike = miscCategory:NewButton("ResetOrbitalFluteStrikeCooldown", "", function()
    local args = {
        [1] = 0
    }
    game:GetService("Players").LocalPlayer.Character.Flute.Remote:FireServer(unpack(args))
end)

local antiInfect = miscCategory:NewToggle("Anti Infection", "", function(state)
    _G.AntiZombie = state 
    while _G.AntiZombie do 
        wait()
        for _,v in pairs(game.Players:GetPlayers()) do 
            local isZombie = v.Character.Humanoid:FindFirstChild("isZombie") or v:FindFirstChild("isZombie")
            if isZombie then 
                isZombie:Destroy()
            end
        end 
    end
end)

local antiSweeper = miscCategory:NewButton("anti sweeper", "", function()
    for _,v in pairs(workspace:GetDescendants()) do 
        if v.Name == "Spinner" then 
            v:Destroy()
        end 
    end 
end)

local escapeBlackHole = miscCategory:NewButton("Leave Black Hole", "", function()
    local escape = game.Workspace:FindFirstChild("Portal"):FindFirstChild("EscapePortal") 
    if escape then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = escape.CFrame
    end 
end)

local giveDunceHat = miscCategory:NewButton("Give Dunce Hat", "", function()
    local args = {
        [1] = "False"
    }
    
    game:GetService("ReplicatedStorage").EventRemotes.MathTest:FireServer(unpack(args))
end)

local spamEatHotDogs = miscCategory:NewToggle("Spam Eat Hotdogs", "Needs hotdog", function(state)
    _G.HotDog = state 
    while _G.HotDog do 
        local hotdog = game.Players.LocalPlayer.Backpack:FindFirstChild("HotDog") or game.Players.LocalPlayer.Character:FindFirstChild("HotDog")
        if hotdog then 
            hotdog.EatRemote:FireServer()
        end 
        wait()
    end 
end)

local openClose = miscCategory:NewButton("Open/Close Doors", "", function()
    for _,v in pairs(workspace:GetDescendants()) do 
        if v:IsA("ClickDetector") then 
            fireclickdetector(v)
        end 
    end     
end)

local easter = shopCategory:NewButton("BuyEaster", "", function()
    ShopPurchase:FireServer(1,"Easter")
end)

local ornament = shopCategory:NewButton("BuyOrnament", "", function()
    ShopPurchase:FireServer(1,"Ornament")
end)

local furniture = shopCategory:NewButton("BuyFurniture", "", function()
    ShopPurchase:FireServer(1,"Furniture")
end)

local house = shopCategory:NewButton("HouseChest", "", function()
    ShopPurchase:FireServer(1,"HouseChest")
end)

local furniture = shopCategory:NewButton("EggPets", "", function()
    ShopPurchase:FireServer(1,"EggPets")
end)

local furniture = shopCategory:NewButton("Death", "", function()
    ShopPurchase:FireServer(1,"Death")
end)

local ON = false 

local loopBeat = miscCategory:NewToggle("LoopBeatObby", "", function(state) 
    ON = state
    while state==true do
        if ON == false then return end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(65, 128.95, -119.5)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1, 14.53, -17)
    end 
end)

local obby = miscCategory:NewButton("BeatObby", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(65, 128.95, -119.5)
end) 

local spleef = miscCategory:NewButton("GotoSpleef", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1, 14.53, -17)
end)

local hideInSafety = miscCategory:NewButton("GotoSafety", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2000,2000,2000)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end)

local spamClickWeapon = miscCategory:NewToggle("Spam Click (With Weapon)", "Nothing", function(state)
    _G.True = state
    while _G.True do 
        for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Event") then 
                v:FindFirstChild("Event"):FireServer()
            end 
        end 
        wait()
    end 
end)

local spleefCategory = miscCategory:NewToggle("Delete Spleef Tiles (GameMode)", "Nothing", function(state)
    _G.Enabled = state 
    while _G.Enabled do 
        wait()
        for _,v in pairs(workspace["spleef gamemode"]:GetChildren()) do 
            firetouchinterest(game.Players.LocalPlayer.Character["HumanoidRootPart"],v, 0)
        end     
    end
end)

local userInputService=game:GetService("UserInputService")

local fly2 = miscCategory:NewToggle("Fly Without Jetpack", "", function(state)
    _G.Fly = state
    while _G.Fly do
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.ReplicatedStorage.EventRemotes.ForceFly:FireServer((game.Players.LocalPlayer.Character.Humanoid.Torso.Position - game.Workspace.CurrentCamera.CFrame.Position).unit)
        else
            game.ReplicatedStorage.EventRemotes.ForceFly:FireServer(Vector3.new(0,0,0))
        end;
        wait()
    end    
end)

local godmode = miscCategory:NewToggle("Godmode", "", function(state)
    _G.Godmode = state
    while _G.Godmode do
        local retardargs = {
        ["dir"] = Vector3.new(0,0,0), -- The pos doesnt matter
        ["origin"] = Vector3.new(0,0,0), -- The pos doesnt matter
        ["shooter"] = game:GetService("Players").LocalPlayer -- Change to any player if LP doesnt work
        }
        game:GetService'ReplicatedStorage'["damageMe"]:FireServer(-math.huge, retardargs)  
        wait()
    end     
end)


local toggle = miscCategory:NewButton("Anti Projectile Damage (Breaks Godmode)","Nothing", function()
    local mt = getrawmetatable(game)
    make_writeable(mt)
    
    local namecall = mt.__namecall
    
    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
    
        if method == "FireServer" and tostring(self) == "damageMe" or tostring(self) == "GhasterBlaster" then
        return
        end
        return namecall(self, table.unpack(args))
    end)   
end)

local mines = manorCategory:NewButton("Mines","Nothing", function()
    for i = 0,100 do
        workspace.Plates.Reward.remote:FireServer(2)
    end
end)


local safety = miscCategory:NewToggle("SafeFromDeathNote", "", function(state)
    while true do wait() safeFromNote = state end
end)

local killAll = miscCategory:NewButton("KillAll(Deathnote)", "Needs Deathnote", function()
    if safeFromNote then 
        local deathnote = game.Players.Backpack:FindFirstChild("DeathNote") or game.Players.Character:FindFirstChild("DeathNote")
        if deathnote then 
            deathnote.Parent = game.Players.LocalPlayer.Character 
            for _,v in pairs(game.Players:GetPlayers()) do 
                if v.Name ~= game.Players.LocalPlayer then 
                    deathnote.Kill:FireServer(v)
                end 
            end 
        end 
    else 
        if deathnote then 
            deathnote.Parent = game.Players.LocalPlayer.Character 
            for _,v in pairs(game.Players:GetPlayers()) do 
                if v.Name ~= game.Players.LocalPlayer then 
                    deathnote.Kill:FireServer(v)
                end 
            end 
        end 
    end 
end)

local drop100 = manorCategory:NewButton("Drop100 Mines", "", function()
    for i = 0,100 do
        workspace.Plates.Reward.remote:FireServer(2)
    end
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then 
            v.Parent = game.Players.LocalPlayer.Character
            v:Activate()
        end 
    end  
end)

local immortality = manorCategory:NewButton("Immortal","Nothing", function()
   workspace.Plates.Reward.remote:FireServer(1) 
end)

local autoWin = manorCategory:NewButton("Autowin","Nothing", function()
    for i = 0,10000000 do 
        workspace.Plates.Reward.remote:FireServer(3) 
        wait(0.00000000000000000000000000000000000000000001)
    end
end)

local stealHealth = manorCategory:NewButton("StealHealth","Nothing", function()
    workspace.Plates.Reward.remote:FireServer(3)
end)

local potionSpam = miscCategory:NewButton("SpamPotions", "Spams Potions (Gives you immortality", function(state)
        -- Script generated by SimpleSpy - credits to exx#9394
        
        local args = {
            [1] = true
        }
        
        game:GetService("ReplicatedStorage").EventRemotes.Potion:FireServer(unpack(args))
end)

local jetPackSpam = miscCategory:NewToggle("SpamFly", "Requires Jetpack", function(state)
    _G.Jetpack = state
    if _G.Jetpack then
        -- Script generated by SimpleSpy - credits to exx#9394
        
        local args = {
            [1] = "Fly"
        }
        
        game:GetService("Players").LocalPlayer.Character.Jetpack.Fly:FireServer(unpack(args))

        wait()
    end 
    
    if not _G.Jetpack then 
        -- Script generated by SimpleSpy - credits to exx#9394

        local args = {
            [1] = "Land"
        }
        
        game:GetService("Players").LocalPlayer.Character.Jetpack.Fly:FireServer(unpack(args))

    end 
end)

local craftWithout = miscCategory:NewButton("CraftGODSwordWithoutWeapons", "Crafts god sword without the weapons (Need Anvil on map)", function()
local args = {
    [1] = "Bat",
    [2] = "Acceleration Coil",
    [3] = "Sith lightsaber"
}

game:GetService("ReplicatedStorage").EventRemotes.ForgeUltimateSword:FireServer(unpack(args))
end)

local dropMines = miscCategory:NewButton("DropAllMines", "DropsAllMines", function()
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then 
            v.Parent = game.Players.LocalPlayer.Character
            v:Activate()
        end 
    end   
end)

local autoGiveGifts = miscCategory:NewButton("GiveSantaGifts", "Gives Santa Gifts", function()
    for _,v in pairs(game.Players:GetPlayers()) do
        local args = {
            [1] = workspace.Plates[v.Name]
        }
        
        game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
    end  
end)

local killBunnyBoss = miscCategory:NewToggle("Kill Bunny Boss", "Kills Bunny Boss", function(state)
    _G.Kill = true
    while _G.Kill do
        local args = {
            [1] = Vector3.new(0.5938100218772888, 5.110641956329346, 100.0250015258789)
        }
        local found = game.Players.Backpack:FindFirstChild("Crossbow")
        if found then 
            found.Parent = game.Players.LocalPlayer.Character
        end 
        game:GetService("Players").LocalPlayer.Character.Crossbow.work.remote:FireServer(unpack(args))
        wait()      
    end
end) 