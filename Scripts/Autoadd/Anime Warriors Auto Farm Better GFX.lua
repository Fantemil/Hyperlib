shared.Enable = false
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "ð Kingdom Hub", HidePremium = true, IntroText = "Kingdom Hub", SaveConfig = false, ConfigFolder = "Kingdom Hub"})
local Tab = Window:MakeTab({
Name = "âï¸ Farming",
Icon = "rbxassetid://10762137635",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "General"
})
Tab:AddToggle({
Name = "Enable",
Default = false,
Callback = function(Value)
if Value then
            shared.Enable = true
        else
            shared.Enable = false
        end
end    
})
function getSkill_remote()
    for i,v in pairs(game:GetService("ReplicatedStorage")["_NETWORK"]:GetChildren()) do
        if i == 69 then
            return v
        end
    end
end
function useSkill(mobPos)
    local info = {
    ["Character"] = game.Players.LocalPlayer.Character,
    ["mouseHit"] = mobPos
    }
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameUI.HUD.Skills:GetChildren()) do
        if v:IsA("ImageButton") then
            local remote = getSkill_remote()
            remote:InvokeServer(v.Name,info)  
        end
    end
    return skills
end
function getNPC()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Live.NPCs:GetChildren()) do
            if v.HumanoidRootPart.Anchored == false then
                local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                if mag < 1500 then
                    repeat
                        for _,partSkill in pairs(game:GetService("Workspace").Effects:GetChildren()) do
                            if partSkill:IsA("Model") and string.find(tostring(partSkill.Name),"indicator") then
                                print("Found Indicator", partSkill:GetFullName())
                                local indicatorArea = partSkill
                                local d = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - partSkill:FindFirstChildOfClass("MeshPart").Position).Magnitude
                                if d < 50 then
                                    print("Touching Area")
                                    setclipboard(tostring(partSkill:FindFirstChildOfClass("MeshPart").BrickColor))
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,80,200)
                                    task.wait(2)
                                end
                            end
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5)
                        game:GetService("Players").LocalPlayer.ClientInputEvents.M1:Fire()
                        useSkill(v.HumanoidRootPart.CFrame)
                        task.wait()
                    until (v.Humanoid.Health <= 0) or (not shared.Enable)
                end
            end
        end
    end)
end
task.spawn(function()
    while true do
        if shared.Enable then
            getNPC()
        end
        task.wait()
    end
end)
    

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