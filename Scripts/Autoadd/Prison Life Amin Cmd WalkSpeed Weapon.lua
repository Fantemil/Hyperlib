local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("nihub", "DarkTheme")

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

    MainSection:NewButton("ctrl+click tp", "teleport for you", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ni7kobv/nihub/main/scripts/ctrl%20click%20tp"))()
    end)

    MainSection:NewButton("get admin", "admin", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
    end)

local Main = Window:NewTab("Gun")
local MainSection = Main:NewSection("Gun")

    MainSection:NewButton("take Remington 870", "take gun", function()
local args = {
    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
}

workspace.Remote.ItemHandler:InvokeServer(unpack(args))
    end)

    MainSection:NewButton("take Ak-47", "take gun", function()
local args = {
    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("AK-47").ITEMPICKUP
}

workspace.Remote.ItemHandler:InvokeServer(unpack(args))

    end)

    MainSection:NewButton("take M9", "take gun", function()
        local args = {
    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("M9").ITEMPICKUP
}

workspace.Remote.ItemHandler:InvokeServer(unpack(args))

    end)

    MainSection:NewButton("take hammer", "take hammer", function()
        
local args = {
    [1] = workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP
}

workspace.Remote.ItemHandler:InvokeServer(unpack(args))

    end)

local Main = Window:NewTab("teleport")
local MainSection = Main:NewSection("teleport for you")

    MainSection:NewButton("teleport to prison", "teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888.399658, 97.1383057, 2388.50073, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

    MainSection:NewButton("teleport to criminals base", "teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-976.214172, 109.323769, 2054.14673, -0.00879671518, -9.57650315e-08, -0.999961317, -3.59545549e-09, 1, -9.57371071e-08, 0.999961317, 2.75314438e-09, -0.00879671518)
end)

    MainSection:NewButton("teleport to police base", "teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.327698, 99.9899826, 2263.87329, -0.995003045, 2.23593339e-08, -0.0998444781, 2.25169554e-08, 1, -4.51757104e-10, 0.0998444781, -2.6976934e-09, -0.995003045)
end)


    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("WalkSpeed", "SPEED!!", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    PlayerSection:NewSlider("JumpPower", "JUMP HIGH!!", 500, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    PlayerSection:NewButton("Reset walkspeed and jumppower", "Resets to all defaults", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Reset", Text = "WalkSpeed and JumpPower reseted !"})
    end)

    local Other = Window:NewTab("Misc")
    local OtherSection = Other:NewSection("Misc")

    OtherSection:NewButton("discord link", "copy discord link", function()
               game.StarterGui:SetCore("SendNotification", {
        Title = 'Discord';
        Text = 'discord link copied in your keyboard!';
        Duration = 1;
       })
       setclipboard('https://discord.gg/ah7nGsWCbU')
    end)