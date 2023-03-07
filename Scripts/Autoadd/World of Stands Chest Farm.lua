_G.chestTp = true -- true to enable and false to disable 
-- for it work unequip ur stand
-- slow because i don't know how to bypass anti teleport or anti cheat x)
-- don't change script below or try to make it faster
while _G.chestTp == true do
    for i, v in pairs(game:GetService("Workspace").ChestSpawns:GetChildren()) do
        local plyr = game.Players.LocalPlayer.Character.HumanoidRootPart
            plyr.CFrame = v.CFrame
            wait(1)
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
            wait(10)
    end
    wait()
end