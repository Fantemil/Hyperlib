local args = {
[1] = "EndDialogue",
[2] = {
["NPC"] = "Alex",
["Option"] = "Option1",
["Dialogue"] = "Dialogue4"
}
}
game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
local AltsUser = "PUT USER OF ALT WITHOUT BLOOD IN HERE"
game.Players.LocalPlayer.Character["Bottle of Blood"]:Activate()
wait()
local args = {
[1] = "InitiateCosmeticTrade",
[2] = AltsUser
}
game:GetService("Players").LocalPlayer.Character.RemoteFunction:InvokeServer(unpack(args))