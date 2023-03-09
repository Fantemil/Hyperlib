getgenv().crash = true
while getgenv().crash == true do
    task.wait(0.5)
game:GetService("Players").LocalPlayer.Character.Goro.Bomb.Fire:FireServer()
end