local Time = 2
local LP = game:GetService("Players").LocalPlayer
local Char = LP.Character
local Loc = game:GetService("Workspace"):FindFirstChild(LP.UserId .. "Tycoon").GeneratedFloor1.MoneyATM.Part
LP.PlayerGui:FindFirstChild("EffectsScreenGui").Enabled = false
while task.wait(Time) do
    firetouchinterest(Char.HumanoidRootPart, Loc, 0)
    firetouchinterest(Char.HumanoidRootPart, Loc, 1)
end