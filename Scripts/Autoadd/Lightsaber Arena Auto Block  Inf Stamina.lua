local l = game.Players.LocalPlayer
      while true do
     wait()
     local A_1 = 100
     local q = game:GetService("ReplicatedStorage")["FatSaber_RS"].RemoteEvents.BlockRegen
     q:FireServer(A_1)
        if l.Character:FindFirstChild("Lightsaber") then

local Event = l.Character.Lightsaber.Events.BlockStart

Event:FireServer()
else
print("invalid")
end
end