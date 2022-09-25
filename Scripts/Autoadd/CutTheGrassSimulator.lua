local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Cut The Grass")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
local Bosses = "The Gnomsky Brothers"

MyTableBoss = {}
for i,v in pairs(game:GetService("Workspace").Bosses:GetChildren()) do
    MyTableBoss[i] = v.Name
end
--Toggle
b:Toggle("AutoGrantGrass",function(bool)
    shared.toggle = bool
    AutoGrantGrass = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

b:Toggle("AutoSellFull",function(bool)
    shared.toggle = bool
    AutoSellFull = bool
end)

b:Toggle("AutoRebirth",function(bool)
    shared.toggle = bool
    AutoRebirth = bool
end)

b:Toggle("AutoCollectCoins",function(bool)
    shared.toggle = bool
    AutoCollectCoins = bool
end)

b:Toggle("Boss",function(bool)
    shared.toggle = bool
    Boss = bool
end)

b:Dropdown("Bosses",MyTableBoss,true,function(mob)
    Bosses = mob
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
    if AutoRebirth == true then
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:FireServer()
    end
    
    if Boss == true then
        for i,v in pairs(game:GetService("Workspace").Bosses:GetChildren()) do
            if v.Name == Bosses then
                for i,v1 in pairs(v:GetDescendants()) do
                    if Boss == true then
                        if v1.Name == "LeftHand" then
                            local tweenInfo = TweenInfo.new(
                            .0000001
                            )
                            local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                            v1.CFrame.Position + Vector3.new(0,0,0)
                            )})
                            t:Play()
                            wait(.0000001)
                            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.AttackService.RenderAttack:InvokeServer(v)
                            wait(.0000001)
                        end
                    end
                end
            end
        end
    end
    
    if AutoGrantGrass == true then
        local tweenInfo = TweenInfo.new(
        .0000001
        )
        local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
        -71.7125626, 22, -5.95691109, 1, 0, 0, 0, 1, 0, 0, 0, 1
        )})
        if AutoGrantGrass == true then
            t:Play()
            wait(.0000001)
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.MowingService.GrantGrass:FireServer(CFrame.new(-71.7125626, 22, -5.95691109, 1, 0, 0, 0, 1, 0, 0, 0, 1))
            wait(.0000001)
        end
    end
    
    if AutoSell == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Map.Main.Middle["Sell Sack"].Sell.Circle.Particles.CFrame.Position + Vector3.new(0,0,0))
        wait(.0000001)
    end
    
    if AutoSellFull == true then
        string = game:GetService("Players").LocalPlayer.PlayerGui.Main["Bars and Buttons"].Bars.Grass.Bar.Value.Text
        a,b = string:match("(.+)/(.+)")
        if a == b then
            if AutoSellFull  == true then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Map.Main.Middle["Sell Sack"].Sell.Circle.Particles.CFrame.Position + Vector3.new(0,0,0))
                wait(.0000001)
            end
        end
    end
    
    if AutoCollectCoins == true then
        for i,v in pairs(game:GetService("Workspace").Debris:GetDescendants()) do
            if v.Name == "HumanoidRootPart" then
                if AutoCollectCoins == true then
                    local tweenInfo = TweenInfo.new(
                    .0000001
                    )
                    local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                    v.CFrame.Position + Vector3.new(0,0,0)
                    )})
                    t:Play()
                    wait(.0000001)
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