local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Dogecoin Mining Tycoon")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
local GPUsValue = "A"
local ShelvesValue = "1"
local GPUsValue1 = "A"
local ShelvesValue1 = "1"
--Toggle
b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

f:Toggle("GPUs",function(bool)
    shared.toggle = bool
    GPUs = bool
end)

f:Dropdown("A",{"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"},true,function(Value1)
    GPUsValue = Value1
end)

f:Toggle("Shelves",function(bool)
    shared.toggle = bool
    Shelves = bool
end)

f:Dropdown("1",{"1","2","3","4"},true,function(Value2)
    ShelvesValue = Value2
end)

b:Toggle("Place All GPUs",function(bool)
    shared.toggle = bool
    PlaceGPUs = bool
end)

b:Dropdown("A",{"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"},true,function(Value1)
    GPUsValue1 = Value1
end)

b:Toggle("Place All Shelves",function(bool)
    shared.toggle = bool
    PlaceShelves = bool
end)

b:Dropdown("1",{"1","2","3","4"},true,function(Value)
    ShelvesValue1 = Value
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
    if PlaceGPUs == true then
        for i,v in pairs(game:GetService("Workspace")["__Tycoons"][game.Players.LocalPlayer.Name]:GetChildren()) do
            for i,v1 in pairs(v:GetChildren()) do
                if v1.Name == "Slots" then
                    for i1,v2 in pairs(v1:GetChildren()) do
                        if PlaceGPUs == true then
                            game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Placement:InvokeServer("PlaceGPU",{["ID"] = GPUsValue1 ,["ItemType"] = "GPUs",["Slot"] = v2.Parent[i1]})
                        end
                    end
                end
            end
        end
    end
    
    if PlaceShelves == true then
        y = 1
        x = 1
        function X()
            for i=1,15 do
                game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Placement:InvokeServer("Place",{["Rotation"] = 90,["ItemType"] = "Shelves",["RootY"] = y,["ID"] = ShelvesValue1,["RootX"] = x})
                x = x + 1
            end
        end
        for i=1,15/2 do
            if PlaceShelves == true then
                X()
                x = 1
                y = y + 2
            end
        end
    end
    
    if AutoSell == true then 
        game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Exchange:FireServer("Exchange",{["Rate"] = math.huge})
    end
    
    if GPUs == true then
        game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Shop:InvokeServer("Item",{["ID"] = GPUsValue,["Action"] = "Buy",["ItemType"] = "GPUs"})
    end
    
    if Shelves == true then
        game:GetService("ReplicatedStorage").SpecWork.Shared.Network.Shop:InvokeServer("Item",{["ID"] = ShelvesValue,["Action"] = "Buy",["ItemType"] = "Shelves"})
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end