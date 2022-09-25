local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Coin Collecting Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local Rebirth = 1
local SuperRebirth = 1
local Egg = "Common Egg"
local EggTable = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Eggs:GetChildren()) do
    EggTable[i] = v.Name
end

b:Toggle("AutoCollectCoins",function(bool)
    shared.toggle = bool
    AutoCollectCoins = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

f:Toggle("Egg",function(bool)
    shared.toggle = bool
    Egg1 = bool
end)

f:Dropdown("Select Egg",EggTable,true,function(mob)
    Egg = mob
end)

f:Toggle("Rebirth",function(bool)
    shared.toggle = bool
    AutoRebirth = bool
end)

f:Box("Rebirth","number",function(value)
    Rebirth = value
end)

f:Toggle("SuperRebirth",function(bool)
    shared.toggle = bool
    AutoSuperRebirth = bool
end)

f:Box("SuperRebirth","number",function(value)
    SuperRebirth = value
end)

e:Toggle("AntiAfk",function(boosl)
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
    if AutoCollectCoins == true then
        for i,v in pairs(game:GetService("Workspace").CoinsAreas:GetChildren()) do
            game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("Collect",v.Name)
        end
    end
    
    if AutoSell == true then
        game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("Sell")
    end
    
    if Egg1 == true then
        local args = {
            [1] = "PurchaseEgg",
            [2] = Egg,
        }
        game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
    end
    
    if AutoRebirth == true then
        game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("Rebirth","Rebirth"..tonumber(Rebirth))
    end
    
    if AutoSuperRebirth == true then
        game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("SuperRebirth","SuperRebirth"..tonumber(SuperRebirth))
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end