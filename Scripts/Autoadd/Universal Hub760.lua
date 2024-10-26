if Rayfield then
    Rayfield:Destroy()
end
print([[#######################################################################################
            #                                                                                     #
            #          ####  #####   ######   ########        ########   ######### ####   ####    #
            #         #### #####  ########## ##########      ########## ###        ####  ####     #
            #        #########   ####   ###  ####  ####      ####  #### #########  #### ####      #
            =        #########  #####       ####  ####      ####  ##### ########   ########       #
            #       ##### ####  ########## ###########     ########### ###         ######         #
            #      #####  #####  ########  #########       #########  #########    #####          #
            #                                                                                     #
            #######################################################################################
            #  CREDIT:      ##   Universal-Hub                                                    #
            #  -KCD Dev     ##   -Press K to Hide UI                                              #
            #  -KienPC1234  ##   -Press Q to Toggle Tracer                                        #
            #  -Exunys      ##   -Press Right Click to use Aim Bot                                #
            #               ##   -Github Page:https://github.com/KienPC1234/Universal-Hub         #
            #######################################################################################]])
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/KienPC1234/Universal-Hub/main/Module/Rayfield.lua'))()
getgenv().SecureMode = _G.SecureMode
loadstring(game:HttpGet("https://raw.githubusercontent.com/KienPC1234/Universal-Hub/main/Module/ESP.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KienPC1234/Universal-Hub/main/Module/Hitbox.lua"))()
local loadstringTracersExists = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Tracers-Script/main/Tracers.lua"))()
end)
local loadstringAimBotExists = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
end)
if loadstringAimBotExists then
    print("AimBot Loaded!")
else
    print("Error, Can't Load AimBot, using Backup")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KienPC1234/Universal-Hub/main/Backup/Aimbot.lua"))()
end
if loadstringTracersExists then
    print("Tracer Loaded!")
else
    print("Error, Can't Load Tracer, using Backup")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KienPC1234/Universal-Hub/main/Backup/Tracers.lua"))()
end
_G.TracersVisible = false
_G.DisableKey = nil
_G.ModeSkipKey =nil
ExunysDeveloperAimbot.Load()
ExunysDeveloperAimbot.Settings.Enabled = false
--Get Player Path
local partNames = {} 
function GetPlayerPath()
    local player = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
    local character = player.Character
    if character then
        local parts = character:GetDescendants() 
        for _, part in ipairs(parts) do
            if part:IsA("BasePart") then
                if part.Name~="Handle" then   
                    table.insert(partNames, part.Name)                  
                end                
            end
        end
    
    else
        wait(1)
        GetPlayerPath()
    end
end
GetPlayerPath()
local Window = Rayfield:CreateWindow({
    Name = "Universal Hub",
    LoadingTitle = "Universal Hub",
    LoadingSubtitle = "by KCD Dev",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "UH_Save", 
       FileName = "Universal_HUB_Save"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink", 
        RememberJoins = true 
     },
     KeySystem = false, 
     KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key", 
        SaveKey = true, 
        GrabKeyFromSite = false, 
        Key = {"Hello"} 
     }
 })
local Tab = Window:CreateTab("Hit Box", 18298162898)
local Tab2 = Window:CreateTab("ESP", 18298164473)
local Tab3 = Window:CreateTab("Aim Bot",18312822691)
local Tab4 = Window:CreateTab("Misc", 18314098431)
local Toggle1 = Tab:CreateToggle({
    Name = "Hit Box Toggle",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value==false then
            ClearHitBox()
        end
        _G.HitboxEnabled = Value
    end,
 })
local Slider = Tab:CreateSlider({
   Name = "Hit Box Size",
   Range = {0, 50},
   Increment = 0.5,
   Suffix = " Studs",
   CurrentValue = 20,
   Flag = "Slider", 
   Callback = function(Value)
    _G.HSize = Value
   end,
})
local Slider99 = Tab:CreateSlider({
    Name = "Hit Box Head Size",
    Range = {0,6},
    Increment = 0.5,
    Suffix = " Studs",
    CurrentValue = 5,
    Flag = "Slider99", 
    Callback = function(Value)
         _G.Size = Value
    end,
 })
local Slider2 = Tab:CreateSlider({
    Name = "Transparency",
    Range = {0, 1},
    Increment = 0.1,
    Suffix = "",
    CurrentValue = 0.7,
    Flag = "Slider2", 
    Callback = function(Value)
        if _G.HitboxEnabled == true then
           _G.Transparency=Value
        end   
    end,
 })
local Dropdown = Tab:CreateDropdown({
   Name = "Hit Box Type",
   Options = {"Head","HumanoidRootPart"},
   CurrentOption = {"HumanoidRootPart"},
   MultipleOptions = false,
   Flag = "Dropdown", 
   Callback = function(Option)
    if tostring(Option[1])=="Head" then
        _G.HitboxType = 2
    else 
        _G.HitboxType = 1
    end
   end,
})
--Tab2
local Button = Tab2:CreateButton({
    Name = "Use UnnamedESP",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
    end,
 })
local Label = Tab2:CreateLabel("ESP")
local Toggle2 = Tab2:CreateToggle({
    Name = "ESP Toggle",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value == false then
            _G.EspEnabled = false
            DeleteESP()
        else
            _G.EspEnabled = true
       end
    end,
 })
local Toggle3 = Tab2:CreateToggle({
   Name = "ESP Visible Check",
   CurrentValue = false,
   Flag = "Toggle3",
   Callback = function(Value)
    _G.EspVisibleCheck =Value
    ESPDethMode()
   end,
})
local Label = Tab2:CreateLabel("Tracer Config")
local Toggle4 = Tab2:CreateToggle({
   Name = "Tracer Toggle",
   CurrentValue = false,
   Flag = "Toggle4",
   Callback = function(Value)
       _G.TracersVisible =Value
   end,
})
local Toggle7 = Tab2:CreateToggle({
    Name = "Tracer Team Check",
    CurrentValue = false,
    Flag = "Toggle7",
    Callback = function(Value)
        _G.TeamCheck =Value
    end,
 })
local Slider4 = Tab2:CreateSlider({
   Name = "Tracer Transparency",
   Range = {0, 1},
   Increment = 0.1,
   Suffix = "",
   CurrentValue = 0.7,
   Flag = "Slider4", 
   Callback = function(Value)
    _G.TracerTransparency=Value
   end,
})
local Slider90 = Tab2:CreateSlider({
    Name = "Tracer Thickness",
    Range = {0, 100},
    Increment = 1,
    Suffix = "",
    CurrentValue = 1,
    Flag = "Slider90", 
    Callback = function(Value)
        _G.TracerThickness=Value
    end,
 })
local Dropdown2 = Tab2:CreateDropdown({
   Name = "Tracers Position",
   Options = {"From Mouse","From Center","From Bottom"},
   CurrentOption = {"From Bottom"},
   MultipleOptions = false,
   Flag = "Dropdown2", 
   Callback = function(Option)
    if tostring(Option[1])=="From Mouse" then
        _G.FromMouse = true
        _G.FromCenter = false
        _G.FromBottom = false
    elseif tostring(Option[1])=="From Center" then
        _G.FromMouse = false
        _G.FromCenter = true
        _G.FromBottom = false
    else
        _G.FromMouse = false
        _G.FromCenter = false
        _G.FromBottom = true
    end
   end,
})
local ColorPicker1 = Tab2:CreateColorPicker({
    Name = "Tracer Color",
    Color = Color3.fromRGB(255, 80, 10),
    Flag = "ColorPicker1", 
    Callback = function(Value)
        _G.TracerColor = Value
    end
})
local Keybind1 = Tab2:CreateKeybind({
    Name = "Tracer Keybind",
    CurrentKeybind = "Q",
    HoldToInteract = false,
    Flag = "Keybind1", 
    Callback = function(Keybind)
        if _G.TracersVisible == true then
            _G.TracersVisible = false
        else
            _G.TracersVisible = true
        end
    end,
 })

--aimbot Tab
local Labelaims = Tab3:CreateLabel("AimBot Setting")
local Paragraph = Tab3:CreateParagraph({Title = "", Content = "Right Click to Use AimBot"})
local Toggleaim = Tab3:CreateToggle({
    Name = "AimBot Enabled",
    CurrentValue = false,
    Flag = "Toggleaim",
    Callback = function(Value)
        ExunysDeveloperAimbot.Settings.Enabled = Value
    end,
 })
local Toggleaim1 = Tab3:CreateToggle({
   Name = "AimBot Toggle",
   CurrentValue = false,
   Flag = "Toggleaim1",
   Callback = function(Value)
     ExunysDeveloperAimbot.Settings.Toggle= Value      
   end,
})
local Dropdownaim2 = Tab3:CreateDropdown({
    Name = "AimBot Lock Part",
    Options = partNames,
    CurrentOption = {"Head"},
    MultipleOptions = false,
    Flag = "Dropdownaim2", 
    Callback = function(Option)
        print(tostring(Option[1]))
        ExunysDeveloperAimbot.Settings.LockPart = tostring(Option[1])
    end,
 })
local Toggleaim2 = Tab3:CreateToggle({
    Name = "AimBot Team Check",
    CurrentValue = false,
    Flag = "Toggleaim2",
    Callback = function(Value)
        ExunysDeveloperAimbot.Settings.TeamCheck= Value        
    end,
 })
 local Toggleaim3 = Tab3:CreateToggle({
    Name = "AimBot Alive Check",
    CurrentValue = true,
    Flag = "Toggleaim3",
    Callback = function(Value)
        ExunysDeveloperAimbot.Settings.AliveCheck = Value        
    end,
 })
 local Toggleaim4 = Tab3:CreateToggle({
    Name = "AimBot Wall Check",
    CurrentValue = false,
    Flag = "Toggleaim4",
    Callback = function(Value)
        ExunysDeveloperAimbot.Settings.WallCheck= Value        
    end,
 })
 local Toggleaim5 = Tab3:CreateToggle({
    Name = "AimBot Prediction",
    CurrentValue = false,
    Flag = "Toggleaim5",
    Callback = function(Value)
        ExunysDeveloperAimbot.Settings.OffsetToMoveDirection = Value        
    end,
 })
 local Paragraph = Tab3:CreateParagraph({Title = "", Content = "AimBot Prediction is used to predict the bullet's falling point to help increase the hit rate when the enemy moves!"})
 local Slideraim = Tab3:CreateSlider({
    Name = "AimBot Amplitude",
    Range = {1, 30},
    Increment = 1,
    Suffix = "",
    CurrentValue = 15,
    Flag = "Slideraim",
    Callback = function(Value)
        ExunysDeveloperAimbot.Settings.OffsetToMoveDirection = Value        
    end,
 })
 local Dropdownaim = Tab3:CreateDropdown({
    Name = "AimBot Lock Mode",
    Options = {"CFrame","mousemoverel"},
    CurrentOption = {"CFrame"},
    MultipleOptions = false,
    Flag = "Dropdownaim", 
    Callback = function(Option)
       if tostring(Option[1]) == "CFrame" then
            ExunysDeveloperAimbot.Settings.LockMode = 1   
        else
            ExunysDeveloperAimbot.Settings.LockMode = 2   
       end
    end,
 })
 local Slideraims = Tab3:CreateSlider({
    Name = "AimBot CFrame Sensitivity",
    Range = {0, 4},
    Increment = 0.1,
    Suffix = "",
    CurrentValue = 0,
    Flag = "Slideraims",
    Callback = function(Value)
        ExunysDeveloperAimbot.Settings.Sensitivity = Value        
    end,
 })
 local Slideraims2 = Tab3:CreateSlider({
    Name = "AimBot mousemoverel Sensitivity",
    Range = {0, 4},
    Increment = 0.1,
    Suffix = "",
    CurrentValue = 3.5,
    Flag = "Slideraims2",
    Callback = function(Value)
        ExunysDeveloperAimbot.Settings.Sensitivity2 = Value        
    end,
 })
local Labelaims2 = Tab3:CreateLabel("AimBot FOV Settings")
local Toggleaim7 = Tab3:CreateToggle({
    Name = "FOV Enabled",
    CurrentValue = true,
    Flag = "Toggleaim7",
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.Enabled = Value        
    end,
 })
local Toggleaim8 = Tab3:CreateToggle({
   Name = "FOV Visible",
   CurrentValue = true,
   Flag = "Toggleaim8",
   Callback = function(Value)
       ExunysDeveloperAimbot.FOVSettings.Visible = Value        
   end,
})
local Slideraims4 = Tab3:CreateSlider({
    Name = "FOV Radius",
    Range = {0, 180},
    Increment = 10,
    Suffix = "",
    CurrentValue = 90,
    Flag = "Slideraims4",
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.Radius = Value
    end,
 })
 local ColorPicker3 = Tab3:CreateColorPicker({
    Name = "FOV Color",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker3", 
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.Color= Value
    end
})
 local ColorPicker4 = Tab3:CreateColorPicker({
    Name = "FOV Outline Color",
    Color = Color3.fromRGB(0, 0, 0),
    Flag = "ColorPicker4", 
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.OutlineColor= Value
    end
})
local ColorPicker55 = Tab3:CreateColorPicker({
    Name = "FOV Locked Color",
    Color = Color3.fromRGB(255, 150, 150),
    Flag = "ColorPicker55", 
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.LockedColor= Value
    end
})
 local Slideraims6 = Tab3:CreateSlider({
    Name = "FOV Thickness",
    Range = {1, 100},
    Increment = 1,
    Suffix = "",
    CurrentValue = 1,
    Flag = "Slideraims6",
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.Thickness = Value
    end,
 })
 local Toggleaim10 = Tab3:CreateToggle({
    Name = "FOV Rainbow Color Toggle",
    CurrentValue = false,
    Flag = "Toggleaim10",
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.RainbowColor = Value        
    end,
 })
 local Toggleaim11 = Tab3:CreateToggle({
    Name = "FOV Rainbow Outline Color Toggle",
    CurrentValue = false,
    Flag = "Toggleaim11",
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.RainbowOutlineColor = Value        
    end,
 })
 local Toggleaim9 = Tab3:CreateToggle({
    Name = "FOV Filled",
    CurrentValue = false,
    Flag = "Toggleaim9",
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.Filled = Value        
    end,
 })
 local Slideraims65 = Tab3:CreateSlider({
    Name = "FOV Transparency",
    Range = {0, 1},
    Increment = 0.1,
    Suffix = "",
    CurrentValue = 1,
    Flag = "Slideraims65",
    Callback = function(Value)
        ExunysDeveloperAimbot.FOVSettings.Transparency = Value
    end,
 })
 local Button2 = Tab4:CreateButton({
    Name = "Use Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
 })
 local Button3 = Tab4:CreateButton({
    Name = "Use CMD-X",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
    end,
 })
 local Button6 = Tab4:CreateButton({
    Name = "Save Current Setting",
    Callback = function()        
        pcall(function()
            delfile("UH_Save\\Universal_HUB_Save.rfld")
            wait(1)
            delfile("UH_Save\\Universal_HUB_Save.rfld")
            Rayfield:LoadConfiguration()
            Rayfield:Notify({
                Title = "INFO",
                Content = "Saving...",
                Duration = 5,
                Image = 18315824167,
             })  
         end)      
         wait(6)
        Rayfield:Notify({
            Title = "INFO",
            Content = "Saved!",
            Duration = 6.5,
            Image = 18315824167,
         })
    end,
 })
 local Button4 = Tab4:CreateButton({
    Name = "Load Current Setting",
    Callback = function()  
        pcall(function()
            Rayfield:LoadConfiguration()
            Rayfield:Notify({
                Title = "INFO",
                Content = "Loading...",
                Duration = 5,
                Image = 18315824167,
             })     
         end)      
        wait(5)
        Rayfield:Notify({
            Title = "INFO",
            Content = "Loaded!",
            Duration = 6.5,
            Image = 18315824167,
         })         
    end,
 })
 local Button5 = Tab4:CreateButton({
    Name = "Delete Current Setting",
    Callback = function()      
        pcall(function()
            delfile("UH_Save\\Universal_HUB_Save.rfld")
            wait(1)
            delfile("UH_Save\\Universal_HUB_Save.rfld")
            Rayfield:Notify({
            Title = "INFO",
            Content = "Deleting...",
            Duration = 5,
            Image = 18315824167,
         })
        end) 
        wait(4)
        Rayfield:Notify({
            Title = "INFO",
            Content = "Deleted!",
            Duration = 6.5,
            Image = 18315824167,
         })
    end,
 })