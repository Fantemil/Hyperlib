local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Celebrity Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

SelectedEgg = "Wildlife"
Egg = {}
for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    if not table.find(Egg,v.Name) then
        table.insert(Egg,v.Name)
    end
end

b:Toggle("AutoPlay",function(bool)
    shared.toggle = bool
    AutoPlay = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    autosell = bool
end)

b:Toggle("AutoCollectDrops",function(bool)
    shared.toggle = bool
    autodrops = bool
end)

f:Toggle("Instruments",function(bool)
    shared.toggle = bool
    instrument = bool
end)

f:Toggle("Upgrades",function(bool)
    shared.toggle = bool
    AutoUpgrades = bool
end)

f:Dropdown("Select Egg",Egg,true,function(blubb)
    SelectedEgg = blubb
end)

f:Button("TP to Egg",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Eggs[SelectedEgg].CFrame.Position + Vector3.new(0,3,0))
end)

f:Toggle("AutoHatch",function(bool)
    shared.toggle = bool
    autoegg = bool
end)

f:Toggle("EquipBest",function(bool)
    shared.toggle = bool
    equipbest = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

--Credits
u:Button("Moepi#1149",function()
    setclipboard("Moepi#1149")
end)

u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)

u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    spawn(function()
        pcall(function()
            if AutoPlay == true then
                for i,v in pairs(game:GetService("Workspace").ClientBeats[game.Players.LocalPlayer.Name].Beats:GetChildren()) do
                    if v.Name == "Section1" then
                        local magnitude = (v.Position - game:GetService("Workspace").ClientBeats[game.Players.LocalPlayer.Name].Section1.Position).Magnitude
                        if magnitude <= 1 then
                            game:GetService("ReplicatedStorage").Events.Beats.BeatPlayed:FireServer("Section1",false,0)
                        end
                    end
                    
                    if v.Name == "Section2" then
                        local magnitude = (v.Position - game:GetService("Workspace").ClientBeats[game.Players.LocalPlayer.Name].Section2.Position).Magnitude
                        if magnitude <= 1 then
                            game:GetService("ReplicatedStorage").Events.Beats.BeatPlayed:FireServer("Section2",false,0)
                        end
                    end
                    
                    if v.Name == "Section3" then
                        local magnitude = (v.Position - game:GetService("Workspace").ClientBeats[game.Players.LocalPlayer.Name].Section3.Position).Magnitude
                        if magnitude <= 1 then
                            game:GetService("ReplicatedStorage").Events.Beats.BeatPlayed:FireServer("Section3",false,0)
                        end
                    end
                    
                    if v.Name == "Section4" then
                        local magnitude = (v.Position - game:GetService("Workspace").ClientBeats[game.Players.LocalPlayer.Name].Section4.Position).Magnitude
                        if magnitude <= 1 then
                            game:GetService("ReplicatedStorage").Events.Beats.BeatPlayed:FireServer("Section4",false,0)
                        end
                    end
                end
            end
        end)
    end)

    spawn(function()
        if autosell == true then
            pcall(function()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").SellPoints.NewYork, 0)
                wait()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").SellPoints.NewYork, 1)
            end)
        end
    end)

    spawn(function()
        if autodrops == true then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").SpawnedCurrency.System1.Spawned:GetDescendants()) do
                    if v.ClassName == "TouchTransmitter" then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                        wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                    end
                end
            end)
        end
    end)

    spawn(function()
        if instrument == true then
            game:GetService("ReplicatedStorage").Events.Instruments.PurchaseInstrument:FireServer()
        end
    end)

    spawn(function()
        if autoegg == true then
            game:GetService("ReplicatedStorage").Events.Eggs.PurchaseEgg:FireServer(SelectedEgg,"ONE")
        end
    end)

    spawn(function()
        if equipbest == true then
            game:GetService("ReplicatedStorage").Events.Pets.EquipBest:FireServer()
        end
    end)
    
    spawn(function()
        if AutoUpgrades == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.UpgradesFrame.ScrollingFrame:GetChildren()) do
                if v.ClassName == "ImageLabel" then
                    game:GetService("ReplicatedStorage").Events.Upgrades.PurchaseUpgrade:FireServer(v.Name)
                end
            end
        end
    end)
    
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end)
end