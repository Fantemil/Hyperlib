local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Planet Mining Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
--Toggle
b:Toggle("AutoTpOrbs",function(bool)
    shared.toggle = bool
    AutoTpOrbs = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

e:Toggle("AutoClaimAchiev",function(bool)
    shared.toggle = bool
    AutoClaimAchiev = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Get Inf Backpack",function()
    for i,v in pairs(game:GetService("ReplicatedStorage").ShopItems.BackpackShop:GetChildren()) do
        game:GetService("ReplicatedStorage").Remotes.CIient:FireServer("BuyBackpack",v.Name)
    end
    game:GetService("ReplicatedStorage").Remotes.Inventory.equipCategory:FireServer("Infinite Backpack","Infinite Backpack","Backpacks")
end)

f:Toggle("Common Chest",function(bool)
    shared.toggle = bool
    Common = bool
end)

f:Toggle("Elite Chest",function(bool)
    shared.toggle = bool
    Elite = bool
end)

f:Toggle("Goldy Chest",function(bool)
    shared.toggle = bool
    Goldy = bool
end)

f:Button("Vacuum",function()
    for i,v in pairs(game:GetService("ReplicatedStorage").ShopItems.VacuumShop:GetChildren()) do
        game:GetService("ReplicatedStorage").Remotes.CIient:FireServer("BuyVacuum",v.Name)
    end
end)

f:Button("Backpack",function()
    for i,v in pairs(game:GetService("ReplicatedStorage").ShopItems.BackpackShop:GetChildren()) do
        game:GetService("ReplicatedStorage").Remotes.CIient:FireServer("BuyBackpack",v.Name)
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
    if AutoTpOrbs == true then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)

while wait() do
    if Goldy == true then
        game:GetService("ReplicatedStorage").Remotes.Chest.purchaseChest:FireServer("Godly Chest")
    end
    
    if Elite == true then
        game:GetService("ReplicatedStorage").Remotes.Chest.purchaseChest:FireServer("Elite Chest")
    end
    
    if Common == true then
        game:GetService("ReplicatedStorage").Remotes.Chest.purchaseChest:FireServer("Common Chest")
    end

    if AutoClaimAchiev == true then
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.UI.StarAchievements.ScrollingFrame:GetChildren()) do
            game:GetService("ReplicatedStorage").Remotes.Achievements:FireServer(v.Name)
        end
    end
    
    if AutoTpOrbs == true then
        for i,v in pairs(game:GetService("Workspace").Mine.Ores:GetChildren()) do
            for i,v1 in pairs(v:GetChildren()) do
                if v1.ClassName == "MeshPart" then
                    local tweenInfo = TweenInfo.new(
                    0
                    )
                    local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                    v1.Position
                    )})
                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = true 
                    t:Play()
                    wait(0)
                    game.Players.LocalPlayer.Character.PrimaryPart.Anchored = false
                    wait(5)
                end
            end
        end
    end
    
    if AutoSell == true then
        game:GetService("ReplicatedStorage").Remotes.CIient:FireServer("SellEverything")
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end