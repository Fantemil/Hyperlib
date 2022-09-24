local rotateremote = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Events.RotateCreation

function rotate()
    rotateremote:FireServer()
end

_G.Enabled = true
while _G.Enabled do
    coroutine.wrap(rotate)()
    task.wait(.01)
end