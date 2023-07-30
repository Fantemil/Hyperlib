-- requires you to be in the game with default equipped
-- change value to change where u want them to go idk

while true do
wait()
for _,i in pairs(game.Players:GetPlayers()) do
local value = Vector3.new(0, 0, 0)
game:GetService("Players").LocalPlayer.Character.Default.Event:FireServer("slash", game:GetService("Players")[i.Name].Character, value)
end
end