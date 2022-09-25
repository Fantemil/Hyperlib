local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Timber")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("AutoTree",function(bool)
    shared.toggle = bool
    AutoTree = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

f:Toggle("Place",function(bool)
    shared.toggle = bool
    Place = bool
end)

f:Toggle("Upgrades",function(bool)
    shared.toggle = bool
    Upgrades = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    spawn(function()
        if AutoTree == true then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
                    if v.Name == "Owner" then
                        if v.Value == game.Players.LocalPlayer then
                            for i,v1 in pairs(v.Parent:GetDescendants()) do
                                if string.find(v1.Name,"Tree_1") then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.MeshPart.CFrame.Position + Vector3.new(0,0,0))
                                    game:GetService("ReplicatedStorage").Communication.Remotes.HitTree:FireServer(tonumber(v.Parent.Name),tostring(v1.Parent.Name),tonumber(1))
                                end
                                if string.find(v1.Name,"Tree_2") then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.MeshPart.CFrame.Position + Vector3.new(0,0,0))
                                    game:GetService("ReplicatedStorage").Communication.Remotes.HitTree:FireServer(tonumber(v.Parent.Name),tostring(v1.Parent.Name),tonumber(2))
                                end
                                if string.find(v1.Name,"Tree_3") then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.MeshPart.CFrame.Position + Vector3.new(0,0,0))
                                    game:GetService("ReplicatedStorage").Communication.Remotes.HitTree:FireServer(tonumber(v.Parent.Name),tostring(v1.Parent.Name),tonumber(3))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    if AutoSell == true then
        for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.Name == "Owner" then
                if v.Value == game.Players.LocalPlayer then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent["0_0"].Sell.CFrame.Position + Vector3.new(0,0,0))
                end
            end
        end
    end
    
    spawn(function()
        if Place == true then
            for i,v in pairs(game:GetService("Workspace").Promps.Expansion:GetChildren()) do
                v.CanCollide = false
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
                wait()
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
            end
        end
    end)
    
    spawn(function()
        if Upgrades == true then
            for i,v in pairs(game:GetService("Players").LocalPlayer.datastats:GetChildren()) do
                game:GetService("ReplicatedStorage").Communication.Remotes.Upgrade:FireServer(v.Name)
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