local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()

local Window = Library:CreateWindow({
    Title = "AUT - Popcat's GUI",
    Center = true, 
    AutoShow = true,
})


local Tabs = {
    Main = Window:AddTab('Main'), 
    ['Farm'] = Window:AddTab('Auto-Farm'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Player')
local LFarm = Tabs.Farm:AddLeftGroupbox('NPCs')
LeftGroupBox:AddDivider()

LeftGroupBox:AddSlider('Speed', {
    Text = 'Speed',

    Default = 16,
    Min = 16,
    Max = 200,
    Rounding = 0,

    Compact = false,
})

local Number = Options.Speed.Value
Options.Speed:OnChanged(function()
    task.spawn(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Options.Speed.Value    
        end)
end)



LeftGroupBox:AddSlider('JP', {
    Text = 'Jump Power',

    Default = 50,
    Min = 50,
    Max = 500,
    Rounding = 0,

    Compact = false,
})

local JPV = Options.JP.Value
Options.JP:OnChanged(function()
    task.spawn(function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Options.JP.Value    
        end)
end)


LFarm:AddDivider()

LFarm:AddToggle('AFN', {
    Text = 'Auto-Farm uCoins',
    Default = false, 
    Tooltip = 'Auto-Farms the NPCs that give you uCoins', 
})

--// Autofarm Function \\--

local lplr = game.Players.LocalPlayer

function npckiller()
for i,v in pairs(game.workspace.Living:GetChildren()) do 
    if v.Name == 'Star Platinum!?!?' and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') then
        
        local npc = v
        function start()
        
        function attack()
        _G.oldhp = v.Humanoid.Health
        lplr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        task.wait(.1)
        game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedModules"):WaitForChild("KnitPackage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("MoveInputService"):WaitForChild("RF"):WaitForChild("FireInput"):InvokeServer('MouseButton1')
        end
        
        attack()
        
        if _G.oldhp > v.Humanoid.Health then
        
        task.spawn(function()    
        while v.Humanoid:GetState() ~= 15 do  
           v.Humanoid:ChangeState(15) 
           task.wait(.1)
        end
        end)
      
           else 
           attack()
        end
        
        if npc then 
            start()
        else end
        end
        start()
    end
end
end

--// End of Function \\--


Toggles.AFN:OnChanged(function()
    print('Toggle changed to:', Toggles.AFN.Value)
    
    if Toggles.AFN.Value == true then
        task.spawn(function() while Toggles.AFN.Value == true do
            task.spawn(function()
               npckiller()
            end)
               task.wait()
            end
        end)
        end
end)


function damagefarm()
for i,v in pairs(game.workspace.Living:GetChildren()) do 
    if v.Name == 'Dummy (Combat Rework)' and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') then 
        
        local npc = v 
        
        function attack()
        
        lplr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        
        local charPos = lplr.Character.PrimaryPart.Position
        local tPos = v.PrimaryPart.Position
        local newCF = CFrame.new(charPos,tPos)
        lplr.Character:SetPrimaryPartCFrame(newCF)
        
        game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedModules"):WaitForChild("KnitPackage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("MoveInputService"):WaitForChild("RF"):WaitForChild("FireInput"):InvokeServer("MouseButton1")
        
        if npc then 
        attack()
        end
        
        end 
        
        attack()
        
    end
end
end


LFarm:AddToggle('AFD', {
    Text = 'Auto-Farm Damage',
    Default = false, 
    Tooltip = "Auto-Farms the NPCs that don't fight back. (Only ends when NPC is dead)", 
})

Toggles.AFD:OnChanged(function()
    print('Toggle changed to:', Toggles.AFD.Value)
    
    if Toggles.AFD.Value == true then 
        task.spawn(function() while Toggles.AFD.Value == true do
            task.spawn(function()
               damagefarm()
            end)
               task.wait()
            end
        end)
        end
end)


LFarm:AddButton('Kill Bosses', function()
for i,v in pairs(game.workspace.Living:GetChildren()) do 
    if v.Name == 'Boa H' or v.Name == 'Hold up, aint you Dio?' or v.Name == 'Professor Diavolo' then
        if v:FindFirstChild('HumanoidRootPart') then
            print('BOSS SPAWNED')
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
            game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedModules"):WaitForChild("KnitPackage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("MoveInputService"):WaitForChild("RF"):WaitForChild("FireInput"):InvokeServer('MouseButton1')
            
            for i = 1,100 do 
            v.Humanoid:ChangeState(15) 
            task.wait(.1)                    
            end
            
        end
    end
end
end)

LFarm:AddDivider()

LFarm:AddButton('Collect Items', function()
for i,v in pairs(game:GetService("Workspace").ItemSpawns.StandardItems:GetDescendants()) do 
    if v.Name == 'Interaction' and v:IsA('ProximityPrompt') then
        print('Found')
            lplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
            task.wait(.3)
            fireproximityprompt(v)
            
        if _G.store then 
            for i,v in pairs(lplr.Backpack:GetChildren()) do 
               v.Parent = lplr.Character 
            end
            
            local args = {
                [1] = {
                ["AddItems"] = true
                }
            }

            game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedModules"):WaitForChild("KnitPackage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("InventoryService"):WaitForChild("RE"):WaitForChild("ItemInventory"):FireServer(unpack(args))
        end 
            
            task.wait(.2)
        end
end    
end)

LFarm:AddButton('Collect Chests', function()
for i,v in pairs(game:GetService("Workspace").ItemSpawns.Chests:GetDescendants()) do 
    if v.Name == 'Interaction' and v:IsA('ProximityPrompt') then
        print('Found')
            lplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
            task.wait(.3)
            fireproximityprompt(v)
            
        if _G.store then 
            for i,v in pairs(lplr.Backpack:GetChildren()) do 
               v.Parent = lplr.Character 
            end
            
            local args = {
                [1] = {
                ["AddItems"] = true
                }
            }

            game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedModules"):WaitForChild("KnitPackage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("InventoryService"):WaitForChild("RE"):WaitForChild("ItemInventory"):FireServer(unpack(args))
        end 
            
            task.wait(.2)
        end
end    
end)

LFarm:AddButton('Collect Sand', function()
for i,v in pairs(game:GetService("Workspace").ItemSpawns["Sand Debris"]:GetDescendants()) do 
    if v.Name == 'Interaction' and v:IsA('ProximityPrompt') then
        print('Found')
            lplr.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
            task.wait(1)
            fireproximityprompt(v)
            
        if _G.store then 
            for i,v in pairs(lplr.Backpack:GetChildren()) do 
               v.Parent = lplr.Character 
            end
            
            local args = {
                [1] = {
                ["AddItems"] = true
                }
            }

            game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedModules"):WaitForChild("KnitPackage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("InventoryService"):WaitForChild("RE"):WaitForChild("ItemInventory"):FireServer(unpack(args))
        end 
            
            task.wait(4)
        end
end     
end)

LFarm:AddToggle('STitem', {
    Text = ' + Store Items?',
    Default = false, -- Default value (true / false)
    Tooltip = 'Toggles Auto-Collectors Storing Items', -- Information shown when you hover over the toggle
})

Toggles.STitem:OnChanged(function()
    _G.store = Toggles.STitem.Value
end)

LFarm:AddDivider()



LeftGroupBox:AddDivider()

local table = {
    ['Spawn'] = CFrame.new(18.171875, 974.017456, -1.29541016),
    ['Diavolo Spawn'] = CFrame.new(-150.686249, 926.803284, 1104.11597),
    ['Boss Altar'] = CFrame.new(762.811035, 1024.39478, -1036.42297),
    ['Dio Spawn'] = CFrame.new(1384.59509, 581.970703, 10467.043),
    ['Soccer Field'] = CFrame.new(-80.3334961, 996.035889, -754.583984),
    ['Sakuya Room'] = CFrame.new(-90.3500977, 51.4887695, -1394.32422),
}

LeftGroupBox:AddDropdown('TPs', {
    Values = { ' ','Spawn', 'Diavolo Spawn', 'Boss Altar', 'Dio Spawn','Soccer Field','Sakuya Room' },
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Teleports'
})

Options.TPs:OnChanged(function()
    task.spawn(function()
    lplr.Character.HumanoidRootPart.CFrame = table[Options.TPs.Value]
    end)
end)

LeftGroupBox:AddDivider()
LeftGroupBox:AddButton('Clear Backpack', function()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
    v:Destroy()
end     
end)