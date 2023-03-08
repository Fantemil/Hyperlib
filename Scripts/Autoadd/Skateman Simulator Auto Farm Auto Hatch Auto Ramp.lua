if game:GetService("CoreGui"):FindFirstChild("BunnyNwy") then
    game:GetService("CoreGui"):FindFirstChild("BunnyNwy"):Destroy()
end
repeat wait() until game:IsLoaded()

local Library = loadstring(game:HttpGet('https://pastebin.com/raw/p6wi2eGw'))()
local repo = 'https://raw.githubusercontent.com/bunnynwy/LinoriaLib/main/'
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

Library:SetWatermarkVisibility(false)

Library:SetWatermark("[ Muimi Hub ] Beta Version https://discord.gg/qvVjXgFsy3")
-- Game Start
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
 vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 wait(1)
 vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
print("Ativce AFK!")
-- Game Start
local win = Library:CreateWindow({
    Title = 'Muimi Hub ( Skateman Simulator )',
    Center = true, 
    AutoShow = true,
})

local Main = win:AddTab("Main")
Tabs = {}

Farm = Main:AddLeftGroupbox('Farm')

world = {}
for i,v in pairs(game:GetService("Workspace").Ramps:GetChildren()) do
    table.insert(world,v.Name)
end

skateboard = {}
for i,v in pairs(game:GetService("Workspace").Skateboards:GetDescendants()) do
    if v.Name:find("Board") or v.ClassName == "MeshPart" then
        skateboard[v.Wheels.Value] = v.Name
    end
end
sort_board = {}
for i,v in pairs(skateboard) do
    table.insert(sort_board,i)
end

table.sort(sort_board,function(a,b) return a < b end)

real_board = {}
for i,v in pairs(sort_board) do
    table.insert(real_board,skateboard[v])
end


Farm:AddDropdown('skateboardsw', {
    Values = real_board,
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select Skateboard',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox
})


Farm:AddToggle('AutoFarm', {
    Text = 'Auto Farm',
    Default = false, -- Default value (true / false)
    Tooltip = 'Auto Farm', -- Information shown when you hover over the toggle
})

Toggles.AutoFarm:OnChanged(function()
    _G.AutoFarm = Toggles.AutoFarm.Value
end)

world = {}
for i,v in pairs(game:GetService("Workspace").Ramps:GetChildren()) do
    table.insert(world,v.Name)
end

Farm:AddDropdown('selectworld', {
    Values = world,
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select World',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox
})
Farm:AddToggle('AutoRamp', {
    Text = 'Auto Ramp',
    Default = false, -- Default value (true / false)
    Tooltip = 'Auto Ramp', -- Information shown when you hover over the toggle
})
Toggles.AutoRamp:OnChanged(function()
    _G.AutoRamp = Toggles.AutoRamp.Value
end)
spawn(function()
    pcall(function()
        while task.wait() do
            if _G.AutoRamp then
                if not game:GetService("Workspace").Skates[game.Players.LocalPlayer.Name.."Ramp"]:FindFirstChild("Skate") then
                    for i,v in pairs(game:GetService("Workspace").Ramps[Options.selectworld.Value]:GetChildren()) do
                        if v.Name:find("Ramp") then
                            if not v:FindFirstChildOfClass("StringValue") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PlayerPart.CFrame
                            
                            fireproximityprompt(v.Attachment.Prompt)
                            end
                        end
                    end
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while task.wait() do
            if _G.AutoFarm then
                if not game:GetService("Workspace").Skates[game.Players.LocalPlayer.Name]:FindFirstChild("Skate") then
                    for i,v in pairs(game:GetService("Workspace").Skateboards:GetDescendants()) do
                        if v.Name == Options.skateboardsw.Value then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,5,0)
                            
                            fireproximityprompt(v.Prompt)
                        end
                    end
                end
            end
        end
    end)
end)
Egg = Main:AddRightGroupbox('Eggs')

Eggs = {}
for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    if v.Name ~= "NIERUSZACBOZAJEBIE" then
        table.insert(Eggs,v.Name)
    end
end
Egg:AddDropdown('selectegg', {
    Values = Eggs,
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select Egg!',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox
})

Egg:AddButton("Hatch Egg x1",function()
local args = {
    [1] = workspace.Eggs[Options.selectegg.Value],
    [2] = 1
}

game:GetService("ReplicatedStorage").Pets.Events.HatchEgg:InvokeServer(unpack(args))
end)

Egg:AddButton("Hatch Egg x3",function()
local args = {
    [1] = workspace.Eggs[Options.selectegg.Value],
    [2] = 3
}

game:GetService("ReplicatedStorage").Pets.Events.HatchEgg:InvokeServer(unpack(args))
end)

Egg:AddToggle('AutoHatchx1', {
    Text = 'Auto Hatch x1',
    Default = false, -- Default value (true / false)
    Tooltip = 'Auto Hatch x1', -- Information shown when you hover over the toggle
})

Toggles.AutoHatchx1:OnChanged(function()
    _G.AutoHatchx1 = Toggles.AutoHatchx1.Value
end)

spawn(function()
    pcall(function()
        while task.wait() do
            if _G.AutoHatchx1 then
                local args = {
    [1] = workspace.Eggs[Options.selectegg.Value],
    [2] = 1
}

game:GetService("ReplicatedStorage").Pets.Events.HatchEgg:InvokeServer(unpack(args))
            end
        end
    end)
end)

Egg:AddToggle('AutoHatchx3', {
    Text = 'Auto Hatch x3',
    Default = false, -- Default value (true / false)
    Tooltip = 'Auto Hatch x3', -- Information shown when you hover over the toggle
})

Toggles.AutoHatchx3:OnChanged(function()
    _G.AutoHatchx3 = Toggles.AutoHatchx3.Value
end)

spawn(function()
    pcall(function()
        while task.wait() do
            if _G.AutoHatchx3 then
                local args = {
    [1] = workspace.Eggs[Options.selectegg.Value],
    [2] = 3
}

game:GetService("ReplicatedStorage").Pets.Events.HatchEgg:InvokeServer(unpack(args))
            end
        end
    end)
end)
Tabs["UI Settings"] = win:AddTab('UI Settings'),

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddToggle('SetWatermarkVisibility', {
    Text = 'Set Watermark Visibility',
    Default = true, -- Default value (true / false)
    Tooltip = 'SetWatermarkVisibility', -- Information shown when you hover over the toggle
})

Toggles.SetWatermarkVisibility:OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.SetWatermarkVisibility.Value)
end)

MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightControl', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings() 

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

ThemeManager:SetFolder('MuimiTheme')
SaveManager:SetFolder('MuimiHub/specific-game')

SaveManager:BuildConfigSection(Tabs['UI Settings']) 

ThemeManager:ApplyToTab(Tabs['UI Settings'])