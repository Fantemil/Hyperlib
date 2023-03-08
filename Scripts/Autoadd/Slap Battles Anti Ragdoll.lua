deb = false
plr = game.Players.LocalPlayer
if deb == false then
while true do
plr.Character.Torso:WaitForChild("Ragdollballsocket")
plr.Character.Torso.Anchored = true
deb = true
wait(1)
deb = false
plr.Character.Torso.Anchored = false
task.wait()
end
end