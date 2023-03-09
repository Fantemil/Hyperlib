local tycoons = workspace["Zednov's Tycoon Kit"].Tycoons
local lplr = game.Players.LocalPlayer
local runservice = game.RunService
local your_tycoon
for i,v in pairs(tycoons:GetChildren()) do
    if v.Owner.Value == lplr then
        your_tycoon = v
        break
    end
end
local giver = your_tycoon.Essentials.Giver
runservice.RenderStepped:connect(function()
pcall(function()
    firetouchinterest(giver, lplr.Character.HumanoidRootPart, 0)
    firetouchinterest(giver, lplr.Character.HumanoidRootPart, 1)
end)
end)