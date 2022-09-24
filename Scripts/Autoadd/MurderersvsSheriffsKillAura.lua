 -- Slash or Throw
local way = "Throw"
local target

while true do
    task.wait()
    pcall(function()
        repeat
        target = game:GetService("Players"):GetPlayers()[math.random(#game:GetService("Players"):GetPlayers())]
        until target.Team == game:GetService("Teams").Sheriffs
        if target.Character:FindFirstChild("Head") then
            if target.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                game:GetService("Players").LocalPlayer.Character.Knife.Damage:FireServer(target.Character.UpperTorso,way)
            else
                game:GetService("Players").LocalPlayer.Character.Knife.Damage:FireServer(target.Character.HumanoidRootPart,way)
            end
        end
    end)
end