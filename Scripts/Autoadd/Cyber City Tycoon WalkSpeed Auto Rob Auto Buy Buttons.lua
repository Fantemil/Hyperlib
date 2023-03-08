--Made by TrapFlaco,updated by SpaceCat1748

local function Owner()
    for i,v in pairs(game:GetService("Workspace").Tycoon.Tycoons:GetChildren()) do
        if v.Owner.Value == game.Players.LocalPlayer.Name then
            return v
        end
    end
end

_G.WS = "44";
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    Humanoid.WalkSpeed = _G.WS;
    end)
    Humanoid.WalkSpeed = _G.WS;

getgenv().loopLevel = true;
while getgenv().loopLevel do task.wait(0.20  )
game:GetService("ReplicatedStorage").RE.Robbery:FireServer()
game:GetService("ReplicatedStorage").RE.Rebirth:FireServer()
game:GetService("ReplicatedStorage").RE.emptyCollector:InvokeServer()
 for i,v in pairs(Owner().Buttons:GetDescendants()) do
        if v.Name == "TouchInterest" then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
        end
    end
    wait()
end