--[[sell flowers
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.4719238, 1775.25439, 794.307129, 0.309441596, 1.21149185e-07, -0.950918436, -1.43326124e-08, 1, 1.22738271e-07, 0.950918436, -2.43511806e-08, 0.309441596)
--]]

function sell()
    --tpes you to the merchant and sells everything
   
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.537384, 1758.25513, 654.549805, -0.01525662, 7.10505876e-10, -0.999883592, -2.68973341e-08, 1, 1.12099874e-09, 0.999883592, 2.69113052e-08, -0.01525662)
    task.wait(0.5)

    local vm = game:GetService("VirtualInputManager")
    vm:SendKeyEvent(true, "E", false, game)

    task.wait(0.5)

    for _, v in pairs(
        getconnections(
            game.Players.LocalPlayer.PlayerGui.DIALOGUE.MainFrame.Dialogue1.AnswerButton.MouseButton1Click
        )
    ) do
        v:Fire()
        task.wait(0.5)
        v:Fire()
    end

    for _, v in pairs(
        getconnections(
            game.Players.LocalPlayer.PlayerGui.DIALOGUE.MainFrame.DialogueEnd.CancelButton.MouseButton1Click
        )
    ) do
    task.wait(0.5)
        v:Fire()
    end
end

sell()