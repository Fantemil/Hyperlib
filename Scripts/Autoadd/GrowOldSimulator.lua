local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Grow Old Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("AutoCollectDrop",function(bool)
    shared.toggle = bool
    AutoCollectDrop = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

f:Toggle("Ranges",function(bool)
    shared.toggle = bool
    Ranges = bool
end)

f:Toggle("Ranks",function(bool)
    shared.toggle = bool
    Ranks = bool
end)

f:Toggle("Upgrades",function(bool)
    shared.toggle = bool
    Upgrades = bool
end)

f:Toggle("Rebirth",function(bool)
    shared.toggle = bool
    AutoRebirth = bool
end)

f:Toggle("SuperRebirth",function(bool)
    shared.toggle = bool
    AutoSuperRebirth = bool
end)

f:Toggle("Areas",function(bool)
    shared.toggle = bool
    Areas = bool
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
        if AutoCollectDrop == true then
            for i,v in pairs(game:GetService("Workspace").Debris.Pickups:GetDescendants()) do
                if v.ClassName == "Part" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
                end
            end
            wait(.1)
            for i,v in pairs(game:GetService("Workspace").Debris.Pickups:GetDescendants()) do
                if v.ClassName == "Part" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
                end
            end
            wait(.1)
        end
    end)
    
    spawn(function()
        if AutoSell == true then
            game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("Sell","Home")
        end
    end)
    
    spawn(function()
        if AutoRebirth == true then
            game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("Rebirth")
        end
    end)
    
    spawn(function()
        if AutoSuperRebirth == true then
            game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("SuperRebirth")
        end
    end)
    
    spawn(function()
        if Ranges == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Screen.ShopFrame.Body.Range:GetDescendants()) do
                if v.Name == "ItemName" then
                    game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("BuyRange",v.Text)
                end
            end
        end
    end)
    
    spawn(function()
        if Ranks == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Screen.ShopFrame.Body.Ranks:GetDescendants()) do
                if v.Name == "ItemName" then
                    game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("BuyRank",v.Text)
                end
            end
        end
    end)
    
    spawn(function()
        if Upgrades == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Screen.ShopFrame.Body.Upgrades:GetDescendants()) do
                if v.Name == "ItemName" then
                    game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("BuyUpgrade",v.Text)
                end
            end
        end
    end)
    
    spawn(function()
        if Areas == true then
            for i,v in pairs(game:GetService("Workspace").Debris.Floors:GetChildren()) do
                game:GetService("ReplicatedStorage").Events.RemoteFunction:InvokeServer("BuyArea",v.Name)
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