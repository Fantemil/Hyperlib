local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Maxgat5/UiLib/main/lua')))()
local w = library:CreateWindow("Wacky Wizards")
local b = w:CreateFolder("Potions")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")
SelectedItem = "Brain"
Items = {}
for i,v in pairs(game:GetService("Workspace").PlayerCauldrons:GetDescendants()) do
    if v.ClassName == "TextLabel" then
        if v.Text == "YOUR CAULDRON" then
            for i,v1 in pairs(game:GetService("Workspace").Interactions[v.Parent.Parent.Parent.Name]:GetChildren()) do
                if v1.ClassName == "Model" then
                    table.insert(Items,v1.Name)
                end
            end
        end
    end
end

b:Dropdown("Select Item",Items,true,function(mob)
    SelectedItem = mob
end)

b:Button("Put Into Cauldron",function()
    for i,v in pairs(game:GetService("Workspace").PlayerCauldrons:GetDescendants()) do
        if v.ClassName == "TextLabel" then
            if v.Text == "YOUR CAULDRON" then
                local args = {
                    [1] = "PickUpItem",
                    [2] = workspace.Interactions[v.Parent.Parent.Parent.Name][SelectedItem],
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                
                local args = {
                    [1] = "FireAllClients",
                    [2] = "WeldItemToHand",
                    [3] = workspace.Interactions[v.Parent.Parent.Parent.Name][SelectedItem].Main.GripAttachment,
                    [4] = workspace[game.Players.LocalPlayer.Name].RightHand.RightGripAttachment,
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                
                local args = {
                    [1] = "FireAllClients",
                    [2] = "UnweldItemFromHand",
                    [3] = workspace.Interactions[v.Parent.Parent.Parent.Name][SelectedItem].Main,
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                
                local args = {
                    [1] = "AddIngredientToCauldron",
                    [2] = workspace.PlayerCauldrons[v.Parent.Parent.Parent.Name].CauldronSet.Cauldron,
                    [3] = workspace.Interactions[v.Parent.Parent.Parent.Name][SelectedItem],
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                
                local args = {
                    [1] = "FireAllClients",
                    [2] = "EmitParticles",
                    [3] = workspace.PlayerCauldrons[v.Parent.Parent.Parent.Name].CauldronSet.Cauldron.Contents.ItemAdded,
                    [4] = {
                        ["Duration"] = 0.8,
                    },
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            end
        end
    end
end)

b:Button("Spawn Potion",function()
    for i,v in pairs(game:GetService("Workspace").PlayerCauldrons:GetDescendants()) do
        if v.ClassName == "TextLabel" then
            if v.Text == "YOUR CAULDRON" then
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("AttemptBottlePotion",workspace.PlayerCauldrons[v.Parent.Parent.Parent.Name].CauldronSet.Cauldron)
            end
        end
    end
end)

b:Button("Drain Cauldron",function()
    for i,v in pairs(workspace.Interactions:GetChildren()) do
        local args = {
            [1] = "PickUpPotion",
            [2] = v,
        }
        
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end
    for i,v in pairs(game:GetService("Workspace").PlayerCauldrons:GetDescendants()) do
        if v.ClassName == "TextLabel" then
            if v.Text == "YOUR CAULDRON" then
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("AttemptDrainCauldron",workspace.PlayerCauldrons[v.Parent.Parent.Parent.Name].CauldronSet.Cauldron)
            end
        end
    end
end)

b:Button("Reset Character",function()
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("AttemptResetPlayer")
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

e:Toggle("Potion Randomizer",function(bool)
    shared.toggle = bool
    PotionRandomizer = bool
end)

--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)

u:Button("Discord Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    pcall(function()
        if PotionRandomizer == true then
            Items = {}
            for i,v in pairs(game:GetService("Workspace").PlayerCauldrons:GetDescendants()) do
                if v.ClassName == "TextLabel" then
                    if v.Text == "YOUR CAULDRON" then
                        for i,v1 in pairs(game:GetService("Workspace").Interactions[v.Parent.Parent.Parent.Name]:GetChildren()) do
                            if v1.ClassName == "Model" then
                                table.insert(Items,v1.Name)
                            end
                        end
                    end
                end
            end
            
            for i,v1 in pairs(Items) do
                local randomnumber = math.random(1,i)
                for i,v in pairs(game:GetService("Workspace").PlayerCauldrons:GetDescendants()) do
                    if v.ClassName == "TextLabel" then
                        if v.Text == "YOUR CAULDRON" then
                            local args = {
                                [1] = "PickUpItem",
                                [2] = workspace.Interactions[v.Parent.Parent.Parent.Name][Items[randomnumber]],
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                            
                            local args = {
                                [1] = "FireAllClients",
                                [2] = "WeldItemToHand",
                                [3] = workspace.Interactions[v.Parent.Parent.Parent.Name][Items[randomnumber]].Main.GripAttachment,
                                [4] = workspace[game.Players.LocalPlayer.Name].RightHand.RightGripAttachment,
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                            
                            local args = {
                                [1] = "FireAllClients",
                                [2] = "UnweldItemFromHand",
                                [3] = workspace.Interactions[v.Parent.Parent.Parent.Name][Items[randomnumber]].Main,
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                            
                            local args = {
                                [1] = "AddIngredientToCauldron",
                                [2] = workspace.PlayerCauldrons[v.Parent.Parent.Parent.Name].CauldronSet.Cauldron,
                                [3] = workspace.Interactions[v.Parent.Parent.Parent.Name][Items[randomnumber]],
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                            
                            local args = {
                                [1] = "FireAllClients",
                                [2] = "EmitParticles",
                                [3] = workspace.PlayerCauldrons[v.Parent.Parent.Parent.Name].CauldronSet.Cauldron.Contents.ItemAdded,
                                    [4] = {
                                    ["Duration"] = 0.8,
                                },
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                        end
                    end
                end
            end
            wait(3)
            for i,v in pairs(game:GetService("Workspace").PlayerCauldrons:GetDescendants()) do
                if v.ClassName == "TextLabel" then
                    if v.Text == "YOUR CAULDRON" then
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("AttemptBottlePotion",workspace.PlayerCauldrons[v.Parent.Parent.Parent.Name].CauldronSet.Cauldron)
                    end
                end
            end
            wait(3)
            for i,v in pairs(workspace.Interactions:GetChildren()) do
                local args = {
                    [1] = "PickUpPotion",
                    [2] = v,
                }
                
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            end
            for i,v in pairs(game:GetService("Workspace").PlayerCauldrons:GetDescendants()) do
                if v.ClassName == "TextLabel" then
                    if v.Text == "YOUR CAULDRON" then
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer("AttemptDrainCauldron",workspace.PlayerCauldrons[v.Parent.Parent.Parent.Name].CauldronSet.Cauldron)
                    end
                end
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