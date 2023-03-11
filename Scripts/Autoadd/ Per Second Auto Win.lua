if getgenv().autoWin then getgenv().autoWin = false
else getgenv().autoWin = true end
local plr = game:GetService("Players").LocalPlayer
repeat task.wait() until plr.Character ~= nil
local char = plr.Character
while getgenv().autoWin do
    for _, v in pairs(game:GetService("Workspace").WinPads:GetChildren()) do
        if v:FindFirstChild("Win") and v.Name ~= "rebirth" then
            firetouchinterest(char.HumanoidRootPart, v.Win, 0)
            firetouchinterest(char.HumanoidRootPart, v.Win, 1)
        end
    end
    task.wait()
end