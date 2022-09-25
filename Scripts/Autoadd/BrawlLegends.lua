local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Brawl Legends")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
--Toggle
b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

b:Toggle("AutoCollectGems",function(bool)
    shared.toggle = bool
    AutoCollectGems = bool
end)

b:Toggle("AutoFlag",function(bool)
    shared.toggle = bool
    AutoFlag = bool
end)

b:Toggle("AutoBoss",function(bool)
    shared.toggle = bool
    AutoBoss = bool
end)

f:Toggle("Weapons",function(bool)
    shared.toggle = bool
    Weapons = bool
end)

f:Toggle("DNA",function(bool)
    shared.toggle = bool
    DNA = bool
end)

f:Toggle("Auras",function(bool)
    shared.toggle = bool
    Auras = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Dropdown("OpenShop",{"Spawn","Atlantis","Fairy","Russo"},true,function(World)
    for i,v in pairs(game:GetService("Workspace").Map.Touch.ShopTouches:GetChildren()) do
        if v.Name == World then
            firetouchinterest(game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart, v, 1)
            wait(.1)
            firetouchinterest(game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart, v, 0)
            wait(.1)
        end
    end
end)

e:Button("Use All Codes",function()
    for i,v in pairs(game:GetService("Workspace").Map.CodesLeaderboard.Model.Board.SurfaceGui.Frame:GetChildren()) do
        game:GetService("ReplicatedStorage").Events.RedeemCode:InvokeServer(v.Name)
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
    if AutoFlag == true then
        for i,v in pairs(game:GetService("Workspace").Map.Flags:GetDescendants()) do
            if AutoFlag == true then
                if v.Name == "StatusLabel" then
                    if v.Text ~= "Captured by: "..game.Players.LocalPlayer.Name then
                        game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(v.Parent.Parent.Parent.Parent.Circle.CFrame.Position + Vector3.new(0,0,100))
                        wait(.1)
                        game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(v.Parent.Parent.Parent.Parent.Circle.CFrame.Position + Vector3.new(0,0,0))
                        wait(15)
                    end
                end
            end
        end
    end

    if Auras == true then
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Hud.Interface.AuraShop.ShopPanel.Frame:GetChildren()) do
            if v.ClassName == "ImageLabel" then
                game:GetService("ReplicatedStorage").Events.BuySkill:InvokeServer(v.Name,"Auras","Buy")
            end
        end
    end

    if AutoSell == true then
        number = 0
        for i,v in pairs(game:GetService("Workspace").Map.Sells:GetChildren()) do
            number = number + 1
        end
        for i,v in pairs(game:GetService("Workspace").Map.Sells:GetChildren()) do
            if i == number then
                for i,v1 in pairs(v:GetChildren()) do
                    if v1.Name == "SellTouch" then
                        firetouchinterest(game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart, v1, 1)
                        wait(.1)
                        firetouchinterest(game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart, v1, 0)
                        wait(.1)
                    end
                end
            end
        end
    end

    if AutoBoss == true then
        for i,v in pairs(game:GetService("Workspace").Map.Bosses:GetDescendants()) do
            if v.ClassName == "Humanoid" then
                game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(v.Parent.Head.CFrame.Position + Vector3.new(0,3,0))
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                game.Workspace[game.Players.LocalPlayer.Name].Humanoid:EquipTool(tool)
                game:service'VirtualUser':ClickButton1(Vector2.new())
            end
        end
    end
    
    if AutoCollectGems == true then
        for i,v in pairs(game:GetService("Workspace").Spawns.Main.Gems:GetChildren()) do
            v.CFrame = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame + Vector3.new(0,0,0)
        end
    end
    
    if Weapons == true then
        for i,v in pairs(game:GetService("Workspace").Map.Touch.ShopTouches:GetChildren()) do
            game:GetService("ReplicatedStorage").Events.BuyItem:InvokeServer("Weapon","Weapon","BuyAll",v.Name)
        end
    end
    
    if DNA == true then
        for i,v in pairs(game:GetService("Workspace").Map.Touch.ShopTouches:GetChildren()) do
            game:GetService("ReplicatedStorage").Events.BuyItem:InvokeServer("DNA","DNA","BuyAll",v.Name)
        end
    end
    
    if AutoClicker == true then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool")
        game:GetService("ReplicatedStorage").Events.SwingEvent:FireServer(tool.Name)
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end