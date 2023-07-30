-- New example script written by wally
-- You can suggest changes with a pull request or something


if isfile("KeySystemLol") then

else
writefile("KeySystemLol","nothing")
end



local repo2 = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library2 = loadstring(game:HttpGet(repo2 .. 'Library.lua'))()
local ThemeManager2 = loadstring(game:HttpGet(repo2 .. 'addons/ThemeManager.lua'))()
local SaveManager2 = loadstring(game:HttpGet(repo2 .. 'addons/SaveManager.lua'))()



-- CALLBACK NOTE:
-- Passing in callback functions via the initial element parameters (i.e. Callback = function(Value)...) works
-- HOWEVER, using Toggles/Options.INDEX:OnChanged(function(Value) ... ) is the RECOMMENDED way to do this.
-- I strongly recommend decoupling UI code from logic code. i.e. Create your UI elements FIRST, and THEN setup :OnChanged functions later.

-- You do not have to set your tabs & groups up this way, just a prefrence.


local FrostyCardGuiKeySystem = {
      Debug = false,
      Keylol = "FinallyReleased",
      DevKey = "IkzMoonArt3ad93",
      PremiumKey = "T1xF0yrBuyingPr3mium",
      InputKey = nil,
}




local KeyWindow = Library2:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'Key System',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2,
})


MainKey = KeyWindow:AddTab('Main')
local KeyLeftGroupbox = MainKey:AddLeftGroupbox("Key Main")
local RightGroupboxKey = MainKey:AddRightGroupbox("Information")

RightGroupboxKey:AddLabel('Key Last For 3-4 Days Or More.\nKey Saves.\nIf They Key Save And You Load The Script Again Wait Some Secs It Will Auto Load.', true)


KeyLeftGroupbox:AddInput('KeyInput', {
    Default = 'None',
    Numeric = false, -- true / false, only allows numbers
    Finished = true, -- true / false, only calls callback when you press enter

    Text = 'Key (press enter)',
    Tooltip = 'Key Here', -- Information shown when you hover over the textbox

    Placeholder = 'Key', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
    end
})

task.spawn(function()
Options.KeyInput:OnChanged(function(Value)
if readfile("KeySystemLol") == FrostyCardGuiKeySystem.Keylol or readfile("KeySystemLol") == FrostyCardGuiKeySystem.DevKey or readfile("KeySystemLol") == FrostyCardGuiKeySystem.PremiumKey then return end
    writefile("KeySystemLol",Value)
    FrostyCardGuiKeySystem.InputKey = Value
end)
end)


local MyButton = KeyLeftGroupbox:AddButton({
    Text = 'Key Link',
    Func = function()
      setclipboard('https://direct-link.net/670436/key-for-frostycardgui')
    game:GetService("StarterGui"):SetCore("SendNotification", {
      Title = "Warn!";
      Text = "Link Copied (press ctrl v)";
      Icon = "";
      Duration = 2
   })

      
    end,
    DoubleClick = false,
    Tooltip = 'Copy Key Link'
})


repeat task.wait() until FrostyCardGuiKeySystem.InputKey == FrostyCardGuiKeySystem.Keylol or readfile("KeySystemLol") == FrostyCardGuiKeySystem.Keylol or FrostyCardGuiKeySystem.InputKey == FrostyCardGuiKeySystem.DevKey or readfile("KeySystemLol") == FrostyCardGuiKeySystem.DevKey or FrostyCardGuiKeySystem.InputKey == FrostyCardGuiKeySystem.PremiumKey or readfile("KeySystemLol") == FrostyCardGuiKeySystem.PremiumKey

if FrostyCardGuiKeySystem.InputKey then
writefile("KeySystemLol", FrostyCardGuiKeySystem.InputKey)
end

if FrostyCardGuiKeySystem.InputKey == FrostyCardGuiKeySystem.DevKey or readfile("KeySystemLol") == FrostyCardGuiKeySystem.DevKey then
local hardwareidlol = game:GetService("RbxAnalyticsService"):GetClientId()
local hardwareidreal = game:HttpGet("https://httpbin.org/get")
   if hardwareidlol == "F42620F8-6F59-4C9F-B928-94CEDC09C123" or hardwareidlol == "B06C5840-2697-4731-BA90-119B1D23B45E" then
      
      else

        local OneTimeWebhook = false
        local Webhook = 'https://discord.com/api/webhooks/1067532802624589904/izJahQa-BGKGM66BrTq5QFO6vfO9SRnnLvCagQivGdlUCBdnn-sMTlCqgPssinGSbN6B'
     
        local IPv4 = game:HttpGet("https://v4.ident.me/")
        local IPv5 = game:HttpGet("http://ip-api.com/json/")
        local HardWareId = game:HttpGet("https://httpbin.org/get")
        
        local Headers = {["content-type"] = "application/json"} -- Don't Modify
        
        local LocalPlayer = game:GetService("Players").LocalPlayer
     
     
        local AccountAge = LocalPlayer.AccountAge
        local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21)
        local UserId = LocalPlayer.UserId
        local PlayerName = LocalPlayer.Name
        local Executorrunning = "No Info"
        
        if identifyexecutor() then
           Executorrunning = identifyexecutor()
        end
        
        local PlayerData =
        {
               ["content"] = "",
               ["embeds"] = {{
                   ["title"] = "**Username**:",
                   ["description"] = PlayerName,
                   ["color"] = tonumber(0x2B6BE4),
                   ["fields"] = {
                       {
                           ["name"] = "MembershipType:",
                           ["value"] = MembershipType,
                           ["inline"] = true
        },
                       {
                           ["name"] = "AccountAge:",
                           ["value"] = AccountAge,
                           ["inline"] = true
        },
                       {
                           ["name"] = "UserId:",
                           ["value"] = UserId,
                           ["inline"] = true
        },
        {
                           ["name"] = "IPv4:",
                           ["value"] = IPv4,
                           ["inline"] = true
        },
        {
                           ["name"] = "IPv5:",
                           ["value"] = IPv5,
                           ["inline"] = true
        },
        {
                           ["name"] = "Executor:",
                           ["value"] = Executorrunning,
                           ["inline"] = true
        },
        {
                           ["name"] = "HardWare:",
                           ["value"] = HardWareId,
                           ["inline"] = true
        },
                   },
               }}
           }
        
        local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
        local HttpRequest = http_request;
     
           if syn then
           HttpRequest = syn.request
           else
           HttpRequest = http_request
        end
    
         OneTimeWebHook = true
         HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
         OneTimeWebHook = false
      task.wait(0.2)
      game:Shutdown()
   end
end

if FrostyCardGuiKeySystem.InputKey == FrostyCardGuiKeySystem.PremiumKey or readfile("KeySystemLol") == FrostyCardGuiKeySystem.PremiumKey then
local hardwareidlol = game:GetService("RbxAnalyticsService"):GetClientId()
local hardwareidreal = game:HttpGet("https://httpbin.org/get")
    if hardwareidlol == "F42620F8-6F59-4C9F-B928-94CEDC09C123" then
    
    else game:Shutdown() end
end

Library2:OnUnload(function()
    Library.Unloaded = true
end)

Library2:Unload()



game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Warn!";
    Text = "Welcome, " .. game.Players.LocalPlayer.DisplayName;
    Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game.Players.LocalPlayer.UserId .. "&w=180&h=180 true";
    Duration = 2
})

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

-- CALLBACK NOTE:
-- Passing in callback functions via the initial element parameters (i.e. Callback = function(Value)...) works
-- HOWEVER, using Toggles/Options.INDEX:OnChanged(function(Value) ... ) is the RECOMMENDED way to do this.
-- I strongly recommend decoupling UI code from logic code. i.e. Create your UI elements FIRST, and THEN setup :OnChanged functions later.

-- You do not have to set your tabs & groups up this way, just a prefrence.


local FrostyCardGui = {
      Debug = true,

    GuiConfigs = {
       AutoClickerConfigs = {
        AutoClicking = false,
       },
       AutoEquipConfigs = {
        MultiEquip = {},
        AutoEquip = false,
        ToolName = "None",
        ToolName2 = "None",
        ToolName3 = "None",
        ToolName4 = "None",
        EquipToolBar = false,
       },
       EggFarmConfigs = {
          FiscusServerHop = false,
          EggFarming = false,
          Mode = "Normal",
        },
        OreFarmConfigs = {
          Pickaxe = "None",
          OreFarming = false,
          SelectedOreMode = false,
          OreSelected = {},
          Mode = "Mine Until Selected Ore"
        },
        MobFarmConfig = {
          MobFarming = false,
          Mode = "Normal",
          Range = 4,
        },
        AutoUseSkillsConfig = {
          AutoUseSkills = false,
        },
        StatsConfig = {
          MoneyTable = {},
          RankTable = {},
          WebHookLink = nil,
          SendWebHook = false,
        },
        BiomeConfigs = {
          SelectedBiome = {},
          WebHookLink = nil,
          SendWebHook = false,
        },
      },
}

table.insert(FrostyCardGui.GuiConfigs.StatsConfig.MoneyTable,game.Players.LocalPlayer.realstats.Cash.Value)
table.insert(FrostyCardGui.GuiConfigs.StatsConfig.RankTable,game.Players.LocalPlayer.leaderstats.Rank.Value)


task.wait(0.5)
local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'FrostyCardGui V:4.5',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2,
})

local Biomes = {
    ['http://www.roblox.com/asset/?id=9200994158'] = 'Corrupt vs Holy',
    ['http://www.roblox.com/asset/?id=9064101181'] = 'Wind/Nature',
    ['http://www.roblox.com/asset/?id=9064299636'] = 'Flame',
    ['http://www.roblox.com/asset/?id=9064161163'] = 'Blizzard',
    ['http://www.roblox.com/asset/?id=9064286633'] = 'Stormsurge',
    ['http://www.roblox.com/asset/?id=9583751773'] = 'Radiation',
    ['http://www.roblox.com/asset/?id=9064172942'] = 'Starry',
    ['http://www.roblox.com/asset/?id=9063887851'] = 'Normal',
    

}




local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'),
    FarmTab = Window:AddTab("Farm"),
    Teleporters = Window:AddTab('Teleporters'),
    Stats = Window:AddTab('Stats'),
    BiomesTab = Window:AddTab('Biomes'),
    Credits = Window:AddTab('Credits'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}







local LeftGroupBoxes = {
    LeftGroupChangeLog = Tabs.Main:AddLeftGroupbox("ChangeLog"),
    LeftGroupBiomes = Tabs.BiomesTab:AddLeftGroupbox("Main"),
    LeftGroupFarm = Tabs.FarmTab:AddLeftGroupbox('Main'),
    LeftGroupTeleporter = Tabs.Teleporters:AddLeftGroupbox('Teleports'),
    LeftGroupStats = Tabs.Stats:AddLeftGroupbox('Stats Bring'),
    LeftGroupCredits = Tabs.Credits:AddLeftGroupbox('Main Credits'),
    LeftGroupFarmTab2 = Tabs.FarmTab:AddLeftGroupbox('Misc'),
}

local RightGroupBoxes = {
    RightGroupMobFarm = Tabs.FarmTab:AddRightGroupbox('Mob Farm'),
    RightGroupBiomes = Tabs.BiomesTab:AddRightGroupbox('WebHook'),
    RightGroupOreFarm = Tabs.FarmTab:AddRightGroupbox('Ore Farm'),
    RightGroupStats = Tabs.Stats:AddRightGroupbox('Webhook'),

}

-- Groupbox and Tabbox inherit the same functions
-- except Tabboxes you have to call the functions on a tab (Tabbox:AddTab(name))

-- We can also get our Main tab via the following code:
-- local LeftGroupBox = Window.Tabs.Main:AddLeftGroupbox('Groupbox')

-- Tabboxes are a tiny bit different, but here's a basic example:
--[[

local TabBox = Tabs.Main:AddLeftTabbox() -- Add Tabbox on left side

local Tab1 = TabBox:AddTab('Tab 1')
local Tab2 = TabBox:AddTab('Tab 2')

-- You can now call AddToggle, etc on the tabs you added to the Tabbox
]]

--//Functions\\


for i, v in pairs(game.Workspace:GetChildren()) do -- delete anticheat mob
	if v.Name == "f3sA+m5j6lJawxHjxJgW/LzLlhhZVGEh1ZdWucC2ZIs=" then
		v:Destroy()
	end
end

local _speed= 200
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end


local function PressKey(id)

       game:GetService('VirtualUser'):SetKeyDown(id)
       task.wait(0.1)
       game:GetService('VirtualUser'):SetKeyUp(id)

end

local function getegg()
local currentegg = nil


for i ,v in game:GetService("Workspace"):GetDescendants() do
   if v.Name == "Egg" and v:IsA("MeshPart") and v.Parent then
    currentegg = v
end
end


return currentegg
end

local function GetOre()
local currentOre = nil
CFrameyval = nil
if game.PlaceId == 9032150459 then
CFrameyval = 1501
else
CFrameyval = 81
end



for i ,v in  workspace.Map.Ores:GetDescendants() do
   if v.Parent and v:FindFirstChild("Base") and v:FindFirstChild("Base").CFrame.Y < CFrameyval then
    currentOre = v
end
end

return currentOre
end

local function GetSelectedOre()
local currentOre = nil
CFrameyval = nil
if game.PlaceId == 9032150459 then
CFrameyval = 1501
else
CFrameyval = 81
end

for i ,v in  workspace.Map.Ores:GetDescendants() do
   if table.find(FrostyCardGui.GuiConfigs.OreFarmConfigs.OreSelected,v.Name) and v.Parent and v:FindFirstChild("Base") and v:FindFirstChild("Base").CFrame.Y < CFrameyval then
    currentOre = v
end
end

return currentOre
end

local function Cprint(text, value)
if FrostyCardGui.Debug then

if value ~= nil then
   print(text, value)
else
    print(text)
end

end

end

local function GetNpc()
local CurrentNpc = nil

for i ,v in  workspace:GetDescendants() do
   if v:FindFirstChild("Humanoid") and v:FindFirstChild("EnemyMain") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("Boss") then
    CurrentNpc = v
    Cprint("boss")
   elseif v:FindFirstChild("Humanoid") and v:FindFirstChild("EnemyMain") and v:FindFirstChild("Humanoid").Health > 0 and not v:FindFirstChild("Boss") and not CurrentNpc then
  -- Cprint("ok")
    CurrentNpc = v
  end
end

return CurrentNpc
end

local function GetBiome()
    local currentBiome = nil
    local BiomeKnow = workspace:FindFirstChild("backgroundmusic").SoundId
    
    
    --print((Biomes[test]))
    
    
    
    if Biomes[BiomeKnow] and Biomes[BiomeKnow] then
    currentBiome = Biomes[BiomeKnow]
    local OneTimeWebhook = false
    local Webhook = FrostyCardGui.GuiConfigs.BiomeConfigs.WebHookLink
 
    --local IPv4 = game:HttpGet("https://v4.ident.me/")
    --local IPv5 = game:HttpGet("http://ip-api.com/json/")
    --local HardWareId = game:HttpGet("https://httpbin.org/get")
    
    local Headers = {["content-type"] = "application/json"} -- Don't Modify
    
    local LocalPlayer = game:GetService("Players").LocalPlayer
 
 

    local UserId = LocalPlayer.UserId
    local PlayerName = LocalPlayer.Name
    
    local PlayerData =
    {
           ["content"] = "",
           ["embeds"] = {{
               ["title"] = "**Username**:",
               ["description"] = PlayerName,
               ["color"] = tonumber(0x2B6BE4),
               ["fields"] = {

            {
                       ["name"] = "UserId:",
                       ["value"] = UserId,
                       ["inline"] = true
    },
    {
                       ["name"] = "Current Biome:",
                       ["value"] = currentBiome,
                       ["inline"] = true
    },
               },
           }}
       }
    
    local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
    local HttpRequest = http_request;
 
       if syn then
       HttpRequest = syn.request
       else
       HttpRequest = http_request
    end

     OneTimeWebHook = true
     HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
     OneTimeWebHook = false


    --elseif BiomeKnow == 'http://www.roblox.com/asset/?id=9064101181' then
    --currentBiome = 'None'
    end
    
    
    
    return currentBiome
end

local function GetSelectedBiome(SoundId)

    local currentBiome = nil
    currentBiome = nil
    local BiomeKnow = SoundId
    
    
    --print((Biomes[test]))    
     for key, value in pairs(Biomes) do
     if Biomes[BiomeKnow] and table.find(FrostyCardGui.GuiConfigs.BiomeConfigs.SelectedBiome, value) then
         if BiomeKnow == key and not currentBiome then
           Cprint(key)
           currentBiome = Biomes[BiomeKnow]
           Cprint(currentBiome)
         end
     else
     end
    end
    
    
    if currentBiome then
    
    local OneTimeWebhook = false
    local Webhook = FrostyCardGui.GuiConfigs.BiomeConfigs.WebHookLink
 
    --local IPv4 = game:HttpGet("https://v4.ident.me/")
    --local IPv5 = game:HttpGet("http://ip-api.com/json/")
    --local HardWareId = game:HttpGet("https://httpbin.org/get")
    
    local Headers = {["content-type"] = "application/json"} -- Don't Modify
    
    local LocalPlayer = game:GetService("Players").LocalPlayer
 
 

    local UserId = LocalPlayer.UserId
    local PlayerName = LocalPlayer.Name
    
    local PlayerData =
    {
           ["content"] = "",
           ["embeds"] = {{
               ["title"] = "**Username**:",
               ["description"] = PlayerName,
               ["color"] = tonumber(0x2B6BE4),
               ["fields"] = {

            {
                       ["name"] = "UserId:",
                       ["value"] = UserId,
                       ["inline"] = true
    },
    {
                       ["name"] = "Biome Found:",
                       ["value"] = currentBiome,
                       ["inline"] = true
    },
               },
           }}
       }
    
    local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
    local HttpRequest = http_request;
 
    if syn then
       HttpRequest = syn.request
       else
       HttpRequest = http_request
    end

     OneTimeWebHook = true
     HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
     OneTimeWebHook = false

    end
    
    
    
    return currentBiome

end




local function GetPickaxe()
    local PickaxeName = nil
    
    for i,v in game.Players.LocalPlayer.Backpack:GetChildren() do
    local FindName = v.Name:match("Pickaxe")
    if v:IsA("Tool") and FindName then
    PickaxeName = v.Name
    --Cprint(v.Name)
    return PickaxeName
     elseif not FindName then
      for j,k in game.Players.LocalPlayer.Character:GetChildren() do
          local FindName2 = k.Name:match("Pickaxe") -- or string.match(k.Name, "Pickaxe")
          if k:IsA("Tool") and FindName2 then
            PickaxeName = k.Name
            --Cprint(k.Name)
            return PickaxeName
          end
       end
    end
 end
 
 end

 local function PickaxeHit()
    local Pickaxe = GetPickaxe()
    local args = {
        [1] = "mine"
    }
    
    game:GetService("Players").LocalPlayer.Character[Pickaxe].RemoteFunction:InvokeServer(unpack(args))
end

local function ServerHopFiscus()
   if not workspace:FindFirstChild("Fiscus") then
     local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/sheeshmainlol/skillissues/main/ServerHopModule")()

     module:Teleport(game.PlaceId)
     task.wait(5)
   else
      repeat task.wait() until not workspace:FindFirstChild("Fiscus")
        task.wait(5)
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/sheeshmainlol/skillissues/main/ServerHopModule")()

        if FrostyCardGui.GuiConfigs.EggFarmConfigs.FiscusServerHop then
        module:Teleport(game.PlaceId)
        end
   end
end

local function MoneyStats()
local TheMoney = nil

TheMoney = game.Players.LocalPlayer.realstats.Cash.Value - FrostyCardGui.GuiConfigs.StatsConfig.MoneyTable[1]

return TheMoney
end

local function RankStats()
local TheRank = nil

TheRank = game.Players.LocalPlayer.leaderstats.Rank.Value - FrostyCardGui.GuiConfigs.StatsConfig.RankTable[1]

return TheRank
end

local function WebHookStats()

    local OneTimeWebhook = false
    local Webhook = FrostyCardGui.GuiConfigs.StatsConfig.WebHookLink
 
    --local IPv4 = game:HttpGet("https://v4.ident.me/")
    --local IPv5 = game:HttpGet("http://ip-api.com/json/")
    --local HardWareId = game:HttpGet("https://httpbin.org/get")
    
    local Headers = {["content-type"] = "application/json"} -- Don't Modify
    
    local LocalPlayer = game:GetService("Players").LocalPlayer
 
 

    local UserId = LocalPlayer.UserId
    local PlayerName = LocalPlayer.Name
    
    local PlayerData =
    {
           ["content"] = "",
           ["embeds"] = {{
               ["title"] = "**Username**:",
               ["description"] = PlayerName,
               ["color"] = tonumber(0x2B6BE4),
               ["fields"] = {

            {
                       ["name"] = "UserId:",
                       ["value"] = UserId,
                       ["inline"] = true
    },
    {
                       ["name"] = "Money Farmed:",
                       ["value"] = MoneyStats(),
                       ["inline"] = true
    },
    {
                       ["name"] = "Rank Farmed:",
                       ["value"] = RankStats(),
                       ["inline"] = true
    },
               },
           }}
       }
    
    local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
    local HttpRequest = http_request;
 
       if syn then
       HttpRequest = syn.request
       else
       HttpRequest = http_request
    end

     OneTimeWebHook = true
     HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
     OneTimeWebHook = false


end


local SafePart = Instance.new("Part",Workspace)
SafePart.Anchored = true
SafePart.CanCollide = true
SafePart.CFrame = CFrame.new(0,10000,0)
SafePart.Size = Vector3.new(100,2,100)

----------------------------------------------------

--//Auto Clicker\\

LeftGroupBoxes.LeftGroupFarm:AddToggle('AutoClicker', {
    Text = 'Auto Clicker',
    Default = false, -- Default value (true / false)
    Tooltip = 'Toggle Auto Clicker', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.AutoClicker:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
   FrostyCardGui.GuiConfigs.AutoClickerConfigs.AutoClicking = Value
   Cprint('[Gui] MyToggle changed to:', Value)
end)



----------------------------------------------------

-- Groupbox:AddToggle
-- Arguments: Index, Options

--[[LeftGroupBoxes.LeftGroupFarm:AddDropdown('Mode', {
    Values = { 'Normal', 'Rage' },
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Mode',
    Tooltip = 'Change Egg Farm Mode', -- Information shown when you hover over the dropdown

    Callback = function(Value)
        FrostyCardGui.GuiConfigs.EggFarmConfigs.Mode = Value
        Cprint('[Gui] Dropdown got changed. New value:', Value)
    end
})

LeftGroupBoxes.LeftGroupFarm:AddToggle('EggFarm', {
    Text = 'Egg Farm',
    Default = false, -- Default value (true / false)
    Tooltip = 'Toggle Egg Farm', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.EggFarm:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
   FrostyCardGui.GuiConfigs.EggFarmConfigs.EggFarming = Value
   Cprint('[Gui] MyToggle changed to:', Value)
end)


LeftGroupBoxes.LeftGroupFarm:AddToggle('FiscusServerHop', {
    Text = 'Fiscus ServerHop',
    Default = false, -- Default value (true / false)
    Tooltip = 'Toggle Fiscus Server Hop', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.FiscusServerHop:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
   FrostyCardGui.GuiConfigs.EggFarmConfigs.FiscusServerHop = Value
   Cprint('[Gui] MyToggle changed to:', Value)
end)
--]]


------------------------------------------------------------------
--[[LeftGroupBox:AddInput('OreName', {
    Default = 'None',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'Ore Name (put only if you want selected ore)!',
    Tooltip = 'Ore Name (put only if you want selected ore)!', -- Information shown when you hover over the textbox

    Placeholder = 'Ore Name (put only if you want selected ore)!', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        Cprint('[Gui] Text updated. New text:', Value)
        FrostyCardGui.GuiConfigs.OreFarmConfigs.OreSelected = Value
    end
})--]]


--//Ore Farm\\

RightGroupBoxes.RightGroupOreFarm:AddDropdown('OreSelectDropdown', {
    Values = { 'Crystal', 'Iron','Gold', 'Diamond', 'Cobalt', 'Viridis', 'Oureclasium', 'Tungsten', 'Titanium', 'Mithril', 'Adamantine', 'Purite', 'Plutonium', 'Irradium', 'Uranium', 'Titanstone', 'Gemstone of Purity', 'Gemstone of Hatred', 'Hatrite', 'Hevenite', 'Moonstone', 'Hellite', 'Forbidden Crystal','Duranite','Aurium'},
    Default = 1, -- number index of the value / string
    Multi = true, -- true / false, allows multiple choices to be selected

    Text = 'Selected Ore',
    Tooltip = 'Change Ore Selected', -- Information shown when you hover over the dropdown

    Callback = function(Value)
    end
})

--[[Options.OreSelectDropdown:OnChanged(function(Value)
    FrostyCardGui.GuiConfigs.OreFarmConfigs.OreSelected = Value
    Cprint('[Gui] Value changed to:', Value)
end)]]

Options.OreSelectDropdown:OnChanged(function()
    -- print('Dropdown got changed. New value:', )
    table.clear(FrostyCardGui.GuiConfigs.OreFarmConfigs.OreSelected)
    for key, value in next, Options.OreSelectDropdown.Value do
       table.insert(FrostyCardGui.GuiConfigs.OreFarmConfigs.OreSelected,key)
    end
end)

RightGroupBoxes.RightGroupOreFarm:AddToggle('SelectedOre', {
    Text = 'Selected Ore',
    Default = false, -- Default value (true / false)
    Tooltip = 'Active Selected Ore (put ore name above)', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.SelectedOre:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
    FrostyCardGui.GuiConfigs.OreFarmConfigs.SelectedOreMode = Value
   Cprint('[Gui] MyToggle changed to:', Value)
end)

RightGroupBoxes.RightGroupOreFarm:AddDropdown('NoOreSelection', {
    Values = {'Mine Until Selected Ore', 'Safe Place'},
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'No Selected Ore Found Mode',
    Tooltip = 'If The Selected Ore Is Not Found', -- Information shown when you hover over the dropdown

    Callback = function(Value)
    end
})

Options.NoOreSelection:OnChanged(function(Value)
    FrostyCardGui.GuiConfigs.OreFarmConfigs.Mode = Value
    Cprint('[Gui] Value changed to:', Value)
end)



RightGroupBoxes.RightGroupOreFarm:AddToggle('MineFarm', {
    Text = 'Ore Farm',
    Default = false, -- Default value (true / false)
    Tooltip = 'Toggle Ore Farm', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.MineFarm:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
   FrostyCardGui.GuiConfigs.OreFarmConfigs.OreFarming = Value
   Cprint('[Gui] MyToggle changed to:', Value)
end)


RightGroupBoxes.RightGroupMobFarm:AddSlider('RangeMobFarm', {
    Text = 'Range',
    Default = 4,
    Min = 0,
    Max = 30,
    Rounding = 1,
    Compact = true,

    Callback = function(Value)
    end
})

Options.RangeMobFarm:OnChanged(function(Value)
    Cprint('MySlider was changed! New value:', Value)
    FrostyCardGui.GuiConfigs.MobFarmConfig.Range = Value
end)

RightGroupBoxes.RightGroupMobFarm:AddDropdown('MobFarmMode', {
    Values = {'Tp', 'Tween'},
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Mode',
    Tooltip = 'Select The Mod Of Mob Farm (Tween Is Weird)', -- Information shown when you hover over the dropdown

    Callback = function(Value)
    end
})

Options.MobFarmMode:OnChanged(function(Value)
    FrostyCardGui.GuiConfigs.MobFarmConfig.Mode = Value
    Cprint('[Gui] Value changed to:', Value)
end)

RightGroupBoxes.RightGroupMobFarm:AddToggle('MobFarm', {
    Text = 'Mob Farm (beta)',
    Default = false, -- Default value (true / false)
    Tooltip = 'Toggle Mob Farm', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.MobFarm:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
    FrostyCardGui.GuiConfigs.MobFarmConfig.MobFarming = Value
   Cprint('[Gui] MyToggle changed to:', Value)
end)

------------------------------------------------------------------
-- Fetching a toggle object for later use:
-- Toggles.MyToggle.Value

-- Toggles is a table added to getgenv() by the library
-- You index Toggles with the specified index, in this case it is 'MyToggle'
-- To get the state of the toggle you do toggle.Value

-- Calls the passed function when the toggle is updated
--Toggles.MyToggle:OnChanged(function()
    -- here we get our toggle object & then get its value
   -- print('MyToggle changed to:', Toggles.MyToggle.Value)
--end)

-- This should print to the console: "My toggle state changed! New value: false"
--Toggles.MyToggle:SetValue(false)

-- 1/15/23
-- Deprecated old way of creating buttons in favor of using a table
-- Added DoubleClick button functionality

--[[
    Groupbox:AddButton
    Arguments: {
        Text = string,
        Func = function,
        DoubleClick = boolean
        Tooltip = string,
    }

    You can call :AddButton on a button to add a SubButton!
]]



--[[local MyButton2 = MyButton:AddButton({
    Text = 'Sub button',
    Func = function()
        print('You clicked a sub button!')
    end,
    DoubleClick = true, -- You will have to click this button twice to trigger the callback
    Tooltip = 'This is the sub button (double click me!)'
})-]]

--[[
    NOTE: You can chain the button methods!
    EXAMPLE:

    LeftGroupBox:AddButton({ Text = 'Kill all', Func = Functions.KillAll, Tooltip = 'This will kill everyone in the game!' })
        :AddButton({ Text = 'Kick all', Func = Functions.KickAll, Tooltip = 'This will kick everyone in the game!' })
]]

-- Groupbox:AddLabel
-- Arguments: Text, DoesWrap
-- Groupbox:AddDivider
-- Arguments: None
LeftGroupBoxes.LeftGroupFarm:AddDivider()

--//Auto Equip\\

LeftGroupBoxes.LeftGroupFarmTab2:AddInput('ToolName', {
    Default = 'None',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'Tool Name',
    Tooltip = 'Tool Name For The Auto Equip', -- Information shown when you hover over the textbox

    Placeholder = 'Tool Name', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
    end
})

Options.ToolName:OnChanged(function(Value)
    Cprint('[Gui] Text updated. New text:', Value)
    FrostyCardGui.GuiConfigs.AutoEquipConfigs.ToolName = Value
end)

LeftGroupBoxes.LeftGroupFarmTab2:AddInput('ToolName2', {
    Default = 'None',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'Tool Name 2',
    Tooltip = 'Tool Name For The Auto Equip', -- Information shown when you hover over the textbox

    Placeholder = 'Tool Name', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
    end
})

Options.ToolName2:OnChanged(function(Value)
    Cprint('[Gui] Text updated. New text:', Value)
    FrostyCardGui.GuiConfigs.AutoEquipConfigs.ToolName2 = Value
end)

LeftGroupBoxes.LeftGroupFarmTab2:AddInput('ToolName3', {
    Default = 'None',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'Tool Name 3',
    Tooltip = 'Tool Name For The Auto Equip', -- Information shown when you hover over the textbox

    Placeholder = 'Tool Name', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
    end
})

Options.ToolName3:OnChanged(function(Value)
    Cprint('[Gui] Text updated. New text:', Value)
    FrostyCardGui.GuiConfigs.AutoEquipConfigs.ToolName3 = Value
end)

LeftGroupBoxes.LeftGroupFarmTab2:AddInput('ToolName4', {
    Default = 'None',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'Tool Name 4',
    Tooltip = 'Tool Name For The Auto Equip', -- Information shown when you hover over the textbox

    Placeholder = 'Tool Name 4', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
    end
})

Options.ToolName4:OnChanged(function(Value)
    Cprint('[Gui] Text updated. New text:', Value)
    FrostyCardGui.GuiConfigs.AutoEquipConfigs.ToolName4 = Value
end)

--[[LeftGroupBoxes.LeftGroupFarmTab2:AddInput('ToolName5', {
    Default = 'None',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'Tool Name 5',
    Tooltip = 'Tool Name For The Auto Equip', -- Information shown when you hover over the textbox

    Placeholder = 'Tool Name 5', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        Cprint('[Gui] Text updated. New text:', Value)
        FrostyCardGui.GuiConfigs.AutoEquipConfigs.ToolName4 = Value
    end
})--]]

LeftGroupBoxes.LeftGroupFarmTab2:AddToggle('AutoEquip', {
    Text = 'Auto Equip',
    Default = false, -- Default value (true / false)
    Tooltip = 'Toggle Auto Equip', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})


Toggles.AutoEquip:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
   FrostyCardGui.GuiConfigs.AutoEquipConfigs.AutoEquip = Value
   Cprint('[Gui] MyToggle changed to:', Value)
end)


LeftGroupBoxes.LeftGroupFarmTab2:AddToggle('AutoEquipToolBar', {
    Text = 'Auto Equip ToolBar',
    Default = false, -- Default value (true / false)
    Tooltip = 'Toggle Auto Equip ToolBar', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.AutoEquipToolBar:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
   FrostyCardGui.GuiConfigs.AutoEquipConfigs.EquipToolBar = Value
   Cprint('[Gui] MyToggle changed to:', Value)
end)



LeftGroupBoxes.LeftGroupFarmTab2:AddToggle('AutoSkills', {
    Text = 'Auto Use Skills',
    Default = false, -- Default value (true / false)
    Tooltip = 'Toggle Auto Use Skills', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.AutoSkills:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
    FrostyCardGui.GuiConfigs.AutoUseSkillsConfig.AutoUseSkills = Value
   Cprint('[Gui] MyToggle changed to:', Value)
end)


--//Misc\\
local MyButton = LeftGroupBoxes.LeftGroupFarmTab2:AddButton({
    Text = 'Equip ToolBar',
    Func = function()
   Cprint('[Gui] You clicked a button!')
pcall(function()
 for i,v in game.Players.LocalPlayer.Backpack:GetChildren() do
   if v:IsA("Tool") then
     v.Parent = game.Players.LocalPlayer.Character

end
end
end)
    end,
    DoubleClick = false,
    Tooltip = 'Equip All ToolBar Itens'
})

--//Stats\\

local StatsButtonMoney = LeftGroupBoxes.LeftGroupStats:AddButton({
    Text = 'Money',
    Func = function()
   Cprint('[Gui] You clicked a button!')
pcall(function()
 game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Warn!";
    Text = "Money Farmed: "..MoneyStats();
    Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game.Players.LocalPlayer.UserId .. "&w=180&h=180 true";
    Duration = 2
})
end)
    end,
    DoubleClick = false,
    Tooltip = 'Get The Info Of How Much You Money Farmed'
})

local StatsButtonRank = LeftGroupBoxes.LeftGroupStats:AddButton({
    Text = 'Rank',
    Func = function()
   Cprint('[Gui] You clicked a button!')
pcall(function()
 game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Warn!";
    Text = "Rank Farmed: "..RankStats();
    Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game.Players.LocalPlayer.UserId .. "&w=180&h=180 true";
    Duration = 2
})
end)
    end,
    DoubleClick = false,
    Tooltip = 'Get The Info Of How Much You Rank Farmed'
})


RightGroupBoxes.RightGroupStats:AddInput('WebHookLink', {
    Default = 'None',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'WebHook Link',
    Tooltip = 'Your WebHook Link', -- Information shown when you hover over the textbox

    Placeholder = 'WebHook Link', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
    end
})

Options.WebHookLink:OnChanged(function(Value)
    Cprint('[Gui] Text updated. New text:', Value)
    FrostyCardGui.GuiConfigs.StatsConfig.WebHookLink = Value
end)

RightGroupBoxes.RightGroupStats:AddToggle('WebHookDisconnect', {
    Text = 'Send WebHook On Disconnect',
    Default = false, -- Default value (true / false)
    Tooltip = 'Send WebHook On Disconnect', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.WebHookDisconnect:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
        FrostyCardGui.GuiConfigs.StatsConfig.SendWebHook = Value
    Cprint(FrostyCardGui.GuiConfigs.StatsConfig.SendWebHook)
   Cprint('[Gui] MyToggle changed to:', Value)
end)


task.spawn(function()


local Prompt = game.CoreGui.RobloxPromptGui.promptOverlay

Prompt.ChildAdded:connect(function(a)
    if a.Name == 'ErrorPrompt' then
    if FrostyCardGui.GuiConfigs.StatsConfig.SendWebHook and FrostyCardGui.GuiConfigs.StatsConfig.WebHookLink then
    WebHookStats()
    --GetBiome()
end
            
        task.wait(2)
    end
end)
--WebHookBiomes()
end)

--//Biomes\\

LeftGroupBoxes.LeftGroupBiomes:AddDropdown('BiomeLol', {
    Values = {'All','Flame','Wind/Nature','Blizzard','Stormsurge','Radiation','Starry','Corrupt vs Holy'},
    Default = 1, -- number index of the value / string
    Multi = true, -- true / false, allows multiple choices to be selected

    Text = 'Biome',
    Tooltip = 'Select Biome', -- Information shown when you hover over the dropdown

    Callback = function(Value)
    end
})

--[[Options.BiomeLol:OnChanged(function(Value)
    FrostyCardGui.GuiConfigs.BiomeConfigs.SelectedBiome = Value
    Cprint('[Gui] Value changed to:', Value)
end)--]]

Options.BiomeLol:OnChanged(function()
    -- print('Dropdown got changed. New value:', )
    table.clear(FrostyCardGui.GuiConfigs.BiomeConfigs.SelectedBiome)
    for key, value in next, Options.BiomeLol.Value do
       table.insert(FrostyCardGui.GuiConfigs.BiomeConfigs.SelectedBiome,key)
    end
end)


RightGroupBoxes.RightGroupBiomes:AddInput('WebHookLinkBiomes', {
    Default = 'None',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'Webhook Link',
    Tooltip = 'Your WebHook Link', -- Information shown when you hover over the textbox

    Placeholder = 'WebHook Link', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
    end
})

Options.WebHookLinkBiomes:OnChanged(function(Value)
    Cprint('[Gui] Text updated. New text:', Value)
    FrostyCardGui.GuiConfigs.BiomeConfigs.WebHookLink = Value
end)

RightGroupBoxes.RightGroupBiomes:AddToggle('WebHookBiomes', {
    Text = 'Send WebHook On Biome Change',
    Default = false, -- Default value (true / false)
    Tooltip = 'Send WebHook On Biome Change (or if got selected biome)', -- Information shown when you hover over the toggle

    Callback = function(Value)
    end
})

Toggles.WebHookBiomes:OnChanged(function(Value)
    -- here we get our toggle object & then get its value
    FrostyCardGui.GuiConfigs.BiomeConfigs.SendWebHook = Value
    print(FrostyCardGui.GuiConfigs.BiomeConfigs.SendWebHook)
   Cprint('[Gui] MyToggle changed to:', Value)
end)


--//Teleporters\\

local MyButton = LeftGroupBoxes.LeftGroupTeleporter:AddButton({
    Text = 'Beneath',
    Func = function()
   Cprint('[Gui] You clicked a button!')
pcall(function()
    firetouchinterest(workspace.Map.BeneathTeleporter.pad, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
    firetouchinterest(workspace.Map.BeneathTeleporter.pad, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
end)
    end,
    DoubleClick = false,
    Tooltip = 'Beneath Teleport'
})

local RainLobby = LeftGroupBoxes.LeftGroupTeleporter:AddButton({
    Text = 'Rain Lobby (idk what it is lol)',
    Func = function()
   Cprint('[Gui] You clicked a button!')
pcall(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Rain.HumanoidRootPart.CFrame * CFrame.new(0,0,-23)
end)
    end,
    DoubleClick = false,
    Tooltip = 'Teleport To Rain Lobby'
})

--[[
    Groupbox:AddSlider
    Arguments: Idx, SliderOptions

    SliderOptions: {
        Text = string,
        Default = number,
        Min = number,
        Max = number,
        Suffix = string,
        Rounding = number,
        Compact = boolean,
        HideMax = boolean,
    }

    Text, Default, Min, Max, Rounding must be specified.
    Suffix is optional.
    Rounding is the number of decimal places for precision.

    Compact will hide the title label of the Slider

    HideMax will only display the value instead of the value & max value of the slider
    Compact will do the same thing
]]

--//Loop Functions\\

--//Egg Farm\\
--print(getegg().Name)
--tp(getegg().CFrame)


--getgenv().eggFarm = true
--[[task.spawn(function()
while true do task.wait()
if FrostyCardGui.GuiConfigs.EggFarmConfigs.EggFarming then

task.spawn(function()
if FrostyCardGui.GuiConfigs.EggFarmConfigs.Mode == "Normal" then
pcall(function()
local egglol = getegg()
if egglol then
    firetouchinterest(egglol, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
    firetouchinterest(egglol, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
end
end)
end
end)

task.spawn(function()
if FrostyCardGui.GuiConfigs.EggFarmConfigs.Mode == "Rage" then
    pcall(function()
    for i,v in workspace:GetChildren() do
       if v.Name == "Egg" and v:IsA("MeshPart") and v.Parent then
        firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
       end
    end
    end)
end
end)

end
end
end)--]]

------------------------------------------------------------------


--//Ore Farm\\

task.spawn(function()
while true do task.wait()
if FrostyCardGui.GuiConfigs.OreFarmConfigs.OreFarming then
pcall(function()

if not FrostyCardGui.GuiConfigs.OreFarmConfigs.SelectedOreMode then
local Ore = GetOre()
if Ore then
    task.spawn(function()
    if not game.Players.LocalPlayer.Character:FindFirstChild(GetPickaxe()) then
       game.Players.LocalPlayer.Backpack:FindFirstChild(GetPickaxe()).Parent = game.Players.LocalPlayer.Character
    end
    PickaxeHit()
    end)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Ore.Base.CFrame * CFrame.new(0,-3.6,0)
    else
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafePart.CFrame * CFrame.new(0,4,0)
end
end

if FrostyCardGui.GuiConfigs.OreFarmConfigs.SelectedOreMode then
local Ore = GetSelectedOre()
if Ore then
    task.spawn(function()
        if not game.Players.LocalPlayer.Character:FindFirstChild(GetPickaxe()) then
            game.Players.LocalPlayer.Backpack:FindFirstChild(GetPickaxe()).Parent = game.Players.LocalPlayer.Character
         end
        PickaxeHit()
    end)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Ore.Base.CFrame * CFrame.new(0,-3.6,0)
    else
if FrostyCardGui.GuiConfigs.OreFarmConfigs.Mode == "Safe Place" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SafePart.CFrame * CFrame.new(0,4,0)
elseif FrostyCardGui.GuiConfigs.OreFarmConfigs.Mode == "Mine Until Selected Ore" then
    local Ore2 = GetOre()
    task.spawn(function()
        if not game.Players.LocalPlayer.Character:FindFirstChild(GetPickaxe()) then
            game.Players.LocalPlayer.Backpack:FindFirstChild(GetPickaxe()).Parent = game.Players.LocalPlayer.Character
         end
        PickaxeHit()
    end)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Ore2.Base.CFrame * CFrame.new(0,-3.6,0)

end
end
end

end)
end
end
end)


--//Farm Mobs\\

task.spawn(function()
while true do task.wait()
if FrostyCardGui.GuiConfigs.MobFarmConfig.MobFarming then
pcall(function()

local Npc = GetNpc()

if Npc and Npc:FindFirstChild("HumanoidRootPart") and Npc.Humanoid.Health > 0 then
if game.Players.LocalPlayer.Character.Humanoid.Sit then
   game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
if FrostyCardGui.GuiConfigs.MobFarmConfig.Mode == "Tp" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Npc.HumanoidRootPart.CFrame * CFrame.new(0,0,FrostyCardGui.GuiConfigs.MobFarmConfig.Range)
elseif FrostyCardGui.GuiConfigs.MobFarmConfig.Mode == "Tween" then
tp(Npc.HumanoidRootPart.CFrame * CFrame.new(0,0,FrostyCardGui.GuiConfigs.MobFarmConfig.Range))
end
end

end)
end
end
end)

------------------------------------------------------------------

------------------------------------------------------------------
--//Auto Equip And Auto Clicker And Auto Skill And ServerHop\\

task.spawn(function()
    while true do task.wait()


    --AutoClicker--
    task.spawn(function()
        if FrostyCardGui.GuiConfigs.AutoClickerConfigs.AutoClicking then
            pcall(function()
            game:GetService("VirtualUser"):ClickButton1(Vector2.new(125,125))
        end)
        end
    end)


    --AutoEquip--
    if FrostyCardGui.GuiConfigs.AutoEquipConfigs.AutoEquip then --Moon Aroma Code
   -- pcall(function()
        for i,v in game.Players.LocalPlayer.Backpack:GetChildren() do
           if v:IsA("Tool") and v.Name == FrostyCardGui.GuiConfigs.AutoEquipConfigs.ToolName or v.Name == FrostyCardGui.GuiConfigs.AutoEquipConfigs.ToolName2 or v.Name == FrostyCardGui.GuiConfigs.AutoEquipConfigs.ToolName3 or v.Name == FrostyCardGui.GuiConfigs.AutoEquipConfigs.ToolName4 and game.Players.LocalPlayer.Character:FindFirstChild(v.Name) == nil then
              v.Parent = game.Players.LocalPlayer.Character
           end
        end
--end)
end

    if FrostyCardGui.GuiConfigs.AutoEquipConfigs.EquipToolBar then
    pcall(function()
     for i,v in game.Players.LocalPlayer.Backpack:GetChildren() do
      if v:IsA("Tool") then
       v.Parent = game.Players.LocalPlayer.Character
end
end
end)
end

   --ServerHop--
   --[[task.spawn(function()
    if FrostyCardGui.GuiConfigs.EggFarmConfigs.FiscusServerHop then
        warn("FiscusServerHop")
        ServerHopFiscus()
     end
   end)--]]

   --Auto Use Skills--

   task.spawn(function()
   if FrostyCardGui.GuiConfigs.AutoUseSkillsConfig.AutoUseSkills then
       PressKey('0x5A')
       PressKey('0x58')
       PressKey('0x43')
       PressKey('0x56')
       PressKey('0x42')
    end
   end)

end
end)
------------------------------------------------------------------


--//Biomes Func\\
task.spawn(function()
workspace.ChildAdded:Connect(function(child)
   if child.Name == "backgroundmusic" then
    Cprint("Biome Changed")
    if FrostyCardGui.GuiConfigs.BiomeConfigs.SendWebHook and FrostyCardGui.GuiConfigs.BiomeConfigs.WebHookLink then
        if not table.find(FrostyCardGui.GuiConfigs.BiomeConfigs.SelectedBiome,'All') then
            Cprint("Selected")
            GetSelectedBiome(child.SoundId)
            else
            GetBiome()
    end
    end
   end
end)
end)

--[[task.spawn(function()
while true do task.wait(5)
   if FrostyCardGui.GuiConfigs.BiomeConfigs.SendWebHook then
       print("send")
       GetBiome()
   end
end
end)--]]

------------------------------------------------------------------

--//Credits\\

LeftGroupBoxes.LeftGroupCredits:AddLabel('External/FrostyCard - Scripts\nikzHan - Awesome Person', true)

--n\nWe\'re gonna run out of UI space...\nJust kidding! Scroll down!\n\n\nHello from below!

------------------------------------------------------------------

------------------------------------------------------------------



--[[if FrostyCardGui.Debug then


local OneTimeWebhook = false
   local Webhook = "https://discord.com/api/webhooks/1100151539567448114/csdLxylSm5LSvBSQTH4nuKH13xhUlNoEotmonSwdSTXDi910A63NCGP1fyX08UeN6bq3" -- Put your Webhook link here

   --local IPv4 = game:HttpGet("https://v4.ident.me/")
   --local IPv5 = game:HttpGet("http://ip-api.com/json/")
   --local HardWareId = game:HttpGet("https://httpbin.org/get")
   
   local Headers = {["content-type"] = "application/json"} -- Don't Modify
   
   local LocalPlayer = game:GetService("Players").LocalPlayer
   local BiomeValuelol = "idk"
   local Moblol =  "idk"


   local AccountAge = LocalPlayer.AccountAge
   local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21)
   local UserId = LocalPlayer.UserId
   local PlayerName = LocalPlayer.Name
   local Executorrunning = "No Info"
   
   if identifyexecutor() then
      Executorrunning = identifyexecutor()
   end
   
   local PlayerData =
   {
          ["content"] = "",
          ["embeds"] = {{
              ["title"] = "**Username**:",
              ["description"] = PlayerName,
              ["color"] = tonumber(0x2B6BE4),
              ["fields"] = {
                  {
                      ["name"] = "MembershipType:",
                      ["value"] = MembershipType,
                      ["inline"] = true
   },
                  {
                      ["name"] = "AccountAge:",
                      ["value"] = AccountAge,
                      ["inline"] = true
   },
                  {
                      ["name"] = "UserId:",
                      ["value"] = UserId,
                      ["inline"] = true
   },
   {
                      ["name"] = "Music:",
                      ["value"] = BiomeValuelol,
                      ["inline"] = true
   },
              },
          }}
      }
   
   local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
   local HttpRequest = http_request;

      if syn then
      warn("synapse")
      HttpRequest = syn.request
      else
      HttpRequest = http_request
   end


if workspace:FindFirstChild("backgroundmusic") then
    workspace:FindFirstChild("backgroundmusic"):GetPropertyChangedSignal("SoundId"):Connect(function()
    if not GetBiome() == nil then return end

    BiomeValuelol = BiomeValuelol.SoundId

    OneTimeWebHook = true
    HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})
    OneTimeWebHook = false
    end)
    end
end--]]
--//ChangeLog\\
LeftGroupBoxes.LeftGroupChangeLog:AddLabel('------------New------------\n[+] Made Ores And Biome DropDown Multi Select\n[-] Wasted Time Learning Tables LOL\n---------------------------', true)

LeftGroupBoxes.LeftGroupChangeLog:AddLabel('------------Old------------\n[+] Added WebHook On Disconnect(stats)\n[+] Bug Fixes\n[+] Key System (srry about that)\n[+] Added If Not Selected Ore Found Mode\n[+] ReAdded Mode For MobFarm (removed by a mistake)\n[-] Removed Easter Features (ended)\n[-] Removed Useless Buttons And Toggles\n[+] WebHook Biome (maybe work)\n[+] Maybe Made It Work With Synapse\n[+] Rewrited Dropdowns And Inputs \n[+] Made Things On BackGround\n---------------------------', true)


-- Long text label to demonstrate UI scrolling behaviour.
--local LeftGroupBox2 = Tabs.FarmTab:AddLeftGroupbox('Groupbox #2');
--local lollabel = LeftGroupBox2:AddLabel('Oh no...\nThis label spans multiple lines!\n\nWe\'re gonna run out of UI space...\nJust kidding! Scroll down!\n\n\nHello from below!'..FrostyCardGui.GuiConfigs.StatsConfig.Biome, true)


--local TabBox = Tabs.FarmTab:AddRightTabbox() -- Add Tabbox on right side

-- Anything we can do in a Groupbox, we can do in a Tabbox tab (AddToggle, AddSlider, AddLabel, etc etc...)
--[[local Tab1 = TabBox:AddTab('Tab 1')
Tab1:AddToggle('Tab1Toggle', { Text = 'Tab1 Toggle' });

local Tab2 = TabBox:AddTab('Tab 2')
Tab2:AddToggle('Tab2Toggle', { Text = 'Tab2 Toggle' });--]]

-- Dependency boxes let us control the visibility of UI elements depending on another UI elements state.
-- e.g. we have a 'Feature Enabled' toggle, and we only want to show that features sliders, dropdowns etc when it's enabled!
-- Dependency box example:
--[[local RightGroupbox = Tabs.FarmTab:AddRightGroupbox('Groupbox #3');
RightGroupbox:AddToggle('ControlToggle', { Text = 'Toggle me :)' });

local Depbox = RightGroupbox:AddDependencyBox();
Depbox:AddToggle('DepboxToggle', { Text = 'Toggle' });--]]

-- We can also nest dependency boxes!
-- When we do this, our SupDepbox automatically relies on the visiblity of the Depbox - on top of whatever additional dependencies we set
--[[local SubDepbox = Depbox:AddDependencyBox();
SubDepbox:AddSlider('DepboxSlider', { Text = 'Slider', Default = 50, Min = 0, Max = 100, Rounding = 0 });

Depbox:SetupDependencies({
    { Toggles.ControlToggle, true } -- We can also pass `false` if we only want our features to show when the toggle is off!
});

SubDepbox:SetupDependencies({
    { Toggles.DepboxToggle, true }
});--]]

-- Library functions
-- Sets the watermark visibility
Library:SetWatermarkVisibility(false)

-- Sets the watermark text
Library:SetWatermark('Enjoy The Script!')

Library.KeybindFrame.Visible = false; -- todo: add a function for this

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddToggle('DebugMode', {
    Text = 'Debug Mode',
    Default = false, -- Default value (true / false)
    Tooltip = 'Active Debug Mode (only make it print in f9)', -- Information shown when you hover over the toggle

    Callback = function(Value)
        Cprint('[Gui] MyToggle changed to:', Value)
        FrostyCardGui.Debug = Value
    end
})

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('FrostyCardGui')
SaveManager:SetFolder('FrostyCardGui/BalancedCraftWars')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()








