loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Anti-Kick/main/Anti-Kick.lua"))()
local s = {
    TweenService = game:GetService("TweenService"),
    Players = game:GetService("Players"),
    ReplicatedStorage = game:GetService("ReplicatedStorage")
}

local Player = {
    LocalPlayer = s.Players.LocalPlayer,
    Character = s.Players.LocalPlayer.Character or s.Players.LocalPlayer.CharacterAdded:Wait(),
    HumanoidRootPart = s.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
}

local function AttackPlayer(Weapon, TargetPlayer)
    if Weapon and TargetPlayer then
        s.ReplicatedStorage.RemoteTriggers.Bolster:FireServer(
            TargetPlayer.Character.Humanoid,
            Weapon
        )
    end
end

local AutoFarm = true

while AutoFarm do
    for _, v in pairs(s.Players:GetPlayers()) do
        if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 and v ~= Player.LocalPlayer then
            local function TweenTp()
                local a = v.Character.HumanoidRootPart
                local Distance = (Player.HumanoidRootPart.Position - a.Position).Magnitude
                local Speed = 200
                local z = s.TweenService:Create(
                    Player.HumanoidRootPart,
                    TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
                    {CFrame = CFrame.new(a.Position)}
                )
                z:Play()
                z.Completed:Wait()
            end

            while v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 do
                TweenTp()
                AttackPlayer(Player.Character:FindFirstChildOfClass("Tool"), v)
                task.wait(0.055)
            end
        end
    end
    task.wait(0.055)
end