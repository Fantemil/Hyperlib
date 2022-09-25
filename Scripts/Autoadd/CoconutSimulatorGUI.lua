local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Coconut Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("PlaceTreeBase",function(bool)
    shared.toggle = bool
    PlaceTreeBase = bool
end)

b:Toggle("ClickTreeBase",function(bool)
    shared.toggle = bool
    ClickTreeBase = bool
end)

b:Toggle("ClickTreeOutSide",function(bool)
    shared.toggle = bool
    ClickTreeOutSide = bool
end)

b:Toggle("CollectCoconut",function(bool)
    shared.toggle = bool
    CollectCoconut = bool
end)

b:Toggle("CollectCheats",function(bool)
    shared.toggle = bool
    CollectCheats = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Open Shop",function()
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Shop.Ring.Part, 1)
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Shop.Ring.Part, 0)
end)

e:Button("Tp Base",function()
    base = nil
    for i,v in pairs(game:GetService("Workspace").OwnerSigns:GetDescendants()) do
        if v.ClassName == "TextLabel" then
            if v.Text == game.Players.LocalPlayer.Name.."'s Farm" then
                base = v.Parent.Parent.Parent.Name
            end
        end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Plots[base].Base.CFrame.Position + Vector3.new(0,30,0))
end)

--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

base5 = nil
for i,v in pairs(game:GetService("Workspace").OwnerSigns:GetDescendants()) do
    if v.ClassName == "TextLabel" then
        if v.Text == game.Players.LocalPlayer.Name.."'s Farm" then
            base5 = v.Parent.Parent.Parent.Name
        end
    end
end

if base5 == nil then
    for i,v in pairs(game:GetService("Workspace").ClaimParts:GetDescendants()) do
        if v.ClassName == "TouchTransmitter" then
            if base5 == nil then
                base5 = "https://youtu.be/dQw4w9WgXcQ"
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.CFrame.Position + Vector3.new(0,0,0))
            end
        end
    end
end

while wait() do
    spawn(function()
        pcall(function()
            if ClickTreeBase == true then
                base = nil
                for i,v in pairs(game:GetService("Workspace").OwnerSigns:GetDescendants()) do
                    if v.ClassName == "TextLabel" then
                        if v.Text == game.Players.LocalPlayer.Name.."'s Farm" then
                            base = v.Parent.Parent.Parent.Name
                        end
                    end
                end
                
                for i,v in pairs(game:GetService("Workspace").Plots[base]:GetDescendants()) do
                    if string.find(v.Name,"Position") then
                        for i,v1 in pairs(v:GetChildren()) do
                            if v1.ClassName == "Model" then
                                for i,v2 in pairs(v1:GetDescendants()) do
                                    if v2.ClassName == "ClickDetector" then
                                        string = game:GetService("Players").LocalPlayer.PlayerGui.MainUI.BasketCount.Text
                                        a,b = string:match("(.+)/(.+)")
                                        if a ~= b then
                                            fireclickdetector(v2, 1)
                                            wait(.1)
                                            fireclickdetector(v2, 0)
                                            wait(.1)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            if PlaceTreeBase == true then
                base = nil
                Number = {}
                for i,v in pairs(game:GetService("Players").LocalPlayer.DataStorage.SeedCount:GetChildren()) do
                    if v.Value ~= 0 then
                        table.insert(Number,v.Value)
                    end
                end
                
                for i,v in pairs(game:GetService("Players").LocalPlayer.DataStorage.SeedCount:GetChildren()) do
                    if v.Value == math.min(table.unpack(Number)) then
                        seeds = string.gsub(v.Name,"Count","")
                    end
                end
                
                for i,v in pairs(game:GetService("Workspace").OwnerSigns:GetDescendants()) do
                    if v.ClassName == "TextLabel" then
                        if v.Text == game.Players.LocalPlayer.Name.."'s Farm" then
                            base = v.Parent.Parent.Parent.Name
                        end
                    end
                end
                
                for i,v1 in pairs(game:GetService("Workspace").Plots[base]:GetDescendants()) do
                    if v1.ClassName == "RemoteEvent" then
                        if string.find(v1.Name,"PlantRequest") then
                            v1:FireServer(seeds)
                        end
                    end
                end
            end
        end)
    end)

    spawn(function()
        pcall(function()
            if ClickTreeOutSide == true then
                for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if v.ClassName == "Part" then
                        if string.find(v.Name,"Tree") then
                            for i,v1 in pairs(v:GetDescendants()) do
                                if v1.ClassName == "ClickDetector" then
                                    string = game:GetService("Players").LocalPlayer.PlayerGui.MainUI.BasketCount.Text
                                    a,b = string:match("(.+)/(.+)")
                                    if a ~= b then
                                        fireclickdetector(v1, 0)
                                        fireclickdetector(v1, 1)
                                        fireclickdetector(v1, 0)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            if CollectCoconut == true then
                for i,v in pairs(game:GetService("Workspace").CoconutEntities:GetDescendants()) do
                    if v.ClassName == "TouchTransmitter" then
                        string = game:GetService("Players").LocalPlayer.PlayerGui.MainUI.BasketCount.Text
                        a,b = string:match("(.+)/(.+)")
                        if a ~= b then
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            if CollectCheats == true then
                for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if v.ClassName == "TouchTransmitter" then
                        if string.find(v.Parent.Name,"Chest") then
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                        end
                    end
                end
            end
        end)
    end)
    
    pcall(function()
        if AutoSell == true then
            game:GetService("Workspace").SellRing.Part.CanCollide = false
            game:GetService("Workspace").SellRing.Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
            wait(.1)
            game:GetService("Workspace").SellRing.Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
            wait(.1)
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