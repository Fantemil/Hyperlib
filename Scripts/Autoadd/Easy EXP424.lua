--Go into the first minigame of "Nuki" and simply run the script (I found out that 1 was Red but idk the numbers for blue, yellow, or anything since first player always gets red)

while task.wait(10) do
for i,v in pairs(workspace.Nuki:GetChildren()) do
if v:GetAttribute('NukiColor') == 1 then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Hitbox, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Hitbox, 1)
end
end
end