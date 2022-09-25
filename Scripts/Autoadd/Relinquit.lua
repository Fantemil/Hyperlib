local args = {
   [1] = true
}
while true do
game:GetService("Players").LocalPlayer.Character.CharacterHandler.Events.Mana:FireServer(unpack(args))
wait()
end