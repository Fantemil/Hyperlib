-- Craftwars Gui
-- V0.1
-- Instances:
local CraftWarsGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Bottom = Instance.new("Frame")
local Cred = Instance.new("TextLabel")
local HYDRA = Instance.new("TextButton")
local VOID = Instance.new("TextButton")
local THEARENA = Instance.new("TextButton")
local DUNGEON = Instance.new("TextButton")
local SEATEMPLE = Instance.new("TextButton")
local BERMUDA = Instance.new("TextButton")
local RICH = Instance.new("TextButton")
local ALLITEMS = Instance.new("TextButton")
local Cash = Instance.new("TextButton")
local RANK = Instance.new("TextButton")
--Properties:
CraftWarsGui.Name = "CraftWarsGui"
CraftWarsGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CraftWarsGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Background.Name = "Background"
Background.Parent = CraftWarsGui
Background.BackgroundColor3 = Color3.new(1, 0.745098, 0.14902)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.692088425, 0, 0.0812803358, 0)
Background.Size = UDim2.new(0, 289, 0, 425)
 
Top.Name = "Top"
Top.Parent = Background
Top.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 289, 0, 34)
 
Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 289, 0, 34)
Title.Font = Enum.Font.SourceSans
Title.Text = "Craftwars Gui V0.1"
Title.TextColor3 = Color3.new(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true
 
Bottom.Name = "Bottom"
Bottom.Parent = Background
Bottom.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
Bottom.BorderSizePixel = 0
Bottom.Position = UDim2.new(0, 0, 0.912579179, 0)
Bottom.Size = UDim2.new(0, 289, 0, 37)
 
Cred.Name = "Cred"
Cred.Parent = Bottom
Cred.BackgroundColor3 = Color3.new(1, 1, 1)
Cred.BackgroundTransparency = 1
Cred.Size = UDim2.new(0, 289, 0, 37)
Cred.Font = Enum.Font.SourceSans
Cred.Text = "Jakey#9989:Scripter Gui Design Filip#6476 :Scripter"
Cred.TextColor3 = Color3.new(0, 0, 0)
Cred.TextScaled = true
Cred.TextSize = 14
Cred.TextWrapped = true
 
HYDRA.Name = "HYDRA"
HYDRA.Parent = Bottom
HYDRA.BackgroundColor3 = Color3.new(1, 1, 1)
HYDRA.Position = UDim2.new(0.0373644978, 0, -9.24116421, 0)
HYDRA.Size = UDim2.new(0, 130, 0, 44)
HYDRA.Style = Enum.ButtonStyle.RobloxRoundButton
HYDRA.Font = Enum.Font.SourceSans
HYDRA.Text = "Hydra"
HYDRA.TextColor3 = Color3.new(0, 0, 0)
HYDRA.TextScaled = true
HYDRA.TextSize = 14
HYDRA.TextWrapped = true
 
VOID.Name = "VOID"
VOID.Parent = Bottom
VOID.BackgroundColor3 = Color3.new(1, 1, 1)
VOID.Position = UDim2.new(0.518333375, 0, -9.24116516, 0)
VOID.Size = UDim2.new(0, 133, 0, 44)
VOID.Style = Enum.ButtonStyle.RobloxRoundButton
VOID.Font = Enum.Font.SourceSans
VOID.Text = "The void"
VOID.TextColor3 = Color3.new(0, 0, 0)
VOID.TextScaled = true
VOID.TextSize = 14
VOID.TextWrapped = true
 
THEARENA.Name = "THEARENA"
THEARENA.Parent = Bottom
THEARENA.BackgroundColor3 = Color3.new(1, 1, 1)
THEARENA.Position = UDim2.new(0.0373645127, 0, -7.64657068, 0)
THEARENA.Size = UDim2.new(0, 133, 0, 44)
THEARENA.Style = Enum.ButtonStyle.RobloxRoundButton
THEARENA.Font = Enum.Font.SourceSans
THEARENA.Text = "The Arena"
THEARENA.TextColor3 = Color3.new(0, 0, 0)
THEARENA.TextScaled = true
THEARENA.TextSize = 14
THEARENA.TextWrapped = true
 
DUNGEON.Name = "DUNGEON"
DUNGEON.Parent = Bottom
DUNGEON.BackgroundColor3 = Color3.new(1, 1, 1)
DUNGEON.Position = UDim2.new(0.0373645127, 0, -6.13305712, 0)
DUNGEON.Size = UDim2.new(0, 133, 0, 44)
DUNGEON.Style = Enum.ButtonStyle.RobloxRoundButton
DUNGEON.Font = Enum.Font.SourceSans
DUNGEON.Text = "The Dungeon"
DUNGEON.TextColor3 = Color3.new(0, 0, 0)
DUNGEON.TextScaled = true
DUNGEON.TextSize = 14
DUNGEON.TextWrapped = true
 
SEATEMPLE.Name = "SEATEMPLE"
SEATEMPLE.Parent = Bottom
SEATEMPLE.BackgroundColor3 = Color3.new(1, 1, 1)
SEATEMPLE.Position = UDim2.new(0.518333375, 0, -6.13305712, 0)
SEATEMPLE.Size = UDim2.new(0, 133, 0, 44)
SEATEMPLE.Style = Enum.ButtonStyle.RobloxRoundButton
SEATEMPLE.Font = Enum.Font.SourceSans
SEATEMPLE.Text = "Sea Temple"
SEATEMPLE.TextColor3 = Color3.new(0, 0, 0)
SEATEMPLE.TextScaled = true
SEATEMPLE.TextSize = 14
SEATEMPLE.TextWrapped = true
 
BERMUDA.Name = "BERMUDA"
BERMUDA.Parent = Bottom
BERMUDA.BackgroundColor3 = Color3.new(1, 1, 1)
BERMUDA.Position = UDim2.new(0.518333375, 0, -7.64657068, 0)
BERMUDA.Size = UDim2.new(0, 133, 0, 44)
BERMUDA.Style = Enum.ButtonStyle.RobloxRoundButton
BERMUDA.Font = Enum.Font.SourceSans
BERMUDA.Text = "The  Bermunda"
BERMUDA.TextColor3 = Color3.new(0, 0, 0)
BERMUDA.TextScaled = true
BERMUDA.TextSize = 14
BERMUDA.TextWrapped = true
 
RICH.Name = "RICH"
RICH.Parent = Bottom
RICH.BackgroundColor3 = Color3.new(1, 1, 1)
RICH.Position = UDim2.new(0.0373645127, 0, -4.56548929, 0)
RICH.Size = UDim2.new(0, 133, 0, 44)
RICH.Style = Enum.ButtonStyle.RobloxRoundButton
RICH.Font = Enum.Font.SourceSans
RICH.Text = "Temple Of Riches"
RICH.TextColor3 = Color3.new(0, 0, 0)
RICH.TextScaled = true
RICH.TextSize = 14
RICH.TextWrapped = true
 
ALLITEMS.Name = "ALLITEMS"
ALLITEMS.Parent = Bottom
ALLITEMS.BackgroundColor3 = Color3.new(1, 1, 1)
ALLITEMS.Position = UDim2.new(0.0477451198, 0, -3.13305664, 0)
ALLITEMS.Size = UDim2.new(0, 269, 0, 43)
ALLITEMS.Style = Enum.ButtonStyle.RobloxRoundButton
ALLITEMS.Font = Enum.Font.SourceSans
ALLITEMS.Text = "Every Item"
ALLITEMS.TextColor3 = Color3.new(0, 0, 0)
ALLITEMS.TextScaled = true
ALLITEMS.TextSize = 14
ALLITEMS.TextWrapped = true
 
Cash.Name = "Cash"
Cash.Parent = Bottom
Cash.BackgroundColor3 = Color3.new(1, 1, 1)
Cash.Position = UDim2.new(0.0477451198, 0, -1.80873227, 0)
Cash.Size = UDim2.new(0, 269, 0, 31)
Cash.Style = Enum.ButtonStyle.RobloxRoundButton
Cash.Font = Enum.Font.SourceSans
Cash.Text = "Cash(May Not Work)"
Cash.TextColor3 = Color3.new(0, 0, 0)
Cash.TextScaled = true
Cash.TextSize = 14
Cash.TextWrapped = true
 
RANK.Name = "RANK"
RANK.Parent = Bottom
RANK.BackgroundColor3 = Color3.new(1, 1, 1)
RANK.Position = UDim2.new(0.0477451198, 0, -0.970894456, 0)
RANK.Size = UDim2.new(0, 269, 0, 31)
RANK.Style = Enum.ButtonStyle.RobloxRoundButton
RANK.Font = Enum.Font.SourceSans
RANK.Text = "Rank(May Not Work)"
RANK.TextColor3 = Color3.new(0, 0, 0)
RANK.TextScaled = true
RANK.TextSize = 14
RANK.TextWrapped = true
-- Scripts:
function SCRIPT_UICJ82_FAKESCRIPT() -- HYDRA.Hydra 
    local script = Instance.new('LocalScript')
    script.Parent = HYDRA
    
    local c = 0 
    local a = 1
    script.Parent.MouseButton1Click:Connect(function()
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v.Name == 'Hydra' then
                v.Humanoid.Health = 0
                c = c+1
            end
            if c==a then
                print('Broken')
    break
            end
        end
    end)
 
end
coroutine.resume(coroutine.create(SCRIPT_UICJ82_FAKESCRIPT))
function SCRIPT_NYMX81_FAKESCRIPT() -- VOID.Void 
    local script = Instance.new('LocalScript')
    script.Parent = VOID
    local Names = {
        ['Opticus'] = 'Name';
        ['Emerald'] = 'Name';
        ['Ruby'] = 'Name';
        ['Sapphire'] = 'Name';
    }
    local a = 4
    local b = 0
    script.Parent.MouseButton1Click:Connect(function()
            for i,v in pairs(game.Workspace:GetChildren()) do
            if Names[v.Name] then
                v.Humanoid.Health = 0
                b = b+1
            end
            if b==a then
                print('Broken')
    break
            end
    end
    end)
 
end
coroutine.resume(coroutine.create(SCRIPT_NYMX81_FAKESCRIPT))
function SCRIPT_TEWD76_FAKESCRIPT() -- THEARENA.Arena 
    local script = Instance.new('LocalScript')
    script.Parent = THEARENA
    local Names = {
        ['Hercules'] = 'Name';
    }
    local a = 1
    local b = 0
    script.Parent.MouseButton1Click:Connect(function()
            for i,v in pairs(game.Workspace:GetChildren()) do
            if Names[v.Name] then
                v.Humanoid.Health = 0
                b = b+1
            end
            if b==a then
                print('Broken')
    break
            end
    end
    end)
 
end
coroutine.resume(coroutine.create(SCRIPT_TEWD76_FAKESCRIPT))
function SCRIPT_SUTV80_FAKESCRIPT() -- DUNGEON.Dungeon 
    local script = Instance.new('LocalScript')
    script.Parent = DUNGEON
    local Names = {
        ['Skeleton'] = 'Name';
        ['Possesed Zombie'] = 'Name';
        ['Slave of Magma'] = 'Name';
        ['Servant of Hades'] = 'Name';
        ['Werewolf'] = 'Name';
        ['Reaper'] = 'Name';
        ['Hades'] = 'Name';
        ['Shade'] = 'Name';
        ['nacker'] = 'Name';
        ['Slave of the Void'] = 'Name';
        ['Zombie Knight'] = 'Name';
    }
    local c = 0 
    local a = 11
    script.Parent.MouseButton1Click:Connect(function()
        for i,v in pairs(game.Workspace:GetChildren()) do
            if Names[v.Name] then
                v.Humanoid.Health = 0
                c = c+1
            end
            if c==a then
                print('Broken')
    break
            end
        end
    end)
 
end
coroutine.resume(coroutine.create(SCRIPT_SUTV80_FAKESCRIPT))
function SCRIPT_JHXR67_FAKESCRIPT() -- SEATEMPLE.SeaTemple 
    local script = Instance.new('LocalScript')
    script.Parent = SEATEMPLE
    local Names = {
        ['Skeleton'] = 'Name';
        ['Ocean Zombie'] = 'Name';
        ['Sea Monster'] = 'Name';
        ['Medusa'] = 'Name';
        ['Poseidon'] = 'Name';
    }
    local c = 0 
    local a = 5
    script.Parent.MouseButton1Click:Connect(function()
        for i,v in pairs(game.Workspace:GetChildren()) do
            if Names[v.Name] then
                v.Humanoid.Health = 0
                c = c+1
            end
            if c==a then
                print('Broken')
    break
            end
        end
    end)
 
end
coroutine.resume(coroutine.create(SCRIPT_JHXR67_FAKESCRIPT))
function SCRIPT_CPXR71_FAKESCRIPT() -- BERMUDA.Ber 
    local script = Instance.new('LocalScript')
    script.Parent = BERMUDA
    local Names = {
        ['Cthulhu'] = 'Name';
    }
    local a = 1
    local b = 0
    script.Parent.MouseButton1Click:Connect(function()
            for i,v in pairs(game.Workspace:GetChildren()) do
            if Names[v.Name] then
                v.Humanoid.Health = 0
                b = b+1
            end
            if b==a then
                print('Broken')
    break
            end
    end
    end)
 
end
coroutine.resume(coroutine.create(SCRIPT_CPXR71_FAKESCRIPT))
function SCRIPT_XQVB75_FAKESCRIPT() -- RICH.Rich 
    local script = Instance.new('LocalScript')
    script.Parent = RICH
    local Names = {
        ['Pirate'] = 'Name';
        ['Elite Pirate'] = 'Name';
        ['Helios'] = 'Name';
        ['Zombie King'] = 'Name';
        ['Griffin'] = 'Name';
        ['King Midas'] = 'Name';
        ['Greed'] = 'Name';
        ['Shapeshifter'] = 'Name';
    }
    local a = 7
    local b = 0
    script.Parent.MouseButton1Click:Connect(function()
            for i,v in pairs(game.Workspace:GetChildren()) do
            if Names[v.Name] then
                v.Humanoid.Health = 0
                b = b+1
            end
            if b==a then
                print('Broken')
    break
            end
    end
    end)
    
 
end
coroutine.resume(coroutine.create(SCRIPT_XQVB75_FAKESCRIPT))
function SCRIPT_CTBF76_FAKESCRIPT() -- ALLITEMS.AllItems 
    local script = Instance.new('LocalScript')
    script.Parent = ALLITEMS
    count=0
    
    script.Parent.MouseButton1Click:Connect(function()
        for i=1,359 do
    
    count=count+1
    game.Players.LocalPlayer.PlayerGui.Inventory.GuiControl:Invoke({command="insert", id = count})
    end
    end)
 
end
coroutine.resume(coroutine.create(SCRIPT_CTBF76_FAKESCRIPT))
function SCRIPT_BEPH83_FAKESCRIPT() -- Cash.Cash 
    local script = Instance.new('LocalScript')
    script.Parent = Cash
    script.Parent.MouseButton1Click:Connect(function()
        local cash = game.Players.LocalPlayer.leaderstats.Cash
        cash.Value = cash.Value + 69000000000000
    end)
 
end
coroutine.resume(coroutine.create(SCRIPT_BEPH83_FAKESCRIPT))
function SCRIPT_JQXF78_FAKESCRIPT() -- RANK.Rank 
    local script = Instance.new('LocalScript')
    script.Parent = RANK
    script.Parent.MouseButton1Click:Connect(function()
        local rank = game.Players.LocalPlayer.leaderstats.Rank
        rank.Value = rank.Value + 1000
    end)
 
end
coroutine.resume(coroutine.create(SCRIPT_JQXF78_FAKESCRIPT))
function SCRIPT_DPML73_FAKESCRIPT() -- Background.Drag 
    local script = Instance.new('LocalScript')
    script.Parent = Background
    local main = script.Parent
    main.Active = true
    main.Draggable = true
 
end
coroutine.resume(coroutine.create(SCRIPT_DPML73_FAKESCRIPT))