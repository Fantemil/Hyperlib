local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Gold Factory Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 
--Toggle
b:Toggle("AutoCollectGold",function(bool)
    shared.toggle = bool
    AutoCollectGold = bool
end)
 
b:Toggle("AutoPutInCraft",function(bool)
    shared.toggle = bool
    AutoPutInCraft = bool
end)
 
b:Toggle("AutoCollectFromCraft",function(bool)
    shared.toggle = bool
    AutoCollectFromCraft = bool
end)
 
b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Button("Rejoin",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)
 
while wait() do
    if AutoCollectGold == true then
        for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.Name == "TextLabel" then
                if v.Text == game.Players.LocalPlayer.Name.."'s hut" then
                    for i,v1 in pairs(v.Parent.Parent.Parent.Parent.Parent.Crafters:GetDescendants()) do
                        if v1.Name == "FurnaceGlass" then
                            if v1.Transparency == 0 then
                                for i,v5 in pairs(game:GetService("Workspace").GoldNuggets:GetChildren()) do
                                    string = game:GetService("Players").LocalPlayer.PlayerGui.PlayerDetails.Holder.Details.BasketBack.AmountLabel.Text
                                    a,b = string:match("(.+)/(.+)")
                                    if a ~= b then
                                        if AutoCollectGold == true then
                                            game:GetService("ReplicatedStorage").Remotes.Events.CollectNugget:FireServer(v5.Name)
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
    
    if AutoPutInCraft == true then
        for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.Name == "TextLabel" then
                if v.Text == game.Players.LocalPlayer.Name.."'s hut" then
                    for i,v1 in pairs(v.Parent.Parent.Parent.Parent.Parent.Crafters:GetChildren()) do
                        for i,v2 in pairs(v1:GetDescendants()) do
                            if v2.Name == "Label" and v2.Parent.Name == "Timer" then
                                if v2.Text ~= 0 then
                                    if AutoPutInCraft == true then
                                        game:GetService("ReplicatedStorage").Remotes.Events.CraftMachine:FireServer("Add",v1)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    if AutoCollectFromCraft == true then
        for i,v in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if v.Name == "TextLabel" then
                if v.Text == game.Players.LocalPlayer.Name.."'s hut" then
                    for i,v1 in pairs(v.Parent.Parent.Parent.Parent.Parent.Crafters:GetChildren()) do
                        for i,v2 in pairs(v1:GetDescendants()) do
                            if v2.Name == "Label" and v2.Parent.Name == "Quantity" then
                                string = v2.Text
                                a,b = string:match("(.+)/(.+)")
                                if a == b then
                                    string1 = game:GetService("Players").LocalPlayer.PlayerGui.PlayerDetails.Holder.Details.BasketBack.AmountLabel.Text
                                    a1,b1 = string1:match("(.+)/(.+)")
                                    if a1 ~= b1 then
                                        if AutoCollectFromCraft == true then
                                            game:GetService("ReplicatedStorage").Remotes.Events.CraftMachine:FireServer("Collect",v1)
                                        end
                                    end
                                end
                            end
                            if v2.Name == "Label" and v2.Parent.Name == "Ready" then
                                if v2.Text == "READY" then
                                    string = game:GetService("Players").LocalPlayer.PlayerGui.PlayerDetails.Holder.Details.BasketBack.AmountLabel.Text
                                    a,b = string:match("(.+)/(.+)")
                                    if a ~= b then
                                        if AutoCollectFromCraft == true then
                                            game:GetService("ReplicatedStorage").Remotes.Events.CraftMachine:FireServer("Collect",v1)
                                        end
                                    end
                                end
                            end
                            if v2.Name == "Label" and v2.Parent.Name == "Timer" then
                                if v2.Text == 0 then
                                    string = game:GetService("Players").LocalPlayer.PlayerGui.PlayerDetails.Holder.Details.BasketBack.AmountLabel.Text
                                    a,b = string:match("(.+)/(.+)")
                                    if a ~= b then
                                        if AutoCollectFromCraft == true then
                                            game:GetService("ReplicatedStorage").Remotes.Events.CraftMachine:FireServer("Collect",v1)
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
    
    if AutoSell == true then
        game:GetService("ReplicatedStorage").Remotes.Events.VaultInteraction:FireServer()
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end