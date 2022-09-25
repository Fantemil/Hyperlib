local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Cooking Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
--Toggle
b:Toggle("AutoCollectFood",function(bool)
    shared.toggle = bool
    AutoCollectFood = bool
end)

b:Toggle("AutoPutInPot",function(bool)
    shared.toggle = bool
    AutoPutInPot = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

f:Toggle("Rebirth",function(bool)
    shared.toggle = bool
    Rebirth = bool
end)

e:Toggle("InfMoney",function(bool)
    shared.toggle = bool
    InfMoney = bool
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
    if InfMoney == true then
        game:GetService("ReplicatedStorage").RemoteEvent.AddItemsFromClient:FireServer({["Coin"] = 9999999999999999*99999999,["Pot_1"] = 1},"shop_msg")
    end
    
    if Rebirth == true then
        game:GetService("ReplicatedStorage").RemoteEvent.BeginRebirth:FireServer(game:GetService("Players").LocalPlayer)
    end

    if AutoPutInPot == true then
        for i,v in pairs(game:GetService("Workspace").Store:GetDescendants()) do
            if v.Name == "PotId" then
                if AutoPutInPot == true then
                    game:GetService("ReplicatedStorage").RemoteEvent.potStateChange:FireServer(v.Value)
                end
            end
        end
    end
    
    if AutoCollectFood == true then
        for i,v in pairs(game:GetService("Workspace").ConveyorFoods:GetChildren()) do
            if AutoCollectFood == true then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.RootPart.CFrame.Position + Vector3.new(0,0,0))
                wait(.1)
            end
        end
    end
        
    if AutoSell == true then
        game:GetService("ReplicatedStorage").RemoteEvent.Eat:FireServer()
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end