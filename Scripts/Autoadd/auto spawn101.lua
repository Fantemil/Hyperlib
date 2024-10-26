_G.oop = true
local Player = game:GetService("Players").LocalPlayer

while true do
    if _G.oop and Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.Health <= 0 then
        wait(4)
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Deployed"):FireServer()
wait (1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(129.61499, 190.687515, 644.115723, 0.00438544154, -6.84041579e-09, -0.999990404, 5.66261811e-08, 1, -6.5921486e-09, 0.999990404, -5.65967255e-08, 0.00438544154)
    end
    wait(1)
end