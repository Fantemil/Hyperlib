getgenv().AutoTrain = true

while getgenv().AutoTrain == true and task.wait(0.01) do
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Training"):FireServer("Strength")
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Training"):FireServer("Defense")
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Training"):FireServer("Speed")
end

--Anti Afk
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)