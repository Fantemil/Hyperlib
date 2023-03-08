--Made by TrapFlaco
_G.WS = "56";
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    Humanoid.WalkSpeed = _G.WS;
    end)
    Humanoid.WalkSpeed = _G.WS;

getgenv().loopLevel = true; -- change to "false" for stop
while getgenv().loopLevel do task.wait(0.20  )
game:GetService("ReplicatedStorage").RE.Robbery:FireServer()
game:GetService("ReplicatedStorage").RE.Rebirth:FireServer()
    wait()
end