--Berserk

local ohInstance1 = game.Players.LocalPlayer.Character:WaitForChild("Berserk")

for x = 1,10 do
    
    task.wait()

    game:GetService("ReplicatedStorage").BerserkCharge:FireServer(ohInstance1)

end


--Ping Pong Spam (op)

while true and task.wait() do
    
    game.ReplicatedStorage.GeneralAbility:FireServer()
    
end