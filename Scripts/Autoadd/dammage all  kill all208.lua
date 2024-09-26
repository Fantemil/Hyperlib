local Players = game:GetService("Players")
local localplayer = Players.LocalPlayer
local function handlePlayer(player)
   if player == localplayer then -- remove if u wanna die too(too look legit (even tho we can guess by the learderboard if ur cheating or not))
   return end
    local args = {
        [1] = player.Character,
        [2] = 10 -- any amount too ig
    }

  
    game:GetService("ReplicatedStorage"):WaitForChild("EventsFolder"):WaitForChild("KillCount"):FireServer(unpack(args))
end
for _, player in pairs(Players:GetPlayers()) do
    handlePlayer(player)
end
Players.PlayerAdded:Connect(handlePlayer)