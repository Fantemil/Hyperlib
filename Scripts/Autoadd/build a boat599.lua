local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Babft", "Ocean")

local Tab = Window:NewTab("Autofarm")
local Section = Tab:NewSection("Autofarm")

Section:NewToggle("Toggle autofarm", "ToggleInfo", function(state)
    if state then
        _G.autoTap = true;
while _G.autoTap == true do 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-61.734951, 80.9129333, 1356.86792, -0.978096783, 0.131123319, 0.161658198, 0.159390599, 0.97130245, 0.176539376, -0.133870587, 0.198439389, -0.970927656)
wait(15)
end
    else
        _G.autoTap = false;
    end
end)

print("Ui made by zuny, thanks for using")