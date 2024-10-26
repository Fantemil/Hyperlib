local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/nosexclub/morbidstuffdw/main/lunarlib_solarafix.lua"))()
local flags = Library.Flags
getgenv().ConfigFolder = "test" 
local Window = Library:Window({Size = UDim2.new(0,580,0,600)}) 
local legit = Window:Page({Name = "Legit"}) do 
    local Vertical;
    local Horizontal;
    local Smoothness;
    -- 
    local Test = legit:Section({Name = "Section Test", Size = 330}) do 
        Test:Toggle({Name = "Enabled", Flag = "Aim Assist"}):Keybind({Name = "Aim Assist", Flag = "Aim Assist Bind", Mode = "Toggle", Callback = function()
        end})
        local Vertical = Test:Slider({Name = "Horizontal Smoothness", Flag = "Horizontal Smoothness", Min = 0, Max = 100, Default = 20, Decimals = 1})
        local Horizontal = Test:Slider({Name = "Vertical Smoothness", Flag = 'Vertical Smoothness', Min = 0, Max = 100, Default = 20, Decimals = 1})
        local Smoothness = Test:Slider({Name = "Notification test", Flag = 'Smoothness', Min = 0, Max = 100, Default = 50, Decimals = 1})
        Test:Dropdown({Name = "Method", Flag = "Select option and noti test", Options = {"Femboy Cock", "I like femboys", "No thanks"}, Default = "Femboy Cock", 
            Callback = function(Option)
                if Option then
                  Library:Notification("Selected this option: "..Option, 3, Library.Accent, flags["Notification Position"])
                end
        end})
        Test:Textbox({Name = "Prediction", Flag = "Aim Assist Manual Prediction Value", Placeholder = "Prediction"})
        Test:Textbox({Name = "Jump Offset", Flag = "Aim Assist Manual Offset Value", Placeholder = "Jump Offset"})
    end 
end 
--// extra tab icons
local esp = Window:Page({Name = "Visuals", Weapons = true}) do 
    local ESP = esp:Weapon({Icon = "rbxassetid://6034281935"})
    local World = esp:Weapon({Icon = "rbxassetid://16997762295"})
end 
-- // Visuals 
local misc = Window:Page({Name = "Misc", Weapons = true}) do 
    local Movement = misc:Weapon({Icon = "rbxassetid://6034509993"})
    local Exploits = misc:Weapon({Icon = "rbxassetid://16997954488"})
    local movementSection = Movement:Section({Name = "General", Size = 330}) do 
        movementSection:Toggle({Name = "Speed", Flag = "Speed Enabled"}):Keybind({Name = "Speed", Flag = "Speed Key", Mode = "Toggle", Callback = function()
        end})
        movementSection:Slider({Name = "Speed", Flag = 'Speed', Min = 0, Max = 100, Default = 20, Decimals = 1})
        movementSection:Toggle({Name = "Fly", Flag = "Fly Enabled"}):Keybind({Name = "Fly", Flag = "Fly Key", Mode = "Toggle", Callback = function()
        end})	
        movementSection:Slider({Name = "Fly", Flag = 'Fly Speed', Min = 0, Max = 100, Default = 20, Decimals = 1})
    end 
    -- 
    local hitEffects = Movement:Section({Name = "Hit Effects", Size = 330, Side = "Right"}) do 
        hitEffects:Toggle({Name = "Hit Marker", Flag = "Hit Marker"}):Colorpicker({Default = Color3.fromRGB(255,255,255), Flag = "Hit Marker Settings"});
        hitEffects:Toggle({Name = "3D Hit Marker", Flag = "3D Hit Marker"}):Colorpicker({Default = Color3.fromRGB(255,255,255), Flag = "3D Hit Marker Settings"});
        hitEffects:Slider({Name = "Fading Time", Flag = 'Hit Markers Time', Min = 0.1, Max = 10.0, Default = 5.0, Decimals = 0.1})
        hitEffects:Toggle({Name = "Hit Sounds", Flag = "Hit Sounds"})
        hitEffects:Dropdown({Name = "Hit Sounds", Flag = "Hit Sounds Sound", Options = sfx_names, Default = "Neverlose"})
    end 
    -- 
    local chatSpam = Movement:Section({Name = "Chat Spam", Size = 330, Side = "Left"}) do
        chatSpam:Toggle({Name = "Enabled", Flag = "Chat Spam"})
        chatSpam:Dropdown({Name = "Type", Flag = "Chat Spam Type", Options = {"Lunar", "Scottish"}, Default = "Lunar"})
        chatSpam:Slider({Name = "Delay", Flag = 'Chat Spam Delay', Suffix = "s", Min = 0.1, Max = 10.0, Default = 5.0, Decimals = 0.1})
        chatSpam:Toggle({Name = "Emojis", Flag = "Emojis"})
        chatSpam:Toggle({Name = "Symbols", Flag = "Symbol"})
        chatSpam:Toggle({Name = "Repeat", Flag = "Repeat"})
    end 
    -- 
    local characterMods = Movement:Section({Name = "Character", Size = 330, Side = "Left"}) do 
        characterMods:Toggle({Name = "Remove Chairs", Flag = "Remove Chairs", Callback = function(Bool)
        end})
        characterMods:Toggle({Name = "No Slow", Flag = "No Slow"})		
        characterMods:Toggle({Name = "Auto Reload", Flag = "Auto Reload"})	
        characterMods:Toggle({Name = "Auto Armor", Flag = "Auto Armor"})	
        
    end 
    -- 
    local cframeDesync = Exploits:Section({Name = "Desync", Size = 330, Side = "Left"}) do
        local customSliders, strafeSliders, randomSliders = {}, {}, {}
        cframeDesync:Toggle({Name = "Enabled", Flag = "Desync"}):Keybind({Name = "Desync Key", Flag = "Desync Key", Mode = "Toggle", Callback = function()
        end}) 
        local Vis = cframeDesync:Toggle({Name = "Visualize", Flag = "Desync Visualize"}); Vis:Colorpicker({Default = Color3.fromRGB(0,0,0), Flag = "Desync Visualize Outline", Alpha = 0}); Vis:Colorpicker({Default = Color3.fromHex("#7D0DC3"), Flag = "Desync Visualize Fill", Alpha = 0.7});
        cframeDesync:Toggle({Name = "Attach onto target", Flag = "Attach Target"});
        cframeDesync:Dropdown({Name = "Type", Flag = "Desync Type", Options = {"Custom", "Random", "Target Strafe", "Roll"}, Default = "Target Strafe", Callback = function(Option)
        end})
    end	
end 
-- // Settings
local Config = Window:Page({Name = "Settings"}) do
    local Menu = Config:Section({Name = "Menu", Size = 120})
    local Cfgs = Config:Section({Name = "Configs", Size = 200, Side = "Right"})
    --
    local abc = false 
    Menu:Keybind({Name = "Menu key", Flag = "MenuKey", Default = Enum.KeyCode.End, Mode = "Toggle", Callback = function() abc = not abc Library:SetOpen(abc) end})
    Menu:Dropdown({Name = "Notification Position", Flag = "Notification Position", Options = {"Top Left", "Middle"}, Default = "Top Left"})
    Menu:Label({Centered = true, Name = "Credits: \nPortal : User Interface"})
    --
    local CFGList = Cfgs:Dropdown({Name = "Cfg List", Flag = "SettingConfigurationList", Options = {}})
    Cfgs:Textbox({Flag = "SettingsConfigurationName", Placeholder = "Config name"})
    --
    local CurrentList = {};
    if not isfolder(getgenv().ConfigFolder) then 
        makefolder(getgenv().ConfigFolder)
    end 
    if not isfolder(getgenv().ConfigFolder.."/Configs") then 
        makefolder(getgenv().ConfigFolder.."/Configs")
    end 
    local function UpdateConfigList()
        local List = {};
        for idx, file in ipairs(listfiles(getgenv().ConfigFolder.."/Configs")) do
            local FileName = file:gsub(getgenv().ConfigFolder.."/Configs\\", ""):gsub(".cfg", "")
            List[#List + 1] = FileName;
        end;

        local IsNew = #List ~= #CurrentList
        if not IsNew then
            for idx, file in ipairs(List) do
                if file ~= CurrentList[idx] then
                    IsNew = true;
                    break;
                end;
            end;
        end;

        if IsNew then
            CurrentList = List;
            CFGList:Refresh(CurrentList);
        end;
    end;
    --
    Cfgs:Button({Name = "Create", Callback = function()
        local ConfigName = flags.SettingsConfigurationName;
        if ConfigName == "" or isfile(getgenv().ConfigFolder.."/Configs/" .. ConfigName .. ".cfg") then
            return;
        end;
        writefile(getgenv().ConfigFolder.."/Configs/" .. ConfigName .. ".cfg", Library:GetConfig());
        UpdateConfigList();
    end})
    Cfgs:Button({Name = "Save", Callback = function()
        local SelectedConfig = flags.SettingConfigurationList;
        if SelectedConfig then
            writefile(getgenv().ConfigFolder.."/Configs/" .. SelectedConfig .. ".cfg", Library:GetConfig())
        end;
    end})
    Cfgs:Button({Name = "Load", Callback = function()
        local SelectedConfig = flags.SettingConfigurationList;
        if SelectedConfig then
            Library:LoadConfig(readfile(getgenv().ConfigFolder.."/Configs/" .. SelectedConfig .. ".cfg"))
        end
    end})
    Cfgs:Button({Name = "Delete", Callback = function()
        local SelectedConfig = flags.SettingConfigurationList;
        if SelectedConfig then
            delfile(getgenv().ConfigFolder.."/Configs/" .. SelectedConfig .. ".cfg")
        end
        UpdateConfigList();
    end})
    Cfgs:Button({Name = "Refresh", Callback = function()
        UpdateConfigList();
    end})
    Cfgs:Toggle({Name = "Keybind List", Flag = "Keybind List", Callback = function(Bool)
        PlaceHolderUI.Enabled = Bool
    end})
    UpdateConfigList();
end	