local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Gold Rush")
local b = w:CreateFolder("AutoFarm")
local f = w:CreateFolder("AutoBuy")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("AutoTpGold",function(bool)
    shared.toggle = bool
    AutoTpGold = bool
end)

f:Toggle("Space",function(bool)
    shared.toggle = bool
    Space = bool
end)

f:Toggle("Crystals",function(bool)
    shared.toggle = bool
    Crystals = bool
end)

f:Toggle("Boost",function(bool)
    shared.toggle = bool
    Boost = bool
end)

f:Toggle("Gloves",function(bool)
    shared.toggle = bool
    Gloves = bool
end)

f:Toggle("Paycheck",function(bool)
    shared.toggle = bool
    Paycheck = bool
end)

f:Toggle("Speedy",function(bool)
    shared.toggle = bool
    Speedy = bool
end)

f:Toggle("Drill",function(bool)
    shared.toggle = bool
    Drill = bool
end)

f:Toggle("Rebirth",function(bool)
    shared.toggle = bool
    Rebirth = bool
end)

e:Toggle("AntiAfk",function(boosl)
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


function AutoTpGold1()
    for i,v in pairs(game:GetService("Workspace").Islands:GetDescendants()) do
        if v.ClassName == "TextLabel" then
            if v.Text == game.Players.LocalPlayer.Name.."'s\nIsland" then
                for i,v1 in pairs(v.Parent.Parent.Parent.Parent:GetDescendants()) do
                    if v1.ClassName == "TouchTransmitter" then
                        if string.find(v1.Parent.Parent.Name,"Rock") then
                            for i,v2 in pairs(v1.Parent.Parent:GetChildren()) do
                                if v2.ClassName == "MeshPart" then
                                    if string.find(v2.Name,"Gold") then
                                        if v2.Transparency == 0 then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v2.CFrame.Position + Vector3.new(0,0,0))
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function Space1()
    for i,v in pairs(game:GetService("Workspace").Islands:GetDescendants()) do
        if v.ClassName == "TextLabel" then
            if v.Text == game.Players.LocalPlayer.Name.."'s\nIsland" then
                for i,v1 in pairs(v.Parent.Parent.Parent.Parent:GetDescendants()) do
                    if v1.ClassName == "TouchTransmitter" then
                        if string.find(v1.Parent.Parent.Name,"Purchase") then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text,",") then
                                local Cash1 = {}
                                Cash1[1] = game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text
                                Cash = string.gsub(Cash1[1],",","")
                                local Amount1 = {}
                                if string.find(v1.Parent.Parent.Text.BillboardGui.Amount.Text,",") then
                                    Amount1[1] = v1.Parent.Parent.Text.BillboardGui.Amount.Text
                                    Amount = string.gsub(Amount1[1],",","")
                                    if tonumber(Amount) <= tonumber(Cash) then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,0,0))
                                    end
                                end
                            end
                            
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text,",") then
                                local Cash1 = {}
                                Cash1[1] = game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text
                                Cash = string.gsub(Cash1[1],",","")
                                if not string.find(v1.Parent.Parent.Text.BillboardGui.Amount.Text,",") then
                                    if tonumber(v1.Parent.Parent.Text.BillboardGui.Amount.Text) <= tonumber(Cash) then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,0,0))
                                    end
                                end
                            end
                            
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text,",") then
                                if not string.find(v1.Parent.Parent.Text.BillboardGui.Amount.Text,",") then
                                    if tonumber(v1.Parent.Parent.Text.BillboardGui.Amount.Text) <= tonumber(game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text) then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,0,0))
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

function Crystals1()
    for i,v in pairs(game:GetService("Workspace").Islands:GetDescendants()) do
        if v.ClassName == "TextLabel" then
            if v.Text == game.Players.LocalPlayer.Name.."'s\nIsland" then
                for i,v1 in pairs(v.Parent.Parent.Parent.Parent:GetDescendants()) do
                    if v1.ClassName == "ProximityPrompt" then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text,",") then
                            local Cash1 = {}
                            Cash1[1] = game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text
                            Cash = string.gsub(Cash1[1],",","")
                            local Amount1 = {}
                            if string.find(v1.Parent.Parent.Text.BillboardGui.Amount.Text,",") then
                                Amount1[1] = v1.Parent.Parent.Text.BillboardGui.Amount.Text
                                local Amount = string.gsub(Amount1[1],",","")
                                if tonumber(Amount) <= tonumber(Cash) then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,0,0))
                                    wait(.1)
                                    fireproximityprompt(v1,0)
                                    wait(.1)
                                    fireproximityprompt(v1,1)
                                    wait(.1)
                                end
                            end
                        end
                        
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text,",") then
                            local Cash1 = {}
                            Cash1[1] = game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text
                            Cash = string.gsub(Cash1[1],",","")
                            if not string.find(v1.Parent.Parent.Text.BillboardGui.Amount.Text,",") then
                                if tonumber(v1.Parent.Parent.Text.BillboardGui.Amount.Text) <= tonumber(Cash) then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,0,0))
                                    wait(.1)
                                    fireproximityprompt(v1,0)
                                    wait(.1)
                                    fireproximityprompt(v1,1)
                                    wait(.1)
                                end
                            end
                        end
                        
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text,",") then
                            if not string.find(v1.Parent.Parent.Text.BillboardGui.Amount.Text,",") then
                                if tonumber(v1.Parent.Parent.Text.BillboardGui.Amount.Text) <= tonumber(game:GetService("Players").LocalPlayer.PlayerGui.Client.Gold.Gold.Number.GoldAmount.Text) then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.Parent.CFrame.Position + Vector3.new(0,0,0))
                                    wait(.1)
                                    fireproximityprompt(v1,0)
                                    wait(.1)
                                    fireproximityprompt(v1,1)
                                    wait(.1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

while wait() do
    spawn(function()
        if AutoTpGold == true then
            AutoTpGold1()
        end
    end)
    
    spawn(function()
        if Space == true then
            Space1()
        end
    end)
    
    spawn(function()
        if Crystals == true then
            Crystals1()
        end
    end)
    
    spawn(function()
        if Boost == true then
            game:GetService("ReplicatedStorage").Remotes.Server_Event:FireServer("PurchasePerk","Boost")
        end
    end)
    
    spawn(function()
        if Gloves == true then
            game:GetService("ReplicatedStorage").Remotes.Server_Event:FireServer("PurchasePerk","Gloves")
        end
    end)
    
    spawn(function()
        if Paycheck == true then
            game:GetService("ReplicatedStorage").Remotes.Server_Event:FireServer("PurchasePerk","Paycheck")
        end
    end)
    
    spawn(function()
        if Speedy == true then
            game:GetService("ReplicatedStorage").Remotes.Server_Event:FireServer("PurchasePerk","Speedy")
        end
    end)
    
    spawn(function()
        if Drill == true then
            game:GetService("ReplicatedStorage").Remotes.Server_Event:FireServer("PurchasePerk","Drill")
        end
    end)
    
    spawn(function()
        if Rebirth == true then
            game:GetService("ReplicatedStorage").Remotes.Server_Event:FireServer("PurchasePerk","Rebirth")
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