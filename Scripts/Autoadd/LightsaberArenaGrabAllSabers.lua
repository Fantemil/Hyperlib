while true do
    wait(2)
    pcall(function()
for i,v in pairs(game.Players:GetPlayers()) do
  if v.Character.RightHand:FindFirstChild("Saber") then
    local A_1 = "Equip"
    local A_2 = v.Character.RightHand.Saber
    local Event = game:GetService("ReplicatedStorage")["FatSaber_RS"].RemoteEvents.Ignite
    Event:FireServer(A_1, A_2)
  end
end
end)
end