getgenv().enabled = true -- true to enable, false to disable

while getgenv().enabled == true do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(200, 4, 520) -- teleporting player to win thing
    task.wait(17) -- waiting for cooldown
end