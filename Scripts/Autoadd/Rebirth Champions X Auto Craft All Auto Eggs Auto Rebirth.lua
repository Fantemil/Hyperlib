getgenv().AutoClick = false
getgenv().AutoRebirth = false
getgenv().AutoEgg = false
getgenv().AutoCraft = false
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "ð Kingdom Hub", HidePremium = true, IntroText = "Kingdom Hub", SaveConfig = false, ConfigFolder = "Kingdom Hub"})
local Tab = Window:MakeTab({
 Name = "Main",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

function AutoClick()
    if getgenv().AutoClick then
        while getgenv().AutoClick do
            game:GetService("ReplicatedStorage").Events.Click3:FireServer()
            wait();
        end
    end
end

function AutoRebirth(Number)
    if getgenv().AutoRebirth then
        while getgenv().AutoRebirth do
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(Number)
            wait();
        end
    end
end

local EggsArray = {}
for i , v in pairs(game:GetService("ReplicatedStorage").Assets.Eggs:GetChildren()) do
    table.insert(EggsArray, v.Name)
end

function AutoEgg(Type)
    if getgenv().AutoEgg then
        while getgenv().AutoEgg do
            game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(Type,"Triple")
            wait();
        end
    end
   
end

function AutoCraft()
    if getgenv().AutoCraft then
        while getgenv().AutoCraft do
            game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll",{})
            wait();
        end
    end
end
Tab:AddLabel("AutoClick")
Tab:AddToggle({
 Name = "Auto Click On/Off",
 Default = false,
 Callback = function(Value)
  getgenv().AutoClick = Value
        if getgenv().AutoClick then
            AutoClick()
        end
 end    
})

Tab:AddLabel("AutoRebirth")

local SelectedNumber
local RebirthsArray = {}
for i = 1, 67 do
    table.insert(RebirthsArray, i)
end

Tab:AddDropdown({
 Name = "Select Number of Rebirths",
 Default = "1",
 Options = RebirthsArray,
 Callback = function(Value)
  SelectedNumber = Value
        print("Selected Number: "..SelectedNumber)
 end    
})

if SelectedNumber == nil then
    SelectedNumber = 1
end

Tab:AddToggle({
 Name = "Auto Rebirths On/Off",
 Default = false,
 Callback = function(Value)
  getgenv().AutoRebirth = Value
        if getgenv().AutoRebirth then
            AutoRebirth(SelectedNumber)
        end
 end    
})
Tab:AddLabel("Auto Eggs")

local SelectedEgg 
Tab:AddDropdown({
 Name = "Select Type of Eggs",
 Default = "1",
 Options = EggsArray,
 Callback = function(Value)
  SelectedEgg = Value
        print("Selected Egg: "..SelectedEgg)
 end    
})

if SelectedEgg == nil then
    SelectedEgg = EggsArray[0]
end

Tab:AddToggle({
 Name = "Auto Eggs On/Off",
 Default = false,
 Callback = function(Value)
  getgenv().AutoEgg = Value
        if getgenv().AutoEgg then
            AutoEgg(SelectedEgg)
        end
 end    
})
Tab:AddLabel("Auto CraftAll")
Tab:AddToggle({
 Name = "Auto CraftAll On/Off",
 Default = false,
 Callback = function(Value)
  getgenv().AutoCraft = Value
        if getgenv().AutoCraft then
            AutoCraft()
        end
 end    
})

----GFX----

local GFXTab = Window:MakeTab({
 Name = "Better GFX",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

GFXTab:AddButton({
 Name = "Better GFX",
 Callback = function()
        local function loadassets()
            sethiddenproperty(workspace.Terrain, "Decoration", true)
            sethiddenproperty(game.Lighting, "Technology", "ShadowMap")
            sethiddenproperty(game.Lighting, "ShadowSoftness", .2)
            sethiddenproperty(game.Lighting, "Brightness", 3)
            sethiddenproperty(game.Lighting, "ExposureCompensation", -.9)
        
            local CC = Instance.new("ColorCorrectionEffect", game.Lighting)
            local Atmosphere = Instance.new("Atmosphere", game.Lighting)
            
            local Bloom = Instance.new("BloomEffect", game.Lighting)
            local DOP = Instance.new("DepthOfFieldEffect", game.Lighting)
            local Blur = Instance.new("BlurEffect", game.Lighting)
            local SunRays = Instance.new("SunRaysEffect", game.Lighting)
            
            CC.Saturation = .25
            
        
            Atmosphere.Color = Color3.fromRGB(199, 170, 107)
            Atmosphere.Decay = Color3.fromRGB(92, 60, 13)
            
            Bloom.Intensity = .8
            Bloom.Size = 50
            Bloom.Threshold = .9
        
            DOP.FarIntensity = .75
            DOP.InFocusRadius = 200
            DOP.NearIntensity = .75
            
            Blur.Size = 2
        
            SunRays.Intensity = .04
            SunRays.Spread = .4
            
            local function refreshparticles()
                while wait(5) do
                    for i, v in pairs(game:GetDescendants()) do
                        if v.ClassName == "ParticleEmitter" then
                            v.Brightness = 5
                        end
                    end
                end
            end
        
            task.spawn(refreshparticles)
        end
        
        local Success, Failed = pcall(function()
            loadassets()
        end)
        
        if Failed then 
            task.delay(3, loadassets)
        end
   end    
})

----Discord----

local DiscordTab = Window:MakeTab({
 Name = "Discord",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

DiscordTab:AddButton({
 Name = "Copy Discord Link",
 Callback = function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Kingdom Hub Notice";
            Text = "More Scripts Coming Soon.";
            Duration = 25;
        })
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "[DISCORD]";
            Text = "Discord Id Copied https://discord.gg/JwVw4UuDat";
            Duration = 25;
        })
        
        
        if setclipboard then
            setclipboard("https://discord.gg/JwVw4UuDat")
        end
   end    
})
OrionLib:Init()