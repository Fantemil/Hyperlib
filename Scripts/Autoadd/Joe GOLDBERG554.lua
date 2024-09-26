local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TITLE", "Midnight")
local Tab = Window:NewTab("Joe Goldberg")
    local Section = Tab:NewSection("Skill")
        Section:NewKeybind("Choke Slam", "KeybindInfo", Enum.KeyCode.Z, function()
            local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Joe.Remotes.ChokeSlam:FireServer(unpack(args))            
    end)
    Section:NewKeybind("Bugs Slam", "KeybindInfo", Enum.KeyCode.X, function()
        local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Characters.Joe.Remotes.BugsSlam:FireServer(unpack(args))        
    end)
    Section:NewKeybind("The Cage", "KeybindInfo", Enum.KeyCode.C, function()
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").Characters.Joe.Remotes.TheCage:FireServer()
    end)
    Section:NewKeybind("Finisher", "KeybindInfo", Enum.KeyCode.V, function()
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").Characters.Joe.Remotes.Finisher:FireServer()
    end)
    Section:NewKeybind("Counter", "KeybindInfo", Enum.KeyCode.T, function()
        local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("Players").LocalPlayer.Character.Joe.CounterActivate:FireServer(unpack(args))                
    end)
local Tab = Window:NewTab("Cradit")
    local Section = Tab:NewSection("UI")
    Section:NewKeybind("Hide UI", "KeybindInfo", Enum.KeyCode.P, function()
 Library:ToggleUI()
end)