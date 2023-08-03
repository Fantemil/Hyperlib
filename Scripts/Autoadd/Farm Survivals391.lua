local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("TITLE", "DarkTheme")

local Tab = Window:NewTab("TabName")

local Section = Tab:NewSection("Section Name")

Section:NewToggle("AutoFarm", "ToggleInfo", function(state)
    if state then
        _G.loop = true
        while _G.loop == true do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26.69416618347168, 38.10498809814453, -3.074869155883789)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(40.01099395751953, 38.104610443115234, -3.6999993324279785)
    end
    else
        _G.loop = false
        while _G.loop == true do wait()
        print("turned off")
        end
    end
end)