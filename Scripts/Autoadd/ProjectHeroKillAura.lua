while true do
   wait(0.1)
local args = {
   [1] = "Handle_Combat",
   [2] = game:GetService("Players").LocalPlayer.Character,
   [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
end