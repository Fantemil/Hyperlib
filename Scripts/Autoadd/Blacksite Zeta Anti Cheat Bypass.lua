local char = game.Players.LocalPlayer.Character
if not char then return end
local upt = char:FindFirstChild("UpperTorso")
if not upt then return end
for _,v in pairs(getconnections(game.Players.LocalPlayer.Character.DescendantAdded)) do
 v:Disable()
end
for _,v in pairs(getconnections(upt:GetPropertyChangedSignal("CanCollide"))) do
 v:Disable()
end