getgenv().morbin = true -- true = work false = no work
while getgenv().morbin == true do
    task.wait()
    game:GetService("Players").LocalPlayer.PlayerGui.LocalScript.RemoteEvent:FireServer()
end