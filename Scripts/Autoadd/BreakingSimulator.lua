local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Breaking Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
--Toggle
b:Toggle("AutoClick",function(bool)
    shared.toggle = bool
    AutoClick = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

f:Toggle("Objects",function(bool)
    shared.toggle = bool
    Objects = bool
end)

f:Toggle("Storage",function(bool)
    shared.toggle = bool
    Storage = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    if Objects == true then
        for i,v in pairs(game:GetService("ReplicatedStorage").BreakableObjects:GetChildren()) do
                game:GetService("ReplicatedStorage").Events.BuyItemEventFunction:InvokeServer("Objects",i)
                game:GetService("ReplicatedStorage").Events.EquipItemEventFunction:InvokeServer("Objects",i)
        end
    end
    
    if Storage == true then
        for i,v in pairs(game:GetService("ReplicatedStorage").StorageObjects:GetChildren()) do
                game:GetService("ReplicatedStorage").Events.BuyItemEventFunction:InvokeServer("Storage",i)
                game:GetService("ReplicatedStorage").Events.EquipItemEventFunction:InvokeServer("Storage",i)
        end
    end
    
    if AutoClick == true then
        game:GetService("ReplicatedStorage").Events.ClickedEventFunction:InvokeServer()
        wait(game:GetService("Players").LocalPlayer.PlayerNumberData.SmashSpeed.Value - 1)
    end
    
    if AutoSell == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").SellPlace.CFrame.Position + Vector3.new(0,0,100))
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").SellPlace.CFrame.Position + Vector3.new(0,0,0))
        wait(.1)
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end