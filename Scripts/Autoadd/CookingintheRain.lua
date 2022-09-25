local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Cooking in the Rain")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
local Cook;
local CookFast;
--Toggle
b:Toggle("Cook",function(bool)
    shared.toggle = bool
    TCook = bool
end)

b:Dropdown("Cook",{"Bread","Omelette","Cookies"},true,function(mob)
    Cook = mob
end)

b:Toggle("CookFast",function(bool)
    shared.toggle = bool
    TCookFast = bool
end)

b:Dropdown("CookFast",{"BreadFast","OmeletteFast","CookiesFast"},true,function(mob)
    CookFast = mob
end)

b:Toggle("GiveFoodToSmurfs",function(bool)
    shared.toggle = bool
    GiveFoodToSmurfs = bool
end)

b:Toggle("AutoCollectDrop",function(bool)
    shared.toggle = bool
    AutoCollectDrop = bool
end)

b:Toggle("AutoSellFood",function(bool)
    shared.toggle = bool
    AutoSellFood = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Inf Backpack",function()
    for i=1,9999 do
        game:GetService("ReplicatedStorage").Events.EatInventoryEvent:FireServer({"Strawberry"})
    end
end)

--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

game:GetService('RunService').Stepped:connect(function()
    if TCookFast == true then
        if CookFast == "BreadFast" then
            game:GetService("ReplicatedStorage").Cook:InvokeServer("Bread",workspace.Base.Kitchen.KitchenApplianceRow.Oven)
        end
        
        if CookFast == "OmeletteFast" then
            game:GetService("ReplicatedStorage").Cook:InvokeServer("Omelette",workspace.Base.Kitchen.KitchenApplianceRow.Stove)
        end
        
        if CookFast == "CookiesFast" then
            game:GetService("ReplicatedStorage").Cook:InvokeServer("Cookies",workspace.Base.Kitchen.KitchenApplianceRow.Oven)
        end
    end
end)

while wait() do
    if TCook == true then
        if Cook == "Cookies" then
            game:GetService("ReplicatedStorage").Cook:InvokeServer("Cookies",workspace.Base.Kitchen.KitchenApplianceRow.Oven)
        end
        
        if Cook == "Omelette" then
            game:GetService("ReplicatedStorage").Cook:InvokeServer("Omelette",workspace.Base.Kitchen.KitchenApplianceRow.Stove)
        end
        
        if Cook == "Bread" then
            game:GetService("ReplicatedStorage").Cook:InvokeServer("Bread",workspace.Base.Kitchen.KitchenApplianceRow.Oven)
        end
    end
    
    if GiveFoodToSmurfs == true then
        for i,v in pairs(game:GetService("Workspace").Base.FoodStallSites:GetDescendants()) do
            if v.Name == "FrontSign" and v.ClassName == "Part" then
                if v.SurfaceGui.TextLabel.Text == game.Players.LocalPlayer.Name.."'s Stall" then
                    v.Parent.Parent.ServeStepper.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
                    wait(.1)
                    v.Parent.Parent.ServeStepper.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
                    wait(2.1)
                end
            end
        end
    end
    
    if AutoCollectDrop == true then
        for i,v in pairs(game:GetService("Workspace").Base.IngredientDrops:GetDescendants()) do
            if v.ClassName == "Part" or v.ClassName == "MeshPart" then
                v.CanCollide = false
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
            end
        end
    end
    
    if AutoSellFood == true then
        for i,v in pairs(game:GetService("Workspace").Base.Merchant.MerchantSignboards:GetChildren()) do
            for i,v1 in pairs(v:GetChildren()) do
                if v1.ClassName == "Part" or v1.ClassName == "MeshPart" then
                    v1.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
                    wait(.1)
                    v1.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
                    wait(1)
                end
            end
        end
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end