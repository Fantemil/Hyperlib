local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("My Fish Store")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
local SelectedItem = "Fishbowl"
local SelectedFloor = "Wood"
Items = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Resources.BuildItems.Item:GetChildren()) do
    Items[i] = v.Name
end
Floor = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Resources.BuildItems.Floor:GetChildren()) do
    Floor[i] = v.Name
end
--Toggle
b:Toggle("Place Item",function(bool)
    shared.toggle = bool
    PlaceItem = bool
end)

b:Dropdown("Select Item",Items,true,function(mob)
    SelectedItem = mob
end)

b:Toggle("Place Floor",function(bool)
    shared.toggle = bool
    PlaceFloor = bool
end)

b:Dropdown("Select Floor",Floor,true,function(mob)
    SelectedFloor = mob
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Add Fish",function()
    for i1,v1 in pairs(game:GetService("Workspace").Game.PlayerPlots:GetChildren()) do
        for i,v in pairs(v1.Items:GetChildren()) do
            game:GetService("ReplicatedStorage").Resources.Remotes.FishFill:FireServer("item:"..v.Name,"Carp",1)
            game:GetService("ReplicatedStorage").Resources.Remotes.BuyFish:FireServer("Carp",1)
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
    if PlaceItem == true then
        x = -80
        y = 0
        function Place()
            game:GetService("ReplicatedStorage").Resources.Remotes.BuildItem:FireServer(SelectedItem,x..":"..y,1,Color3.new())
        end
        for i=1,16*5 do
            x = -80
            for i=1,16*10 do
                if PlaceItem == true then
                    x = x + 1
                    Place()
                end
            end
            y = y + 1
        end
    end
    
    if PlaceFloor == true then
        x = -80
        y = 0
        function Place()
            game:GetService("ReplicatedStorage").Resources.Remotes.BuildFloor:FireServer(SelectedFloor,x..":"..y,Color3.new())
        end
        for i=1,16*5 do
            x = -80
            for i=1,16*10 do
                if PlaceFloor == true then
                    x = x + 1
                    Place()
                end
            end
            y = y + 1
        end
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end