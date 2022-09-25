local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("LankyBox Simulator")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
SelectedEgg = "Boxy"
Egg = {}
for i,v in pairs(game:GetService("Workspace").BoxCapsules:GetChildren()) do
    if not table.find(Egg,v.Name) then
        table.insert(Egg,v.Name)
    end
end
SelectedMonster = "Bull"
Monster = {}
for i,v in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
    if not table.find(Monster,v.Name) then
        table.insert(Monster,v.Name)
    end
end

b:Toggle("AutoTpMonster",function(bool)
    shared.toggle = bool
    AutoTpMonster = bool
end)

b:Dropdown("Select Monster",Monster,true,function(mob)
    SelectedMonster = mob
end)

b:Toggle("AutoTpHearts",function(bool)
    shared.toggle = bool
    heartcollect = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    autosell = bool
end)

f:Toggle("Egg",function(bool)
    shared.toggle = bool
    Egg = bool
end)

f:Dropdown("Select Egg",Egg,true,function(mob)
    SelectedEgg = mob
end)

f:Toggle("Backpack",function(bool)
    shared.toggle = bool
    Backpack = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Equip Pets",function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerData.Pets:GetChildren()) do
        spawn(function()
            game:GetService("ReplicatedStorage").Events.EquipPet:InvokeServer(v,true)
        end)
    end
end)

e:Button("Unequip Pets",function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerData.Pets:GetChildren()) do
        spawn(function()
            game:GetService("ReplicatedStorage").Events.EquipPet:InvokeServer(v,false)
        end)
    end
end)

e:Button("Dupe Pets",function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerData.Pets:GetChildren()) do
        spawn(function()
            game:GetService("ReplicatedStorage").Events.EquipPet:InvokeServer(v,false)
        end)
        spawn(function()
            game:GetService("ReplicatedStorage").Events.EquipPet:InvokeServer(v,true)
        end)
        spawn(function()
            game:GetService("ReplicatedStorage").Events.EquipPet:InvokeServer(v,false)
        end)
        spawn(function()
            game:GetService("ReplicatedStorage").Events.EquipPet:InvokeServer(v,true)
        end)
    end
end)
--Credits
u:Button("Moepi#1149",function()
    setclipboard("Moepi#1149")
end)

u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)

u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

game:GetService('RunService').Stepped:connect(function()
    if AutoTpMonster == true then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)

while wait() do
    pcall(function()
        if heartcollect == true then
            for i,v in pairs(game:GetService("Workspace").Hearts:GetChildren()) do
                if not heartcollect then break end
                if v.Name == "RedHeart" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.Position)
                    wait()
                    game:GetService("ReplicatedStorage").Events.CollectHeart:InvokeServer(game:GetService("Players").LocalPlayer.Hearts.RedHeart)
                    wait()
                    spawn(function()
                        if autosell == true then
                            game:GetService("ReplicatedStorage").Events.SellHearts:InvokeServer()
                        end
                    end)
                elseif v.Name == "BlueHeart" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.Position)
                    wait()
                    game:GetService("ReplicatedStorage").Events.CollectHeart:InvokeServer(game:GetService("Players").LocalPlayer.Hearts.BlueHeart)
                    wait()
                    spawn(function()
                        if autosell == true then
                            game:GetService("ReplicatedStorage").Events.SellHearts:InvokeServer()
                        end
                    end)
                elseif v.Name == "GreenHeart" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.Position)
                    wait()
                    game:GetService("ReplicatedStorage").Events.CollectHeart:InvokeServer(game:GetService("Players").LocalPlayer.Hearts.GreenHeart)
                    wait()
                    spawn(function()
                        if autosell == true then
                            game:GetService("ReplicatedStorage").Events.SellHearts:InvokeServer()
                        end
                    end)
                end
                spawn(function()
                    if AntiAfk == true then
                        local bb=game:service'VirtualUser'
                        bb:CaptureController()
                        bb:ClickButton2(Vector2.new())
                    end
                end)
                spawn(function()
                    if Egg == true then
                        game:GetService("ReplicatedStorage").Events.BuyBox:InvokeServer(tostring(SelectedEgg),1)
                    end
                end)
                spawn(function()
                    if AutoTpMonster == true then
                        local tweenInfo = TweenInfo.new(
                        0
                        )
                        local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
                        game:GetService("Workspace").Monsters[SelectedMonster].HumanoidRootPart.CFrame.Position + Vector3.new(0,10,0)
                        )})
                        t:Play()
                    end
                end)
                spawn(function()
                    if Backpack == true then
                        for i,v in pairs(game:GetService("ReplicatedStorage").Backpacks:GetChildren()) do
                            game:GetService("ReplicatedStorage").Events.BuyBackpack:FireServer(i)
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        if AutoTpMonster == true then
            local tweenInfo = TweenInfo.new(
            0
            )
            local t = game.TweenService:Create(game.Players.LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(
            game:GetService("Workspace").Monsters[SelectedMonster].HumanoidRootPart.CFrame.Position + Vector3.new(0,10,0)
            )})
            t:Play()
        end
    end)
    
    spawn(function()
        if autosell == true then
            game:GetService("ReplicatedStorage").Events.SellHearts:InvokeServer()
        end
    end)
    
    spawn(function()
        if Egg == true then
            game:GetService("ReplicatedStorage").Events.BuyBox:InvokeServer(tostring(SelectedEgg),1)
        end
    end)
    
    spawn(function()
        if Backpack == true then
            for i,v in pairs(game:GetService("ReplicatedStorage").Backpacks:GetChildren()) do
                game:GetService("ReplicatedStorage").Events.BuyBackpack:FireServer(i)
            end
        end
    end)
    
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end)
end