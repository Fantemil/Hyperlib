 local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Delivery Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("Get Items")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
--Toggle
b:Toggle("PickUpBoxesSpawn",function(bool)
    shared.toggle = bool
    PickUpBoxesSpawn = bool
end)

b:Toggle("PlaceBoxesBase",function(bool)
    shared.toggle = bool
    PlaceBoxesBase = bool
end)

b:Toggle("PickUpBoxesBase",function(bool)
    shared.toggle = bool
    PickUpBoxesBase = bool
end)

b:Toggle("AutoSellBoxes",function(bool)
    shared.toggle = bool
    AutoSellBoxes = bool
end)

local Jack = "Starter Jack"
Jacks = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Jacks:GetChildren()) do
    Jacks[i] = v.Name
end

f:Dropdown("Select Jack",Jacks,true,function(mob)
    Jack = mob
end)

f:Button("Get Juck",function()
    game:GetService("ReplicatedStorage").Remotes.SelectItem:FireServer("Jacks",Jack)
end)

local Vehicle = "Starter Van"
Vehicles = {}
for i,v in pairs(game:GetService("ReplicatedStorage").CarModels:GetChildren()) do
    Vehicles[i] = v.Name
end

f:Dropdown("Select Vehicle",Vehicles,true,function(mob)
    Vehicle = mob
end)

f:Button("Get Vehicle",function()
   game:GetService("ReplicatedStorage").Remotes.SelectItem:FireServer("Vehicles",Vehicle)
end)

f:Button("Get Robux Shelf",function()
    for i=1,4 do
        game:GetService("ReplicatedStorage").Remotes.SelectItem:FireServer("Racks","Starter Pack Shelf")
    end
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
    if PickUpBoxesSpawn == true then
        string = game:GetService("Players").LocalPlayer.PlayerGui.Main.Jack.Capacity.Text
        a,b = string:match("(.+)/(.+)")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-459.254, 4.01093, -10.6704)
        for i,v in pairs(game:GetService("Workspace").GameLogic.SpawnedBoxes:GetChildren()) do
            if a ~= b then
                game:GetService("ReplicatedStorage").Remotes.PickupBox:InvokeServer(v)
            end
        end
    end
    
    if PlaceBoxesBase == true then
        for i,v in pairs(game:GetService("Workspace").GameLogic.Warehouses:GetDescendants()) do
            if v.Name == "Owner" and v.ClassName == "ObjectValue" then
                if v.Value == game.Players.LocalPlayer then
                    for i,v1 in pairs(v.Parent.Racks:GetChildren()) do
                        string = v1.Center.RackCapacity.Capacity.Text
                        a,b = string:match("(.+)/(.+)")
                        if a ~= b then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Center.Position)
                            game:GetService("ReplicatedStorage").Remotes.StackRack:InvokeServer(v1)
                        end
                    end
                end
            end
        end
    end
    
    if PickUpBoxesBase == true then
        for i,v in pairs(game:GetService("Workspace").GameLogic.Warehouses:GetDescendants()) do
            if v.Name == "Owner" and v.ClassName == "ObjectValue" then
                if v.Value == game.Players.LocalPlayer then
                    for i,v1 in pairs(v.Parent.Racks:GetChildren()) do
                        for i,v2 in pairs(v1.Boxes:GetChildren()) do
                            string = game:GetService("Players").LocalPlayer.PlayerGui.Main.Carry.Capacity.Text
                            a,b = string:match("(.+)/(.+)")
                            if a ~= b then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v2.MeshPart.Position)
                                game:GetService("ReplicatedStorage").Remotes.PickupBox:InvokeServer(v2)
                            end
                        end
                    end
                end
            end
        end
    end
    
    if AutoSellBoxes == true then
        for i,v in pairs(game:GetService("Workspace").GameLogic.DeliveryPoints:GetChildren()) do
            game:GetService("ReplicatedStorage").Remotes.SellBox:InvokeServer(v)
        end
    end
    
    if BuyRacks == true then
        game:GetService("ReplicatedStorage").Remotes.SelectItem:FireServer("Racks",Rack)
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end