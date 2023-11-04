local p = game.Players.LocalPlayer.Character.HumanoidRootPart
local s = game.workspace.Shmimble
_G.farm = true

while _G.farm == true do
wait()
p.CFrame = s.CFrame
wait(3)
fireproximityprompt(workspace.Shmimble.ProximityPrompt)
wait(3)
p.CFrame = s.CFrame
wait(2)
fireproximityprompt(workspace.Shmimble.ProximityPrompt)
end