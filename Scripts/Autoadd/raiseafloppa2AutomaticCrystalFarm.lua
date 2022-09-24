local currentTime = tick()
getgenv().CRYSTALFARM = currentTime

while getgenv().CRYSTALFARM == currentTime do
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local crystals = game.Workspace.Unlocks["Wormhole Machine"].Crystal:GetChildren()

if #crystals > 0 then
local crystal = crystals[1]
hrp.CFrame = crystal.CFrame
wait(0.2)

fireproximityprompt(crystal.ProximityPrompt, 1)
wait(0.2)

local converter = game.Workspace.Unlocks["Crystal Converter"]
hrp.CFrame = converter.Crystal.CFrame
wait(0.2)

fireproximityprompt(converter.Primary.ProximityPrompt, 1)
wait(0.2)
else
wait(1)
end
end