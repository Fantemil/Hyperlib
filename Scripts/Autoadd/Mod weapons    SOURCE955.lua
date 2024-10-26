--s
local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
_G.INFMONEY = false
local upval,upval2,upval3,upval4,upval5



local Window = Library:CreateWindow({
    Title = 'Sigma Script',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})



local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}


local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Groupbox')




LeftGroupBox:AddToggle('MyToggle', {
    Text = 'AutoFarm',
    Default = false, -- Default value (true / false)
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the toggle

    Callback = function(Value)
if Value == true then
        _G.INFMONEY = true
else
 _G.INFMONEY = false
end
for i,v in next, workspace.VehicleShop:GetChildren() do
if v.Name == "CarMake" or "Carmake2" then
for _,x in pairs(v:GetDescendants()) do
if x:IsA("ProximityPrompt") then
while _G.INFMONEY == true do
fireproximityprompt(x)
task.wait()
end
end
end
end
end
    end
})






local MyButton = LeftGroupBox:AddButton({
    Text = 'Open shop',
    Func = function()
       workspace["Illegal Store"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end,
    DoubleClick = false,
    Tooltip = 'This is the main button'
})

local MyButton2 = MyButton:AddButton({
    Text = 'Sub button',
    Func = function()
        print('You clicked a sub button!')
    end,
    DoubleClick = false, -- You will have to click this button twice to trigger the callback
    Tooltip = 'This is the sub button (double click me!)'
})







LeftGroupBox:AddDropdown('MyPlayerDropdown', {
    SpecialType = 'Player',
    Text = 'A player dropdown',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the dropdown

    Callback = function(Value)
        print('[cb] Player dropdown got changed:', Value)
    end
})


-- You can also ColorPicker & KeyPicker to a Toggle as well








local TabBox = Tabs.Main:AddRightTabbox()


local Tab1 = TabBox:AddTab('Weapon mods')


Tab1:AddToggle('FriendlyFire', {
    Text = 'Friendly Fire',
    Default = false, -- Default value (true / false)
    Tooltip = 'Ture of False', -- Information shown when you hover over the toggle

    Callback = function(Value)
      if Value == true then
        upval = true
      else
        upval = false
      end

      for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
        if v.Name == "1" then
        local way = v
        local r = require(v)
         
        r.FriendlyFire = upval
        
        end
        end



    end
})


Tab1:AddInput('MyTextbox', {
    Default = '1',
    Numeric = false,
    Finished = false,

    Text = 'Spread',
    Tooltip = 'Any Number',

    Placeholder = '1',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local r = require(v)

r.Spread = Value

end
end

end})

Tab1:AddInput('MyTextbox', {
    Default = '0',
    Numeric = false,
    Finished = false,

    Text = 'Recoil',
    Tooltip = 'Any Number',

    Placeholder = '0',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local r = require(v)

r.Recoil = Value

end
end
end})











Tab1:AddInput('MyTextbox', {
    Default = '0',
    Numeric = false,
    Finished = false,

    Text = 'AmmoCost',
    Tooltip = 'Any Number',

    Placeholder = '0',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local r = require(v)

r.AmmoCost = Value

end
end
end})






Tab1:AddToggle('AF', {
    Text = 'Auto Fire',
    Default = false, -- Default value (true / false)
    Tooltip = 'Ture of False', -- Information shown when you hover over the toggle

    Callback = function(Value)
      if Value == true then
        upval2 = true
      else
        upval2 = false
      end
      
      for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
        if v.Name == "1" then
        local way = v
        local r = require(v)
         
        r.Auto = upval2
        
        end
        end



    end
})


Tab1:AddInput('MyTextbox', {
    Default = '0',
    Numeric = false,
    Finished = false,

    Text = 'Fire Rate',
    Tooltip = 'Any Number',

    Placeholder = '0',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local r = require(v)
r.FireRate = Value
end
end
end})





Tab1:AddInput('MyTextbox', {
    Default = '999',
    Numeric = false,
    Finished = false,

    Text = 'BaseDamage',
    Tooltip = 'Any Number',

    Placeholder = '999',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local r = require(v)

r.BaseDamage = Value

end
end
end})




Tab1:AddInput('MyTextbox', {
    Default = '1',
    Numeric = false,
    Finished = false,

    Text = 'Accuracy',
    Tooltip = 'Any Number',

    Placeholder = '1',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local r = require(v)

r.Accuracy = Value

end
end
end})





Tab1:AddInput('MyTextbox', {
    Default = '9999',
    Numeric = false,
    Finished = false,

    Text = 'Bullet Range',
    Tooltip = 'Any Number',

    Placeholder = '9999',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local r = require(v)

r.Range = Value

end
end
end})








Tab1:AddInput('MyTextbox', {
    Default = '99999',
    Numeric = false,
    Finished = false,

    Text = 'Bullet Speed',
    Tooltip = 'Any Number',

    Placeholder = '99999',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local r = require(way)

r.BulletSpeed = Value

end
end
end})





Tab1:AddInput('KnockBack', {
    Default = '99999',
    Numeric = false,
    Finished = false,

    Text = 'Knockback DOSENT WORK',
    Tooltip = 'Any Number',

    Placeholder = '99999',

    Callback = function(upval9)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local r = require(v)

r.Knockback = upval9

end
end
end})


-- all credit to 32ks made by 32ks published by Typzero_SVk(32ks) dont skid diggas






Tab1:AddToggle('SigmaExplo', {
    Text = 'Explosion bullets CS',
    Default = false, -- Default value (true / false)
    Tooltip = 'Can be used as kill all if you use explosion radius', -- Information shown when you hover over the toggle

    Callback = function(Value)
      if Value == true then
        upval4 = true
      else
        upval4 = false
      end

      for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
        if v.Name == "1" then
        local way = v
        local r = require(v)

        r.ExplosiveEnabled = upval4

        end
        end
    end
})


Tab1:AddToggle('Laserbeam', {
    Text = 'Laserbeam FE',
    Default = false, -- Default value (true / false)
    Tooltip = 'Real explosions', -- Information shown when you hover over the toggle

    Callback = function(Value)
      if Value == true then
        upval5 = true
      else
        upval5 = false
      end

      for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
        if v.Name == "1" then
        local way = v
        local r = require(way)
            r.LaserBeam = upval5 
        end
        end
        end
})



Tab1:AddInput('TEST', {
    Default = '99999',
    Numeric = false,
    Finished = false,

    Text = 'Explosion radius',
    Tooltip = 'Any Number',

    Placeholder = '99999',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local vr = require(way)

vr.ExplosionRadius = Value

end
end
end})




Tab1:AddInput('MyTextbox', {
    Default = '99999',
    Numeric = false,
    Finished = false,

    Text = 'bullets per shot',
    Tooltip = 'Any Number',

    Placeholder = '99999',

    Callback = function(Value)
for i,v in pairs(game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun:GetDescendants()) do
if v.Name == "1" then
local way = v
local sr = require(way)

sr.BulletsPerShot = Value

end
end
end})






























local Tab2 = TabBox:AddTab('Tab 2')
Tab2:AddToggle('Tab2Toggle', { Text = 'Tab2 Toggle' });


local RightGroupbox = Tabs.Main:AddRightGroupbox('Groupbox #3');
RightGroupbox:AddToggle('ControlToggle', { Text = 'Dependency box toggle' });

local Depbox = RightGroupbox:AddDependencyBox();
Depbox:AddToggle('DepboxToggle', { Text = 'Sub-dependency box toggle' });


local SubDepbox = Depbox:AddDependencyBox();
SubDepbox:AddSlider('DepboxSlider', { Text = 'Slider', Default = 50, Min = 0, Max = 100, Rounding = 0 });
SubDepbox:AddDropdown('DepboxDropdown', { Text = 'Dropdown', Default = 1, Values = {'a', 'b', 'c'} });

Depbox:SetupDependencies({
    { Toggles.ControlToggle, true }
});

SubDepbox:SetupDependencies({
    { Toggles.DepboxToggle, true }
});


Library:SetWatermarkVisibility(true)


local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('Gamesense.lua | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

Library.KeybindFrame.Visible = true;

Library:OnUnload(function()
    WatermarkConnection:Disconnect()
    Library.Unloaded = true
end)

-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')


MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind


ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()