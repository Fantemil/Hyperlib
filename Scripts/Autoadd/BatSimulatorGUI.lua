local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Bat Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
 
b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

b:Toggle("AutoTpCoins",function(bool)
    shared.toggle = bool
    AutoTpCoins = bool
end)

b:Toggle("AutoBoss",function(bool)
    shared.toggle = bool
    AutoBoss = bool
end)

f:Toggle("Bats",function(bool)
    shared.toggle = bool
    Bats = bool
end)

f:Toggle("DNA",function(bool)
    shared.toggle = bool
    DNA = bool
end)

f:Toggle("Jumps",function(bool)
    shared.toggle = bool
    Jumps = bool
end)

e:Toggle("AntiAfk",function(boosl)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Tp Shop",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").World.PadEffect.Shop7.CFrame.Position + Vector3.new(0,0,0))
end)

--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

pcall(function()
while wait() do
    if AutoClicker == true then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        tool:Activate()
    end
    
    if AutoSell == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").World.PadEffect.Sell1.CFrame.Position + Vector3.new(0,0,0))
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").World.PadEffect.Sell1.CFrame.Position + Vector3.new(100,100,100))
        wait()
    end
    
    if AutoBoss == true then
        for i,v in pairs(game:GetService("Workspace").Boss:GetDescendants()) do
            if v.ClassName == "Humanoid" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Head.CFrame.Position + Vector3.new(0,3,0))
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                tool:Activate()
            end
        end
    end
    
    if AutoTpCoins == true then
        for i,v in pairs(game:GetService("Workspace").CoinSpawns:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" then
                if AutoTpCoins == true then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.CFrame.Position + Vector3.new(0,0,0))
                    wait()
                end
            end
        end
    end
    
    if Bats == true then
        game:GetService("ReplicatedStorage").Knit.Services.ShopService.RE.buyAll:FireServer("Bats")
    end
    
    if DNA == true then
        game:GetService("ReplicatedStorage").Knit.Services.ShopService.RE.buyAll:FireServer("DNA")
    end
    
    if Jumps == true then
        game:GetService("ReplicatedStorage").Knit.Services.ShopService.RE.buyAll:FireServer("Jumps")
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end
end)