local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Tycoon script v1", "BloodTheme")

--New Tab

local Tab = Window:NewTab("Local")
local Section = Tab:NewSection("Local")

Section:NewSlider("Walkspeed", "SliderInfo", 1000, 0, function(s) -- 1000 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewToggle("Infinite Jump", "By toggling this you can jump infinitely.", function(state)    ---put your script to enabled true
    if state then                                                                                                                                              ---should be the same script
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
        print("Infinite Jump: ON")
    else
        InfiniteJumpEnabled = false                                                                                                            ---Put your script  disabled false
        game:GetService("UserInputService").JumpRequest:connect(function()         
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
        print("Infinite Jump: OFF")
    end
end)

Section:NewTextBox("Set WalkSpeed", "Info", function(txt)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

Section:NewTextBox("Set JumpPower", "Info", function(txt)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)

Section:NewButton("Reset Walkspeed", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Section:NewButton("Reset Jumpower", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

local Tab = Window:NewTab("Tools")
local Section = Tab:NewSection("Tools")

Section:NewButton("TP tool", "ButtonInfo", function()
           loadstring(game:HttpGet("https://pastefy.app/IpjIW7ZH/raw"))()
end)

Section:NewButton("Noclip Gui", "ButtonInfo", function()
           loadstring(game:HttpGet("https://pastebin.com/raw/B5xRxTnk",true))()
end)

Section:NewButton("Hitbox", "ButtonInfo", function()
           loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Update-script-hitbox-9326"))()
end)

