local blacklist = { "Arrow", "Rokakaka Fruit", "DIO's Diary", "Requiem Arrow", "Money", "Samurai Path", "CrystalGem", "StarGem", "Joseph's Gun", "Dank Diary", "Vampire Mask", "Aja Mask", "Universe Orb", "Duality Orb", "BoozBOL", "Watch", "Camera", "Bread", "Zenith Arrow", "Jesus's Corpse Part", "Gift From The Gods", "Holy Diary", "Perseverance", "Bravery", "Patience", "Integrity", "Kindness", "Justice", "Valentine's Flag", "Hie Hie no Mi", "Caesar's Scarf", "Mochi Mochi no Mi" }

local function rareitemsound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://136075117"
    sound.Parent = game.Workspace
    sound.Volume = 10
    sound:Play()
    wait(3)
    sound:Destroy()
end

rareitemsound()

local function Damage(Obj)
    if not Obj then return end
    
    local args = {
        [1] = game.Workspace:WaitForChild(Obj):FindFirstChild("Humanoid"),
        [2] = 599
    }
    game:GetService("ReplicatedStorage").newremotes.CreateProjectile.hit:FireServer(unpack(args)) 
end

local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
end
game.Players.LocalPlayer.Idled:Connect(function()
        local VU = game.VirtualUser
        VU:CaptureController()
        VU:ClickButton2(Vector2.new())
end)



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Nick's AUT copy gui", HidePremium = false, SaveConfig = true, ConfigFolder = "MineSim", IntroText = "Some Universal Skiddery"})


local Tab1 = Window:MakeTab({Name = "Item Spawns", Icon = "rbxassetid://4483345998", PremiumOnly = false })

Tab1:AddLabel("All items that spawn (apart from common items) are listed here")


-- Function to create a button
local function createItemButton(item, spawnTime)
    Tab1:AddButton({
        Name = item.Name .. " (Spawned at: " .. spawnTime .. ")", -- Include spawn time in the button name
        Callback = function()
            local Handle = item:WaitForChild("Handle") or item:WaitForChild("Main") or item:WaitForChild("Back") or item:WaitForChild("bone") or item:WaitForChild("Middle") or item:WaitForChild("Part")
                Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame wait(0.5)
        end
    })
end

-- Function to listen for changes in game.workspace.Items
local function onChildAdded(child)
    if child:IsA("Tool") then
        -- Check if the item is in the blacklist
        local isBlacklisted = false
        for _, blacklistedItem in pairs(blacklist) do
            if child.Name == blacklistedItem then
                isBlacklisted = true
                break
            end
        end

        if not isBlacklisted then
            local spawnTime = game.Workspace.Time.Value
            createItemButton(child, spawnTime) -- Create a button for the new item
        end
    end
end

-- Add an initial set of buttons for existing children
for _, child in pairs(game.workspace.Items:GetChildren()) do
    if child:IsA("Tool") then
        -- Check if the item is in the blacklist
        local isBlacklisted = false
        for _, blacklistedItem in pairs(blacklist) do
            if child.Name == blacklistedItem then
                isBlacklisted = true
                break
            end
        end

        if not isBlacklisted then
            local spawnTime = os.date("%c", os.time())
            createItemButton(child, spawnTime)
        end
    end
end


workspace.Items.ChildAdded:Connect(onChildAdded)

local workspace = game:GetService("Workspace")
local players = game:GetService("Players")

local function onChildAdded(child)
    if child:IsA("Tool") and table.find({"Dragon Ball", "Cursed Orb", "Heart", "Bone", "xSoul", "True Requiem Arrow", "Cosmic Orb", "Death Note", "Mystery Scythe"}, child.Name) then
        local playerName = players.LocalPlayer.Name
        local itemName = child.Name
        game.StarterGui:SetCore("SendNotification", {
            Title = "Item Spawned",
            Text = itemName .. " has spawned.",
            Icon = "",
            Duration = 10  -- Set the duration to 10 seconds
        })
        rareitemsound()
        wait(0.3)
        rareitemsound()
        wait(0.3)
        rareitemsound()
        local handle = child:WaitForChild("Handle") or child:WaitForChild("Main") or child:WaitForChild("Back") or child:WaitForChild("bone") or child:WaitForChild("Middle") or child:WaitForChild("Part")
        
            handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  wait(0.5)
    end
end

workspace.Items.ChildAdded:Connect(onChildAdded)


game.Workspace.Items.ChildAdded:Connect(onChildAdded)

local Tab2 = Window:MakeTab({Name = "Bosses", Icon = "rbxassetid://4483345998", PremiumOnly = false })

_G.BossFarm = false

local bossNames = { "DIO [BOSS]", "DIO BRANDO [BOSS]", "Brazillian Samurai [BOSS]" }

local function ApplyDamageToBosses() while _G.BossFarm do for _, bossName in ipairs(bossNames) do
        local boss = game.Workspace:FindFirstChild(bossName) 
            if boss then 
                Damage(bossName) 
            end 
        end 
    wait(0.5)
    end
end

Tab2:AddButton({
    Name = "Kill DIO",
    Callback = function()
        repeat Damage("DIO [BOSS]") wait() until game.Workspace['DIO [BOSS]'].Humanoid.Health <= 0
    end
})

Tab2:AddButton({
    Name = "Kill DIO Brando",
    Callback = function()
        repeat Damage("DIO BRANDO [BOSS]") wait() until game.Workspace['DIO BRANDO [BOSS]'].Humanoid.Health <= 0
    end
})

Tab2:AddButton({
    Name = "Kill Jet Sam",
    Callback = function()
        repeat Damage("Brazillian Samurai [BOSS]") wait() until game.Workspace['Brazillian Samurai [BOSS]'].Humanoid.Health <= 0
    end
})

Tab2:AddLabel("Auto Bosses")

Tab2:AddToggle({
    Name = "AutoKill Bosses",
    Default = false,
    Callback = function(v)
        _G.BossFarm = v
    end
})


spawn(function()
    while wait() do
            ApplyDamageToBosses()
    end
end)

local Tab3 = Window:MakeTab({Name = "Player", Icon = "rbxassetid://4483345998", PremiumOnly = false })

local function textbox(text, def, callback)
    Tab3:AddTextbox({
        Name = text,
        Default = def,
        TextDisappear = true,
        Callback = callback
    })
end

local function heal()
    local args = {
        [1] = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"),
        [2] = -599
    }
    game:GetService("ReplicatedStorage").newremotes.CreateProjectile.hit:FireServer(unpack(args))
end

local function healother(plr)
    local args = {
        [1] = game.Players[plr].Character:FindFirstChild("Humanoid"),
        [2] = -599
    }
    game:GetService("ReplicatedStorage").newremotes.CreateProjectile.hit:FireServer(unpack(args))
end

_G.ReaperGodMode = false
_G.AllGodMode = false
_G.GodModeOther = false

Tab3:AddToggle({
    Name = "God Mode (Must have Reaper)",
    Callback = function(v)
        _G.ReaperGodMode = v
    end
})

Tab3:AddToggle({
    Name = "God Mode (works with all stands)",
    Callback = function(v)
        _G.AllGodMode = v
    end
})

Tab3:AddToggle({
    Name = "God Mode Selected Player",
    Callback = function(v)
        _G.GodModeOther = v
    end
})

spawn(function()
    while wait() do
        if _G.AllGodMode == true then
            repeat wait() heal() until _G.AllGodMode == false
        end
    end
end)

spawn(function()
    while wait() do
        if _G.ReaperGodMode then
            game:GetService("Players").LocalPlayer.Character.Stand:FindFirstChild("Stand Right Arm").Blade.Script.re:FireServer(1)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.GodModeOther then
            repeat healother(_G.Plr) wait() until game:GetService("Players")[_G.Plr].Character.Humanoid.Health == game:GetService("Players")[_G.Plr].Character.Humanoid.MaxHealth 
        end
    end
end)

            

local function KillPlayer(PlayerName)
    local args = {
        [1] = game.Workspace:WaitForChild(PlayerName):WaitForChild("Humanoid"),
        [2] = 599
    }
    game:GetService("ReplicatedStorage").newremotes.CreateProjectile.hit:FireServer(unpack(args)) 
end
    

_G.Plr = nil

textbox("Select Player", "Enter Name", function(v)
    _G.Plr = v
end)

local player = game.Players.LocalPlayer.Character

local function button3(name, cb)
    Tab3:AddButton({
        Name = name,
        Callback = cb
    })
end

button3("Kill Player", function()
    repeat KillPlayer(_G.Plr) wait() until game.Players[_G.Plr].Character.Humanoid.Health <= 0
end)

_G.LKill = false

button3("Heal Player", function()
    repeat healother(_G.Plr) wait() until game.Players[_G.Plr].Character.Humanoid.Health == game.Players[_G.Plr].Character.Humanoid.MaxHealth
end)

button3("Teleport to Player", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.Plr].Character.HumanoidRootPart.CFrame
end)

button3("Kill all Players", function()
    for i,v in pairs(game.Players:GetChildren()) do
        if v:IsA("Player") and v.Name ~= game.Players.LocalPlayer.Name then
            repeat KillPlayer(v.Name) wait() until v.Character.Humanoid.Health <= 0
        end
    end
end)

button3("Heal all Players", function()
    for i,v in pairs(game.Players:GetChildren()) do
        if v:IsA("Player") and v.Name ~= game.Players.LocalPlayer.Name then
            repeat healother(v) wait() until v.Character.Humanoid.Health >= 0
        end
    end
end)

Tab3:AddToggle({
    Name = "LoopKill Plr",
    Default = false,
    Callback = function(v)
        _G.LKill = v
    end
})

spawn(function()
    while wait() do
        if _G.LKill == true then
            repeat KillPlayer(_G.Plr) wait() until _G.LKill == false
        end
    end
end)

Tab3:AddLabel("Player")

textbox("Remove Item from Black List", nil, function(v)
    if table.find(blacklist, v) then
        table.remove(blacklist, v)
    elseif not table.find(blacklist, v) then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = v .. " Is not an instance of table: blacklist",
            Duration = 5
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Item Not Found",
            Text = v .. " Is not a valid item name",
            Duration = 5
        })
    end
end)
    

textbox("Add Item to blacklist (item spawns)", "name", function(v)
    if table.find(blacklist, v) then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Item Already Found",
            Text = v .. " Is already an instance of blacklist item",
            Duration = 5,
        })
    else
        table.insert(blacklist, v)
    end
end)

Tab3:AddParagraph("Default Blacklist", table.concat(blacklist, ", "))


local plr2 = game.Players.LocalPlayer.Character.Humanoid

local hp = Tab3:AddLabel('Player Health: hey you found an easter egg💀 ')

hp:Set("Player Health: "..plr2.Health)

spawn(function()
    while wait() do
        hp:Set("Player Health: "..plr2.Health)
    end
end)

button3("Grab all items (laggy)", function()
    for i,v in pairs(game.Workspace.Items:GetChildren()) do
      if v:IsA"Tool" then
          local Handle = v:FindFirstChild("Handle") or v:FindFirstChild("Main") or v:FindFirstChild("Back") or v:FindFirstChild("bone") or v:FindFirstChild("Middle") or v:FindFirstChild("Part")
          Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  wait(0.5)
        end
    end
end)

button3("150 WalkSpeed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150.448334599
end)

local Tab4 = Window:MakeTab({
    Name = "Spawns Unfiltered",
    Icon = "rbxassetid://4483345998", 
    PremiumOnly = false
})

wait(1)

local function createItemButton2(item, spawnTime)
    Tab4:AddButton({
        Name = item.Name .. " (Spawned at: " .. spawnTime .. ")",
        Callback = function()
            local Handle2 = item:WaitForChild("Handle") or item:WaitForChild("Main") or item:WaitForChild("Back") or item:WaitForChild("bone") or item:WaitForChild("Middle") or item:WaitForChild("Part")
             Handle2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(0.5)
        end
    })
end

local function onChildAdded2(child)
    if child:IsA("Tool") then
        local spawnTime = game.Workspace.Time.Value
        createItemButton2(child, spawnTime)
    end
end

for _, child in pairs(game.workspace.Items:GetChildren()) do
    if child:IsA("Tool") then
        local spawnTime = game.Workspace.Time.Value
        createItemButton2(child, spawnTime)
    end
end

workspace.Items.ChildAdded:Connect(onChildAdded2)