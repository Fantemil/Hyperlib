repeat task.wait() until game:isLoaded()
repeat task.wait() until game:GetService("Players").LocalPlayer:FindFirstChild("startevent")

tpsrv = game:GetService("TeleportService")
print("Creating variables")
game:GetService("Players").LocalPlayer.startevent:FireServer("band", "\128")

elementwanted = {"kamakiakuma",""} -- add more bls
slots = {"kg1", "kg2", "kg3", "kg4"}

print("Starting")
getgenv().atspn = false

while getgenv().atspn do
    wait(.3)
    
    for _, slot in pairs(slots) do
        for _, v in pairs(elementwanted) do
            print("Rolled: \n ----" .. game:GetService("Players").LocalPlayer.statz.main[slot].Value)
            if game:GetService("Players").LocalPlayer.statz.main[slot].Value == v then
                print("Got what u wanted!")
                game:GetService("Players").LocalPlayer.startevent:FireServer("band", "Eye")
                wait(1)
                game.Players.LocalPlayer:Kick("Got "..game:GetService("Players").LocalPlayer.statz.main[slot].Value.. "!")
                return
            end
        end
        game:GetService("Players").LocalPlayer.startevent:FireServer("spin", slot)
    end
    
    if game:GetService("Players").LocalPlayer.statz.spins.Value <= 1 then
        tpsrv:Teleport(game.PlaceId, game.Players.LocalPlayer)
    end
end