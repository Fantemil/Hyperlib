local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Mimic Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
 Name = "Popular",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Popular"
})

Tab:AddButton({
    Name = "Walk Speed",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    end
})

Tab:AddButton({
    Name = "Jump Power",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 300
    end
})

Tab:AddButton({
    Name = "God Mode",
    Callback = function()
        Workspace[""..game.Players.LocalPlayer.Name].KillScript:Destroy()
    end
})



local Tab = Window:MakeTab({
 Name = "Player",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Player"
})

Tab:AddButton({
    Name = "God Mode",
    Callback = function()
        Workspace[""..game.Players.LocalPlayer.Name].KillScript:Destroy()
    end
})

Tab:AddButton({
    Name = "Jump Power",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 300
    end
})

Tab:AddButton({
    Name = "Walk Speed",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    end
})


Tab:AddButton({
    Name = "Made by Beluga_white_editon",
    Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10000
end
})




OrionLib:MakeNotification({
 Name = "Mimic Hub",
 Content = "Notification content... what will it say??",
 Image = "rbxassetid://4483345998",
 Time = 5
})

OrionLib:Init()