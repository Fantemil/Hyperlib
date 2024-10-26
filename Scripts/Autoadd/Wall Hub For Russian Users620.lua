local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/xwW9BAbn')))()

local Window = OrionLib:MakeWindow({Name = "Ð¡ÑÐµÐ½Ð° Ð¥Ð°Ð±", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--[[
Name = <string> - ÐÐ¼Ñ Ð¸Ð½ÑÐµÑÑÐµÐ¹ÑÐ°.
HidePremium = <bool> - ÐÐ¾ÐºÐ°Ð·ÑÐ²Ð°ÑÑ Ð»Ð¸ ÑÑÐ°ÑÑÑ Premium Ð¿Ð¾Ð»ÑÐ·Ð¾Ð²Ð°ÑÐµÐ»Ñ.
SaveConfig = <bool> - ÐÐºÐ»ÑÑÐ°ÐµÑ ÑÐ¾ÑÑÐ°Ð½ÐµÐ½Ð¸Ðµ ÐºÐ¾Ð½ÑÐ¸Ð³ÑÑÐ°ÑÐ¸Ð¸ Ð² Ð¸Ð½ÑÐµÑÑÐµÐ¹ÑÐµ.
ConfigFolder = <string> - ÐÐ¼Ñ Ð¿Ð°Ð¿ÐºÐ¸, Ð³Ð´Ðµ ÑÐ¾ÑÑÐ°Ð½ÑÑÑÑÑ ÐºÐ¾Ð½ÑÐ¸Ð³ÑÑÐ°ÑÐ¸Ð¸.
IntroEnabled = <bool> - ÐÐ¾ÐºÐ°Ð·ÑÐ²Ð°ÑÑ Ð»Ð¸ Ð°Ð½Ð¸Ð¼Ð°ÑÐ¸Ñ Ð²ÑÑÑÐ¿Ð»ÐµÐ½Ð¸Ñ.
IntroText = <string> - Ð¢ÐµÐºÑÑ Ð´Ð»Ñ Ð¿Ð¾ÐºÐ°Ð·Ð° Ð² Ð°Ð½Ð¸Ð¼Ð°ÑÐ¸Ð¸ Ð²ÑÑÑÐ¿Ð»ÐµÐ½Ð¸Ñ.
IntroIcon = <string> - URL Ð¸Ð·Ð¾Ð±ÑÐ°Ð¶ÐµÐ½Ð¸Ñ Ð´Ð»Ñ Ð¸ÑÐ¿Ð¾Ð»ÑÐ·Ð¾Ð²Ð°Ð½Ð¸Ñ Ð² Ð°Ð½Ð¸Ð¼Ð°ÑÐ¸Ð¸ Ð²ÑÑÑÐ¿Ð»ÐµÐ½Ð¸Ñ.
Icon = <string> - URL Ð¸Ð·Ð¾Ð±ÑÐ°Ð¶ÐµÐ½Ð¸Ñ Ð´Ð»Ñ Ð¾ÑÐ¾Ð±ÑÐ°Ð¶ÐµÐ½Ð¸Ñ Ð½Ð° Ð¾ÐºÐ½Ðµ.
CloseCallback = <function> - Ð¤ÑÐ½ÐºÑÐ¸Ñ, Ð²ÑÐ¿Ð¾Ð»Ð½ÑÐµÐ¼Ð°Ñ Ð¿ÑÐ¸ Ð·Ð°ÐºÑÑÑÐ¸Ð¸ Ð¾ÐºÐ½Ð°.
]] local Tab = Window:MakeTab({
    Name = "ÐÐºÐ»Ð°Ð´ÐºÐ° 1",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[
Name = <string> - ÐÐ¼Ñ Ð²ÐºÐ»Ð°Ð´ÐºÐ¸.
Icon = <string> - ÐÐºÐ¾Ð½ÐºÐ° Ð²ÐºÐ»Ð°Ð´ÐºÐ¸.
PremiumOnly = <bool> - ÐÐ¾ÑÑÑÐ¿Ð½Ð¾ ÑÐ¾Ð»ÑÐºÐ¾ Ð´Ð»Ñ Ð¿Ð¾Ð»ÑÐ·Ð¾Ð²Ð°ÑÐµÐ»ÐµÐ¹ Sirus Premium.
]] local Section = Tab:AddSection({
    Name = "Ð¡ÐµÐºÑÐ¸Ñ"
})

Tab:AddParagraph("YouTube ÐÐ°Ð½Ð°Ð»","Luvinq_FL0WERS - Roblox Scripts")

Tab:AddParagraph("Discord Ð¡ÐµÑÐ²ÐµÑ","https://discord.gg/RRY7PBhw")

Tab:AddToggle({
    Name = "ÐÐµÑÐµÐºÐ»ÑÑÐ¸ÑÑ ÑÐºÐ¾ÑÐ¾ÑÑÑ ÑÐ¾Ð´ÑÐ±Ñ",
    Default = false,
    Callback = function(Value)
        if Value then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60 -- Ð£ÑÑÐ°Ð½Ð¾Ð²Ð¸ÑÐµ Ð¶ÐµÐ»Ð°ÐµÐ¼ÑÑ ÑÐºÐ¾ÑÐ¾ÑÑÑ ÑÐ¾Ð´ÑÐ±Ñ Ð·Ð´ÐµÑÑ
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
})

Tab:AddToggle({
    Name = "ÐÐµÑÐµÐºÐ»ÑÑÐ¸ÑÑ ÑÐ¸Ð»Ñ Ð¿ÑÑÐ¶ÐºÐ°",
    Default = false,
    Callback = function(Value)
        if Value then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
        else
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 60
        end
    end
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "Ð£Ð±Ð¸ÑÑ ÐÑÑÑ (ÐÐµÐ²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ Ð¾ÑÑÐ°Ð½Ð¾Ð²Ð¸ÑÑ)",
    Callback = function()
           loadstring(game:HttpGet("https://pastebin.com/raw/pp51aaHx"))()   
      end    
})

Tab:AddButton({
    Name = "Ð£Ð´Ð°Ð»Ð¸ÑÑ Ð´Ð²ÐµÑÐ¸",
    Callback = function()
           game.Workspace.Doors:Destroy()   
      end    
})

Tab:AddButton({
    Name = "Ð£Ð´Ð°Ð»Ð¸ÑÑ Ð±Ð°Ð·Ñ Ð¿ÑÐµÑÑÑÐ¿Ð½Ð¸ÐºÐ¾Ð²",
    Callback = function()
           game.Workspace.Warehouses:Destroy()   
      end    
})

Tab:AddButton({
    Name = "ÐÑÐ°Ð²Ð¸ÑÐ°ÑÐ¸Ñ 70",
    Callback = function()
           game.Workspace.Gravity = 70
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÐºÐ½Ð¾Ð¿ÐºÐ¸.
Callback = <function> - Ð¤ÑÐ½ÐºÑÐ¸Ñ ÐºÐ½Ð¾Ð¿ÐºÐ¸.
]] local Tab = Window:MakeTab({
    Name = "Ð¥Ð°Ð±Ñ",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[
Name = <string> - ÐÐ¼Ñ Ð²ÐºÐ»Ð°Ð´ÐºÐ¸.
Icon = <string> - ÐÐºÐ¾Ð½ÐºÐ° Ð²ÐºÐ»Ð°Ð´ÐºÐ¸.
PremiumOnly = <bool> - ÐÐ¾ÑÑÑÐ¿Ð½Ð¾ ÑÐ¾Ð»ÑÐºÐ¾ Ð´Ð»Ñ Ð¿Ð¾Ð»ÑÐ·Ð¾Ð²Ð°ÑÐµÐ»ÐµÐ¹ Sirus Premium.
]] local Section = Tab:AddSection({
    Name = "ÐÑÐ±ÐµÑÐ¸ÑÐµ Ð²Ð°Ñ Ð»ÑÐ±Ð¸Ð¼ÑÐ¹ ÑÐºÑÐ¸Ð¿Ñ-ÑÐ°Ð±?"
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "Fe Energize Gui",
    Callback = function()
           loadstring(game:HttpGet("https://pastebin.com/raw/0MLPL32f", true))()  
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "Fly GUI v3",
    Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "Ro Chip Panel",
    Callback = function()
           loadstring(game:HttpGet("https://pastebin.com/raw/ycpE2mF4"))()   
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "Ð¼ÑÐ·ÑÐºÐ°Ð»ÑÐ½ÑÐ¹ ÑÐµÐ½ÑÑ(ÐºÐ»ÑÑ)",
    Callback = function()
           loadstring(game:HttpGet("https://pastebin.com/raw/kX5VhDTN"))()
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "Infinite Yield Fe Edited",
    Callback = function()
           loadstring(game:HttpGet(('https://pastebin.com/raw/yRHbQADj'),true))()
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "X Rawnder (Prison Life)",
    Callback = function()
           loadstring(game:HttpGet("https://bit.ly/x-Rawnder"))()
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "Tiger Admin (Prison Life)",
    Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/Tigeradmin"))()
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "PLadmin (Prison Life)",
    Callback = function()
           loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "Prevail X (Prison Life)",
    Callback = function()
           loadstring(game:HttpGet("https://pastebin.com/raw/mHfK0Xk4", true))()
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "Owl Hub (Prison Life)",
    Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
      end    
})

--[[
Name = <string> - ÐÐ¼Ñ ÑÐµÐºÑÐ¸Ð¸.
]] Tab:AddButton({
    Name = "PrisonWare (Prison Life)",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()   
      end    
})