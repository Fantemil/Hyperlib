while true do
wait()
local arguments = {
  [1] = "Spooky Cars",
  [2] = -1,
  [3] = {}
}

game:GetService("ReplicatedStorage").Events.Remotes.ServerRemotes.GivePlayerRandomPet:InvokeServer(unpack(arguments))
end