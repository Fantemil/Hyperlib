local function Tween(speed,part,color)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(speed, Enum.EasingStyle.Linear)
    tweenService:Create(part,tweenInfo,{ Color = color }):Play()
end
while task.wait(0.2) do
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        for _,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v:FindFirstChild("Default") then
                    v:FindFirstChild("Default").Material = "ForceField"
                    Tween(0.2,v:FindFirstChild("Default"),Color3.fromRGB(math.random(255),math.random(255),math.random(255)))
                end
            end
        end
    end
end