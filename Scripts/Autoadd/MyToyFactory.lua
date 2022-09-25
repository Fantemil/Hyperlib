local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("My Toy Factory")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 

b:Toggle("PutInBoxes",function(bool)
    shared.toggle = bool
    PutInBoxes = bool
end)

b:Toggle("TakeToy",function(bool)
    shared.toggle = bool
    TakeToy = bool
end)

b:Toggle("PutInShelf",function(bool)
    shared.toggle = bool
    PutInShelf = bool
end)

local AmountMaterial = 1
local Material = "Wood"
local Materials = {}
for i,v in pairs(game:GetService("Workspace").Plots[game.Players.LocalPlayer.Name.."Plot"].Materials:GetChildren()) do
    Materials[i] = v.Name
end

f:Dropdown("Select Material",Materials,true,function(mob)
    Material = mob
end)

f:Box("Amount "..Material,"number",function(value)
    AmountMaterial = value
end)

f:Button("Buy Material",function()
    game:GetService("ReplicatedStorage").RemoteEvents.BuyMaterial:FireServer(Material,AmountMaterial)
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
    if PutInBoxes == true then
        fireclickdetector(game:GetService("Workspace").Plots[game.Players.LocalPlayer.Name.."Plot"].DepositMaterials.ClickDetector, 0)
        wait(.1)
        fireclickdetector(game:GetService("Workspace").Plots[game.Players.LocalPlayer.Name.."Plot"].DepositMaterials.ClickDetector, 1)
        wait(.1)
    end
    
    if TakeToy == true then
        for i,v in pairs(game:GetService("Workspace").Plots[game.Players.LocalPlayer.Name.."Plot"].Assets.ClickModel:GetDescendants()) do
            if v.Name == "ClickPart" then
                fireclickdetector(v.ClickDetector, 0)
                wait(.1)
                fireclickdetector(v.ClickDetector, 1)
                wait(.1)
            end
        end
    end
    
    if PutInShelf == true then
        fireclickdetector(game:GetService("Workspace").Plots[game.Players.LocalPlayer.Name.."Plot"].Shelf.Colider.ClickDetector, 0)
        wait(.1)
        fireclickdetector(game:GetService("Workspace").Plots[game.Players.LocalPlayer.Name.."Plot"].Shelf.Colider.ClickDetector, 1)
        wait(.1)
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end