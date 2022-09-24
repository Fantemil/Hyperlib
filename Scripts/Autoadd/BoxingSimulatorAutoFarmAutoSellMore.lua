local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
-- vars
local players = game:GetService('Players')
local plyrhum = game:GetService('Players').LocalPlayer.Character.Humanoid
local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart


getgenv().pickupc = false
getgenv().autosell = false
getgenv().autofarm = false
getgenv().autodna = false
getgenv().autoglove = false
getgenv().boss1 = false
getgenv().pickupe = false
getgenv().pickupt = false
getgenv().autohatch = false
getgenv().energy = false
getgenv().npcfarm = false





-- functions
function sell() 
 spawn(function() while getgenv().autosell == true do
   game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()
   wait(1)
   end
  end)
end

function npcfarm(npc)
    spawn(function()
        while getgenv().npcfarm == true do
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
            for i,v in pairs(game:GetService("Workspace").Dungeon.Rooms:GetDescendants()) do
                if v.Name == npc then
                   repeat wait()
                    plyr.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,3 ) 
                    mouse1press()
                   until v.Humanoid.Health <= 0 or getgenv().npcfarm == false 
                end
               end
            end
    end)
end

function worldtp(world)
    spawn(function()
        if game:GetService("Workspace").IslandUnlock[world] then
        plyr.CFrame = game:GetService("Workspace").IslandUnlock[world].CFrame
        end
    end)
end

function energy() 
    spawn(function() while getgenv().energy == true do
        game:GetService("ReplicatedStorage").Events.UpgradeEnergy:FireServer()
      wait()
      end
     end)
   end

function autohatch()
    spawn(function()
        while getgenv().autohatch == true and wait() do 
    game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(hatcharg))
    end
    end)
    end

function farm()
    spawn(function() while getgenv().autofarm == true do
        local puncht
        wait()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
            if v.Name == 'Punch' then
                puncht = v
            end
        end
        for i,v in pairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
            if v.Name == 'Punch' then
                puncht = v
            end
        end
     plyrhum:EquipTool(puncht)
     wait()
     mouse1press()
     end
 end)
end

function boss1() 
    spawn(function()
        while getgenv().boss1 == true do
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                for i,v in pairs(game:GetService("Workspace").Boss:GetDescendants()) do
                if v.Name == 'HumanoidRootPart' then
                    repeat wait()
                        plyr.CFrame = v.CFrame * CFrame.new(0, 0, 3)
                        mouse1press()
                    until v == nil  or getgenv().boss1 == false
                 end
              end
            end
    end)
end

function dna() 
    spawn(function() while getgenv().autodna == true do
      game:GetService("ReplicatedStorage").Events.BuyAllDNA:FireServer()
      wait()
      end
     end)
   end

function glove() 
    spawn(function() while getgenv().autoglove == true do
      game:GetService("ReplicatedStorage").Events.BuyAllGlove:FireServer()
      wait()
      end
     end)
   end

   function pickupc()
    spawn(function()
        while getgenv().pickupc == true and task.wait() do 
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
            for i,v in pairs(game:GetService("Workspace").Coins:GetDescendants()) do
                if v.Name == 'HumanoidRootPart' then
                        v.CFrame = plyr.CFrame
                end    
            end
         end
    end)
end

function pickupe()
    spawn(function()
        while getgenv().pickupe == true and task.wait() do 
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
            for i,v in pairs(game:GetService("Workspace").Canes:GetDescendants()) do
                if v.Name == 'HumanoidRootPart' then
                        v.CFrame = plyr.CFrame
                end    
            end
         end
    end)
end

function pickupt()
    spawn(function()
        local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        while getgenv().pickupt == true and task.wait() do 
            for i,v in pairs(game:GetService("Workspace").Trophies:GetDescendants()) do
                if v.Name == 'HumanoidRootPart' then
                        v.CFrame = plyr.CFrame
                end    
            end
         end
    end)
end

-- gui 
local w = library:CreateWindow("BennettV1") -- Creates the window

local b = w:CreateFolder("Farm") 

local f = w:CreateFolder("Pickup") 

local k = w:CreateFolder("Eggs") 

local x = w:CreateFolder("Worlds") 

local l = w:CreateFolder("NPC Farm") 

local a = w:CreateFolder('Misc')


b:Toggle("Auto Farm",function(bool)
    getgenv().autofarm = bool
    if bool then
        farm()
    end
end)

b:Toggle("Auto Sell",function(bool)
    getgenv().autosell = bool
    if bool then
        sell()
    end
end)

b:Toggle("Auto DNA",function(bool)
    getgenv().autodna = bool
    if bool then
        dna()
    end
end)

b:Toggle("Auto Gloves",function(bool)
    getgenv().autoglove = bool
    if bool then
        glove()
    end
end)

b:Toggle("Auto Energy",function(bool)
    getgenv().energy = bool
    if bool then
        energy()
    end
end)

f:Toggle("Pickup Coins",function(bool)
    getgenv().pickupc = bool
    if bool then
        pickupc()
    end
end)

f:Toggle("Pickup Eggs",function(bool)
    getgenv().pickupe = bool
    if bool then
        pickupe()
    end
end)

f:Toggle("Pickup Trophies",function(bool)
    getgenv().pickupt = bool
    if bool then
        pickupt()
    end
end)

k:Dropdown("Select Egg",{"basic","uncommon","rare", "epic", "legendary", "mythical", "divine", "arcane", "mystic","celestial", "supreme", "impostor", "infinity", "magma", "easter" },true,function(value) 
    hatcharg = {
        [1] = value,
        [2] = false
    }
end)

k:Toggle("Auto Hatch",function(bool)
    getgenv().autohatch = bool
    if bool then
        if hatcharg then
            wait(2)
        autohatch(hatcharg)
        end
    end
end)
local selectedworld
x:Dropdown("Select World",{"FascinatingFire","VastVolcanoes","SparkyStorms", "GlisteringGalaxy", "WinterWonderland", "MysteriousMoon", "WackyWaters", "DesertDream", "ImaginativeInfinity","MightyMagma"},true,function(value2) 
    selectedworld = value2
end)

x:Button("Teleport To World",function()
    if selectedworld then
    worldtp(selectedworld)
    end
end)

local enemy 
l:Dropdown("Select NPC To Farm",{"Skeleton","Armored","Boss"},true,function(value3) 
    enemy = value3
end)

l:Toggle("Auto Farm",function(bool)
    getgenv().npcfarm = bool
    if bool then
        if enemy then
        npcfarm(enemy)
        end
    end
end)

l:Toggle("Farm Bunny Boss",function(bool)
    getgenv().boss1 = bool
    if bool then
        boss1()
    end
end)

a:Label("Created By Bennett#1897",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

a:Label("Contact Me On Discord",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

a:Label("If Something Stops Working",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

a:Label("UI: Wally Ui v3",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

a:DestroyGui()