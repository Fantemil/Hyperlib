local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Soda Champions")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
local WorldSelect = "VoidIsland"
local RebirthSelect = 1
local RebirthTable = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.RebirthGui.RebirthFrame.Background.RebirthFrame.ScrollingFrame:GetChildren()) do
    if v.ClassName == "Frame" then
        if v.RebirthAmount ~= nil then
            RebirthTable[i] = v.RebirthAmount.Value
        end
    end
end

b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

b:Toggle("AutoTpDrop",function(bool)
    shared.toggle = bool
    AutoTpDrop = bool
end)

b:Toggle("AutoTpRings",function(bool)
    shared.toggle = bool
    AutoTpRings = bool
end)

f:Toggle("Rebirth",function(bool)
    shared.toggle = bool
    Rebirth = bool
end)

f:Dropdown("Select Rebirth",RebirthTable,true,function(mob)
    RebirthSelect = mob
end)

f:Toggle("LegendRebirth",function(bool)
    shared.toggle = bool
    LegendRebirth = bool
end)

f:Toggle("Upgrade",function(bool)
    shared.toggle = bool
    Upgrade = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Dropdown("Select World",{"VoidIsland","NinjaIsland","DualElementalIsland"},true,function(mob)
    WorldSelect = mob
end)

e:Button("Tp World",function()
    for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do
        if v.Name ==  WorldSelect then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.TpPart.CFrame.Position + Vector3.new(0,0,0))
        end
    end
end)
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    if AutoClicker == true then
        game:GetService("ReplicatedStorage").Events.GameMechanics.Events.TappingEvent:FireServer()
    end
    
    if AutoTpDrop == true  then
        for i,v in pairs(game:GetService("Workspace").Drops:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.CFrame.Position + Vector3.new(0,0,0))
                wait()
            end
        end
    end
    
    if AutoTpRings == true then
        for i,v in pairs(game:GetService("Workspace").Worlds:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" then
                if v.Parent.ClassName == "MeshPart" or v.Parent.ClassName == "Part" or v.Parent.ClassName == "UnionOperation" then
                    if v.Parent.Parent.Name == "CoinRing" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.CFrame.Position + Vector3.new(0,0,0))
                        wait()
                    end
                end
            end
        end
    end
    
    if Rebirth == true then
        game:GetService("ReplicatedStorage").Events.GameMechanics.Events.RebirthEvent:FireServer(tonumber(RebirthSelect))
    end
    
    if LegendRebirth == true then
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.LegendRebirthUI.MainFrame.RankFrame.MainFrame.Display.ScrollMainBG.ScrollingFrame:GetChildren()) do
            if v.ClassName == "ImageButton" then
                game:GetService("ReplicatedStorage").Events.GameMechanics.Events.LegendRebirth:FireServer(v.Name)
            end
        end
    end
    
    if Upgrade == true then
        for i,v in pairs(game:GetService("Players").LocalPlayer.Upgrades:GetChildren()) do
            game:GetService("ReplicatedStorage").Events.GameMechanics.Events.CoinUpgradeEvent:FireServer(v.Name)
        end
    end
    
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end